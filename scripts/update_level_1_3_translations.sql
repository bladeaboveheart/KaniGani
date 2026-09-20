-- Migration: Naturalize translations and slugs for Level 1 to 3 items
BEGIN;

-- [KANJI] 入 (Level 1)
DO $$
DECLARE
  v_item_id uuid := '7ee6d1da-eaa4-4e50-a79d-6204282b5a56'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'masuk' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masuk')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Masuk', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Masuk', true, true);
  END IF;

  -- Synonym: Memasuki
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memasuki')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Memasuki', false, true);
  END IF;
  -- Synonym: Enter
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enter')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Enter', false, true);
  END IF;
END $$;

-- [KANJI] 上 (Level 1)
DO $$
DECLARE
  v_item_id uuid := '6b1ccf57-4e9f-4f63-8486-9324e8833cc1'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'atas' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Atas')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Atas', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Atas', true, true);
  END IF;

  -- Synonym: Di Atas
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Atas')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Di Atas', false, true);
  END IF;
  -- Synonym: Above
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Above')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Above', false, true);
  END IF;
  -- Synonym: Up
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Up')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Up', false, true);
  END IF;
  -- Synonym: Over
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Over')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Over', false, true);
  END IF;
END $$;

-- [KANJI] 下 (Level 1)
DO $$
DECLARE
  v_item_id uuid := '0c18de88-19ae-4f59-b519-402680bf7cb0'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'bawah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bawah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Bawah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bawah', true, true);
  END IF;

  -- Synonym: Di Bawah
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Bawah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Di Bawah', false, true);
  END IF;
  -- Synonym: Below
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Below')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Below', false, true);
  END IF;
  -- Synonym: Down
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Down')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Down', false, true);
  END IF;
  -- Synonym: Under
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Under')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Under', false, true);
  END IF;
END $$;

-- [RADICAL] 丿 (Level 1)
DO $$
DECLARE
  v_item_id uuid := 'd4cb4409-5195-454a-9e0b-53b84e33f494'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'goresan-miring' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Goresan Miring')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Goresan Miring', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Goresan Miring', true, true);
  END IF;

  -- Synonym: Helai Rambut
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Helai Rambut')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Helai Rambut', false, true);
  END IF;
  -- Synonym: Slide
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slide')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Slide', false, true);
  END IF;
END $$;

-- [RADICAL] ト (Level 1)
DO $$
DECLARE
  v_item_id uuid := '7d65ea44-335c-46d8-99d9-976d865d9b2c'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'jari-kaki' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jari Kaki')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Jari Kaki', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Jari Kaki', true, true);
  END IF;

  -- Synonym: Jempol Kaki
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jempol Kaki')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Jempol Kaki', false, true);
  END IF;
  -- Synonym: Toe
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Toe')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Toe', false, true);
  END IF;
END $$;

-- [RADICAL] 入 (Level 1)
DO $$
DECLARE
  v_item_id uuid := 'b310bfda-035f-4d23-a3cc-268c2458f876'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'masuk' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masuk')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Masuk', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Masuk', true, true);
  END IF;

  -- Synonym: Memasuki
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memasuki')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Memasuki', false, true);
  END IF;
  -- Synonym: Enter
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enter')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Enter', false, true);
  END IF;
END $$;

-- [RADICAL] 十 (Level 1)
DO $$
DECLARE
  v_item_id uuid := '376f169f-5477-4ccd-a923-b2fc597cac24'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'salib' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Salib')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Salib', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Salib', true, true);
  END IF;

  -- Synonym: Menyeberang
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyeberang')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Menyeberang', false, true);
  END IF;
  -- Synonym: Cross
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cross')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Cross', false, true);
  END IF;
  -- Synonym: Tanda Tambah
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanda Tambah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tanda Tambah', false, true);
  END IF;
END $$;

-- [VOCABULARY] 一つ (Level 1)
DO $$
DECLARE
  v_item_id uuid := '570d01f5-e0e5-4a58-8f55-a8031744dc42'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'satu-buah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu Buah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Satu Buah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Satu Buah', true, true);
  END IF;

  -- Synonym: Sebuah
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sebuah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sebuah', false, true);
  END IF;
  -- Synonym: Satu Hal
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu Hal')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Satu Hal', false, true);
  END IF;
  -- Synonym: Satu
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Satu', false, true);
  END IF;
  -- Synonym: One Thing
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('One Thing')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'One Thing', false, true);
  END IF;
  -- Synonym: 1 Thing
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('1 Thing')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, '1 Thing', false, true);
  END IF;
END $$;

-- [VOCABULARY] 七つ (Level 1)
DO $$
DECLARE
  v_item_id uuid := '702c8037-7d76-4d74-a4fe-81ade1db7cb3'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'tujuh-buah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tujuh Buah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Tujuh Buah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tujuh Buah', true, true);
  END IF;

  -- Synonym: Tujuh Hal
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tujuh Hal')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tujuh Hal', false, true);
  END IF;
  -- Synonym: Tujuh
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tujuh')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tujuh', false, true);
  END IF;
  -- Synonym: Seven Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Seven Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Seven Things', false, true);
  END IF;
  -- Synonym: 7 Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('7 Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, '7 Things', false, true);
  END IF;
END $$;

-- [VOCABULARY] 九つ (Level 1)
DO $$
DECLARE
  v_item_id uuid := 'c8cfa2a9-7aae-4f3a-8d09-db1e2aa901b2'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'sembilan-buah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sembilan Buah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Sembilan Buah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sembilan Buah', true, true);
  END IF;

  -- Synonym: Sembilan Hal
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sembilan Hal')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sembilan Hal', false, true);
  END IF;
  -- Synonym: Sembilan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sembilan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sembilan', false, true);
  END IF;
  -- Synonym: Nine Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nine Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Nine Things', false, true);
  END IF;
  -- Synonym: 9 Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('9 Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, '9 Things', false, true);
  END IF;
END $$;

-- [VOCABULARY] 二つ (Level 1)
DO $$
DECLARE
  v_item_id uuid := 'cc658a31-ae3b-43f5-be7d-4a9cf384de80'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'dua-buah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dua Buah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Dua Buah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Dua Buah', true, true);
  END IF;

  -- Synonym: Dua Hal
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dua Hal')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Dua Hal', false, true);
  END IF;
  -- Synonym: Dua
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dua')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Dua', false, true);
  END IF;
  -- Synonym: Two Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Two Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Two Things', false, true);
  END IF;
  -- Synonym: 2 Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('2 Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, '2 Things', false, true);
  END IF;
END $$;

-- [VOCABULARY] 一人 (Level 1)
DO $$
DECLARE
  v_item_id uuid := '4373d6b5-4df9-404f-a934-1a072a073128'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'satu-orang' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu Orang')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Satu Orang', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Satu Orang', true, true);
  END IF;

  -- Synonym: Sendiri
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sendiri')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sendiri', false, true);
  END IF;
  -- Synonym: Sendirian
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sendirian')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sendirian', false, true);
  END IF;
  -- Synonym: One Person
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('One Person')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'One Person', false, true);
  END IF;
  -- Synonym: Alone
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alone')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Alone', false, true);
  END IF;
  -- Synonym: 1 Person
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('1 Person')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, '1 Person', false, true);
  END IF;
