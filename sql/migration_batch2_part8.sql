-- Migration: Batch 2 Part 8 (Level 28)
-- Total items: 47

DO $$
BEGIN

  -- [KANJI] 並 (Level 28)
  UPDATE item_meanings SET meaning = 'Standar', primary_meaning = true, accepted_answer = true WHERE id = 'b161d211-89e3-4fd3-8020-9735c34e3907';
  UPDATE items SET slug = 'standar' WHERE id = '06c74dd6-1425-4580-a42d-23a4b4b69b0b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06c74dd6-1425-4580-a42d-23a4b4b69b0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Biasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06c74dd6-1425-4580-a42d-23a4b4b69b0b', 'Biasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06c74dd6-1425-4580-a42d-23a4b4b69b0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Porsi Sedang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06c74dd6-1425-4580-a42d-23a4b4b69b0b', 'Porsi Sedang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06c74dd6-1425-4580-a42d-23a4b4b69b0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ordinary'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06c74dd6-1425-4580-a42d-23a4b4b69b0b', 'Ordinary', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06c74dd6-1425-4580-a42d-23a4b4b69b0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Average'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06c74dd6-1425-4580-a42d-23a4b4b69b0b', 'Average', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06c74dd6-1425-4580-a42d-23a4b4b69b0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berbaris'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06c74dd6-1425-4580-a42d-23a4b4b69b0b', 'Berbaris', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '06c74dd6-1425-4580-a42d-23a4b4b69b0b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sejajar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('06c74dd6-1425-4580-a42d-23a4b4b69b0b', 'Sejajar', false, true);
  END IF;

  -- [KANJI] 修 (Level 28)
  UPDATE item_meanings SET meaning = 'Memperbaiki', primary_meaning = true, accepted_answer = true WHERE id = 'ec568bdc-ad35-4f52-b695-67a84d065d35';
  UPDATE items SET slug = 'memperbaiki' WHERE id = 'af1fc179-b668-4fbe-909e-f0891baed1d0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'af1fc179-b668-4fbe-909e-f0891baed1d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mempelajari'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('af1fc179-b668-4fbe-909e-f0891baed1d0', 'Mempelajari', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'af1fc179-b668-4fbe-909e-f0891baed1d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menekuni'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('af1fc179-b668-4fbe-909e-f0891baed1d0', 'Menekuni', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'af1fc179-b668-4fbe-909e-f0891baed1d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mastering'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('af1fc179-b668-4fbe-909e-f0891baed1d0', 'Mastering', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'af1fc179-b668-4fbe-909e-f0891baed1d0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Repair'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('af1fc179-b668-4fbe-909e-f0891baed1d0', 'Repair', false, true);
  END IF;

  -- [KANJI] 処 (Level 28)
  UPDATE item_meanings SET meaning = 'Menangani', primary_meaning = true, accepted_answer = true WHERE id = '9a13b254-b972-4af9-9e25-932a3a5fd86e';
  UPDATE items SET slug = 'menangani' WHERE id = 'd629078b-c9df-4cfb-ba9a-149c9b50eb57';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd629078b-c9df-4cfb-ba9a-149c9b50eb57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengolah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d629078b-c9df-4cfb-ba9a-149c9b50eb57', 'Mengolah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd629078b-c9df-4cfb-ba9a-149c9b50eb57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengatasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d629078b-c9df-4cfb-ba9a-149c9b50eb57', 'Mengatasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd629078b-c9df-4cfb-ba9a-149c9b50eb57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deal With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d629078b-c9df-4cfb-ba9a-149c9b50eb57', 'Deal With', false, true);
  END IF;

  -- [KANJI] 博 (Level 28)
  UPDATE item_meanings SET meaning = 'Pameran', primary_meaning = true, accepted_answer = true WHERE id = '21219e08-df61-44a0-8ec4-6c5f890ad986';
  UPDATE items SET slug = 'pameran' WHERE id = 'ce18e0c4-c0cc-498b-9bb5-6593d467b563';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ce18e0c4-c0cc-498b-9bb5-6593d467b563' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Judi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ce18e0c4-c0cc-498b-9bb5-6593d467b563', 'Judi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ce18e0c4-c0cc-498b-9bb5-6593d467b563' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ce18e0c4-c0cc-498b-9bb5-6593d467b563', 'Luas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ce18e0c4-c0cc-498b-9bb5-6593d467b563' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exhibition'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ce18e0c4-c0cc-498b-9bb5-6593d467b563', 'Exhibition', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ce18e0c4-c0cc-498b-9bb5-6593d467b563' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Doctor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ce18e0c4-c0cc-498b-9bb5-6593d467b563', 'Doctor', false, true);
  END IF;

  -- [KANJI] 妙 (Level 28)
  UPDATE item_meanings SET meaning = 'Aneh', primary_meaning = true, accepted_answer = true WHERE id = '20f75818-5816-430e-b7d3-c12712f5413b';
  UPDATE items SET slug = 'aneh' WHERE id = 'e20ac887-2444-4231-83d2-91a12000a19a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e20ac887-2444-4231-83d2-91a12000a19a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ganjil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e20ac887-2444-4231-83d2-91a12000a19a', 'Ganjil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e20ac887-2444-4231-83d2-91a12000a19a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e20ac887-2444-4231-83d2-91a12000a19a', 'Unik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e20ac887-2444-4231-83d2-91a12000a19a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peculiar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e20ac887-2444-4231-83d2-91a12000a19a', 'Peculiar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e20ac887-2444-4231-83d2-91a12000a19a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Odd'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e20ac887-2444-4231-83d2-91a12000a19a', 'Odd', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e20ac887-2444-4231-83d2-91a12000a19a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menakjubkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e20ac887-2444-4231-83d2-91a12000a19a', 'Menakjubkan', false, true);
  END IF;

  -- [KANJI] 幼 (Level 28)
  UPDATE item_meanings SET meaning = 'Belia', primary_meaning = true, accepted_answer = true WHERE id = '5dd81020-1ec1-4660-b448-bfd3255d4550';
  UPDATE items SET slug = 'belia' WHERE id = '85ab8f52-129c-4d9b-a3f6-2c943076de57';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85ab8f52-129c-4d9b-a3f6-2c943076de57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masa Kanak-kanak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85ab8f52-129c-4d9b-a3f6-2c943076de57', 'Masa Kanak-kanak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85ab8f52-129c-4d9b-a3f6-2c943076de57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kanak-kanak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85ab8f52-129c-4d9b-a3f6-2c943076de57', 'Kanak-kanak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85ab8f52-129c-4d9b-a3f6-2c943076de57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Infancy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85ab8f52-129c-4d9b-a3f6-2c943076de57', 'Infancy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '85ab8f52-129c-4d9b-a3f6-2c943076de57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Childhood'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('85ab8f52-129c-4d9b-a3f6-2c943076de57', 'Childhood', false, true);
  END IF;

  -- [KANJI] 揃 (Level 28)
  UPDATE item_meanings SET meaning = 'Lengkap', primary_meaning = true, accepted_answer = true WHERE id = 'ac663b74-9a42-4562-966f-5ab8e9fced98';
  UPDATE items SET slug = 'lengkap' WHERE id = '3f8f2ee4-3074-4548-9cd6-349bc5ae4702';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f8f2ee4-3074-4548-9cd6-349bc5ae4702' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengumpulkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f8f2ee4-3074-4548-9cd6-349bc5ae4702', 'Mengumpulkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f8f2ee4-3074-4548-9cd6-349bc5ae4702' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kompak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f8f2ee4-3074-4548-9cd6-349bc5ae4702', 'Kompak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f8f2ee4-3074-4548-9cd6-349bc5ae4702' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Complete'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f8f2ee4-3074-4548-9cd6-349bc5ae4702', 'Complete', false, true);
  END IF;

  -- [KANJI] 攻 (Level 28)
  UPDATE item_meanings SET meaning = 'Menyerang', primary_meaning = true, accepted_answer = true WHERE id = 'f806c985-69f9-4f54-933a-4aa2cfea0643';
  UPDATE items SET slug = 'menyerang' WHERE id = '98762ce9-3139-4d20-b3d6-0c4917c43fb0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98762ce9-3139-4d20-b3d6-0c4917c43fb0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menekuni'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98762ce9-3139-4d20-b3d6-0c4917c43fb0', 'Menekuni', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98762ce9-3139-4d20-b3d6-0c4917c43fb0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agresi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98762ce9-3139-4d20-b3d6-0c4917c43fb0', 'Agresi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98762ce9-3139-4d20-b3d6-0c4917c43fb0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aggression'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98762ce9-3139-4d20-b3d6-0c4917c43fb0', 'Aggression', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '98762ce9-3139-4d20-b3d6-0c4917c43fb0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Attack'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('98762ce9-3139-4d20-b3d6-0c4917c43fb0', 'Attack', false, true);
  END IF;

  -- [KANJI] 程 (Level 28)
  UPDATE item_meanings SET meaning = 'Batasan', primary_meaning = true, accepted_answer = true WHERE id = 'a34b5889-23e0-43b9-ba7e-bae52eb6d332';
  UPDATE items SET slug = 'batasan' WHERE id = '3bafd27f-920f-46c7-8e0b-2d8f6164f72d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3bafd27f-920f-46c7-8e0b-2d8f6164f72d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kira-kira'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3bafd27f-920f-46c7-8e0b-2d8f6164f72d', 'Kira-kira', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3bafd27f-920f-46c7-8e0b-2d8f6164f72d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kadar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3bafd27f-920f-46c7-8e0b-2d8f6164f72d', 'Kadar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3bafd27f-920f-46c7-8e0b-2d8f6164f72d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Extent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3bafd27f-920f-46c7-8e0b-2d8f6164f72d', 'Extent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3bafd27f-920f-46c7-8e0b-2d8f6164f72d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tingkatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3bafd27f-920f-46c7-8e0b-2d8f6164f72d', 'Tingkatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3bafd27f-920f-46c7-8e0b-2d8f6164f72d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jarak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3bafd27f-920f-46c7-8e0b-2d8f6164f72d', 'Jarak', false, true);
  END IF;

  -- [KANJI] 稚 (Level 28)
  UPDATE item_meanings SET meaning = 'Belum Dewasa', primary_meaning = true, accepted_answer = true WHERE id = 'b68eb551-0a24-46ba-90f2-2849f39707c2';
  UPDATE items SET slug = 'belum-dewasa' WHERE id = 'db2897ba-deea-4d41-9e49-c34720298ae3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db2897ba-deea-4d41-9e49-c34720298ae3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kanak-kanak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db2897ba-deea-4d41-9e49-c34720298ae3', 'Kanak-kanak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db2897ba-deea-4d41-9e49-c34720298ae3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dangkal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db2897ba-deea-4d41-9e49-c34720298ae3', 'Dangkal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db2897ba-deea-4d41-9e49-c34720298ae3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Immature'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db2897ba-deea-4d41-9e49-c34720298ae3', 'Immature', false, true);
  END IF;

  -- [KANJI] 衆 (Level 28)
  UPDATE item_meanings SET meaning = 'Masyarakat', primary_meaning = true, accepted_answer = true WHERE id = 'fcb94f8f-b8ab-4bb7-a639-79616b437b95';
  UPDATE items SET slug = 'masyarakat' WHERE id = 'f33e287a-c061-488c-8b0e-069b48c2a0bb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f33e287a-c061-488c-8b0e-069b48c2a0bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Khalayak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f33e287a-c061-488c-8b0e-069b48c2a0bb', 'Khalayak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f33e287a-c061-488c-8b0e-069b48c2a0bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Massa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f33e287a-c061-488c-8b0e-069b48c2a0bb', 'Massa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f33e287a-c061-488c-8b0e-069b48c2a0bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Populace'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f33e287a-c061-488c-8b0e-069b48c2a0bb', 'Populace', false, true);
  END IF;

  -- [KANJI] 逆 (Level 28)
  UPDATE item_meanings SET meaning = 'Kebalikan', primary_meaning = true, accepted_answer = true WHERE id = '9789b0f2-ddf5-4645-8415-4742ce8cdb47';
  UPDATE items SET slug = 'kebalikan' WHERE id = '73ed2a6c-5329-40f3-b081-91a4f31e151e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ed2a6c-5329-40f3-b081-91a4f31e151e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berlawanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ed2a6c-5329-40f3-b081-91a4f31e151e', 'Berlawanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ed2a6c-5329-40f3-b081-91a4f31e151e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terbalik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ed2a6c-5329-40f3-b081-91a4f31e151e', 'Terbalik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ed2a6c-5329-40f3-b081-91a4f31e151e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reverse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ed2a6c-5329-40f3-b081-91a4f31e151e', 'Reverse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73ed2a6c-5329-40f3-b081-91a4f31e151e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Opposite'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73ed2a6c-5329-40f3-b081-91a4f31e151e', 'Opposite', false, true);
  END IF;

  -- [VOCABULARY] 並 (Level 28)
  UPDATE item_meanings SET meaning = 'Standar', primary_meaning = true, accepted_answer = true WHERE id = '6dea8918-f629-4224-a6cb-b1378c3005f4';
  UPDATE items SET slug = 'standar' WHERE id = '8b6be534-58b7-4d17-a5e8-581657ddc29b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8b6be534-58b7-4d17-a5e8-581657ddc29b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Biasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8b6be534-58b7-4d17-a5e8-581657ddc29b', 'Biasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8b6be534-58b7-4d17-a5e8-581657ddc29b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Porsi Sedang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8b6be534-58b7-4d17-a5e8-581657ddc29b', 'Porsi Sedang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8b6be534-58b7-4d17-a5e8-581657ddc29b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ordinary'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8b6be534-58b7-4d17-a5e8-581657ddc29b', 'Ordinary', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8b6be534-58b7-4d17-a5e8-581657ddc29b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Average'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8b6be534-58b7-4d17-a5e8-581657ddc29b', 'Average', false, true);
  END IF;

  -- [VOCABULARY] 並ぶ (Level 28)
  UPDATE item_meanings SET meaning = 'Berbaris', primary_meaning = true, accepted_answer = true WHERE id = '07c647ff-5036-4857-a661-238c2ab6a23d';
  UPDATE items SET slug = 'berbaris' WHERE id = '53a8be2a-0867-4d07-8873-f6bcf31c898c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53a8be2a-0867-4d07-8873-f6bcf31c898c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengantre'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53a8be2a-0867-4d07-8873-f6bcf31c898c', 'Mengantre', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53a8be2a-0867-4d07-8873-f6bcf31c898c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sejajar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53a8be2a-0867-4d07-8873-f6bcf31c898c', 'Sejajar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '53a8be2a-0867-4d07-8873-f6bcf31c898c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Line Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('53a8be2a-0867-4d07-8873-f6bcf31c898c', 'To Line Up', false, true);
  END IF;

  -- [VOCABULARY] 並列 (Level 28)
  UPDATE item_meanings SET meaning = 'Paralel', primary_meaning = true, accepted_answer = true WHERE id = '79f10009-cc86-4016-8fb8-d4cb0ddbe3cb';
  UPDATE items SET slug = 'paralel' WHERE id = '7ead8f8a-cafa-4d34-8f58-2ff10a36cfd3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ead8f8a-cafa-4d34-8f58-2ff10a36cfd3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sejajar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ead8f8a-cafa-4d34-8f58-2ff10a36cfd3', 'Sejajar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ead8f8a-cafa-4d34-8f58-2ff10a36cfd3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berdampingan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ead8f8a-cafa-4d34-8f58-2ff10a36cfd3', 'Berdampingan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ead8f8a-cafa-4d34-8f58-2ff10a36cfd3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Parallel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ead8f8a-cafa-4d34-8f58-2ff10a36cfd3', 'Parallel', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7ead8f8a-cafa-4d34-8f58-2ff10a36cfd3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Side By Side'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7ead8f8a-cafa-4d34-8f58-2ff10a36cfd3', 'Side By Side', false, true);
  END IF;

  -- [VOCABULARY] 修理 (Level 28)
  UPDATE item_meanings SET meaning = 'Reparasi', primary_meaning = true, accepted_answer = true WHERE id = 'aafe06b2-c025-4d6e-b651-9ea6f1e62712';
  UPDATE items SET slug = 'reparasi' WHERE id = '6941401a-cad9-4c6d-be77-e08134ef48dd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6941401a-cad9-4c6d-be77-e08134ef48dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perbaikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6941401a-cad9-4c6d-be77-e08134ef48dd', 'Perbaikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6941401a-cad9-4c6d-be77-e08134ef48dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Service'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6941401a-cad9-4c6d-be77-e08134ef48dd', 'Service', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6941401a-cad9-4c6d-be77-e08134ef48dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Repair'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6941401a-cad9-4c6d-be77-e08134ef48dd', 'Repair', false, true);
  END IF;

  -- [VOCABULARY] 入隊 (Level 28)
  UPDATE item_meanings SET meaning = 'Wajib Militer', primary_meaning = true, accepted_answer = true WHERE id = '8ec0b2f8-b028-4a3a-b286-33587b944df9';
  UPDATE items SET slug = 'wajib-militer' WHERE id = '5ebdf601-3da6-4693-8acd-b6ae9fdde5a7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5ebdf601-3da6-4693-8acd-b6ae9fdde5a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masuk Pasukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5ebdf601-3da6-4693-8acd-b6ae9fdde5a7', 'Masuk Pasukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5ebdf601-3da6-4693-8acd-b6ae9fdde5a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masuk Dinas Militer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5ebdf601-3da6-4693-8acd-b6ae9fdde5a7', 'Masuk Dinas Militer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5ebdf601-3da6-4693-8acd-b6ae9fdde5a7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enlistment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5ebdf601-3da6-4693-8acd-b6ae9fdde5a7', 'Enlistment', false, true);
  END IF;

  -- [VOCABULARY] 処分 (Level 28)
  UPDATE item_meanings SET meaning = 'Pembuangan', primary_meaning = true, accepted_answer = true WHERE id = '66bc46c0-9ed9-4438-9213-a42f02082642';
  UPDATE items SET slug = 'pembuangan' WHERE id = 'c08e0fc9-a78e-461c-b1b3-c4fad8dec00e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c08e0fc9-a78e-461c-b1b3-c4fad8dec00e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sanksi Disiplin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c08e0fc9-a78e-461c-b1b3-c4fad8dec00e', 'Sanksi Disiplin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c08e0fc9-a78e-461c-b1b3-c4fad8dec00e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hukuman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c08e0fc9-a78e-461c-b1b3-c4fad8dec00e', 'Hukuman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c08e0fc9-a78e-461c-b1b3-c4fad8dec00e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Disposal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c08e0fc9-a78e-461c-b1b3-c4fad8dec00e', 'Disposal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c08e0fc9-a78e-461c-b1b3-c4fad8dec00e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Punishment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c08e0fc9-a78e-461c-b1b3-c4fad8dec00e', 'Punishment', false, true);
  END IF;

  -- [VOCABULARY] 処理 (Level 28)
  UPDATE item_meanings SET meaning = 'Pemrosesan', primary_meaning = true, accepted_answer = true WHERE id = '4137d312-5b7f-4206-a644-c1620972dd17';
  UPDATE items SET slug = 'pemrosesan' WHERE id = 'abc8ad84-e881-47bf-8161-93b3464ff29b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'abc8ad84-e881-47bf-8161-93b3464ff29b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penanganan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('abc8ad84-e881-47bf-8161-93b3464ff29b', 'Penanganan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'abc8ad84-e881-47bf-8161-93b3464ff29b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengolahan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('abc8ad84-e881-47bf-8161-93b3464ff29b', 'Pengolahan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'abc8ad84-e881-47bf-8161-93b3464ff29b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Processing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('abc8ad84-e881-47bf-8161-93b3464ff29b', 'Processing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'abc8ad84-e881-47bf-8161-93b3464ff29b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Handling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('abc8ad84-e881-47bf-8161-93b3464ff29b', 'Handling', false, true);
  END IF;

  -- [VOCABULARY] 前売り券 (Level 28)
  UPDATE item_meanings SET meaning = 'Tiket Presale', primary_meaning = true, accepted_answer = true WHERE id = '60227d1b-448a-4aee-bc4a-7e16e6aedf5f';
  UPDATE items SET slug = 'tiket-presale' WHERE id = '347b3fe4-975d-448b-9314-31e024ed5c47';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '347b3fe4-975d-448b-9314-31e024ed5c47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Beli di Muka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('347b3fe4-975d-448b-9314-31e024ed5c47', 'Beli di Muka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '347b3fe4-975d-448b-9314-31e024ed5c47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tiket Awal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('347b3fe4-975d-448b-9314-31e024ed5c47', 'Tiket Awal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '347b3fe4-975d-448b-9314-31e024ed5c47' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Advance Ticket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('347b3fe4-975d-448b-9314-31e024ed5c47', 'Advance Ticket', false, true);
  END IF;

  -- [VOCABULARY] 回数券 (Level 28)
  UPDATE item_meanings SET meaning = 'Kupon Tiket', primary_meaning = true, accepted_answer = true WHERE id = '005f5460-04bb-4f08-91df-f06fbb3b8b89';
  UPDATE items SET slug = 'kupon-tiket' WHERE id = '5c0ca5f8-35be-4343-b21c-71f02adead57';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c0ca5f8-35be-4343-b21c-71f02adead57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kupon Tiket Komuter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c0ca5f8-35be-4343-b21c-71f02adead57', 'Kupon Tiket Komuter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c0ca5f8-35be-4343-b21c-71f02adead57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bundel Tiket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c0ca5f8-35be-4343-b21c-71f02adead57', 'Bundel Tiket', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c0ca5f8-35be-4343-b21c-71f02adead57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Book Of Tickets'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c0ca5f8-35be-4343-b21c-71f02adead57', 'Book Of Tickets', false, true);
  END IF;

  -- [VOCABULARY] 大衆 (Level 28)
  UPDATE item_meanings SET meaning = 'Masyarakat Umum', primary_meaning = true, accepted_answer = true WHERE id = '686359b1-8b91-487a-a4cd-1fc1ba3cab6a';
  UPDATE items SET slug = 'masyarakat-umum' WHERE id = '2ca98706-8e1a-4862-ae48-db3d3b9f9fe9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2ca98706-8e1a-4862-ae48-db3d3b9f9fe9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Publik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2ca98706-8e1a-4862-ae48-db3d3b9f9fe9', 'Publik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2ca98706-8e1a-4862-ae48-db3d3b9f9fe9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Khalayak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2ca98706-8e1a-4862-ae48-db3d3b9f9fe9', 'Khalayak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2ca98706-8e1a-4862-ae48-db3d3b9f9fe9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('General Public'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2ca98706-8e1a-4862-ae48-db3d3b9f9fe9', 'General Public', false, true);
  END IF;

  -- [VOCABULARY] 妙 (Level 28)
  UPDATE item_meanings SET meaning = 'Aneh', primary_meaning = true, accepted_answer = true WHERE id = 'a1c3ad30-8524-4150-bd26-31a0ae6ae171';
  UPDATE items SET slug = 'aneh' WHERE id = '4ca720dd-1b5d-4dad-be58-9f2c17d25063';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ca720dd-1b5d-4dad-be58-9f2c17d25063' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ganjil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ca720dd-1b5d-4dad-be58-9f2c17d25063', 'Ganjil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ca720dd-1b5d-4dad-be58-9f2c17d25063' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ca720dd-1b5d-4dad-be58-9f2c17d25063', 'Unik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ca720dd-1b5d-4dad-be58-9f2c17d25063' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peculiar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ca720dd-1b5d-4dad-be58-9f2c17d25063', 'Peculiar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ca720dd-1b5d-4dad-be58-9f2c17d25063' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Odd'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ca720dd-1b5d-4dad-be58-9f2c17d25063', 'Odd', false, true);
  END IF;

  -- [VOCABULARY] 専攻 (Level 28)
  UPDATE item_meanings SET meaning = 'Jurusan', primary_meaning = true, accepted_answer = true WHERE id = 'd9282051-1c3e-435a-82d0-1d05e4d09872';
  UPDATE items SET slug = 'jurusan' WHERE id = 'bad6b42c-aeb0-42e5-8ec9-babc8f7d1084';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bad6b42c-aeb0-42e5-8ec9-babc8f7d1084' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jurusan Kuliah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bad6b42c-aeb0-42e5-8ec9-babc8f7d1084', 'Jurusan Kuliah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bad6b42c-aeb0-42e5-8ec9-babc8f7d1084' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bidang Peminatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bad6b42c-aeb0-42e5-8ec9-babc8f7d1084', 'Bidang Peminatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bad6b42c-aeb0-42e5-8ec9-babc8f7d1084' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Major'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bad6b42c-aeb0-42e5-8ec9-babc8f7d1084', 'Major', false, true);
  END IF;

  -- [VOCABULARY] 履く (Level 28)
  UPDATE item_meanings SET meaning = 'Mengenakan', primary_meaning = true, accepted_answer = true WHERE id = 'b9950a37-a2b5-44f9-a450-f6a021c991fe';
  UPDATE items SET slug = 'mengenakan' WHERE id = '40455ab2-600d-424d-add5-0ea0d9b35838';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '40455ab2-600d-424d-add5-0ea0d9b35838' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memakai Sepatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('40455ab2-600d-424d-add5-0ea0d9b35838', 'Memakai Sepatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '40455ab2-600d-424d-add5-0ea0d9b35838' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memakai Celana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('40455ab2-600d-424d-add5-0ea0d9b35838', 'Memakai Celana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '40455ab2-600d-424d-add5-0ea0d9b35838' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Put On Shoes'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('40455ab2-600d-424d-add5-0ea0d9b35838', 'To Put On Shoes', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '40455ab2-600d-424d-add5-0ea0d9b35838' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengenakan (Sepatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('40455ab2-600d-424d-add5-0ea0d9b35838', 'Mengenakan (Sepatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '40455ab2-600d-424d-add5-0ea0d9b35838' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Celana)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('40455ab2-600d-424d-add5-0ea0d9b35838', 'Celana)', false, true);
  END IF;

  -- [VOCABULARY] 幼い (Level 28)
  UPDATE item_meanings SET meaning = 'Belia', primary_meaning = true, accepted_answer = true WHERE id = '7ea43abd-4447-45cf-a497-05cece489d59';
  UPDATE items SET slug = 'belia' WHERE id = '49097917-4eee-470b-b189-063be109c24f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49097917-4eee-470b-b189-063be109c24f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kanak-kanak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49097917-4eee-470b-b189-063be109c24f', 'Kanak-kanak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49097917-4eee-470b-b189-063be109c24f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Polos'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49097917-4eee-470b-b189-063be109c24f', 'Polos', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49097917-4eee-470b-b189-063be109c24f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Young'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49097917-4eee-470b-b189-063be109c24f', 'Young', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49097917-4eee-470b-b189-063be109c24f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Childish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49097917-4eee-470b-b189-063be109c24f', 'Childish', false, true);
  END IF;

  -- [VOCABULARY] 幼稚 (Level 28)
  UPDATE item_meanings SET meaning = 'Kekanak-kanakan', primary_meaning = true, accepted_answer = true WHERE id = '74df8817-47b6-4062-b0ef-20bbec6e5dad';
  UPDATE items SET slug = 'kekanak-kanakan' WHERE id = 'aac247ad-53b6-480e-9acf-8b356c70a2eb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aac247ad-53b6-480e-9acf-8b356c70a2eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dangkal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aac247ad-53b6-480e-9acf-8b356c70a2eb', 'Dangkal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aac247ad-53b6-480e-9acf-8b356c70a2eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tergolong Anak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aac247ad-53b6-480e-9acf-8b356c70a2eb', 'Tergolong Anak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aac247ad-53b6-480e-9acf-8b356c70a2eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Childish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aac247ad-53b6-480e-9acf-8b356c70a2eb', 'Childish', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aac247ad-53b6-480e-9acf-8b356c70a2eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Immature'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aac247ad-53b6-480e-9acf-8b356c70a2eb', 'Immature', false, true);
  END IF;

  -- [VOCABULARY] 微妙 (Level 28)
  UPDATE item_meanings SET meaning = 'Ragu-ragu', primary_meaning = true, accepted_answer = true WHERE id = '9e933a24-8eeb-463f-9e0b-e31ddb542aa0';
  UPDATE items SET slug = 'ragu-ragu' WHERE id = '8ae4443d-1374-47b5-bf03-4553baa3c265';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ae4443d-1374-47b5-bf03-4553baa3c265' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kurang Pas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ae4443d-1374-47b5-bf03-4553baa3c265', 'Kurang Pas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ae4443d-1374-47b5-bf03-4553baa3c265' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Samar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ae4443d-1374-47b5-bf03-4553baa3c265', 'Samar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ae4443d-1374-47b5-bf03-4553baa3c265' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Halus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ae4443d-1374-47b5-bf03-4553baa3c265', 'Halus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ae4443d-1374-47b5-bf03-4553baa3c265' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Subtle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ae4443d-1374-47b5-bf03-4553baa3c265', 'Subtle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8ae4443d-1374-47b5-bf03-4553baa3c265' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Delicate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8ae4443d-1374-47b5-bf03-4553baa3c265', 'Delicate', false, true);
  END IF;

  -- [VOCABULARY] 揃う (Level 28)
  UPDATE item_meanings SET meaning = 'Lengkap', primary_meaning = true, accepted_answer = true WHERE id = '0b3093aa-323b-4ab2-b9f7-08c601bddaf7';
  UPDATE items SET slug = 'lengkap' WHERE id = 'd3003424-188f-419d-b5d3-145ab0b994dc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd3003424-188f-419d-b5d3-145ab0b994dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lengkap Berkumpul'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d3003424-188f-419d-b5d3-145ab0b994dc', 'Lengkap Berkumpul', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd3003424-188f-419d-b5d3-145ab0b994dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kompak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d3003424-188f-419d-b5d3-145ab0b994dc', 'Kompak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd3003424-188f-419d-b5d3-145ab0b994dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Complete'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d3003424-188f-419d-b5d3-145ab0b994dc', 'To Be Complete', false, true);
  END IF;

  -- [VOCABULARY] 攻める (Level 28)
  UPDATE item_meanings SET meaning = 'Menyerang', primary_meaning = true, accepted_answer = true WHERE id = '56c73919-939f-4d6d-91ee-d44d7c4b0c90';
  UPDATE items SET slug = 'menyerang' WHERE id = '242ccaf1-438e-4ebb-9c41-185b898faa03';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '242ccaf1-438e-4ebb-9c41-185b898faa03' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerbu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('242ccaf1-438e-4ebb-9c41-185b898faa03', 'Menyerbu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '242ccaf1-438e-4ebb-9c41-185b898faa03' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Attack'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('242ccaf1-438e-4ebb-9c41-185b898faa03', 'To Attack', false, true);
  END IF;

  -- [VOCABULARY] 日程 (Level 28)
  UPDATE item_meanings SET meaning = 'Jadwal', primary_meaning = true, accepted_answer = true WHERE id = '9e4c4dc9-bd9f-432e-9b6e-2660d117c705';
  UPDATE items SET slug = 'jadwal' WHERE id = 'fe5f9747-0c71-45d4-af62-fc9c7f68ee9c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe5f9747-0c71-45d4-af62-fc9c7f68ee9c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jadwal Kegiatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe5f9747-0c71-45d4-af62-fc9c7f68ee9c', 'Jadwal Kegiatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe5f9747-0c71-45d4-af62-fc9c7f68ee9c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agenda Harian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe5f9747-0c71-45d4-af62-fc9c7f68ee9c', 'Agenda Harian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe5f9747-0c71-45d4-af62-fc9c7f68ee9c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agenda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe5f9747-0c71-45d4-af62-fc9c7f68ee9c', 'Agenda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fe5f9747-0c71-45d4-af62-fc9c7f68ee9c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Schedule'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fe5f9747-0c71-45d4-af62-fc9c7f68ee9c', 'Schedule', false, true);
  END IF;

  -- [VOCABULARY] 極める (Level 28)
  UPDATE item_meanings SET meaning = 'Mendalami', primary_meaning = true, accepted_answer = true WHERE id = '9a26740a-6249-48fe-a9d4-7991bb96160f';
  UPDATE items SET slug = 'mendalami' WHERE id = '3ab985a5-7a6f-4bd2-a882-ed49d3cb167c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3ab985a5-7a6f-4bd2-a882-ed49d3cb167c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mendalami Penuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3ab985a5-7a6f-4bd2-a882-ed49d3cb167c', 'Mendalami Penuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3ab985a5-7a6f-4bd2-a882-ed49d3cb167c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencapai Puncak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3ab985a5-7a6f-4bd2-a882-ed49d3cb167c', 'Mencapai Puncak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3ab985a5-7a6f-4bd2-a882-ed49d3cb167c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Perfect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3ab985a5-7a6f-4bd2-a882-ed49d3cb167c', 'To Perfect', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3ab985a5-7a6f-4bd2-a882-ed49d3cb167c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Reach The Peak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3ab985a5-7a6f-4bd2-a882-ed49d3cb167c', 'To Reach The Peak', false, true);
  END IF;

  -- [VOCABULARY] 潔い (Level 28)
  UPDATE item_meanings SET meaning = 'Ksatria', primary_meaning = true, accepted_answer = true WHERE id = '547b17bc-8cd1-4efd-8c5c-ce623695d529';
  UPDATE items SET slug = 'ksatria' WHERE id = 'c90aa21b-3863-4edc-aa5e-2e69d80f6562';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c90aa21b-3863-4edc-aa5e-2e69d80f6562' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berjiwa Sportif'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c90aa21b-3863-4edc-aa5e-2e69d80f6562', 'Berjiwa Sportif', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c90aa21b-3863-4edc-aa5e-2e69d80f6562' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ikhlas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c90aa21b-3863-4edc-aa5e-2e69d80f6562', 'Ikhlas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c90aa21b-3863-4edc-aa5e-2e69d80f6562' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Honorable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c90aa21b-3863-4edc-aa5e-2e69d80f6562', 'Honorable', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c90aa21b-3863-4edc-aa5e-2e69d80f6562' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dignified'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c90aa21b-3863-4edc-aa5e-2e69d80f6562', 'Dignified', false, true);
  END IF;

  -- [VOCABULARY] 無我夢中 (Level 28)
  UPDATE item_meanings SET meaning = 'Tenggelam Asyik', primary_meaning = true, accepted_answer = true WHERE id = '23f5a838-1670-48a2-af99-f7aa10a7355b';
  UPDATE items SET slug = 'tenggelam-asyik' WHERE id = 'd8d85b1c-f0e3-40c5-a3e8-cf23d1702c0f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8d85b1c-f0e3-40c5-a3e8-cf23d1702c0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lupa Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8d85b1c-f0e3-40c5-a3e8-cf23d1702c0f', 'Lupa Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8d85b1c-f0e3-40c5-a3e8-cf23d1702c0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Khusyuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8d85b1c-f0e3-40c5-a3e8-cf23d1702c0f', 'Khusyuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd8d85b1c-f0e3-40c5-a3e8-cf23d1702c0f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Total Absorption'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d8d85b1c-f0e3-40c5-a3e8-cf23d1702c0f', 'Total Absorption', false, true);
  END IF;

  -- [VOCABULARY] 独り言 (Level 28)
  UPDATE item_meanings SET meaning = 'Monolog', primary_meaning = true, accepted_answer = true WHERE id = 'd64f46f4-55d3-4b7a-b033-510a16bda7d6';
  UPDATE items SET slug = 'monolog' WHERE id = '648f5f82-437b-45db-b4cc-0860a23ef30d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '648f5f82-437b-45db-b4cc-0860a23ef30d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bicara Sendiri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('648f5f82-437b-45db-b4cc-0860a23ef30d', 'Bicara Sendiri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '648f5f82-437b-45db-b4cc-0860a23ef30d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gumam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('648f5f82-437b-45db-b4cc-0860a23ef30d', 'Gumam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '648f5f82-437b-45db-b4cc-0860a23ef30d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Talking To Oneself'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('648f5f82-437b-45db-b4cc-0860a23ef30d', 'Talking To Oneself', false, true);
  END IF;

  -- [VOCABULARY] 痛む (Level 28)
  UPDATE item_meanings SET meaning = 'Terasa Sakit', primary_meaning = true, accepted_answer = true WHERE id = 'ce469783-4759-4bc4-895d-bb22da56ae42';
  UPDATE items SET slug = 'terasa-sakit' WHERE id = '4adfc347-afa6-4d68-b333-980f197db0dd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4adfc347-afa6-4d68-b333-980f197db0dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terluka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4adfc347-afa6-4d68-b333-980f197db0dd', 'Terluka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4adfc347-afa6-4d68-b333-980f197db0dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nyeri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4adfc347-afa6-4d68-b333-980f197db0dd', 'Nyeri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4adfc347-afa6-4d68-b333-980f197db0dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Ache'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4adfc347-afa6-4d68-b333-980f197db0dd', 'To Ache', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4adfc347-afa6-4d68-b333-980f197db0dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hurt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4adfc347-afa6-4d68-b333-980f197db0dd', 'To Hurt', false, true);
  END IF;

  -- [VOCABULARY] 程 (Level 28)
  UPDATE item_meanings SET meaning = 'Batasan', primary_meaning = true, accepted_answer = true WHERE id = '5d7f174e-7458-459c-bedd-eeca6e9778b2';
  UPDATE items SET slug = 'batasan' WHERE id = '5550036b-78e5-4db1-8779-ab0058ba4e57';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5550036b-78e5-4db1-8779-ab0058ba4e57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kira-kira'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5550036b-78e5-4db1-8779-ab0058ba4e57', 'Kira-kira', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5550036b-78e5-4db1-8779-ab0058ba4e57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kadar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5550036b-78e5-4db1-8779-ab0058ba4e57', 'Kadar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5550036b-78e5-4db1-8779-ab0058ba4e57' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Extent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5550036b-78e5-4db1-8779-ab0058ba4e57', 'Extent', false, true);
  END IF;

  -- [VOCABULARY] 程度 (Level 28)
  UPDATE item_meanings SET meaning = 'Derajat', primary_meaning = true, accepted_answer = true WHERE id = '794c08a6-f88b-449f-93f5-76beb11bf7f4';
  UPDATE items SET slug = 'derajat' WHERE id = '8e1cb3db-ba66-4bd4-aeea-4c7818ce1937';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e1cb3db-ba66-4bd4-aeea-4c7818ce1937' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tingkat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e1cb3db-ba66-4bd4-aeea-4c7818ce1937', 'Tingkat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e1cb3db-ba66-4bd4-aeea-4c7818ce1937' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kadar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e1cb3db-ba66-4bd4-aeea-4c7818ce1937', 'Kadar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e1cb3db-ba66-4bd4-aeea-4c7818ce1937' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Degree'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e1cb3db-ba66-4bd4-aeea-4c7818ce1937', 'Degree', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8e1cb3db-ba66-4bd4-aeea-4c7818ce1937' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Extent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8e1cb3db-ba66-4bd4-aeea-4c7818ce1937', 'Extent', false, true);
  END IF;

  -- [VOCABULARY] 解凍 (Level 28)
  UPDATE item_meanings SET meaning = 'Mencairkan', primary_meaning = true, accepted_answer = true WHERE id = '8408f5c9-c0cf-46cf-94fb-8a178b238ae4';
  UPDATE items SET slug = 'mencairkan' WHERE id = '732be4a0-960b-48da-8504-91289dd7eb51';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '732be4a0-960b-48da-8504-91289dd7eb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pencairan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('732be4a0-960b-48da-8504-91289dd7eb51', 'Pencairan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '732be4a0-960b-48da-8504-91289dd7eb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ekstrak File'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('732be4a0-960b-48da-8504-91289dd7eb51', 'Ekstrak File', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '732be4a0-960b-48da-8504-91289dd7eb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Thawing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('732be4a0-960b-48da-8504-91289dd7eb51', 'Thawing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '732be4a0-960b-48da-8504-91289dd7eb51' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unzip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('732be4a0-960b-48da-8504-91289dd7eb51', 'Unzip', false, true);
  END IF;

  -- [VOCABULARY] 身振り (Level 28)
  UPDATE item_meanings SET meaning = 'Gestur', primary_meaning = true, accepted_answer = true WHERE id = '9851bd22-1fdc-4938-b053-619e20af2ea3';
  UPDATE items SET slug = 'gestur' WHERE id = 'bd1c6281-d021-4f3a-a817-5ebd40be3ff2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bd1c6281-d021-4f3a-a817-5ebd40be3ff2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bahasa Tubuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bd1c6281-d021-4f3a-a817-5ebd40be3ff2', 'Bahasa Tubuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bd1c6281-d021-4f3a-a817-5ebd40be3ff2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gerak Tubuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bd1c6281-d021-4f3a-a817-5ebd40be3ff2', 'Gerak Tubuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bd1c6281-d021-4f3a-a817-5ebd40be3ff2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Body Language'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bd1c6281-d021-4f3a-a817-5ebd40be3ff2', 'Body Language', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bd1c6281-d021-4f3a-a817-5ebd40be3ff2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gesture'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bd1c6281-d021-4f3a-a817-5ebd40be3ff2', 'Gesture', false, true);
  END IF;

  -- [VOCABULARY] 逆 (Level 28)
  UPDATE item_meanings SET meaning = 'Kebalikan', primary_meaning = true, accepted_answer = true WHERE id = '0aa79a55-71e6-44ae-80a5-39f9a0315494';
  UPDATE items SET slug = 'kebalikan' WHERE id = '4364632f-71e1-40f4-9da9-5d8109a8796e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4364632f-71e1-40f4-9da9-5d8109a8796e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berlawanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4364632f-71e1-40f4-9da9-5d8109a8796e', 'Berlawanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4364632f-71e1-40f4-9da9-5d8109a8796e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terbalik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4364632f-71e1-40f4-9da9-5d8109a8796e', 'Terbalik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4364632f-71e1-40f4-9da9-5d8109a8796e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reverse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4364632f-71e1-40f4-9da9-5d8109a8796e', 'Reverse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4364632f-71e1-40f4-9da9-5d8109a8796e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Opposite'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4364632f-71e1-40f4-9da9-5d8109a8796e', 'Opposite', false, true);
  END IF;

  -- [VOCABULARY] 逆らう (Level 28)
  UPDATE item_meanings SET meaning = 'Menentang', primary_meaning = true, accepted_answer = true WHERE id = '99fb98de-4ea3-483d-99c6-e8adf7de891e';
  UPDATE items SET slug = 'menentang' WHERE id = '280ab34c-28e0-4f03-b4ec-2947830d408d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '280ab34c-28e0-4f03-b4ec-2947830d408d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melawan Arus'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('280ab34c-28e0-4f03-b4ec-2947830d408d', 'Melawan Arus', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '280ab34c-28e0-4f03-b4ec-2947830d408d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membangkang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('280ab34c-28e0-4f03-b4ec-2947830d408d', 'Membangkang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '280ab34c-28e0-4f03-b4ec-2947830d408d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Go Against'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('280ab34c-28e0-4f03-b4ec-2947830d408d', 'To Go Against', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '280ab34c-28e0-4f03-b4ec-2947830d408d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Oppose'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('280ab34c-28e0-4f03-b4ec-2947830d408d', 'To Oppose', false, true);
  END IF;

  -- [VOCABULARY] 逆効果 (Level 28)
  UPDATE item_meanings SET meaning = 'Bumerang', primary_meaning = true, accepted_answer = true WHERE id = '24a0f935-9f8e-4006-81a9-ab0e7ff97ce7';
  UPDATE items SET slug = 'bumerang' WHERE id = '73120fcf-2ee0-4353-93a3-6d6760a490f3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73120fcf-2ee0-4353-93a3-6d6760a490f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berdampak Terbalik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73120fcf-2ee0-4353-93a3-6d6760a490f3', 'Berdampak Terbalik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73120fcf-2ee0-4353-93a3-6d6760a490f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Efek Berlawanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73120fcf-2ee0-4353-93a3-6d6760a490f3', 'Efek Berlawanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73120fcf-2ee0-4353-93a3-6d6760a490f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Opposite Effect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73120fcf-2ee0-4353-93a3-6d6760a490f3', 'Opposite Effect', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '73120fcf-2ee0-4353-93a3-6d6760a490f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Counterproductive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('73120fcf-2ee0-4353-93a3-6d6760a490f3', 'Counterproductive', false, true);
  END IF;

  -- [VOCABULARY] 逆説 (Level 28)
  UPDATE item_meanings SET meaning = 'Paradoks', primary_meaning = true, accepted_answer = true WHERE id = '6ec3062f-aa56-4cad-a3ba-a6ed314bd412';
  UPDATE items SET slug = 'paradoks' WHERE id = '290a589f-6c2c-4b72-9dd7-5a55d0396403';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '290a589f-6c2c-4b72-9dd7-5a55d0396403' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kontradiksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('290a589f-6c2c-4b72-9dd7-5a55d0396403', 'Kontradiksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '290a589f-6c2c-4b72-9dd7-5a55d0396403' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Paradox'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('290a589f-6c2c-4b72-9dd7-5a55d0396403', 'Paradox', false, true);
  END IF;

  -- [VOCABULARY] 進撃 (Level 28)
  UPDATE item_meanings SET meaning = 'Penyerbuan', primary_meaning = true, accepted_answer = true WHERE id = 'ba846ca8-0cde-4388-a07b-3f75e82280be';
  UPDATE items SET slug = 'penyerbuan' WHERE id = '6fae3779-36b7-4ec3-8e46-13b7930f13fd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6fae3779-36b7-4ec3-8e46-13b7930f13fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerbu Maju'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6fae3779-36b7-4ec3-8e46-13b7930f13fd', 'Menyerbu Maju', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6fae3779-36b7-4ec3-8e46-13b7930f13fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serangan Kilat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6fae3779-36b7-4ec3-8e46-13b7930f13fd', 'Serangan Kilat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6fae3779-36b7-4ec3-8e46-13b7930f13fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Advance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6fae3779-36b7-4ec3-8e46-13b7930f13fd', 'Advance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6fae3779-36b7-4ec3-8e46-13b7930f13fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Charge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6fae3779-36b7-4ec3-8e46-13b7930f13fd', 'Charge', false, true);
  END IF;

  -- [VOCABULARY] 降る (Level 28)
  UPDATE item_meanings SET meaning = 'Turun', primary_meaning = true, accepted_answer = true WHERE id = '4a01dc28-5f0d-442c-a087-096ba1e7dc93';
  UPDATE items SET slug = 'turun' WHERE id = 'ef25b78f-6764-46ad-b029-a61fe97479e7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef25b78f-6764-46ad-b029-a61fe97479e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Turun Hujan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef25b78f-6764-46ad-b029-a61fe97479e7', 'Turun Hujan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef25b78f-6764-46ad-b029-a61fe97479e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Turun Salju'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef25b78f-6764-46ad-b029-a61fe97479e7', 'Turun Salju', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef25b78f-6764-46ad-b029-a61fe97479e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fall'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef25b78f-6764-46ad-b029-a61fe97479e7', 'To Fall', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef25b78f-6764-46ad-b029-a61fe97479e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Turun (Hujan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef25b78f-6764-46ad-b029-a61fe97479e7', 'Turun (Hujan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ef25b78f-6764-46ad-b029-a61fe97479e7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Salju)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ef25b78f-6764-46ad-b029-a61fe97479e7', 'Salju)', false, true);
  END IF;

  -- [VOCABULARY] 限度 (Level 28)
  UPDATE item_meanings SET meaning = 'Batas', primary_meaning = true, accepted_answer = true WHERE id = '6fe55de2-0952-4848-9305-9223356a93af';
  UPDATE items SET slug = 'batas' WHERE id = '68b166cc-ad59-479d-bb28-f0da115b924c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '68b166cc-ad59-479d-bb28-f0da115b924c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Batas Maksimal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('68b166cc-ad59-479d-bb28-f0da115b924c', 'Batas Maksimal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '68b166cc-ad59-479d-bb28-f0da115b924c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Limit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('68b166cc-ad59-479d-bb28-f0da115b924c', 'Limit', false, true);
  END IF;

END $$;