END $$;

-- [VOCABULARY] 入る (Level 1)
DO $$
DECLARE
  v_item_id uuid := '0dc4bd0a-5e83-4c5b-bac9-12184fc519cc'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'masuk' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masuk')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Masuk', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Masuk', true, true);
  END IF;

  -- Synonym: Masuk ke dalam
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masuk ke dalam')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Masuk ke dalam', false, true);
  END IF;
  -- Synonym: To Enter
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Enter')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Enter', false, true);
  END IF;
  -- Synonym: To Go In
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Go In')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Go In', false, true);
  END IF;
END $$;

-- [VOCABULARY] 八つ (Level 1)
DO $$
DECLARE
  v_item_id uuid := 'ec791057-c8fb-4460-99cd-b7d2ca82c869'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'delapan-buah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Delapan Buah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Delapan Buah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Delapan Buah', true, true);
  END IF;

  -- Synonym: Delapan Hal
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Delapan Hal')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Delapan Hal', false, true);
  END IF;
  -- Synonym: Delapan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Delapan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Delapan', false, true);
  END IF;
  -- Synonym: Eight Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Eight Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Eight Things', false, true);
  END IF;
  -- Synonym: 8 Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('8 Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, '8 Things', false, true);
  END IF;
END $$;

-- [VOCABULARY] 三つ (Level 1)
DO $$
DECLARE
  v_item_id uuid := '7c42a4cb-f3e0-4120-86fb-493da179f9e7'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'tiga-buah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiga Buah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Tiga Buah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tiga Buah', true, true);
  END IF;

  -- Synonym: Tiga Hal
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiga Hal')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tiga Hal', false, true);
  END IF;
  -- Synonym: Tiga
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiga')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tiga', false, true);
  END IF;
  -- Synonym: Three Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Three Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Three Things', false, true);
  END IF;
  -- Synonym: 3 Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('3 Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, '3 Things', false, true);
  END IF;
END $$;

-- [VOCABULARY] 上 (Level 1)
DO $$
DECLARE
  v_item_id uuid := '9e31856b-cb0f-4d8d-93c7-bd7c005d42b1'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'atas' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Atas')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Atas', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Atas', true, true);
  END IF;

  -- Synonym: Di Atas
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Atas')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Di Atas', false, true);
  END IF;
  -- Synonym: Bagian Atas
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bagian Atas')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bagian Atas', false, true);
  END IF;
  -- Synonym: Above
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Above')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Above', false, true);
  END IF;
  -- Synonym: Up
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Up')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Up', false, true);
  END IF;
  -- Synonym: Over
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Over')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Over', false, true);
  END IF;
END $$;

-- [VOCABULARY] 上げる (Level 1)
DO $$
DECLARE
  v_item_id uuid := 'ce674d0b-db97-4409-a1d4-815582645af3'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'menaikkan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menaikkan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Menaikkan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Menaikkan', true, true);
  END IF;

  -- Synonym: Mengangkat
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengangkat')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Mengangkat', false, true);
  END IF;
  -- Synonym: To Lift Something
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Lift Something')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Lift Something', false, true);
  END IF;
  -- Synonym: To Raise Something
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Raise Something')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Raise Something', false, true);
  END IF;
  -- Synonym: To Raise
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Raise')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Raise', false, true);
  END IF;
  -- Synonym: To Lift
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Lift')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Lift', false, true);
  END IF;
END $$;

-- [VOCABULARY] 下 (Level 1)
DO $$
DECLARE
  v_item_id uuid := 'e74af569-d3e8-45fc-9208-acab97f68c29'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'bawah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bawah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Bawah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bawah', true, true);
  END IF;

  -- Synonym: Di Bawah
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Bawah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Di Bawah', false, true);
  END IF;
  -- Synonym: Bagian Bawah
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bagian Bawah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bagian Bawah', false, true);
  END IF;
  -- Synonym: Below
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Below')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Below', false, true);
  END IF;
  -- Synonym: Under
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Under')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Under', false, true);
  END IF;
  -- Synonym: Down
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Down')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Down', false, true);
  END IF;
END $$;

-- [VOCABULARY] 下げる (Level 1)
DO $$
DECLARE
  v_item_id uuid := 'a50d5f56-9bf0-42a1-af40-3925b1504fed'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'menurunkan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menurunkan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Menurunkan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Menurunkan', true, true);
  END IF;

  -- Synonym: Menggantung
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggantung')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Menggantung', false, true);
  END IF;
  -- Synonym: To Lower Something
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Lower Something')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Lower Something', false, true);
  END IF;
  -- Synonym: To Lower
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Lower')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Lower', false, true);
  END IF;
  -- Synonym: To Hang
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hang')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Hang', false, true);
  END IF;
END $$;

-- [VOCABULARY] 下さい (Level 1)
DO $$
DECLARE
  v_item_id uuid := '2ba2a749-e621-4714-bbe6-845278cc3084'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'silakan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Silakan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Silakan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Silakan', true, true);
  END IF;

  -- Synonym: Tolong
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tolong')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tolong', false, true);
  END IF;
  -- Synonym: Mohon
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mohon')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Mohon', false, true);
  END IF;
  -- Synonym: Tolong Berikan Saya
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tolong Berikan Saya')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tolong Berikan Saya', false, true);
  END IF;
  -- Synonym: Please
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Please')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Please', false, true);
  END IF;
  -- Synonym: Please Give Me
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Please Give Me')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Please Give Me', false, true);
  END IF;
END $$;

-- [VOCABULARY] 大した (Level 1)
DO $$
DECLARE
  v_item_id uuid := '765f09a1-2db7-4f9d-b345-fa7060d422ef'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'istimewa' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Istimewa')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Istimewa', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Istimewa', true, true);
  END IF;

  -- Synonym: Hebat
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hebat')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Hebat', false, true);
  END IF;
  -- Synonym: Luar Biasa
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar Biasa')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Luar Biasa', false, true);
  END IF;
  -- Synonym: Besar
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Besar')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Besar', false, true);
  END IF;
  -- Synonym: Great
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Great')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Great', false, true);
  END IF;
  -- Synonym: Considerable
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Considerable')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Considerable', false, true);
  END IF;
  -- Synonym: Big Deal
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Big Deal')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Big Deal', false, true);
  END IF;
END $$;

-- [VOCABULARY] 人工 (Level 1)
DO $$
DECLARE
  v_item_id uuid := '626227e0-9311-470a-8255-13bea591bd9f'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'buatan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buatan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Buatan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Buatan', true, true);
  END IF;

  -- Synonym: Artifisial
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Artifisial')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Artifisial', false, true);
  END IF;
  -- Synonym: Buatan Manusia
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buatan Manusia')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Buatan Manusia', false, true);
  END IF;
  -- Synonym: Artificial
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Artificial')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Artificial', false, true);
  END IF;
  -- Synonym: Man Made
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Man Made')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Man Made', false, true);
  END IF;
END $$;

-- [VOCABULARY] 力いっぱい (Level 1)
DO $$
DECLARE
  v_item_id uuid := '8492db4b-1d06-4090-87c7-49d17851a339'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'sepenuh-tenaga' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sepenuh Tenaga')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Sepenuh Tenaga', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sepenuh Tenaga', true, true);
  END IF;

  -- Synonym: Kekuatan Penuh
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kekuatan Penuh')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kekuatan Penuh', false, true);
  END IF;
  -- Synonym: Sekuat Tenaga
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sekuat Tenaga')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sekuat Tenaga', false, true);
  END IF;
  -- Synonym: With All One''s Might
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('With All One''s Might')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'With All One''s Might', false, true);
  END IF;
  -- Synonym: Full Power
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Full Power')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Full Power', false, true);
  END IF;
END $$;

-- [KANJI] 土 (Level 2)
DO $$
DECLARE
  v_item_id uuid := 'caff84ea-c227-4b14-977c-2f2b5805ff7f'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'tanah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Tanah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tanah', true, true);
  END IF;

  -- Synonym: Bumi
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bumi')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bumi', false, true);
  END IF;
  -- Synonym: Earth
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Earth')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Earth', false, true);
  END IF;
  -- Synonym: Ground
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ground')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Ground', false, true);
  END IF;
  -- Synonym: Soil
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Soil')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Soil', false, true);
  END IF;
  -- Synonym: Dirt
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dirt')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Dirt', false, true);
  END IF;
END $$;

-- [KANJI] 夕 (Level 2)
DO $$
DECLARE
  v_item_id uuid := '9bd5eaf8-0acd-44d0-a33f-ada67e9461b0'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'sore' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sore')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Sore', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sore', true, true);
  END IF;

  -- Synonym: Senja
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Senja')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Senja', false, true);
  END IF;
  -- Synonym: Petang
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Petang')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Petang', false, true);
  END IF;
  -- Synonym: Malam
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Malam')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Malam', false, true);
  END IF;
  -- Synonym: Evening
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Evening')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Evening', false, true);
  END IF;
END $$;

-- [KANJI] 文 (Level 2)
DO $$
DECLARE
  v_item_id uuid := '896b88cf-21ff-46f7-a40f-3bbaa28d1f10'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'kalimat' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kalimat')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Kalimat', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kalimat', true, true);
  END IF;

  -- Synonym: Tulisan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tulisan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tulisan', false, true);
  END IF;
  -- Synonym: Teks
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Teks')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Teks', false, true);
  END IF;
  -- Synonym: Sastra
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sastra')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sastra', false, true);
  END IF;
  -- Synonym: Writing
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Writing')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Writing', false, true);
  END IF;
  -- Synonym: Sentence
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sentence')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sentence', false, true);
  END IF;
  -- Synonym: Text
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Text')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Text', false, true);
  END IF;
END $$;

-- [KANJI] 右 (Level 2)
DO $$
DECLARE
  v_item_id uuid := '512af219-f55b-4cd5-9bdc-e6cfb049cec5'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'kanan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kanan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Kanan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kanan', true, true);
  END IF;

  -- Synonym: Right
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Right')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Right', false, true);
  END IF;
END $$;

-- [RADICAL] 土 (Level 2)
DO $$
DECLARE
  v_item_id uuid := '54c19265-988a-4bec-8cab-6437d94f0935'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'tanah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Tanah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tanah', true, true);
  END IF;

  -- Synonym: Dirt
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dirt')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Dirt', false, true);
  END IF;
  -- Synonym: Earth
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Earth')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Earth', false, true);
  END IF;
  -- Synonym: Ground
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ground')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Ground', false, true);
  END IF;
END $$;

-- [RADICAL] ナ (Level 2)
DO $$
DECLARE
  v_item_id uuid := '2c39af14-754b-4af1-845b-abfabfe65a96'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'paus-narwhal' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Paus Narwhal')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Paus Narwhal', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Paus Narwhal', true, true);
  END IF;

  -- Synonym: Ikan Paus
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ikan Paus')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Ikan Paus', false, true);
  END IF;
  -- Synonym: Narwhal
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Narwhal')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Narwhal', false, true);
  END IF;
END $$;

-- [RADICAL] 夕 (Level 2)
DO $$
DECLARE
  v_item_id uuid := '15dd3c11-a4cc-46d6-a413-9d085c31774b'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'sore' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sore')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Sore', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sore', true, true);
  END IF;

  -- Synonym: Senja
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Senja')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Senja', false, true);
  END IF;
  -- Synonym: Evening
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Evening')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Evening', false, true);
  END IF;
END $$;

-- [RADICAL] 文 (Level 2)
DO $$
DECLARE
  v_item_id uuid := '46d1e945-3812-45db-a021-cf0298090ad8'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'kalimat' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kalimat')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Kalimat', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kalimat', true, true);
  END IF;

  -- Synonym: Tulisan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tulisan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tulisan', false, true);
  END IF;
  -- Synonym: Writing
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Writing')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Writing', false, true);
  END IF;
END $$;

-- [VOCABULARY] 上る (Level 2)
DO $$
DECLARE
  v_item_id uuid := 'cb11f8b2-1819-4958-b8e0-fdc3174d1a60'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'mendaki' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendaki')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Mendaki', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Mendaki', true, true);
  END IF;

  -- Synonym: Naik
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Naik')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Naik', false, true);
  END IF;
  -- Synonym: Memanjat
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memanjat')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Memanjat', false, true);
  END IF;
  -- Synonym: To Climb
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Climb')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Climb', false, true);
  END IF;
  -- Synonym: To Go Up
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Go Up')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Go Up', false, true);
  END IF;
  -- Synonym: To Ascend
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Ascend')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Ascend', false, true);
  END IF;
END $$;

-- [VOCABULARY] 土 (Level 2)
DO $$
DECLARE
  v_item_id uuid := 'f0ab03a2-0c2a-48ca-a92c-a7de17dac21d'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'tanah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Tanah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tanah', true, true);
  END IF;

  -- Synonym: Bumi
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bumi')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bumi', false, true);
  END IF;
  -- Synonym: Soil
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Soil')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Soil', false, true);
  END IF;
  -- Synonym: Earth
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Earth')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Earth', false, true);
  END IF;
  -- Synonym: Ground
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ground')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Ground', false, true);
  END IF;
  -- Synonym: Dirt
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dirt')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Dirt', false, true);
  END IF;
END $$;

-- [VOCABULARY] おはよう (Level 2)
DO $$
DECLARE
  v_item_id uuid := '9b57b8ba-b4d0-4905-87da-9fb322dd726f'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'selamat-pagi' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selamat Pagi')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Selamat Pagi', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Selamat Pagi', true, true);
  END IF;

  -- Synonym: Good Morning
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Good Morning')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Good Morning', false, true);
  END IF;
END $$;

-- [VOCABULARY] ホテル (Level 2)
DO $$
DECLARE
  v_item_id uuid := '28a1518a-8633-42f9-ae0a-616626a4d2e2'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'hotel' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hotel')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Hotel', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Hotel', true, true);
  END IF;

  -- Synonym: Hotels
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hotels')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Hotels', false, true);
  END IF;
END $$;

-- [VOCABULARY] 〜才 (Level 2)
DO $$
DECLARE
  v_item_id uuid := '43de54ad-59b4-4ca8-9ac5-1be0e71bc4bb'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'tahun-usia' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tahun (Usia)')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Tahun (Usia)', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tahun (Usia)', true, true);
  END IF;

  -- Synonym: Tahun
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tahun')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tahun', false, true);
  END IF;
  -- Synonym: Usia
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Usia')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Usia', false, true);
  END IF;
  -- Synonym: Umur
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Umur')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Umur', false, true);
  END IF;
  -- Synonym: Years Old
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Years Old')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Years Old', false, true);
  END IF;
  -- Synonym: Age
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Age')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Age', false, true);
  END IF;
END $$;

-- [VOCABULARY] 中 (Level 2)
DO $$
DECLARE
  v_item_id uuid := '19bdbdf8-6974-4327-93cd-57e5028078c9'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'dalam' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dalam')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Dalam', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Dalam', true, true);
  END IF;

  -- Synonym: Di Dalam
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Dalam')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Di Dalam', false, true);
  END IF;
  -- Synonym: Tengah
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tengah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tengah', false, true);
  END IF;
  -- Synonym: Inside
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inside')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Inside', false, true);
  END IF;
  -- Synonym: In
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('In')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'In', false, true);
  END IF;
  -- Synonym: Middle
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Middle')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Middle', false, true);
  END IF;
END $$;

-- [VOCABULARY] 中々 (Level 2)
DO $$
DECLARE
  v_item_id uuid := 'f7585b45-32ac-483a-87db-c6191d75168b'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'cukup' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cukup')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Cukup', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Cukup', true, true);
  END IF;

  -- Synonym: Lumayan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lumayan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Lumayan', false, true);
  END IF;
  -- Synonym: Sangat
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sangat', false, true);
  END IF;
  -- Synonym: Rather
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rather')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Rather', false, true);
  END IF;
  -- Synonym: Fairly
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fairly')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Fairly', false, true);
  END IF;
  -- Synonym: Quite
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Quite')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Quite', false, true);
  END IF;
  -- Synonym: Very
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Very')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Very', false, true);
  END IF;
END $$;

-- [VOCABULARY] 五月 (Level 2)
DO $$
DECLARE
  v_item_id uuid := 'e8d0aeaa-1033-4494-90a5-66ab95444b76'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'mei' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mei')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Mei', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Mei', true, true);
  END IF;

  -- Synonym: Bulan Mei
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bulan Mei')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bulan Mei', false, true);
  END IF;
  -- Synonym: May
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('May')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'May', false, true);
  END IF;
END $$;

-- [VOCABULARY] 五つ (Level 2)
DO $$
DECLARE
  v_item_id uuid := '1f1ae7c1-403a-42db-9772-533cb0a9c50f'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'lima-buah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lima Buah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Lima Buah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Lima Buah', true, true);
  END IF;

  -- Synonym: Lima Hal
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lima Hal')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Lima Hal', false, true);
  END IF;
  -- Synonym: Lima
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lima')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Lima', false, true);
  END IF;
  -- Synonym: Five Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Five Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Five Things', false, true);
  END IF;
  -- Synonym: 5 Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('5 Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, '5 Things', false, true);
  END IF;
END $$;

-- [VOCABULARY] 六つ (Level 2)
DO $$
DECLARE
  v_item_id uuid := 'dbce5d9b-294b-4f38-a186-cd699ea718ea'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'enam-buah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enam Buah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Enam Buah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Enam Buah', true, true);
  END IF;

  -- Synonym: Enam Hal
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enam Hal')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Enam Hal', false, true);
  END IF;
  -- Synonym: Enam
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enam')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Enam', false, true);
  END IF;
  -- Synonym: Six Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Six Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Six Things', false, true);
  END IF;
  -- Synonym: 6 Things
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('6 Things')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, '6 Things', false, true);
  END IF;
END $$;

-- [VOCABULARY] 十六 (Level 2)
DO $$
DECLARE
  v_item_id uuid := 'b1b4e853-89b4-458c-abf0-a463a1ba7453'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'enam-belas' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enam Belas')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Enam Belas', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Enam Belas', true, true);
  END IF;

  -- Synonym: Sixteen
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sixteen')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sixteen', false, true);
  END IF;
  -- Synonym: 16
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('16')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, '16', false, true);
  END IF;
END $$;

-- [VOCABULARY] 下手 (Level 2)
DO $$
DECLARE
  v_item_id uuid := 'eef66b66-330f-4a02-b1e7-afedb3224e69'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'tidak-mahir' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Mahir')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Tidak Mahir', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tidak Mahir', true, true);
  END IF;

  -- Synonym: Kurang Pandai
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kurang Pandai')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kurang Pandai', false, true);
  END IF;
  -- Synonym: Payah
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Payah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Payah', false, true);
  END IF;
  -- Synonym: Buruk Di
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buruk Di')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Buruk Di', false, true);
  END IF;
  -- Synonym: Unskillful
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unskillful')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Unskillful', false, true);
  END IF;
  -- Synonym: Bad At
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bad At')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bad At', false, true);
  END IF;
  -- Synonym: Not Good At
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Not Good At')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Not Good At', false, true);
  END IF;
END $$;

-- [VOCABULARY] 上手 (Level 2)
DO $$
DECLARE
  v_item_id uuid := '70578677-9cb2-4a90-9ba5-e28bac2e3307'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'mahir' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mahir')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Mahir', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Mahir', true, true);
  END IF;

  -- Synonym: Pandai
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pandai')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Pandai', false, true);
  END IF;
  -- Synonym: Pintar
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pintar')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Pintar', false, true);
  END IF;
  -- Synonym: Jago
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jago')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Jago', false, true);
  END IF;
  -- Synonym: Good At
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Good At')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Good At', false, true);
  END IF;
  -- Synonym: Skillful
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Skillful')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Skillful', false, true);
  END IF;
END $$;

-- [VOCABULARY] 文 (Level 2)
DO $$
DECLARE
  v_item_id uuid := '5f1c8fdf-0436-40bb-8cae-ca052ccf8670'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'kalimat' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kalimat')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Kalimat', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kalimat', true, true);
  END IF;

  -- Synonym: Teks
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Teks')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Teks', false, true);
  END IF;
  -- Synonym: Tulisan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tulisan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tulisan', false, true);
  END IF;
  -- Synonym: Writing
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Writing')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Writing', false, true);
  END IF;
  -- Synonym: Sentence
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sentence')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Sentence', false, true);
  END IF;
  -- Synonym: Text
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Text')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Text', false, true);
  END IF;
END $$;

-- [VOCABULARY] 出る (Level 2)
DO $$
DECLARE
  v_item_id uuid := 'b3e05623-ef0d-4242-b551-973f9d8e559c'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'keluar' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keluar')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Keluar', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Keluar', true, true);
  END IF;

  -- Synonym: Muncul
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Muncul')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Muncul', false, true);
  END IF;
  -- Synonym: Pergi
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pergi')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Pergi', false, true);
  END IF;
  -- Synonym: To Exit
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Exit')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Exit', false, true);
  END IF;
  -- Synonym: To Leave
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Leave')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Leave', false, true);
  END IF;
  -- Synonym: To Come Out
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Come Out')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Come Out', false, true);
  END IF;
END $$;

-- [VOCABULARY] 出口 (Level 2)
DO $$
DECLARE
  v_item_id uuid := '9e5bfcea-568c-4e0c-a465-61f46727b8f2'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'pintu-keluar' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pintu Keluar')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Pintu Keluar', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Pintu Keluar', true, true);
  END IF;

  -- Synonym: Keluar
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keluar')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Keluar', false, true);
  END IF;
  -- Synonym: Exit
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exit')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Exit', false, true);
  END IF;
END $$;

-- [VOCABULARY] 右 (Level 2)
DO $$
DECLARE
  v_item_id uuid := '07913cc7-0a5b-47c6-8853-35dc07fff718'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'kanan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kanan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Kanan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kanan', true, true);
  END IF;

  -- Synonym: Arah Kanan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Arah Kanan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Arah Kanan', false, true);
  END IF;
  -- Synonym: Right
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Right')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Right', false, true);
  END IF;
  -- Synonym: Right Direction
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Right Direction')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Right Direction', false, true);
  END IF;
END $$;

-- [VOCABULARY] 左 (Level 2)
DO $$
DECLARE
  v_item_id uuid := 'a620eac2-f834-4a95-8d4d-beb5a5891e82'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'kiri' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kiri')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Kiri', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kiri', true, true);
  END IF;

  -- Synonym: Arah Kiri
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Arah Kiri')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Arah Kiri', false, true);
  END IF;
  -- Synonym: Left
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Left')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Left', false, true);
  END IF;
  -- Synonym: Left Direction
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Left Direction')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Left Direction', false, true);
  END IF;
END $$;

-- [VOCABULARY] 正す (Level 2)
DO $$
DECLARE
  v_item_id uuid := '86bd56df-8dc4-430a-b185-248ee61855f3'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'meluruskan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meluruskan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Meluruskan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Meluruskan', true, true);
  END IF;

  -- Synonym: Memperbaiki
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperbaiki')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Memperbaiki', false, true);
  END IF;
  -- Synonym: Membetulkan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membetulkan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Membetulkan', false, true);
  END IF;
  -- Synonym: To Correct
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Correct')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Correct', false, true);
  END IF;
  -- Synonym: To Correct Something
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Correct Something')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Correct Something', false, true);
  END IF;
END $$;

-- [VOCABULARY] 立つ (Level 2)
DO $$
DECLARE
  v_item_id uuid := '57ff4d29-20d1-44a7-a7c7-3e4a78a954f7'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'berdiri' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berdiri')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Berdiri', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Berdiri', true, true);
  END IF;

  -- Synonym: Bangkit
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bangkit')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bangkit', false, true);
  END IF;
  -- Synonym: To Stand
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stand')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Stand', false, true);
  END IF;
  -- Synonym: To Stand Up
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stand Up')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Stand Up', false, true);
  END IF;
  -- Synonym: To Rise
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Rise')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Rise', false, true);
  END IF;
END $$;

-- [VOCABULARY] 人々 (Level 2)
DO $$
DECLARE
  v_item_id uuid := '6b8d9756-4893-4a37-8637-4b22d552c8e5'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'orang-orang' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Orang-Orang')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Orang-Orang', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Orang-Orang', true, true);
  END IF;

  -- Synonym: Masyarakat
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masyarakat')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Masyarakat', false, true);
  END IF;
  -- Synonym: Rakyat
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rakyat')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Rakyat', false, true);
  END IF;
  -- Synonym: People
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('People')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'People', false, true);
  END IF;
END $$;

-- [VOCABULARY] 水中 (Level 2)
DO $$
DECLARE
  v_item_id uuid := 'b3dd7e1b-0d4e-488b-b175-de6ee61fe3e8'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'bawah-air' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bawah Air')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Bawah Air', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bawah Air', true, true);
  END IF;

  -- Synonym: Di Bawah Air
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Bawah Air')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Di Bawah Air', false, true);
  END IF;
  -- Synonym: Di Dalam Air
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Dalam Air')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Di Dalam Air', false, true);
  END IF;
  -- Synonym: Underwater
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Underwater')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Underwater', false, true);
  END IF;
END $$;

-- [KANJI] 心 (Level 3)
DO $$
DECLARE
  v_item_id uuid := '5f04d10a-15f3-4d94-a1ea-f6fae753876c'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'hati' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hati')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Hati', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Hati', true, true);
  END IF;

  -- Synonym: Pikiran
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pikiran')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Pikiran', false, true);
  END IF;
  -- Synonym: Jiwa
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jiwa')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Jiwa', false, true);
  END IF;
  -- Synonym: Jantung
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jantung')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Jantung', false, true);
  END IF;
  -- Synonym: Heart
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Heart')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Heart', false, true);
  END IF;
  -- Synonym: Mind
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mind')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Mind', false, true);
  END IF;
END $$;

-- [KANJI] 台 (Level 3)
DO $$
DECLARE
  v_item_id uuid := '392cc530-738c-4744-9e45-699a09f59d43'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'unit-mesin' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unit (Mesin)')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Unit (Mesin)', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Unit (Mesin)', true, true);
  END IF;

  -- Synonym: Mesin
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mesin')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Mesin', false, true);
  END IF;
  -- Synonym: Alas
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alas')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Alas', false, true);
  END IF;
  -- Synonym: Dudukan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dudukan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Dudukan', false, true);
  END IF;
  -- Synonym: Stand
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stand')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Stand', false, true);
  END IF;
  -- Synonym: Machine
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Machine')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Machine', false, true);
  END IF;
END $$;

-- [KANJI] 外 (Level 3)
DO $$
DECLARE
  v_item_id uuid := 'c95fac59-fc17-4a4c-b9c7-9a38b6c04fd1'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'luar' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Luar', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Luar', true, true);
  END IF;

  -- Synonym: Di Luar
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Luar')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Di Luar', false, true);
  END IF;
  -- Synonym: Outside
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Outside')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Outside', false, true);
  END IF;
END $$;

-- [KANJI] 用 (Level 3)
DO $$
DECLARE
  v_item_id uuid := 'a60cefa7-f81b-44b4-b527-3747a52d3161'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'kegunaan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kegunaan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Kegunaan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kegunaan', true, true);
  END IF;

  -- Synonym: Keperluan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keperluan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Keperluan', false, true);
  END IF;
  -- Synonym: Tugas
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tugas')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tugas', false, true);
  END IF;
  -- Synonym: Pakai
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pakai')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Pakai', false, true);
  END IF;
  -- Synonym: Use
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Use')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Use', false, true);
  END IF;
  -- Synonym: Task
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Task')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Task', false, true);
  END IF;
END $$;

-- [KANJI] 字 (Level 3)
DO $$
DECLARE
  v_item_id uuid := '1986900f-da76-404e-93d4-dd69fde3eb55'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'huruf' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Huruf')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Huruf', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Huruf', true, true);
  END IF;

  -- Synonym: Karakter
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karakter')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Karakter', false, true);
  END IF;
  -- Synonym: Aksara
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aksara')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Aksara', false, true);
  END IF;
  -- Synonym: Letter
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Letter')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Letter', false, true);
  END IF;
  -- Synonym: Character
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Character')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Character', false, true);
  END IF;
  -- Synonym: Symbol
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Symbol')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Symbol', false, true);
  END IF;
END $$;

-- [KANJI] 生 (Level 3)
DO $$
DECLARE
  v_item_id uuid := 'a1fc9761-d700-4293-b25b-90261133fbf4'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'hidup' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hidup')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Hidup', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Hidup', true, true);
  END IF;

  -- Synonym: Kehidupan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kehidupan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kehidupan', false, true);
  END IF;
  -- Synonym: Lahir
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lahir')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Lahir', false, true);
  END IF;
  -- Synonym: Mentah
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mentah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Mentah', false, true);
  END IF;
  -- Synonym: Life
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Life')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Life', false, true);
  END IF;
  -- Synonym: Birth
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Birth')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Birth', false, true);
  END IF;
END $$;

-- [RADICAL] 心 (Level 3)
DO $$
DECLARE
  v_item_id uuid := '44439e4c-ac31-42e6-8c56-52d8b1a8dbe4'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'hati' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hati')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Hati', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Hati', true, true);
  END IF;

  -- Synonym: Jantung
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jantung')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Jantung', false, true);
  END IF;
  -- Synonym: Heart
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Heart')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Heart', false, true);
  END IF;
END $$;

-- [RADICAL] 用 (Level 3)
DO $$
DECLARE
  v_item_id uuid := 'b911144c-7ceb-4670-8da2-3c1c7eaabfda'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'kegunaan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kegunaan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Kegunaan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kegunaan', true, true);
  END IF;

  -- Synonym: Tugas
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tugas')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tugas', false, true);
  END IF;
  -- Synonym: Task
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Task')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Task', false, true);
  END IF;
END $$;

-- [RADICAL] 生 (Level 3)
DO $$
DECLARE
  v_item_id uuid := 'bfd15da0-4e18-45ee-8fed-8e485331b3f1'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'hidup' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hidup')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Hidup', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Hidup', true, true);
  END IF;

  -- Synonym: Kehidupan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kehidupan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kehidupan', false, true);
  END IF;
  -- Synonym: Life
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Life')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Life', false, true);
  END IF;
END $$;

-- [VOCABULARY] これ (Level 3)
DO $$
DECLARE
  v_item_id uuid := '0117c376-2ef7-4ddd-acd4-32fa88727824'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'ini' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ini')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Ini', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Ini', true, true);
  END IF;

  -- Synonym: Benda Ini
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benda Ini')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Benda Ini', false, true);
  END IF;
  -- Synonym: This
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('This')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'This', false, true);
  END IF;
  -- Synonym: This One
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('This One')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'This One', false, true);
  END IF;
END $$;

-- [VOCABULARY] ビー玉 (Level 3)
DO $$
DECLARE
  v_item_id uuid := '9c6230aa-d07e-497e-8f15-1a8bd0e43fcb'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'kelereng' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kelereng')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Kelereng', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kelereng', true, true);
  END IF;

  -- Synonym: Gundu
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gundu')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Gundu', false, true);
  END IF;
  -- Synonym: Marble
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Marble')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Marble', false, true);
  END IF;
END $$;

-- [VOCABULARY] する (Level 3)
DO $$
DECLARE
  v_item_id uuid := '081cdff6-7a33-4da1-ac18-0b1a97b8e12a'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'melakukan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melakukan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Melakukan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Melakukan', true, true);
  END IF;

  -- Synonym: Berbuat
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berbuat')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Berbuat', false, true);
  END IF;
  -- Synonym: To Do
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Do')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Do', false, true);
  END IF;
END $$;

-- [VOCABULARY] リンゴ (Level 3)
DO $$
DECLARE
  v_item_id uuid := 'e8491b5d-2e80-4918-a037-b3974168e477'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'apel' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Apel')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Apel', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Apel', true, true);
  END IF;

  -- Synonym: Buah Apel
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buah Apel')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Buah Apel', false, true);
  END IF;
  -- Synonym: Apple
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Apple')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Apple', false, true);
  END IF;
END $$;

-- [VOCABULARY] 生まれる (Level 3)
DO $$
DECLARE
  v_item_id uuid := 'b1514479-40ee-46ba-bced-3f7e3af0b716'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'lahir' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lahir')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Lahir', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Lahir', true, true);
  END IF;

  -- Synonym: Dilahirkan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dilahirkan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Dilahirkan', false, true);
  END IF;
  -- Synonym: Terlahir
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terlahir')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Terlahir', false, true);
  END IF;
  -- Synonym: To Be Born
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Born')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Be Born', false, true);
  END IF;
END $$;

-- [VOCABULARY] 生 (Level 3)
DO $$
DECLARE
  v_item_id uuid := '55567f8f-e9c2-4c9d-8247-eb8701b6a164'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'mentah' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mentah')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Mentah', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Mentah', true, true);
  END IF;

  -- Synonym: Segar
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Segar')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Segar', false, true);
  END IF;
  -- Synonym: Hidup
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hidup')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Hidup', false, true);
  END IF;
  -- Synonym: Raw
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Raw')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Raw', false, true);
  END IF;
  -- Synonym: Fresh
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fresh')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Fresh', false, true);
  END IF;
  -- Synonym: Live
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Live')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Live', false, true);
  END IF;
END $$;

-- [VOCABULARY] コーヒー (Level 3)
DO $$
DECLARE
  v_item_id uuid := '0b6d2ac6-09d7-48e3-a9fb-cda108ce19f0'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'kopi' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kopi')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Kopi', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kopi', true, true);
  END IF;

  -- Synonym: Coffee
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Coffee')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Coffee', false, true);
  END IF;
END $$;

-- [VOCABULARY] こんにちは (Level 3)
DO $$
DECLARE
  v_item_id uuid := 'efc91141-b56b-48ef-b646-a4d9510a5617'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'halo' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Halo')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Halo', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Halo', true, true);
  END IF;

  -- Synonym: Selamat Siang
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selamat Siang')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Selamat Siang', false, true);
  END IF;
  -- Synonym: Hai
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hai')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Hai', false, true);
  END IF;
  -- Synonym: Hello
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hello')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Hello', false, true);
  END IF;
  -- Synonym: Good Afternoon
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Good Afternoon')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Good Afternoon', false, true);
  END IF;
END $$;

-- [VOCABULARY] いつ (Level 3)
DO $$
DECLARE
  v_item_id uuid := 'fddb6a56-66ad-46ff-b47a-5b6eb1117ac3'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'kapan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kapan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Kapan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kapan', true, true);
  END IF;

  -- Synonym: Bila
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bila')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bila', false, true);
  END IF;
  -- Synonym: When
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('When')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'When', false, true);
  END IF;
END $$;

-- [VOCABULARY] 切る (Level 3)
DO $$
DECLARE
  v_item_id uuid := '7f541176-a55d-45aa-a5f4-c48da57d2605'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'memotong' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memotong')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Memotong', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Memotong', true, true);
  END IF;

  -- Synonym: Mengiris
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengiris')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Mengiris', false, true);
  END IF;
  -- Synonym: To Cut
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cut')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Cut', false, true);
  END IF;
  -- Synonym: To Cut Something
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cut Something')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Cut Something', false, true);
  END IF;
END $$;

-- [VOCABULARY] 引く (Level 3)
DO $$
DECLARE
  v_item_id uuid := 'c0af85a6-c29d-416f-b183-a99ab19e5d96'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'menarik' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menarik')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Menarik', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Menarik', true, true);
  END IF;

  -- Synonym: Menghela
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghela')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Menghela', false, true);
  END IF;
  -- Synonym: To Pull
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pull')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Pull', false, true);
  END IF;
  -- Synonym: To Withdraw
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Withdraw')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Withdraw', false, true);
  END IF;
  -- Synonym: To Draw
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Draw')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Draw', false, true);
  END IF;
END $$;

-- [VOCABULARY] 心 (Level 3)
DO $$
DECLARE
  v_item_id uuid := '736d9eaf-4884-4b62-8f82-701462fae150'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'hati' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hati')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Hati', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Hati', true, true);
  END IF;

  -- Synonym: Pikiran
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pikiran')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Pikiran', false, true);
  END IF;
  -- Synonym: Jiwa
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jiwa')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Jiwa', false, true);
  END IF;
  -- Synonym: Perasaan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perasaan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Perasaan', false, true);
  END IF;
  -- Synonym: Heart
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Heart')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Heart', false, true);
  END IF;
  -- Synonym: Mind
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mind')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Mind', false, true);
  END IF;
  -- Synonym: Feeling
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Feeling')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Feeling', false, true);
  END IF;
END $$;

-- [VOCABULARY] 戸口 (Level 3)
DO $$
DECLARE
  v_item_id uuid := 'c87845c3-faa7-490b-b1a3-4e869327a24f'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'ambang-pintu' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ambang Pintu')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Ambang Pintu', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Ambang Pintu', true, true);
  END IF;

  -- Synonym: Pintu Masuk
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pintu Masuk')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Pintu Masuk', false, true);
  END IF;
  -- Synonym: Doorway
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Doorway')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Doorway', false, true);
  END IF;
END $$;

-- [VOCABULARY] 止める (Level 3)
DO $$
DECLARE
  v_item_id uuid := '379348ae-e141-4863-bd7c-f652b206035e'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'menghentikan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghentikan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Menghentikan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Menghentikan', true, true);
  END IF;

  -- Synonym: Menyetop
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyetop')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Menyetop', false, true);
  END IF;
  -- Synonym: Berhenti
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berhenti')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Berhenti', false, true);
  END IF;
  -- Synonym: To Stop Something
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stop Something')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Stop Something', false, true);
  END IF;
  -- Synonym: To Stop
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stop')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Stop', false, true);
  END IF;
END $$;

-- [VOCABULARY] 外 (Level 3)
DO $$
DECLARE
  v_item_id uuid := '45b4d7af-3b76-4ecc-9ae6-d1b2ca092b6e'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'luar' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Luar', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Luar', true, true);
  END IF;

  -- Synonym: Di Luar
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Luar')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Di Luar', false, true);
  END IF;
  -- Synonym: Bagian Luar
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bagian Luar')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bagian Luar', false, true);
  END IF;
  -- Synonym: Outside
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Outside')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Outside', false, true);
  END IF;
  -- Synonym: External
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('External')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'External', false, true);
  END IF;
END $$;

-- [VOCABULARY] 市立 (Level 3)
DO $$
DECLARE
  v_item_id uuid := '437913a8-c96f-4601-af9d-d2d69e10b546'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'milik-kota' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Milik Kota')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Milik Kota', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Milik Kota', true, true);
  END IF;

  -- Synonym: Tingkat Kota
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tingkat Kota')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tingkat Kota', false, true);
  END IF;
  -- Synonym: Pemerintah Kota
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemerintah Kota')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Pemerintah Kota', false, true);
  END IF;
  -- Synonym: Municipal
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Municipal')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Municipal', false, true);
  END IF;
  -- Synonym: City-Run
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('City-Run')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'City-Run', false, true);
  END IF;
END $$;

-- [VOCABULARY] 用いる (Level 3)
DO $$
DECLARE
  v_item_id uuid := '3cac51e6-a29a-4d5f-b98f-6db69a9f456d'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'menggunakan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggunakan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Menggunakan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Menggunakan', true, true);
  END IF;

  -- Synonym: Memakai
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memakai')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Memakai', false, true);
  END IF;
  -- Synonym: Memanfaatkan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memanfaatkan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Memanfaatkan', false, true);
  END IF;
  -- Synonym: To Use
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Use')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Use', false, true);
  END IF;
  -- Synonym: To Utilize
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Utilize')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Utilize', false, true);
  END IF;
END $$;

-- [VOCABULARY] 字 (Level 3)
DO $$
DECLARE
  v_item_id uuid := '84ed0c69-147a-4b08-9596-b6323374181e'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'huruf' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Huruf')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Huruf', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Huruf', true, true);
  END IF;

  -- Synonym: Karakter
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karakter')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Karakter', false, true);
  END IF;
  -- Synonym: Aksara
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aksara')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Aksara', false, true);
  END IF;
  -- Synonym: Character
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Character')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Character', false, true);
  END IF;
  -- Synonym: Kanji Character
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kanji Character')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kanji Character', false, true);
  END IF;
  -- Synonym: Letter
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Letter')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Letter', false, true);
  END IF;
END $$;

-- [VOCABULARY] 人生 (Level 3)
DO $$
DECLARE
  v_item_id uuid := '644be062-4ca2-4959-aabb-599957ca1648'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'jalan-hidup' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jalan Hidup')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Jalan Hidup', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Jalan Hidup', true, true);
  END IF;

  -- Synonym: Kehidupan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kehidupan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kehidupan', false, true);
  END IF;
  -- Synonym: Hidup Manusia
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hidup Manusia')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Hidup Manusia', false, true);
  END IF;
  -- Synonym: One''s Life
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('One''s Life')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'One''s Life', false, true);
  END IF;
  -- Synonym: Human Life
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Human Life')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Human Life', false, true);
  END IF;
  -- Synonym: Life
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Life')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Life', false, true);
  END IF;
END $$;

-- [VOCABULARY] 〜台 (Level 3)
DO $$
DECLARE
  v_item_id uuid := 'ea2300b3-1cb5-4fba-b2c2-29b42ce418ed'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'unit-penghitung-mesin' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unit (Penghitung Mesin)')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Unit (Penghitung Mesin)', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Unit (Penghitung Mesin)', true, true);
  END IF;

  -- Synonym: Unit
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unit')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Unit', false, true);
  END IF;
  -- Synonym: Penghitung Mesin
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penghitung Mesin')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Penghitung Mesin', false, true);
  END IF;
  -- Synonym: Machine Counter
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Machine Counter')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Machine Counter', false, true);
  END IF;
  -- Synonym: Counter For Machines
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Counter For Machines')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Counter For Machines', false, true);
  END IF;
END $$;

-- [VOCABULARY] 〜人 (Level 3)
DO $$
DECLARE
  v_item_id uuid := 'f071ae1d-cd33-4bdc-9399-284118067fd0'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'orang-penghitung-orang' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Orang (Penghitung Orang)')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Orang (Penghitung Orang)', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Orang (Penghitung Orang)', true, true);
  END IF;

  -- Synonym: Orang
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Orang')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Orang', false, true);
  END IF;
  -- Synonym: Penghitung Orang
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penghitung Orang')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Penghitung Orang', false, true);
  END IF;
  -- Synonym: Counter For People
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Counter For People')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Counter For People', false, true);
  END IF;
  -- Synonym: Number Of People
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Number Of People')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Number Of People', false, true);
  END IF;
END $$;

-- [VOCABULARY] 用 (Level 3)
DO $$
DECLARE
  v_item_id uuid := '4f479f67-fb0e-413f-a4a1-d93ebeb9ebc0'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'keperluan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keperluan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Keperluan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Keperluan', true, true);
  END IF;

  -- Synonym: Urusan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Urusan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Urusan', false, true);
  END IF;
  -- Synonym: Tugas
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tugas')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tugas', false, true);
  END IF;
  -- Synonym: Kegunaan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kegunaan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Kegunaan', false, true);
  END IF;
  -- Synonym: Task
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Task')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Task', false, true);
  END IF;
  -- Synonym: Use
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Use')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Use', false, true);
  END IF;
  -- Synonym: Business
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Business')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Business', false, true);
  END IF;
  -- Synonym: Purpose
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Purpose')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Purpose', false, true);
  END IF;
END $$;

-- [VOCABULARY] 広げる (Level 3)
DO $$
DECLARE
  v_item_id uuid := '3e0e96f8-a0cb-4889-854a-8788b60aa223'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'membentangkan' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membentangkan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Membentangkan', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Membentangkan', true, true);
  END IF;

  -- Synonym: Membuka
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membuka')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Membuka', false, true);
  END IF;
  -- Synonym: Menyebarkan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyebarkan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Menyebarkan', false, true);
  END IF;
  -- Synonym: Meluaskan
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meluaskan')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Meluaskan', false, true);
  END IF;
  -- Synonym: To Spread Something
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Spread Something')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Spread Something', false, true);
  END IF;
  -- Synonym: To Unfold Something
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Unfold Something')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Unfold Something', false, true);
  END IF;
  -- Synonym: To Expand Something
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Expand Something')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'To Expand Something', false, true);
  END IF;
END $$;

-- [VOCABULARY] 生ビール (Level 3)
DO $$
DECLARE
  v_item_id uuid := '7e50a7a0-000c-4eec-baeb-ec6f4ae4ec71'::uuid;
  v_meaning_id uuid;
BEGIN
  -- Update slug
  UPDATE items SET slug = 'bir-draf' WHERE id = v_item_id;

  -- Reset existing primary flags for this item
  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;

  -- Check if new primary meaning already exists
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bir Draf')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET meaning = 'Bir Draf', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bir Draf', true, true);
  END IF;

  -- Synonym: Bir Segar
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bir Segar')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Bir Segar', false, true);
  END IF;
  -- Synonym: Draft Beer
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Draft Beer')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Draft Beer', false, true);
  END IF;
  -- Synonym: Tap Beer
  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tap Beer')) LIMIT 1;
  IF v_meaning_id IS NOT NULL THEN
    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;
  ELSE
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)
    VALUES (v_item_id, 'Tap Beer', false, true);
  END IF;
END $$;

COMMIT;
