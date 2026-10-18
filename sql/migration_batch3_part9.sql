-- Migration: Batch 3 Part 9 (Level 39)
-- Total items: 78

DO $$
BEGIN

  -- [KANJI] 仙 (Level 39)
  UPDATE item_meanings SET meaning = 'Pertapa Sakti', primary_meaning = true, accepted_answer = true WHERE id = 'd1047f05-53f0-402d-8053-69fefa500de9';
  UPDATE items SET slug = 'pertapa-sakti' WHERE id = '43306dcd-a284-425b-95df-a006e7ddc8cb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43306dcd-a284-425b-95df-a006e7ddc8cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dewa Gunung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43306dcd-a284-425b-95df-a006e7ddc8cb', 'Dewa Gunung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43306dcd-a284-425b-95df-a006e7ddc8cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hermit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43306dcd-a284-425b-95df-a006e7ddc8cb', 'Hermit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43306dcd-a284-425b-95df-a006e7ddc8cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wizard'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43306dcd-a284-425b-95df-a006e7ddc8cb', 'Wizard', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43306dcd-a284-425b-95df-a006e7ddc8cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pertapa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43306dcd-a284-425b-95df-a006e7ddc8cb', 'Pertapa', false, true);
  END IF;

  -- [KANJI] 充 (Level 39)
  UPDATE item_meanings SET meaning = 'Mengisi', primary_meaning = true, accepted_answer = true WHERE id = 'd6801e53-ea1d-48bc-b512-f9870c6fd0a8';
  UPDATE items SET slug = 'mengisi' WHERE id = '69803eeb-c01c-4e61-b919-99b404bdcda9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69803eeb-c01c-4e61-b919-99b404bdcda9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengalokasikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69803eeb-c01c-4e61-b919-99b404bdcda9', 'Mengalokasikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69803eeb-c01c-4e61-b919-99b404bdcda9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencukupi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69803eeb-c01c-4e61-b919-99b404bdcda9', 'Mencukupi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69803eeb-c01c-4e61-b919-99b404bdcda9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Allocate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69803eeb-c01c-4e61-b919-99b404bdcda9', 'Allocate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69803eeb-c01c-4e61-b919-99b404bdcda9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fill'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69803eeb-c01c-4e61-b919-99b404bdcda9', 'Fill', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '69803eeb-c01c-4e61-b919-99b404bdcda9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alokasikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('69803eeb-c01c-4e61-b919-99b404bdcda9', 'Alokasikan', false, true);
  END IF;

  -- [KANJI] 免 (Level 39)
  UPDATE item_meanings SET meaning = 'Membebaskan', primary_meaning = true, accepted_answer = true WHERE id = '8ea3bff9-5cf7-4a45-8bd6-123d1bae0190';
  UPDATE items SET slug = 'membebaskan' WHERE id = '9009ee47-fd3d-41fe-9902-c37d9f83ca2b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9009ee47-fd3d-41fe-9902-c37d9f83ca2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bebas Pajak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9009ee47-fd3d-41fe-9902-c37d9f83ca2b', 'Bebas Pajak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9009ee47-fd3d-41fe-9902-c37d9f83ca2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Izin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9009ee47-fd3d-41fe-9902-c37d9f83ca2b', 'Izin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9009ee47-fd3d-41fe-9902-c37d9f83ca2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Excuse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9009ee47-fd3d-41fe-9902-c37d9f83ca2b', 'Excuse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9009ee47-fd3d-41fe-9902-c37d9f83ca2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exempt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9009ee47-fd3d-41fe-9902-c37d9f83ca2b', 'Exempt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9009ee47-fd3d-41fe-9902-c37d9f83ca2b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengizinkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9009ee47-fd3d-41fe-9902-c37d9f83ca2b', 'Mengizinkan', false, true);
  END IF;

  -- [KANJI] 囚 (Level 39)
  UPDATE item_meanings SET meaning = 'Tahanan', primary_meaning = true, accepted_answer = true WHERE id = '0daa6cf9-edfb-4e2d-bf49-53cb8ee7b055';
  UPDATE items SET slug = 'tahanan' WHERE id = '45f4d5c8-4f06-4096-9c76-413f4b381b0c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '45f4d5c8-4f06-4096-9c76-413f4b381b0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Narapidana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('45f4d5c8-4f06-4096-9c76-413f4b381b0c', 'Narapidana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '45f4d5c8-4f06-4096-9c76-413f4b381b0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prisoner'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('45f4d5c8-4f06-4096-9c76-413f4b381b0c', 'Prisoner', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '45f4d5c8-4f06-4096-9c76-413f4b381b0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inmate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('45f4d5c8-4f06-4096-9c76-413f4b381b0c', 'Inmate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '45f4d5c8-4f06-4096-9c76-413f4b381b0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pidana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('45f4d5c8-4f06-4096-9c76-413f4b381b0c', 'Pidana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '45f4d5c8-4f06-4096-9c76-413f4b381b0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Convict'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('45f4d5c8-4f06-4096-9c76-413f4b381b0c', 'Convict', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '45f4d5c8-4f06-4096-9c76-413f4b381b0c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Criminal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('45f4d5c8-4f06-4096-9c76-413f4b381b0c', 'Criminal', false, true);
  END IF;

  -- [KANJI] 圏 (Level 39)
  UPDATE item_meanings SET meaning = 'Zona', primary_meaning = true, accepted_answer = true WHERE id = '35943866-5884-4699-8fa0-db5e8caab870';
  UPDATE items SET slug = 'zona' WHERE id = 'bf80be33-0dcd-4c58-b899-21f473f99ab3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf80be33-0dcd-4c58-b899-21f473f99ab3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Radius Wilayah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf80be33-0dcd-4c58-b899-21f473f99ab3', 'Radius Wilayah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf80be33-0dcd-4c58-b899-21f473f99ab3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lingkup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf80be33-0dcd-4c58-b899-21f473f99ab3', 'Lingkup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf80be33-0dcd-4c58-b899-21f473f99ab3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sphere'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf80be33-0dcd-4c58-b899-21f473f99ab3', 'Sphere', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf80be33-0dcd-4c58-b899-21f473f99ab3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Range'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf80be33-0dcd-4c58-b899-21f473f99ab3', 'Range', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf80be33-0dcd-4c58-b899-21f473f99ab3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jangkauan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf80be33-0dcd-4c58-b899-21f473f99ab3', 'Jangkauan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf80be33-0dcd-4c58-b899-21f473f99ab3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bola'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf80be33-0dcd-4c58-b899-21f473f99ab3', 'Bola', false, true);
  END IF;

  -- [KANJI] 埼 (Level 39)
  UPDATE item_meanings SET meaning = 'Tanjung', primary_meaning = true, accepted_answer = true WHERE id = '6f198a57-91b1-4fd2-afe3-2dbb989e6261';
  UPDATE items SET slug = 'tanjung' WHERE id = '7e24c784-e761-4423-adb2-be906fb3b4c5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7e24c784-e761-4423-adb2-be906fb3b4c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Semenanjung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7e24c784-e761-4423-adb2-be906fb3b4c5', 'Semenanjung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7e24c784-e761-4423-adb2-be906fb3b4c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cape'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7e24c784-e761-4423-adb2-be906fb3b4c5', 'Cape', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7e24c784-e761-4423-adb2-be906fb3b4c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7e24c784-e761-4423-adb2-be906fb3b4c5', 'Spit', false, true);
  END IF;

  -- [KANJI] 奪 (Level 39)
  UPDATE item_meanings SET meaning = 'Merebut', primary_meaning = true, accepted_answer = true WHERE id = 'a4ba3325-931f-464d-bd17-7637db377393';
  UPDATE items SET slug = 'merebut' WHERE id = '78215619-8158-4317-9fa2-04f8ceb55f71';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78215619-8158-4317-9fa2-04f8ceb55f71' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merampas Paksa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78215619-8158-4317-9fa2-04f8ceb55f71', 'Merampas Paksa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78215619-8158-4317-9fa2-04f8ceb55f71' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rob'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78215619-8158-4317-9fa2-04f8ceb55f71', 'Rob', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78215619-8158-4317-9fa2-04f8ceb55f71' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Snatch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78215619-8158-4317-9fa2-04f8ceb55f71', 'Snatch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '78215619-8158-4317-9fa2-04f8ceb55f71' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merampok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('78215619-8158-4317-9fa2-04f8ceb55f71', 'Merampok', false, true);
  END IF;

  -- [KANJI] 宛 (Level 39)
  UPDATE item_meanings SET meaning = 'Ditujukan Kepada', primary_meaning = true, accepted_answer = true WHERE id = '2cc7aabf-8283-467d-b765-0ce778d57b72';
  UPDATE items SET slug = 'ditujukan-kepada' WHERE id = '48596403-43e4-4e63-a920-432054c5c47b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '48596403-43e4-4e63-a920-432054c5c47b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alamat Tujuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('48596403-43e4-4e63-a920-432054c5c47b', 'Alamat Tujuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '48596403-43e4-4e63-a920-432054c5c47b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Address'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('48596403-43e4-4e63-a920-432054c5c47b', 'Address', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '48596403-43e4-4e63-a920-432054c5c47b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Addressed To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('48596403-43e4-4e63-a920-432054c5c47b', 'Addressed To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '48596403-43e4-4e63-a920-432054c5c47b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alamat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('48596403-43e4-4e63-a920-432054c5c47b', 'Alamat', false, true);
  END IF;

  -- [KANJI] 岐 (Level 39)
  UPDATE item_meanings SET meaning = 'Bercabang', primary_meaning = true, accepted_answer = true WHERE id = 'bd8dd3e8-d474-4bd3-a67f-d2f5e64be6d8';
  UPDATE items SET slug = 'bercabang' WHERE id = '9a54bdb5-4ee5-4088-b586-b0ec7980a357';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a54bdb5-4ee5-4088-b586-b0ec7980a357' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Simpang Jalan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a54bdb5-4ee5-4088-b586-b0ec7980a357', 'Simpang Jalan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a54bdb5-4ee5-4088-b586-b0ec7980a357' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Branch Off'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a54bdb5-4ee5-4088-b586-b0ec7980a357', 'Branch Off', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a54bdb5-4ee5-4088-b586-b0ec7980a357' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fork'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a54bdb5-4ee5-4088-b586-b0ec7980a357', 'Fork', false, true);
  END IF;

  -- [KANJI] 御 (Level 39)
  UPDATE item_meanings SET meaning = 'Yang Terhormat', primary_meaning = true, accepted_answer = true WHERE id = '6143fcd4-26e7-40b2-a940-d4c9c3dc93c8';
  UPDATE items SET slug = 'yang-terhormat' WHERE id = 'ff4e5505-37d7-40b6-884a-2a5e6e3764fc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4e5505-37d7-40b6-884a-2a5e6e3764fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Awalan Sopan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4e5505-37d7-40b6-884a-2a5e6e3764fc', 'Awalan Sopan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4e5505-37d7-40b6-884a-2a5e6e3764fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Honorable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4e5505-37d7-40b6-884a-2a5e6e3764fc', 'Honorable', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4e5505-37d7-40b6-884a-2a5e6e3764fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Awalan Sopan (O-'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4e5505-37d7-40b6-884a-2a5e6e3764fc', 'Awalan Sopan (O-', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4e5505-37d7-40b6-884a-2a5e6e3764fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go-)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4e5505-37d7-40b6-884a-2a5e6e3764fc', 'Go-)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ff4e5505-37d7-40b6-884a-2a5e6e3764fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terhormat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ff4e5505-37d7-40b6-884a-2a5e6e3764fc', 'Terhormat', false, true);
  END IF;

  -- [KANJI] 慎 (Level 39)
  UPDATE item_meanings SET meaning = 'Berhati-hati', primary_meaning = true, accepted_answer = true WHERE id = 'b9b1782a-dc1a-49d1-bae0-050cacad1120';
  UPDATE items SET slug = 'berhati-hati' WHERE id = '0ecc9d33-057a-4176-a969-36205337774b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ecc9d33-057a-4176-a969-36205337774b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjaga Sikap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ecc9d33-057a-4176-a969-36205337774b', 'Menjaga Sikap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ecc9d33-057a-4176-a969-36205337774b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Careful'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ecc9d33-057a-4176-a969-36205337774b', 'Careful', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ecc9d33-057a-4176-a969-36205337774b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prudent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ecc9d33-057a-4176-a969-36205337774b', 'Prudent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ecc9d33-057a-4176-a969-36205337774b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerendahhatian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ecc9d33-057a-4176-a969-36205337774b', 'Kerendahhatian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ecc9d33-057a-4176-a969-36205337774b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Humility'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ecc9d33-057a-4176-a969-36205337774b', 'Humility', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ecc9d33-057a-4176-a969-36205337774b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Discreet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ecc9d33-057a-4176-a969-36205337774b', 'Discreet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ecc9d33-057a-4176-a969-36205337774b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Humble'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ecc9d33-057a-4176-a969-36205337774b', 'Humble', false, true);
  END IF;

  -- [KANJI] 拒 (Level 39)
  UPDATE item_meanings SET meaning = 'Menolak', primary_meaning = true, accepted_answer = true WHERE id = '6ab10035-2c0d-48eb-be4e-25d70d8ffd61';
  UPDATE items SET slug = 'menolak' WHERE id = '9a773780-dfa1-4c3f-800f-0f9e3dea6591';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a773780-dfa1-4c3f-800f-0f9e3dea6591' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membantah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a773780-dfa1-4c3f-800f-0f9e3dea6591', 'Membantah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a773780-dfa1-4c3f-800f-0f9e3dea6591' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Refuse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a773780-dfa1-4c3f-800f-0f9e3dea6591', 'Refuse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a773780-dfa1-4c3f-800f-0f9e3dea6591' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reject'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a773780-dfa1-4c3f-800f-0f9e3dea6591', 'Reject', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a773780-dfa1-4c3f-800f-0f9e3dea6591' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Refusal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a773780-dfa1-4c3f-800f-0f9e3dea6591', 'Refusal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9a773780-dfa1-4c3f-800f-0f9e3dea6591' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penolakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9a773780-dfa1-4c3f-800f-0f9e3dea6591', 'Penolakan', false, true);
  END IF;

  -- [KANJI] 控 (Level 39)
  UPDATE item_meanings SET meaning = 'Menahan Diri', primary_meaning = true, accepted_answer = true WHERE id = '19dc214c-5b6c-4440-b431-8fe6999001fc';
  UPDATE items SET slug = 'menahan-diri' WHERE id = 'b4896fe6-e34e-4cb6-a3ae-b033af80333d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b4896fe6-e34e-4cb6-a3ae-b033af80333d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencatat Salinan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b4896fe6-e34e-4cb6-a3ae-b033af80333d', 'Mencatat Salinan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b4896fe6-e34e-4cb6-a3ae-b033af80333d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menanti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b4896fe6-e34e-4cb6-a3ae-b033af80333d', 'Menanti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b4896fe6-e34e-4cb6-a3ae-b033af80333d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Refrain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b4896fe6-e34e-4cb6-a3ae-b033af80333d', 'Refrain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b4896fe6-e34e-4cb6-a3ae-b033af80333d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Note'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b4896fe6-e34e-4cb6-a3ae-b033af80333d', 'Note', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b4896fe6-e34e-4cb6-a3ae-b033af80333d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjauhkan diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b4896fe6-e34e-4cb6-a3ae-b033af80333d', 'Menjauhkan diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b4896fe6-e34e-4cb6-a3ae-b033af80333d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Abstain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b4896fe6-e34e-4cb6-a3ae-b033af80333d', 'Abstain', false, true);
  END IF;

  -- [KANJI] 枠 (Level 39)
  UPDATE item_meanings SET meaning = 'Bingkai', primary_meaning = true, accepted_answer = true WHERE id = 'a6aad4d2-7c9e-4350-a4d6-6893c525acdb';
  UPDATE items SET slug = 'bingkai' WHERE id = '1d10d673-2de7-417c-a893-847d83c58c23';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d10d673-2de7-417c-a893-847d83c58c23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerangka Batas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d10d673-2de7-417c-a893-847d83c58c23', 'Kerangka Batas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d10d673-2de7-417c-a893-847d83c58c23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Frame'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d10d673-2de7-417c-a893-847d83c58c23', 'Frame', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d10d673-2de7-417c-a893-847d83c58c23' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Border'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d10d673-2de7-417c-a893-847d83c58c23', 'Border', false, true);
  END IF;

  -- [KANJI] 棋 (Level 39)
  UPDATE item_meanings SET meaning = 'Catur Jepang', primary_meaning = true, accepted_answer = true WHERE id = '523f3973-9a62-4ba1-bc39-c650a1194a55';
  UPDATE items SET slug = 'catur-jepang' WHERE id = '538bb476-791f-4929-b1ee-eac15c90ca1c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '538bb476-791f-4929-b1ee-eac15c90ca1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Papan Catur Jepang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('538bb476-791f-4929-b1ee-eac15c90ca1c', 'Papan Catur Jepang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '538bb476-791f-4929-b1ee-eac15c90ca1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shogi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('538bb476-791f-4929-b1ee-eac15c90ca1c', 'Shogi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '538bb476-791f-4929-b1ee-eac15c90ca1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('538bb476-791f-4929-b1ee-eac15c90ca1c', 'Go', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '538bb476-791f-4929-b1ee-eac15c90ca1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Papan Catur Jepang (Shogi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('538bb476-791f-4929-b1ee-eac15c90ca1c', 'Papan Catur Jepang (Shogi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '538bb476-791f-4929-b1ee-eac15c90ca1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('538bb476-791f-4929-b1ee-eac15c90ca1c', 'Go)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '538bb476-791f-4929-b1ee-eac15c90ca1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go Piece'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('538bb476-791f-4929-b1ee-eac15c90ca1c', 'Go Piece', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '538bb476-791f-4929-b1ee-eac15c90ca1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Japanese Chess'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('538bb476-791f-4929-b1ee-eac15c90ca1c', 'Japanese Chess', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '538bb476-791f-4929-b1ee-eac15c90ca1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Chess Piece'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('538bb476-791f-4929-b1ee-eac15c90ca1c', 'Chess Piece', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '538bb476-791f-4929-b1ee-eac15c90ca1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pergi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('538bb476-791f-4929-b1ee-eac15c90ca1c', 'Pergi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '538bb476-791f-4929-b1ee-eac15c90ca1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Japanese Chess Piece'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('538bb476-791f-4929-b1ee-eac15c90ca1c', 'Japanese Chess Piece', false, true);
  END IF;

  -- [KANJI] 渋 (Level 39)
  UPDATE item_meanings SET meaning = 'Kelat', primary_meaning = true, accepted_answer = true WHERE id = '7f3e71d2-67e0-4e93-99f1-1c1c72b377ce';
  UPDATE items SET slug = 'kelat' WHERE id = '95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sepat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48', 'Sepat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Macet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48', 'Macet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Astringent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48', 'Astringent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reluctant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48', 'Reluctant', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pahit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48', 'Pahit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Enggan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48', 'Enggan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Astringen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48', 'Astringen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bitter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('95af1ad2-efaa-4bc1-a2a5-e92dcd5fff48', 'Bitter', false, true);
  END IF;

  -- [KANJI] 片 (Level 39)
  UPDATE item_meanings SET meaning = 'Sebelah', primary_meaning = true, accepted_answer = true WHERE id = 'e0ef4916-93ca-414e-acbe-79b24280f268';
  UPDATE items SET slug = 'sebelah' WHERE id = '42f6b36e-2a15-446f-a6ba-51a73b07f158';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '42f6b36e-2a15-446f-a6ba-51a73b07f158' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sepotong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('42f6b36e-2a15-446f-a6ba-51a73b07f158', 'Sepotong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '42f6b36e-2a15-446f-a6ba-51a73b07f158' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kepingan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('42f6b36e-2a15-446f-a6ba-51a73b07f158', 'Kepingan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '42f6b36e-2a15-446f-a6ba-51a73b07f158' AND LOWER(TRIM(meaning)) = LOWER(TRIM('One Sided'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('42f6b36e-2a15-446f-a6ba-51a73b07f158', 'One Sided', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '42f6b36e-2a15-446f-a6ba-51a73b07f158' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fragment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('42f6b36e-2a15-446f-a6ba-51a73b07f158', 'Fragment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '42f6b36e-2a15-446f-a6ba-51a73b07f158' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu Sisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('42f6b36e-2a15-446f-a6ba-51a73b07f158', 'Satu Sisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '42f6b36e-2a15-446f-a6ba-51a73b07f158' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fragmen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('42f6b36e-2a15-446f-a6ba-51a73b07f158', 'Fragmen', false, true);
  END IF;

  -- [KANJI] 甲 (Level 39)
  UPDATE item_meanings SET meaning = 'Cangkang', primary_meaning = true, accepted_answer = true WHERE id = '0e0dada9-ca1b-4c4b-baaa-029bbda20f46';
  UPDATE items SET slug = 'cangkang' WHERE id = 'efe4d591-0c89-469e-bc77-da36e67dc3ad';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efe4d591-0c89-469e-bc77-da36e67dc3ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Punggung Tangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efe4d591-0c89-469e-bc77-da36e67dc3ad', 'Punggung Tangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efe4d591-0c89-469e-bc77-da36e67dc3ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Golongan A'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efe4d591-0c89-469e-bc77-da36e67dc3ad', 'Golongan A', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efe4d591-0c89-469e-bc77-da36e67dc3ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carapace'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efe4d591-0c89-469e-bc77-da36e67dc3ad', 'Carapace', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efe4d591-0c89-469e-bc77-da36e67dc3ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shell'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efe4d591-0c89-469e-bc77-da36e67dc3ad', 'Shell', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efe4d591-0c89-469e-bc77-da36e67dc3ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Golongan Pertama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efe4d591-0c89-469e-bc77-da36e67dc3ad', 'Golongan Pertama', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efe4d591-0c89-469e-bc77-da36e67dc3ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Turtle Shell'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efe4d591-0c89-469e-bc77-da36e67dc3ad', 'Turtle Shell', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efe4d591-0c89-469e-bc77-da36e67dc3ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cangkang Penyu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efe4d591-0c89-469e-bc77-da36e67dc3ad', 'Cangkang Penyu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efe4d591-0c89-469e-bc77-da36e67dc3ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Former'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efe4d591-0c89-469e-bc77-da36e67dc3ad', 'Former', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efe4d591-0c89-469e-bc77-da36e67dc3ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efe4d591-0c89-469e-bc77-da36e67dc3ad', 'A', false, true);
  END IF;

  -- [KANJI] 群 (Level 39)
  UPDATE item_meanings SET meaning = 'Kawanan', primary_meaning = true, accepted_answer = true WHERE id = 'a1d4c2d9-c00e-4913-baf3-88070be0796b';
  UPDATE items SET slug = 'kawanan' WHERE id = 'bf3964c7-49f8-4477-811c-7904c548aba2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf3964c7-49f8-4477-811c-7904c548aba2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gerombolan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf3964c7-49f8-4477-811c-7904c548aba2', 'Gerombolan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf3964c7-49f8-4477-811c-7904c548aba2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flock'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf3964c7-49f8-4477-811c-7904c548aba2', 'Flock', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf3964c7-49f8-4477-811c-7904c548aba2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Group'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf3964c7-49f8-4477-811c-7904c548aba2', 'Group', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bf3964c7-49f8-4477-811c-7904c548aba2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Herd'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bf3964c7-49f8-4477-811c-7904c548aba2', 'Herd', false, true);
  END IF;

  -- [KANJI] 腫 (Level 39)
  UPDATE item_meanings SET meaning = 'Bengkak', primary_meaning = true, accepted_answer = true WHERE id = '666ba297-b390-4bb2-97c7-b0737a41e677';
  UPDATE items SET slug = 'bengkak' WHERE id = '36c6aa68-f843-4f78-83b8-706ddc58aaa0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36c6aa68-f843-4f78-83b8-706ddc58aaa0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tumor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36c6aa68-f843-4f78-83b8-706ddc58aaa0', 'Tumor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36c6aa68-f843-4f78-83b8-706ddc58aaa0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Swelling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36c6aa68-f843-4f78-83b8-706ddc58aaa0', 'Swelling', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36c6aa68-f843-4f78-83b8-706ddc58aaa0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pembengkakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36c6aa68-f843-4f78-83b8-706ddc58aaa0', 'Pembengkakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36c6aa68-f843-4f78-83b8-706ddc58aaa0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Swell'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36c6aa68-f843-4f78-83b8-706ddc58aaa0', 'Swell', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '36c6aa68-f843-4f78-83b8-706ddc58aaa0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Swollen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('36c6aa68-f843-4f78-83b8-706ddc58aaa0', 'Swollen', false, true);
  END IF;

  -- [KANJI] 虚 (Level 39)
  UPDATE item_meanings SET meaning = 'Hampa', primary_meaning = true, accepted_answer = true WHERE id = '32f2b537-f5cc-4d5b-ae37-13a7a8645615';
  UPDATE items SET slug = 'hampa' WHERE id = 'd894a8c9-9032-475f-be1c-173b716816a1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd894a8c9-9032-475f-be1c-173b716816a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kosong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d894a8c9-9032-475f-be1c-173b716816a1', 'Kosong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd894a8c9-9032-475f-be1c-173b716816a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Palsu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d894a8c9-9032-475f-be1c-173b716816a1', 'Palsu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd894a8c9-9032-475f-be1c-173b716816a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Void'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d894a8c9-9032-475f-be1c-173b716816a1', 'Void', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd894a8c9-9032-475f-be1c-173b716816a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Empty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d894a8c9-9032-475f-be1c-173b716816a1', 'Empty', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd894a8c9-9032-475f-be1c-173b716816a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('False'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d894a8c9-9032-475f-be1c-173b716816a1', 'False', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd894a8c9-9032-475f-be1c-173b716816a1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ruang kosong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d894a8c9-9032-475f-be1c-173b716816a1', 'Ruang kosong', false, true);
  END IF;

  -- [KANJI] 謙 (Level 39)
  UPDATE item_meanings SET meaning = 'Rendah Hati', primary_meaning = true, accepted_answer = true WHERE id = '022c85ec-fc4c-4731-a711-575a3a10ea2e';
  UPDATE items SET slug = 'rendah-hati' WHERE id = '51f45c01-79e7-4fca-a716-be18eb8827e6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '51f45c01-79e7-4fca-a716-be18eb8827e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Santun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('51f45c01-79e7-4fca-a716-be18eb8827e6', 'Santun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '51f45c01-79e7-4fca-a716-be18eb8827e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Humble'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('51f45c01-79e7-4fca-a716-be18eb8827e6', 'Humble', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '51f45c01-79e7-4fca-a716-be18eb8827e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Modest'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('51f45c01-79e7-4fca-a716-be18eb8827e6', 'Modest', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '51f45c01-79e7-4fca-a716-be18eb8827e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesopanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('51f45c01-79e7-4fca-a716-be18eb8827e6', 'Kesopanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '51f45c01-79e7-4fca-a716-be18eb8827e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Modesty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('51f45c01-79e7-4fca-a716-be18eb8827e6', 'Modesty', false, true);
  END IF;

  -- [KANJI] 譲 (Level 39)
  UPDATE item_meanings SET meaning = 'Mengalah', primary_meaning = true, accepted_answer = true WHERE id = '4a0450e4-8209-46b7-811d-d7ced800b467';
  UPDATE items SET slug = 'mengalah' WHERE id = '0e591d6b-b6af-476f-bbc9-714e1f5b474e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e591d6b-b6af-476f-bbc9-714e1f5b474e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerahkan Hak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e591d6b-b6af-476f-bbc9-714e1f5b474e', 'Menyerahkan Hak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e591d6b-b6af-476f-bbc9-714e1f5b474e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Defer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e591d6b-b6af-476f-bbc9-714e1f5b474e', 'Defer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e591d6b-b6af-476f-bbc9-714e1f5b474e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Yield'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e591d6b-b6af-476f-bbc9-714e1f5b474e', 'Yield', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e591d6b-b6af-476f-bbc9-714e1f5b474e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Transfer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e591d6b-b6af-476f-bbc9-714e1f5b474e', 'Transfer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0e591d6b-b6af-476f-bbc9-714e1f5b474e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menunda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0e591d6b-b6af-476f-bbc9-714e1f5b474e', 'Menunda', false, true);
  END IF;

  -- [KANJI] 躍 (Level 39)
  UPDATE item_meanings SET meaning = 'Melompat Maju', primary_meaning = true, accepted_answer = true WHERE id = 'f6c68ec9-45dc-46f2-91d3-218674cfb749';
  UPDATE items SET slug = 'melompat-maju' WHERE id = '1653ea10-307b-446a-a76d-8fe07beffe6d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1653ea10-307b-446a-a76d-8fe07beffe6d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berkiprah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1653ea10-307b-446a-a76d-8fe07beffe6d', 'Berkiprah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1653ea10-307b-446a-a76d-8fe07beffe6d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1653ea10-307b-446a-a76d-8fe07beffe6d', 'Leap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1653ea10-307b-446a-a76d-8fe07beffe6d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Skip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1653ea10-307b-446a-a76d-8fe07beffe6d', 'Skip', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1653ea10-307b-446a-a76d-8fe07beffe6d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melompat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1653ea10-307b-446a-a76d-8fe07beffe6d', 'Melompat', false, true);
  END IF;

  -- [KANJI] 邦 (Level 39)
  UPDATE item_meanings SET meaning = 'Negara', primary_meaning = true, accepted_answer = true WHERE id = '977e1477-6572-4203-b86f-6b4335c0fd5d';
  UPDATE items SET slug = 'negara' WHERE id = 'ecb3100f-3761-4c49-8612-a4cc63541942';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecb3100f-3761-4c49-8612-a4cc63541942' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Negeri Asal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecb3100f-3761-4c49-8612-a4cc63541942', 'Negeri Asal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecb3100f-3761-4c49-8612-a4cc63541942' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Country'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecb3100f-3761-4c49-8612-a4cc63541942', 'Country', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecb3100f-3761-4c49-8612-a4cc63541942' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Home Country'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecb3100f-3761-4c49-8612-a4cc63541942', 'Home Country', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecb3100f-3761-4c49-8612-a4cc63541942' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecb3100f-3761-4c49-8612-a4cc63541942', 'Nation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecb3100f-3761-4c49-8612-a4cc63541942' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Negara Asal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecb3100f-3761-4c49-8612-a4cc63541942', 'Negara Asal', false, true);
  END IF;

  -- [KANJI] 鈴 (Level 39)
  UPDATE item_meanings SET meaning = 'Lonceng Gemerincing', primary_meaning = true, accepted_answer = true WHERE id = 'ddfe3907-c086-43cc-bc70-2c5a5a359378';
  UPDATE items SET slug = 'lonceng-gemerincing' WHERE id = 'bfc565df-7cdc-4dec-aaa9-6f76ba5245d9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc565df-7cdc-4dec-aaa9-6f76ba5245d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc565df-7cdc-4dec-aaa9-6f76ba5245d9', 'Bel', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc565df-7cdc-4dec-aaa9-6f76ba5245d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bell'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc565df-7cdc-4dec-aaa9-6f76ba5245d9', 'Bell', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc565df-7cdc-4dec-aaa9-6f76ba5245d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Small Bell'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc565df-7cdc-4dec-aaa9-6f76ba5245d9', 'Small Bell', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc565df-7cdc-4dec-aaa9-6f76ba5245d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lonceng Kecil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc565df-7cdc-4dec-aaa9-6f76ba5245d9', 'Lonceng Kecil', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bfc565df-7cdc-4dec-aaa9-6f76ba5245d9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buzzer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bfc565df-7cdc-4dec-aaa9-6f76ba5245d9', 'Buzzer', false, true);
  END IF;

  -- [KANJI] 銃 (Level 39)
  UPDATE item_meanings SET meaning = 'Senjata Api', primary_meaning = true, accepted_answer = true WHERE id = '2da6686a-95c4-486c-8742-0c2252828a00';
  UPDATE items SET slug = 'senjata-api' WHERE id = '632f4900-7b1b-4181-afc4-235a342aaa22';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '632f4900-7b1b-4181-afc4-235a342aaa22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Senapan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('632f4900-7b1b-4181-afc4-235a342aaa22', 'Senapan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '632f4900-7b1b-4181-afc4-235a342aaa22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pistol'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('632f4900-7b1b-4181-afc4-235a342aaa22', 'Pistol', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '632f4900-7b1b-4181-afc4-235a342aaa22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('632f4900-7b1b-4181-afc4-235a342aaa22', 'Gun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '632f4900-7b1b-4181-afc4-235a342aaa22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rifle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('632f4900-7b1b-4181-afc4-235a342aaa22', 'Rifle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '632f4900-7b1b-4181-afc4-235a342aaa22' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Firearm'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('632f4900-7b1b-4181-afc4-235a342aaa22', 'Firearm', false, true);
  END IF;

  -- [KANJI] 隆 (Level 39)
  UPDATE item_meanings SET meaning = 'Makmur Berjaya', primary_meaning = true, accepted_answer = true WHERE id = '6485ade7-dc14-4c7b-ac2d-4db4289b87b4';
  UPDATE items SET slug = 'makmur-berjaya' WHERE id = '8d4e73af-3afa-476d-adef-5a9a8f378f3f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d4e73af-3afa-476d-adef-5a9a8f378f3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menonjol Bangkit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d4e73af-3afa-476d-adef-5a9a8f378f3f', 'Menonjol Bangkit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d4e73af-3afa-476d-adef-5a9a8f378f3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prosperity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d4e73af-3afa-476d-adef-5a9a8f378f3f', 'Prosperity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d4e73af-3afa-476d-adef-5a9a8f378f3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d4e73af-3afa-476d-adef-5a9a8f378f3f', 'Rise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d4e73af-3afa-476d-adef-5a9a8f378f3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemakmuran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d4e73af-3afa-476d-adef-5a9a8f378f3f', 'Kemakmuran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8d4e73af-3afa-476d-adef-5a9a8f378f3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prosper'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8d4e73af-3afa-476d-adef-5a9a8f378f3f', 'Prosper', false, true);
  END IF;

  -- [KANJI] 雇 (Level 39)
  UPDATE item_meanings SET meaning = 'Mempekerjakan', primary_meaning = true, accepted_answer = true WHERE id = 'e3e63124-d809-4480-a2bb-17ed96e54529';
  UPDATE items SET slug = 'mempekerjakan' WHERE id = 'e4fee72e-0098-4752-81e1-6d3c67314065';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4fee72e-0098-4752-81e1-6d3c67314065' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merekrut Karyawan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4fee72e-0098-4752-81e1-6d3c67314065', 'Merekrut Karyawan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4fee72e-0098-4752-81e1-6d3c67314065' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Employ'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4fee72e-0098-4752-81e1-6d3c67314065', 'Employ', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4fee72e-0098-4752-81e1-6d3c67314065' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4fee72e-0098-4752-81e1-6d3c67314065', 'Hire', false, true);
  END IF;

  -- [KANJI] 項 (Level 39)
  UPDATE item_meanings SET meaning = 'Klausul', primary_meaning = true, accepted_answer = true WHERE id = '21029b66-b6bc-43ba-b6bd-f56f955e4272';
  UPDATE items SET slug = 'klausul' WHERE id = 'b365677d-c354-4c91-83f0-04e84e8b0fd7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b365677d-c354-4c91-83f0-04e84e8b0fd7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Butir Pasal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b365677d-c354-4c91-83f0-04e84e8b0fd7', 'Butir Pasal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b365677d-c354-4c91-83f0-04e84e8b0fd7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Paragraf'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b365677d-c354-4c91-83f0-04e84e8b0fd7', 'Paragraf', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b365677d-c354-4c91-83f0-04e84e8b0fd7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Clause'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b365677d-c354-4c91-83f0-04e84e8b0fd7', 'Clause', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b365677d-c354-4c91-83f0-04e84e8b0fd7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Paragraph'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b365677d-c354-4c91-83f0-04e84e8b0fd7', 'Paragraph', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b365677d-c354-4c91-83f0-04e84e8b0fd7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Item'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b365677d-c354-4c91-83f0-04e84e8b0fd7', 'Item', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b365677d-c354-4c91-83f0-04e84e8b0fd7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ayat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b365677d-c354-4c91-83f0-04e84e8b0fd7', 'Ayat', false, true);
  END IF;

  -- [VOCABULARY] 充実 (Level 39)
  UPDATE item_meanings SET meaning = 'Penuh Kepuasan', primary_meaning = true, accepted_answer = true WHERE id = '2818390d-8c06-4cd0-afd9-86f3b4f0e462';
  UPDATE items SET slug = 'penuh-kepuasan' WHERE id = '22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemenuhan Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065', 'Pemenuhan Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesempurnaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065', 'Kesempurnaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fullness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065', 'Fullness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fulfillment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065', 'Fulfillment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Completeness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065', 'Completeness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Beefing Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065', 'Beefing Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperkuat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22b91ca8-b2ae-45ce-8d66-ea1a5a6b5065', 'Memperkuat', false, true);
  END IF;

  -- [VOCABULARY] 免れる (Level 39)
  UPDATE item_meanings SET meaning = 'Lolos Dari Bahaya', primary_meaning = true, accepted_answer = true WHERE id = '53bf142e-d0d9-451f-b738-9305c6de21cd';
  UPDATE items SET slug = 'lolos-dari-bahaya' WHERE id = 'db17c072-1b0f-4cda-b39c-7d25665e7b9f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db17c072-1b0f-4cda-b39c-7d25665e7b9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terhindar dari Hukuman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db17c072-1b0f-4cda-b39c-7d25665e7b9f', 'Terhindar dari Hukuman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db17c072-1b0f-4cda-b39c-7d25665e7b9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melarikan Diri dari Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db17c072-1b0f-4cda-b39c-7d25665e7b9f', 'Untuk Melarikan Diri dari Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db17c072-1b0f-4cda-b39c-7d25665e7b9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Escape'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db17c072-1b0f-4cda-b39c-7d25665e7b9f', 'To Escape', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db17c072-1b0f-4cda-b39c-7d25665e7b9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Avoid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db17c072-1b0f-4cda-b39c-7d25665e7b9f', 'To Avoid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db17c072-1b0f-4cda-b39c-7d25665e7b9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Escape From'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db17c072-1b0f-4cda-b39c-7d25665e7b9f', 'To Escape From', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db17c072-1b0f-4cda-b39c-7d25665e7b9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghindari Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db17c072-1b0f-4cda-b39c-7d25665e7b9f', 'Untuk Menghindari Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db17c072-1b0f-4cda-b39c-7d25665e7b9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Escape Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db17c072-1b0f-4cda-b39c-7d25665e7b9f', 'To Escape Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db17c072-1b0f-4cda-b39c-7d25665e7b9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Avoid Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db17c072-1b0f-4cda-b39c-7d25665e7b9f', 'To Avoid Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'db17c072-1b0f-4cda-b39c-7d25665e7b9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Escape From Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('db17c072-1b0f-4cda-b39c-7d25665e7b9f', 'To Escape From Something', false, true);
  END IF;

  -- [VOCABULARY] 免除 (Level 39)
  UPDATE item_meanings SET meaning = 'Pembebasan Beban', primary_meaning = true, accepted_answer = true WHERE id = 'bf73aeeb-eaca-45f4-9188-5b0088c07a49';
  UPDATE items SET slug = 'pembebasan-beban' WHERE id = '5d6f2d30-9b4d-429a-bc22-484feaec31b1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d6f2d30-9b4d-429a-bc22-484feaec31b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keringanan Biaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d6f2d30-9b4d-429a-bc22-484feaec31b1', 'Keringanan Biaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d6f2d30-9b4d-429a-bc22-484feaec31b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pembebasan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d6f2d30-9b4d-429a-bc22-484feaec31b1', 'Pembebasan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d6f2d30-9b4d-429a-bc22-484feaec31b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exemption'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d6f2d30-9b4d-429a-bc22-484feaec31b1', 'Exemption', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d6f2d30-9b4d-429a-bc22-484feaec31b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Remission'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d6f2d30-9b4d-429a-bc22-484feaec31b1', 'Remission', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d6f2d30-9b4d-429a-bc22-484feaec31b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exempt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d6f2d30-9b4d-429a-bc22-484feaec31b1', 'Exempt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d6f2d30-9b4d-429a-bc22-484feaec31b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Exempting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d6f2d30-9b4d-429a-bc22-484feaec31b1', 'Exempting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5d6f2d30-9b4d-429a-bc22-484feaec31b1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membebaskan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5d6f2d30-9b4d-429a-bc22-484feaec31b1', 'Membebaskan', false, true);
  END IF;

  -- [VOCABULARY] 募集中 (Level 39)
  UPDATE item_meanings SET meaning = 'Sedang Membuka Lowongan', primary_meaning = true, accepted_answer = true WHERE id = '65389c17-8e6b-4a0d-b64d-382fa30cd50c';
  UPDATE items SET slug = 'sedang-membuka-lowongan' WHERE id = 'a7e98db5-ea27-4c91-9401-1cf951badc1d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7e98db5-ea27-4c91-9401-1cf951badc1d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merekrut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7e98db5-ea27-4c91-9401-1cf951badc1d', 'Merekrut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7e98db5-ea27-4c91-9401-1cf951badc1d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sekarang Mempekerjakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7e98db5-ea27-4c91-9401-1cf951badc1d', 'Sekarang Mempekerjakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7e98db5-ea27-4c91-9401-1cf951badc1d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Now Hiring'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7e98db5-ea27-4c91-9401-1cf951badc1d', 'Now Hiring', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7e98db5-ea27-4c91-9401-1cf951badc1d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Now Recruiting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7e98db5-ea27-4c91-9401-1cf951badc1d', 'Now Recruiting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a7e98db5-ea27-4c91-9401-1cf951badc1d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sekarang Merekrut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a7e98db5-ea27-4c91-9401-1cf951badc1d', 'Sekarang Merekrut', false, true);
  END IF;

  -- [VOCABULARY] 勧告 (Level 39)
  UPDATE item_meanings SET meaning = 'Rekomendasi Resmi', primary_meaning = true, accepted_answer = true WHERE id = 'ed51f3d2-ee03-430a-b767-eaa74954293f';
  UPDATE items SET slug = 'rekomendasi-resmi' WHERE id = 'cfe78f0a-caf1-4416-bac0-f3e5e9f2c323';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cfe78f0a-caf1-4416-bac0-f3e5e9f2c323' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Peringatan Saran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cfe78f0a-caf1-4416-bac0-f3e5e9f2c323', 'Peringatan Saran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cfe78f0a-caf1-4416-bac0-f3e5e9f2c323' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rekomendasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cfe78f0a-caf1-4416-bac0-f3e5e9f2c323', 'Rekomendasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cfe78f0a-caf1-4416-bac0-f3e5e9f2c323' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Official Advice'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cfe78f0a-caf1-4416-bac0-f3e5e9f2c323', 'Official Advice', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cfe78f0a-caf1-4416-bac0-f3e5e9f2c323' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Recommendation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cfe78f0a-caf1-4416-bac0-f3e5e9f2c323', 'Recommendation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cfe78f0a-caf1-4416-bac0-f3e5e9f2c323' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saran Resmi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cfe78f0a-caf1-4416-bac0-f3e5e9f2c323', 'Saran Resmi', false, true);
  END IF;

  -- [VOCABULARY] 囚人 (Level 39)
  UPDATE item_meanings SET meaning = 'Narapidana', primary_meaning = true, accepted_answer = true WHERE id = 'c8a0db2b-7f83-4333-bd70-7e6566a0534a';
  UPDATE items SET slug = 'narapidana' WHERE id = 'a4a976c5-0abe-4b1d-9129-3d41853402d6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a4a976c5-0abe-4b1d-9129-3d41853402d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tahanan Penjara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a4a976c5-0abe-4b1d-9129-3d41853402d6', 'Tahanan Penjara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a4a976c5-0abe-4b1d-9129-3d41853402d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tawanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a4a976c5-0abe-4b1d-9129-3d41853402d6', 'Tawanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a4a976c5-0abe-4b1d-9129-3d41853402d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prisoner'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a4a976c5-0abe-4b1d-9129-3d41853402d6', 'Prisoner', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a4a976c5-0abe-4b1d-9129-3d41853402d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inmate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a4a976c5-0abe-4b1d-9129-3d41853402d6', 'Inmate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a4a976c5-0abe-4b1d-9129-3d41853402d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Convict'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a4a976c5-0abe-4b1d-9129-3d41853402d6', 'Convict', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a4a976c5-0abe-4b1d-9129-3d41853402d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Convicted Person'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a4a976c5-0abe-4b1d-9129-3d41853402d6', 'Convicted Person', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a4a976c5-0abe-4b1d-9129-3d41853402d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tahanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a4a976c5-0abe-4b1d-9129-3d41853402d6', 'Tahanan', false, true);
  END IF;

  -- [VOCABULARY] 圏外 (Level 39)
  UPDATE item_meanings SET meaning = 'Di Luar Sinyal', primary_meaning = true, accepted_answer = true WHERE id = 'f9525367-76a1-470a-bd66-9066c4c9b7dd';
  UPDATE items SET slug = 'di-luar-sinyal' WHERE id = '177338e3-d55c-4e56-8e7b-a76e7c942f27';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '177338e3-d55c-4e56-8e7b-a76e7c942f27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luar Jangkauan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('177338e3-d55c-4e56-8e7b-a76e7c942f27', 'Luar Jangkauan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '177338e3-d55c-4e56-8e7b-a76e7c942f27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Luar Jangkauan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('177338e3-d55c-4e56-8e7b-a76e7c942f27', 'Di Luar Jangkauan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '177338e3-d55c-4e56-8e7b-a76e7c942f27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Out Of Range'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('177338e3-d55c-4e56-8e7b-a76e7c942f27', 'Out Of Range', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '177338e3-d55c-4e56-8e7b-a76e7c942f27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('No Service'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('177338e3-d55c-4e56-8e7b-a76e7c942f27', 'No Service', false, true);
  END IF;

  -- [VOCABULARY] 奪う (Level 39)
  UPDATE item_meanings SET meaning = 'Merebut Paksa', primary_meaning = true, accepted_answer = true WHERE id = '9ba879c5-047e-40f7-a595-7bbbda6d6d79';
  UPDATE items SET slug = 'merebut-paksa' WHERE id = 'd27ba480-a2ac-4a3c-aecf-a719fc9af00e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd27ba480-a2ac-4a3c-aecf-a719fc9af00e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merampas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d27ba480-a2ac-4a3c-aecf-a719fc9af00e', 'Merampas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd27ba480-a2ac-4a3c-aecf-a719fc9af00e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk merampok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d27ba480-a2ac-4a3c-aecf-a719fc9af00e', 'Untuk merampok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd27ba480-a2ac-4a3c-aecf-a719fc9af00e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Rob'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d27ba480-a2ac-4a3c-aecf-a719fc9af00e', 'To Rob', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd27ba480-a2ac-4a3c-aecf-a719fc9af00e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Snatch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d27ba480-a2ac-4a3c-aecf-a719fc9af00e', 'To Snatch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd27ba480-a2ac-4a3c-aecf-a719fc9af00e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mencuri Dengan Paksa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d27ba480-a2ac-4a3c-aecf-a719fc9af00e', 'Untuk Mencuri Dengan Paksa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd27ba480-a2ac-4a3c-aecf-a719fc9af00e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Steal By Force'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d27ba480-a2ac-4a3c-aecf-a719fc9af00e', 'To Steal By Force', false, true);
  END IF;

  -- [VOCABULARY] 弾く (Level 39)
  UPDATE item_meanings SET meaning = 'Memetik', primary_meaning = true, accepted_answer = true WHERE id = 'a69d76bb-fa94-4842-9ad9-6585784d0bb6';
  UPDATE items SET slug = 'memetik' WHERE id = '38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memainkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74', 'Memainkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bermain Piano'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74', 'Bermain Piano', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Play'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74', 'To Play', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pluck'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74', 'To Pluck', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memainkan Alat Musik Petik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74', 'Untuk Memainkan Alat Musik Petik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Play An Instrument'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74', 'To Play An Instrument', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Play A Stringed Instrument'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74', 'To Play A Stringed Instrument', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Bermain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('38f7adb1-9de2-4734-b0ff-3ca5cbd8ca74', 'Untuk Bermain', false, true);
  END IF;

  -- [VOCABULARY] 御免 (Level 39)
  UPDATE item_meanings SET meaning = 'Mohon Maaf', primary_meaning = true, accepted_answer = true WHERE id = '5539d4ec-4dc1-4a9c-b900-a3a88f362554';
  UPDATE items SET slug = 'mohon-maaf' WHERE id = 'd5332006-51b5-4b5d-b543-fb39be9a917e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5332006-51b5-4b5d-b543-fb39be9a917e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Permisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5332006-51b5-4b5d-b543-fb39be9a917e', 'Permisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5332006-51b5-4b5d-b543-fb39be9a917e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Keberatan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5332006-51b5-4b5d-b543-fb39be9a917e', 'Keberatan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5332006-51b5-4b5d-b543-fb39be9a917e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Maaf'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5332006-51b5-4b5d-b543-fb39be9a917e', 'Maaf', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5332006-51b5-4b5d-b543-fb39be9a917e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sorry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5332006-51b5-4b5d-b543-fb39be9a917e', 'Sorry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5332006-51b5-4b5d-b543-fb39be9a917e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pardon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5332006-51b5-4b5d-b543-fb39be9a917e', 'Pardon', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5332006-51b5-4b5d-b543-fb39be9a917e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saya Mohon Maaf'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5332006-51b5-4b5d-b543-fb39be9a917e', 'Saya Mohon Maaf', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd5332006-51b5-4b5d-b543-fb39be9a917e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('I Beg Your Pardon'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d5332006-51b5-4b5d-b543-fb39be9a917e', 'I Beg Your Pardon', false, true);
  END IF;

  -- [VOCABULARY] 御覧になる (Level 39)
  UPDATE item_meanings SET meaning = 'Melihat', primary_meaning = true, accepted_answer = true WHERE id = 'b51c4433-05ae-41bb-95bc-46ec44e3391e';
  UPDATE items SET slug = 'melihat' WHERE id = '4f8c6017-af46-45ca-b9ff-8e8e886f2ea8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f8c6017-af46-45ca-b9ff-8e8e886f2ea8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menonton'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f8c6017-af46-45ca-b9ff-8e8e886f2ea8', 'Menonton', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f8c6017-af46-45ca-b9ff-8e8e886f2ea8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyaksikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f8c6017-af46-45ca-b9ff-8e8e886f2ea8', 'Menyaksikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f8c6017-af46-45ca-b9ff-8e8e886f2ea8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Look At'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f8c6017-af46-45ca-b9ff-8e8e886f2ea8', 'To Look At', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f8c6017-af46-45ca-b9ff-8e8e886f2ea8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melihat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f8c6017-af46-45ca-b9ff-8e8e886f2ea8', 'Untuk Melihat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f8c6017-af46-45ca-b9ff-8e8e886f2ea8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Look (Honorific)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f8c6017-af46-45ca-b9ff-8e8e886f2ea8', 'To Look (Honorific)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f8c6017-af46-45ca-b9ff-8e8e886f2ea8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To See'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f8c6017-af46-45ca-b9ff-8e8e886f2ea8', 'To See', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f8c6017-af46-45ca-b9ff-8e8e886f2ea8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Look'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f8c6017-af46-45ca-b9ff-8e8e886f2ea8', 'To Look', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f8c6017-af46-45ca-b9ff-8e8e886f2ea8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menonton'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f8c6017-af46-45ca-b9ff-8e8e886f2ea8', 'Untuk Menonton', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f8c6017-af46-45ca-b9ff-8e8e886f2ea8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To See Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f8c6017-af46-45ca-b9ff-8e8e886f2ea8', 'To See Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f8c6017-af46-45ca-b9ff-8e8e886f2ea8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Look At Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f8c6017-af46-45ca-b9ff-8e8e886f2ea8', 'To Look At Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4f8c6017-af46-45ca-b9ff-8e8e886f2ea8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Watch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4f8c6017-af46-45ca-b9ff-8e8e886f2ea8', 'To Watch', false, true);
  END IF;

  -- [VOCABULARY] 御飯 (Level 39)
  UPDATE item_meanings SET meaning = 'Nasi', primary_meaning = true, accepted_answer = true WHERE id = 'ccc2e931-fe23-40f0-9f70-4ce1f6d4b833';
  UPDATE items SET slug = 'nasi' WHERE id = 'cbc2ccae-57d3-45df-949b-2b5f10f47b52';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cbc2ccae-57d3-45df-949b-2b5f10f47b52' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Santapan Makanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cbc2ccae-57d3-45df-949b-2b5f10f47b52', 'Santapan Makanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cbc2ccae-57d3-45df-949b-2b5f10f47b52' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cbc2ccae-57d3-45df-949b-2b5f10f47b52', 'Meal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cbc2ccae-57d3-45df-949b-2b5f10f47b52' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cooked Rice'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cbc2ccae-57d3-45df-949b-2b5f10f47b52', 'Cooked Rice', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cbc2ccae-57d3-45df-949b-2b5f10f47b52' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cbc2ccae-57d3-45df-949b-2b5f10f47b52', 'Makanan', false, true);
  END IF;

  -- [VOCABULARY] 応募する (Level 39)
  UPDATE item_meanings SET meaning = 'Mendaftarkan Diri', primary_meaning = true, accepted_answer = true WHERE id = '047fda20-12ea-4358-b868-9c54d7fe24a7';
  UPDATE items SET slug = 'mendaftarkan-diri' WHERE id = 'c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengirim Lamaran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8', 'Mengirim Lamaran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melamar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8', 'Untuk Melamar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Apply'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8', 'To Apply', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Enlist'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8', 'To Enlist', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Answer An Ad'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8', 'To Answer An Ad', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Apply For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8', 'To Apply For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menjawab Sebuah Iklan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8', 'Untuk Menjawab Sebuah Iklan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mendaftar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8', 'Untuk Mendaftar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Enter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3a9f782-a044-4aa2-a6c6-5e037cbe0fb8', 'To Enter', false, true);
  END IF;

  -- [VOCABULARY] 惑う (Level 39)
  UPDATE item_meanings SET meaning = 'Bingung', primary_meaning = true, accepted_answer = true WHERE id = '41799ae3-e17f-44b0-8840-89a52f92668f';
  UPDATE items SET slug = 'bingung' WHERE id = '2c3fc4b9-ebbb-4ace-b121-635bc30fe58c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c3fc4b9-ebbb-4ace-b121-635bc30fe58c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bimbang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c3fc4b9-ebbb-4ace-b121-635bc30fe58c', 'Bimbang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c3fc4b9-ebbb-4ace-b121-635bc30fe58c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gamang Ragu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c3fc4b9-ebbb-4ace-b121-635bc30fe58c', 'Gamang Ragu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c3fc4b9-ebbb-4ace-b121-635bc30fe58c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Rugi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c3fc4b9-ebbb-4ace-b121-635bc30fe58c', 'Menjadi Rugi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c3fc4b9-ebbb-4ace-b121-635bc30fe58c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Perplexed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c3fc4b9-ebbb-4ace-b121-635bc30fe58c', 'To Be Perplexed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c3fc4b9-ebbb-4ace-b121-635bc30fe58c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Confused'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c3fc4b9-ebbb-4ace-b121-635bc30fe58c', 'To Be Confused', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c3fc4b9-ebbb-4ace-b121-635bc30fe58c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Baffled'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c3fc4b9-ebbb-4ace-b121-635bc30fe58c', 'To Be Baffled', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c3fc4b9-ebbb-4ace-b121-635bc30fe58c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Bingung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c3fc4b9-ebbb-4ace-b121-635bc30fe58c', 'Menjadi Bingung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c3fc4b9-ebbb-4ace-b121-635bc30fe58c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Led Astray'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c3fc4b9-ebbb-4ace-b121-635bc30fe58c', 'To Be Led Astray', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c3fc4b9-ebbb-4ace-b121-635bc30fe58c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Bewildered'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c3fc4b9-ebbb-4ace-b121-635bc30fe58c', 'To Be Bewildered', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c3fc4b9-ebbb-4ace-b121-635bc30fe58c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Puzzled'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c3fc4b9-ebbb-4ace-b121-635bc30fe58c', 'To Be Puzzled', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c3fc4b9-ebbb-4ace-b121-635bc30fe58c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be At A Loss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c3fc4b9-ebbb-4ace-b121-635bc30fe58c', 'To Be At A Loss', false, true);
  END IF;

  -- [VOCABULARY] 慎む (Level 39)
  UPDATE item_meanings SET meaning = 'Menjaga Sikap', primary_meaning = true, accepted_answer = true WHERE id = '3cf44877-6d87-4d99-bad7-94f300477788';
  UPDATE items SET slug = 'menjaga-sikap' WHERE id = 'c14448e2-986a-4124-9d3b-301ba9e91a05';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c14448e2-986a-4124-9d3b-301ba9e91a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menahan Diri Bersopan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c14448e2-986a-4124-9d3b-301ba9e91a05', 'Menahan Diri Bersopan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c14448e2-986a-4124-9d3b-301ba9e91a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersikap Bijaksana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c14448e2-986a-4124-9d3b-301ba9e91a05', 'Bersikap Bijaksana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c14448e2-986a-4124-9d3b-301ba9e91a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Discreet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c14448e2-986a-4124-9d3b-301ba9e91a05', 'To Be Discreet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c14448e2-986a-4124-9d3b-301ba9e91a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Refrain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c14448e2-986a-4124-9d3b-301ba9e91a05', 'To Refrain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c14448e2-986a-4124-9d3b-301ba9e91a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Careful'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c14448e2-986a-4124-9d3b-301ba9e91a05', 'To Be Careful', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c14448e2-986a-4124-9d3b-301ba9e91a05' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Berhati-hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c14448e2-986a-4124-9d3b-301ba9e91a05', 'Untuk Berhati-hati', false, true);
  END IF;

  -- [VOCABULARY] 慎重 (Level 39)
  UPDATE item_meanings SET meaning = 'Berhati-hati', primary_meaning = true, accepted_answer = true WHERE id = 'a054fdbe-2e10-4ca7-afe2-8bf5100acfcb';
  UPDATE items SET slug = 'berhati-hati' WHERE id = 'b609dea3-3594-4412-8696-27c6c9e113c1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b609dea3-3594-4412-8696-27c6c9e113c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penuh Kehati-hatian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b609dea3-3594-4412-8696-27c6c9e113c1', 'Penuh Kehati-hatian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b609dea3-3594-4412-8696-27c6c9e113c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bijaksana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b609dea3-3594-4412-8696-27c6c9e113c1', 'Bijaksana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b609dea3-3594-4412-8696-27c6c9e113c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cautious'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b609dea3-3594-4412-8696-27c6c9e113c1', 'Cautious', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b609dea3-3594-4412-8696-27c6c9e113c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Careful'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b609dea3-3594-4412-8696-27c6c9e113c1', 'Careful', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b609dea3-3594-4412-8696-27c6c9e113c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Caution'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b609dea3-3594-4412-8696-27c6c9e113c1', 'Caution', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b609dea3-3594-4412-8696-27c6c9e113c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carefulness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b609dea3-3594-4412-8696-27c6c9e113c1', 'Carefulness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b609dea3-3594-4412-8696-27c6c9e113c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deliberate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b609dea3-3594-4412-8696-27c6c9e113c1', 'Deliberate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b609dea3-3594-4412-8696-27c6c9e113c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Discreet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b609dea3-3594-4412-8696-27c6c9e113c1', 'Discreet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b609dea3-3594-4412-8696-27c6c9e113c1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hati-hati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b609dea3-3594-4412-8696-27c6c9e113c1', 'Hati-hati', false, true);
  END IF;

  -- [VOCABULARY] 払い戻す (Level 39)
  UPDATE item_meanings SET meaning = 'Mengembalikan Uang', primary_meaning = true, accepted_answer = true WHERE id = 'a45bcfc8-ce8c-4179-ab55-eafa4af80863';
  UPDATE items SET slug = 'mengembalikan-uang' WHERE id = 'c9c78038-38e8-4bb2-b4fb-788b7cf36539';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9c78038-38e8-4bb2-b4fb-788b7cf36539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Refund'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9c78038-38e8-4bb2-b4fb-788b7cf36539', 'Refund', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9c78038-38e8-4bb2-b4fb-788b7cf36539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ganti Rugi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9c78038-38e8-4bb2-b4fb-788b7cf36539', 'Ganti Rugi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9c78038-38e8-4bb2-b4fb-788b7cf36539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Refund'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9c78038-38e8-4bb2-b4fb-788b7cf36539', 'To Refund', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9c78038-38e8-4bb2-b4fb-788b7cf36539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengganti Biaya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9c78038-38e8-4bb2-b4fb-788b7cf36539', 'Mengganti Biaya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9c78038-38e8-4bb2-b4fb-788b7cf36539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Membayar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9c78038-38e8-4bb2-b4fb-788b7cf36539', 'Untuk Membayar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9c78038-38e8-4bb2-b4fb-788b7cf36539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Reimburse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9c78038-38e8-4bb2-b4fb-788b7cf36539', 'To Reimburse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9c78038-38e8-4bb2-b4fb-788b7cf36539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengembalikan Dana'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9c78038-38e8-4bb2-b4fb-788b7cf36539', 'Untuk Mengembalikan Dana', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9c78038-38e8-4bb2-b4fb-788b7cf36539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Reimburse Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9c78038-38e8-4bb2-b4fb-788b7cf36539', 'To Reimburse Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9c78038-38e8-4bb2-b4fb-788b7cf36539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Refund Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9c78038-38e8-4bb2-b4fb-788b7cf36539', 'To Refund Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9c78038-38e8-4bb2-b4fb-788b7cf36539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Repay Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9c78038-38e8-4bb2-b4fb-788b7cf36539', 'To Repay Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9c78038-38e8-4bb2-b4fb-788b7cf36539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pay Something Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9c78038-38e8-4bb2-b4fb-788b7cf36539', 'To Pay Something Back', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9c78038-38e8-4bb2-b4fb-788b7cf36539' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Repay'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9c78038-38e8-4bb2-b4fb-788b7cf36539', 'To Repay', false, true);
  END IF;

  -- [VOCABULARY] 拒む (Level 39)
  UPDATE item_meanings SET meaning = 'Menolak Mentah-mentah', primary_meaning = true, accepted_answer = true WHERE id = 'db7c64c4-697d-4798-844b-1ca76534c07d';
  UPDATE items SET slug = 'menolak-mentah-mentah' WHERE id = '2c6111eb-6e7c-47df-9d13-f2cefd2a2f8b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c6111eb-6e7c-47df-9d13-f2cefd2a2f8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menampik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c6111eb-6e7c-47df-9d13-f2cefd2a2f8b', 'Menampik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c6111eb-6e7c-47df-9d13-f2cefd2a2f8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menolak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c6111eb-6e7c-47df-9d13-f2cefd2a2f8b', 'Menolak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c6111eb-6e7c-47df-9d13-f2cefd2a2f8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Refuse'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c6111eb-6e7c-47df-9d13-f2cefd2a2f8b', 'To Refuse', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c6111eb-6e7c-47df-9d13-f2cefd2a2f8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Reject'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c6111eb-6e7c-47df-9d13-f2cefd2a2f8b', 'To Reject', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2c6111eb-6e7c-47df-9d13-f2cefd2a2f8b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menolak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2c6111eb-6e7c-47df-9d13-f2cefd2a2f8b', 'Untuk Menolak', false, true);
  END IF;

  -- [VOCABULARY] 控え (Level 39)
  UPDATE item_meanings SET meaning = 'Lembar Salinan Cadangan', primary_meaning = true, accepted_answer = true WHERE id = '0e9b86eb-a307-472e-b703-b8d839841d07';
  UPDATE items SET slug = 'lembar-salinan-cadangan' WHERE id = 'dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemain Cadangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26', 'Pemain Cadangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cadangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26', 'Cadangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Backup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26', 'Backup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reserve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26', 'Reserve', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Copy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26', 'Copy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stub'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26', 'Stub', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyimpan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26', 'Menyimpan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meluangkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26', 'Meluangkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyalin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26', 'Menyalin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spare'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dc7e8a7c-c59f-4ca7-a6e5-f32f3d5c9f26', 'Spare', false, true);
  END IF;

  -- [VOCABULARY] 枠組み (Level 39)
  UPDATE item_meanings SET meaning = 'Kerangka Kerja', primary_meaning = true, accepted_answer = true WHERE id = 'a4fd2d58-4cd9-4ba9-99c6-2d531a56e2e6';
  UPDATE items SET slug = 'kerangka-kerja' WHERE id = 'cd7dfb2c-d06f-4790-95f1-b81f8cc62bbe';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cd7dfb2c-d06f-4790-95f1-b81f8cc62bbe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Framework'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cd7dfb2c-d06f-4790-95f1-b81f8cc62bbe', 'Framework', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cd7dfb2c-d06f-4790-95f1-b81f8cc62bbe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Skema'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cd7dfb2c-d06f-4790-95f1-b81f8cc62bbe', 'Skema', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cd7dfb2c-d06f-4790-95f1-b81f8cc62bbe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Skema Batas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cd7dfb2c-d06f-4790-95f1-b81f8cc62bbe', 'Skema Batas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cd7dfb2c-d06f-4790-95f1-b81f8cc62bbe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bingkai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cd7dfb2c-d06f-4790-95f1-b81f8cc62bbe', 'Bingkai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cd7dfb2c-d06f-4790-95f1-b81f8cc62bbe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerangka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cd7dfb2c-d06f-4790-95f1-b81f8cc62bbe', 'Kerangka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cd7dfb2c-d06f-4790-95f1-b81f8cc62bbe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Frame'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cd7dfb2c-d06f-4790-95f1-b81f8cc62bbe', 'Frame', false, true);
  END IF;

  -- [VOCABULARY] 棋士 (Level 39)
  UPDATE item_meanings SET meaning = 'Pemain Shogi', primary_meaning = true, accepted_answer = true WHERE id = '9fd23fb3-61a6-412b-a43e-f207ca651d86';
  UPDATE items SET slug = 'pemain-shogi' WHERE id = '1cba0672-c009-4d55-a991-2fb791d7d587';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1cba0672-c009-4d55-a991-2fb791d7d587' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemain Catur Profesional'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1cba0672-c009-4d55-a991-2fb791d7d587', 'Pemain Catur Profesional', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1cba0672-c009-4d55-a991-2fb791d7d587' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemain Go'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1cba0672-c009-4d55-a991-2fb791d7d587', 'Pemain Go', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1cba0672-c009-4d55-a991-2fb791d7d587' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shogi Player'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1cba0672-c009-4d55-a991-2fb791d7d587', 'Shogi Player', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1cba0672-c009-4d55-a991-2fb791d7d587' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemain Catur Profesional (Shogi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1cba0672-c009-4d55-a991-2fb791d7d587', 'Pemain Catur Profesional (Shogi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1cba0672-c009-4d55-a991-2fb791d7d587' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1cba0672-c009-4d55-a991-2fb791d7d587', 'Go)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1cba0672-c009-4d55-a991-2fb791d7d587' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go Player'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1cba0672-c009-4d55-a991-2fb791d7d587', 'Go Player', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1cba0672-c009-4d55-a991-2fb791d7d587' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ayo Pemain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1cba0672-c009-4d55-a991-2fb791d7d587', 'Ayo Pemain', false, true);
  END IF;

  -- [VOCABULARY] 棋院 (Level 39)
  UPDATE item_meanings SET meaning = 'Institut Catur', primary_meaning = true, accepted_answer = true WHERE id = '059bd2f6-40ac-45de-8939-37e842eb4850';
  UPDATE items SET slug = 'institut-catur' WHERE id = '1fe1997c-e91f-4384-a5ed-3a5a90c24088';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fe1997c-e91f-4384-a5ed-3a5a90c24088' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Institut Shogi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fe1997c-e91f-4384-a5ed-3a5a90c24088', 'Institut Shogi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fe1997c-e91f-4384-a5ed-3a5a90c24088' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nihon Ki-in'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fe1997c-e91f-4384-a5ed-3a5a90c24088', 'Nihon Ki-in', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fe1997c-e91f-4384-a5ed-3a5a90c24088' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Board Game Institute'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fe1997c-e91f-4384-a5ed-3a5a90c24088', 'Board Game Institute', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fe1997c-e91f-4384-a5ed-3a5a90c24088' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fe1997c-e91f-4384-a5ed-3a5a90c24088', 'Go', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fe1997c-e91f-4384-a5ed-3a5a90c24088' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pergi Asosiasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fe1997c-e91f-4384-a5ed-3a5a90c24088', 'Pergi Asosiasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fe1997c-e91f-4384-a5ed-3a5a90c24088' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go Institute'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fe1997c-e91f-4384-a5ed-3a5a90c24088', 'Go Institute', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fe1997c-e91f-4384-a5ed-3a5a90c24088' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go Association'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fe1997c-e91f-4384-a5ed-3a5a90c24088', 'Go Association', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fe1997c-e91f-4384-a5ed-3a5a90c24088' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go Hall'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fe1997c-e91f-4384-a5ed-3a5a90c24088', 'Go Hall', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fe1997c-e91f-4384-a5ed-3a5a90c24088' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pergi ke Aula'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fe1997c-e91f-4384-a5ed-3a5a90c24088', 'Pergi ke Aula', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fe1997c-e91f-4384-a5ed-3a5a90c24088' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pergi ke Institut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fe1997c-e91f-4384-a5ed-3a5a90c24088', 'Pergi ke Institut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fe1997c-e91f-4384-a5ed-3a5a90c24088' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go Institution'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fe1997c-e91f-4384-a5ed-3a5a90c24088', 'Go Institution', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1fe1997c-e91f-4384-a5ed-3a5a90c24088' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go Club'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1fe1997c-e91f-4384-a5ed-3a5a90c24088', 'Go Club', false, true);
  END IF;

  -- [VOCABULARY] 活躍 (Level 39)
  UPDATE item_meanings SET meaning = 'Berkiprah Sukses', primary_meaning = true, accepted_answer = true WHERE id = '7331136b-8c63-4406-92d5-b041b51ea112';
  UPDATE items SET slug = 'berkiprah-sukses' WHERE id = '2bca28e4-72c5-4522-81a9-5e52ad6cd7bb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bca28e4-72c5-4522-81a9-5e52ad6cd7bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berprestasi Aktif'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bca28e4-72c5-4522-81a9-5e52ad6cd7bb', 'Berprestasi Aktif', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bca28e4-72c5-4522-81a9-5e52ad6cd7bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Partisipasi Aktif'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bca28e4-72c5-4522-81a9-5e52ad6cd7bb', 'Partisipasi Aktif', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bca28e4-72c5-4522-81a9-5e52ad6cd7bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Great Activity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bca28e4-72c5-4522-81a9-5e52ad6cd7bb', 'Great Activity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bca28e4-72c5-4522-81a9-5e52ad6cd7bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Active Success'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bca28e4-72c5-4522-81a9-5e52ad6cd7bb', 'Active Success', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bca28e4-72c5-4522-81a9-5e52ad6cd7bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Great Effort'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bca28e4-72c5-4522-81a9-5e52ad6cd7bb', 'Great Effort', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bca28e4-72c5-4522-81a9-5e52ad6cd7bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aktivitas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bca28e4-72c5-4522-81a9-5e52ad6cd7bb', 'Aktivitas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bca28e4-72c5-4522-81a9-5e52ad6cd7bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesuksesan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bca28e4-72c5-4522-81a9-5e52ad6cd7bb', 'Kesuksesan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bca28e4-72c5-4522-81a9-5e52ad6cd7bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lakukan yang Hebat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bca28e4-72c5-4522-81a9-5e52ad6cd7bb', 'Lakukan yang Hebat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bca28e4-72c5-4522-81a9-5e52ad6cd7bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Active Participation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bca28e4-72c5-4522-81a9-5e52ad6cd7bb', 'Active Participation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bca28e4-72c5-4522-81a9-5e52ad6cd7bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Activity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bca28e4-72c5-4522-81a9-5e52ad6cd7bb', 'Activity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bca28e4-72c5-4522-81a9-5e52ad6cd7bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Success'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bca28e4-72c5-4522-81a9-5e52ad6cd7bb', 'Success', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2bca28e4-72c5-4522-81a9-5e52ad6cd7bb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Do Great'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2bca28e4-72c5-4522-81a9-5e52ad6cd7bb', 'Do Great', false, true);
  END IF;

  -- [VOCABULARY] 渋い (Level 39)
  UPDATE item_meanings SET meaning = 'Sepat Rasanya', primary_meaning = true, accepted_answer = true WHERE id = 'a9900711-2864-4cd4-9ec8-f01499ee92d3';
  UPDATE items SET slug = 'sepat-rasanya' WHERE id = 'c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bergaya Keren Matang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e', 'Bergaya Keren Matang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rasa Pahit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e', 'Rasa Pahit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Astringent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e', 'Astringent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bitter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e', 'Bitter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tasteful'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e', 'Tasteful', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pahit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e', 'Pahit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bitter Flavor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e', 'Bitter Flavor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bitter Flavour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1a2ee0a-ed0c-4fba-bdbd-e17559cb527e', 'Bitter Flavour', false, true);
  END IF;

  -- [VOCABULARY] 片言 (Level 39)
  UPDATE item_meanings SET meaning = 'Patah-patah', primary_meaning = true, accepted_answer = true WHERE id = '5ff0b8cf-72ed-4ddd-a7ed-5ccd136fe8b1';
  UPDATE items SET slug = 'patah-patah' WHERE id = '1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sepatah Dua Patah Kata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4', 'Sepatah Dua Patah Kata', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bahasa Rusak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4', 'Bahasa Rusak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Broken Language'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4', 'Broken Language', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Baby Talk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4', 'Baby Talk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Few Words'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4', 'A Few Words', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Non-Standard Speech'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4', 'Non-Standard Speech', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Broken English'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4', 'Broken English', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Broken Japanese'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4', 'Broken Japanese', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Beberapa Kata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1d1d77ad-f5d6-4d14-b270-5f34f1c2f3c4', 'Beberapa Kata', false, true);
  END IF;

  -- [VOCABULARY] 由緒正しい (Level 39)
  UPDATE item_meanings SET meaning = 'Silsilah Mulia', primary_meaning = true, accepted_answer = true WHERE id = 'd885190e-9a87-4dc0-9f52-91c890a40999';
  UPDATE items SET slug = 'silsilah-mulia' WHERE id = 'a424ddcb-6b40-4a60-9904-4052f42a9ef9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a424ddcb-6b40-4a60-9904-4052f42a9ef9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berasal dari Silsilah Terpandang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a424ddcb-6b40-4a60-9904-4052f42a9ef9', 'Berasal dari Silsilah Terpandang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a424ddcb-6b40-4a60-9904-4052f42a9ef9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersejarah Panjang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a424ddcb-6b40-4a60-9904-4052f42a9ef9', 'Bersejarah Panjang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a424ddcb-6b40-4a60-9904-4052f42a9ef9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Silsilah Terpandang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a424ddcb-6b40-4a60-9904-4052f42a9ef9', 'Silsilah Terpandang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a424ddcb-6b40-4a60-9904-4052f42a9ef9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Of Honorable Lineage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a424ddcb-6b40-4a60-9904-4052f42a9ef9', 'Of Honorable Lineage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a424ddcb-6b40-4a60-9904-4052f42a9ef9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dari Silsilah Yang Terhormat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a424ddcb-6b40-4a60-9904-4052f42a9ef9', 'Dari Silsilah Yang Terhormat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a424ddcb-6b40-4a60-9904-4052f42a9ef9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Historic Lineage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a424ddcb-6b40-4a60-9904-4052f42a9ef9', 'Historic Lineage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a424ddcb-6b40-4a60-9904-4052f42a9ef9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Venerable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a424ddcb-6b40-4a60-9904-4052f42a9ef9', 'Venerable', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a424ddcb-6b40-4a60-9904-4052f42a9ef9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tua'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a424ddcb-6b40-4a60-9904-4052f42a9ef9', 'Tua', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a424ddcb-6b40-4a60-9904-4052f42a9ef9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Of Noble Birth'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a424ddcb-6b40-4a60-9904-4052f42a9ef9', 'Of Noble Birth', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a424ddcb-6b40-4a60-9904-4052f42a9ef9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Of Honourable Lineage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a424ddcb-6b40-4a60-9904-4052f42a9ef9', 'Of Honourable Lineage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a424ddcb-6b40-4a60-9904-4052f42a9ef9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('With A Long History'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a424ddcb-6b40-4a60-9904-4052f42a9ef9', 'With A Long History', false, true);
  END IF;

  -- [VOCABULARY] 甲 (Level 39)
  UPDATE item_meanings SET meaning = 'Cangkang', primary_meaning = true, accepted_answer = true WHERE id = '29442916-cda2-46a4-89e6-06a3cb69b385';
  UPDATE items SET slug = 'cangkang' WHERE id = '1e21756e-a7b0-4615-a0e8-f6c4878390d2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e21756e-a7b0-4615-a0e8-f6c4878390d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Punggung Tangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e21756e-a7b0-4615-a0e8-f6c4878390d2', 'Punggung Tangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e21756e-a7b0-4615-a0e8-f6c4878390d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Golongan A'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e21756e-a7b0-4615-a0e8-f6c4878390d2', 'Golongan A', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e21756e-a7b0-4615-a0e8-f6c4878390d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carapace'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e21756e-a7b0-4615-a0e8-f6c4878390d2', 'Carapace', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e21756e-a7b0-4615-a0e8-f6c4878390d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shell'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e21756e-a7b0-4615-a0e8-f6c4878390d2', 'Shell', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e21756e-a7b0-4615-a0e8-f6c4878390d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Golongan Pertama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e21756e-a7b0-4615-a0e8-f6c4878390d2', 'Golongan Pertama', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e21756e-a7b0-4615-a0e8-f6c4878390d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cangkang Penyu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e21756e-a7b0-4615-a0e8-f6c4878390d2', 'Cangkang Penyu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e21756e-a7b0-4615-a0e8-f6c4878390d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Back Of Hand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e21756e-a7b0-4615-a0e8-f6c4878390d2', 'Back Of Hand', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e21756e-a7b0-4615-a0e8-f6c4878390d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Punggung kaki'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e21756e-a7b0-4615-a0e8-f6c4878390d2', 'Punggung kaki', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e21756e-a7b0-4615-a0e8-f6c4878390d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Back Of The Hand'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e21756e-a7b0-4615-a0e8-f6c4878390d2', 'Back Of The Hand', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e21756e-a7b0-4615-a0e8-f6c4878390d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Instep'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e21756e-a7b0-4615-a0e8-f6c4878390d2', 'Instep', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e21756e-a7b0-4615-a0e8-f6c4878390d2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Turtle Shell'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e21756e-a7b0-4615-a0e8-f6c4878390d2', 'Turtle Shell', false, true);
  END IF;

  -- [VOCABULARY] 甲斐 (Level 39)
  UPDATE item_meanings SET meaning = 'Manfaat', primary_meaning = true, accepted_answer = true WHERE id = '97c79251-b2a2-460f-9bf2-e908b4e5613e';
  UPDATE items SET slug = 'manfaat' WHERE id = '94a3454b-0ac5-486f-9d20-4f830652dab4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94a3454b-0ac5-486f-9d20-4f830652dab4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Arti'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94a3454b-0ac5-486f-9d20-4f830652dab4', 'Arti', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94a3454b-0ac5-486f-9d20-4f830652dab4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Sia-sia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94a3454b-0ac5-486f-9d20-4f830652dab4', 'Tidak Sia-sia', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94a3454b-0ac5-486f-9d20-4f830652dab4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Worth'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94a3454b-0ac5-486f-9d20-4f830652dab4', 'Worth', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94a3454b-0ac5-486f-9d20-4f830652dab4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benefit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94a3454b-0ac5-486f-9d20-4f830652dab4', 'Benefit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94a3454b-0ac5-486f-9d20-4f830652dab4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bernilai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94a3454b-0ac5-486f-9d20-4f830652dab4', 'Bernilai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94a3454b-0ac5-486f-9d20-4f830652dab4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Result'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94a3454b-0ac5-486f-9d20-4f830652dab4', 'Result', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94a3454b-0ac5-486f-9d20-4f830652dab4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memengaruhi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94a3454b-0ac5-486f-9d20-4f830652dab4', 'Memengaruhi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94a3454b-0ac5-486f-9d20-4f830652dab4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Effect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94a3454b-0ac5-486f-9d20-4f830652dab4', 'Effect', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94a3454b-0ac5-486f-9d20-4f830652dab4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hasil'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94a3454b-0ac5-486f-9d20-4f830652dab4', 'Hasil', false, true);
  END IF;

  -- [VOCABULARY] 短銃 (Level 39)
  UPDATE item_meanings SET meaning = 'Pistol Pendek', primary_meaning = true, accepted_answer = true WHERE id = 'a24f8199-6ee8-44c1-b91a-482dc5565472';
  UPDATE items SET slug = 'pistol-pendek' WHERE id = 'aefc692c-e671-4f58-a57e-f905d984ad85';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aefc692c-e671-4f58-a57e-f905d984ad85' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Revolver'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aefc692c-e671-4f58-a57e-f905d984ad85', 'Revolver', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aefc692c-e671-4f58-a57e-f905d984ad85' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pistol'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aefc692c-e671-4f58-a57e-f905d984ad85', 'Pistol', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aefc692c-e671-4f58-a57e-f905d984ad85' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Handgun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aefc692c-e671-4f58-a57e-f905d984ad85', 'Handgun', false, true);
  END IF;

  -- [VOCABULARY] 祈念 (Level 39)
  UPDATE item_meanings SET meaning = 'Doa Khusyuk', primary_meaning = true, accepted_answer = true WHERE id = '88381b87-8c3a-46c6-96bf-4248e5090095';
  UPDATE items SET slug = 'doa-khusyuk' WHERE id = 'ea79bd60-eb6f-4c02-b3a4-3e758fa942e1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea79bd60-eb6f-4c02-b3a4-3e758fa942e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Permohonan Doa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea79bd60-eb6f-4c02-b3a4-3e758fa942e1', 'Permohonan Doa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea79bd60-eb6f-4c02-b3a4-3e758fa942e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Doa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea79bd60-eb6f-4c02-b3a4-3e758fa942e1', 'Doa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea79bd60-eb6f-4c02-b3a4-3e758fa942e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prayer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea79bd60-eb6f-4c02-b3a4-3e758fa942e1', 'Prayer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea79bd60-eb6f-4c02-b3a4-3e758fa942e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Praying'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea79bd60-eb6f-4c02-b3a4-3e758fa942e1', 'Praying', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea79bd60-eb6f-4c02-b3a4-3e758fa942e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pray'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea79bd60-eb6f-4c02-b3a4-3e758fa942e1', 'Pray', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea79bd60-eb6f-4c02-b3a4-3e758fa942e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wish For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea79bd60-eb6f-4c02-b3a4-3e758fa942e1', 'Wish For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea79bd60-eb6f-4c02-b3a4-3e758fa942e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wishing For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea79bd60-eb6f-4c02-b3a4-3e758fa942e1', 'Wishing For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea79bd60-eb6f-4c02-b3a4-3e758fa942e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pray For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea79bd60-eb6f-4c02-b3a4-3e758fa942e1', 'Pray For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea79bd60-eb6f-4c02-b3a4-3e758fa942e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Praying For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea79bd60-eb6f-4c02-b3a4-3e758fa942e1', 'Praying For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea79bd60-eb6f-4c02-b3a4-3e758fa942e1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wishing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea79bd60-eb6f-4c02-b3a4-3e758fa942e1', 'Wishing', false, true);
  END IF;

  -- [VOCABULARY] 移譲 (Level 39)
  UPDATE item_meanings SET meaning = 'Pelimpahan Wewenang', primary_meaning = true, accepted_answer = true WHERE id = '7dd0e276-d326-4f6f-b5e7-017ea94fdb80';
  UPDATE items SET slug = 'pelimpahan-wewenang' WHERE id = '24d2b5fd-e035-4ea8-847d-07369e87dc91';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '24d2b5fd-e035-4ea8-847d-07369e87dc91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Transfer Mandat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('24d2b5fd-e035-4ea8-847d-07369e87dc91', 'Transfer Mandat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '24d2b5fd-e035-4ea8-847d-07369e87dc91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Transfer'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('24d2b5fd-e035-4ea8-847d-07369e87dc91', 'Transfer', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '24d2b5fd-e035-4ea8-847d-07369e87dc91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Assignment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('24d2b5fd-e035-4ea8-847d-07369e87dc91', 'Assignment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '24d2b5fd-e035-4ea8-847d-07369e87dc91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Devolution'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('24d2b5fd-e035-4ea8-847d-07369e87dc91', 'Devolution', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '24d2b5fd-e035-4ea8-847d-07369e87dc91' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penugasan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('24d2b5fd-e035-4ea8-847d-07369e87dc91', 'Penugasan', false, true);
  END IF;

  -- [VOCABULARY] 紅 (Level 39)
  UPDATE item_meanings SET meaning = 'Merah Merona', primary_meaning = true, accepted_answer = true WHERE id = '91c7752b-f48e-4b84-baa0-b8c8e3e12af2';
  UPDATE items SET slug = 'merah-merona' WHERE id = 'c7b175cd-14f0-44a0-8bb7-0036eda63e28';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7b175cd-14f0-44a0-8bb7-0036eda63e28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gincu Merah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7b175cd-14f0-44a0-8bb7-0036eda63e28', 'Gincu Merah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7b175cd-14f0-44a0-8bb7-0036eda63e28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merah Tua'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7b175cd-14f0-44a0-8bb7-0036eda63e28', 'Merah Tua', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7b175cd-14f0-44a0-8bb7-0036eda63e28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crimson'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7b175cd-14f0-44a0-8bb7-0036eda63e28', 'Crimson', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7b175cd-14f0-44a0-8bb7-0036eda63e28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rouge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7b175cd-14f0-44a0-8bb7-0036eda63e28', 'Rouge', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7b175cd-14f0-44a0-8bb7-0036eda63e28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lipstick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7b175cd-14f0-44a0-8bb7-0036eda63e28', 'Lipstick', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7b175cd-14f0-44a0-8bb7-0036eda63e28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dark Red'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7b175cd-14f0-44a0-8bb7-0036eda63e28', 'Dark Red', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7b175cd-14f0-44a0-8bb7-0036eda63e28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dark Red Colour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7b175cd-14f0-44a0-8bb7-0036eda63e28', 'Dark Red Colour', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7b175cd-14f0-44a0-8bb7-0036eda63e28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('pemerah pipi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7b175cd-14f0-44a0-8bb7-0036eda63e28', 'pemerah pipi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c7b175cd-14f0-44a0-8bb7-0036eda63e28' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deep Red'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c7b175cd-14f0-44a0-8bb7-0036eda63e28', 'Deep Red', false, true);
  END IF;

  -- [VOCABULARY] 虚栄心 (Level 39)
  UPDATE item_meanings SET meaning = 'Sifat Gila Pujian', primary_meaning = true, accepted_answer = true WHERE id = '5027576c-b727-4c7e-9c20-ef0c2a6cb8c4';
  UPDATE items SET slug = 'sifat-gila-pujian' WHERE id = 'bb83b6fe-edb5-4d8c-bcd9-1ea4753111d4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb83b6fe-edb5-4d8c-bcd9-1ea4753111d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesombongan Semu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb83b6fe-edb5-4d8c-bcd9-1ea4753111d4', 'Kesombongan Semu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb83b6fe-edb5-4d8c-bcd9-1ea4753111d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesombongan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb83b6fe-edb5-4d8c-bcd9-1ea4753111d4', 'Kesombongan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb83b6fe-edb5-4d8c-bcd9-1ea4753111d4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vanity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb83b6fe-edb5-4d8c-bcd9-1ea4753111d4', 'Vanity', false, true);
  END IF;

  -- [VOCABULARY] 補充 (Level 39)
  UPDATE item_meanings SET meaning = 'Pengisian Kembali', primary_meaning = true, accepted_answer = true WHERE id = '05ba7662-8ec4-4b5e-bf25-f6745650f746';
  UPDATE items SET slug = 'pengisian-kembali' WHERE id = '3d24ef6e-49fc-4b60-8412-667b0a4cebff';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d24ef6e-49fc-4b60-8412-667b0a4cebff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pasokan Ulang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d24ef6e-49fc-4b60-8412-667b0a4cebff', 'Pasokan Ulang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d24ef6e-49fc-4b60-8412-667b0a4cebff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Replenishment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d24ef6e-49fc-4b60-8412-667b0a4cebff', 'Replenishment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d24ef6e-49fc-4b60-8412-667b0a4cebff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restocking'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d24ef6e-49fc-4b60-8412-667b0a4cebff', 'Restocking', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d24ef6e-49fc-4b60-8412-667b0a4cebff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperlengkapi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d24ef6e-49fc-4b60-8412-667b0a4cebff', 'Memperlengkapi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d24ef6e-49fc-4b60-8412-667b0a4cebff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Isi ulang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d24ef6e-49fc-4b60-8412-667b0a4cebff', 'Isi ulang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d24ef6e-49fc-4b60-8412-667b0a4cebff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Resupply'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d24ef6e-49fc-4b60-8412-667b0a4cebff', 'Resupply', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d24ef6e-49fc-4b60-8412-667b0a4cebff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Restock'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d24ef6e-49fc-4b60-8412-667b0a4cebff', 'Restock', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d24ef6e-49fc-4b60-8412-667b0a4cebff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Supplement'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d24ef6e-49fc-4b60-8412-667b0a4cebff', 'Supplement', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3d24ef6e-49fc-4b60-8412-667b0a4cebff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Refill'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3d24ef6e-49fc-4b60-8412-667b0a4cebff', 'Refill', false, true);
  END IF;

  -- [VOCABULARY] 要項 (Level 39)
  UPDATE item_meanings SET meaning = 'Poin-poin Pokok', primary_meaning = true, accepted_answer = true WHERE id = 'bbc6d43f-795d-40be-a43f-c42cfc3dbc46';
  UPDATE items SET slug = 'poin-poin-pokok' WHERE id = '80daefb6-b428-4cb6-8f42-38ac9579e7e0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '80daefb6-b428-4cb6-8f42-38ac9579e7e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ketentuan Syarat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('80daefb6-b428-4cb6-8f42-38ac9579e7e0', 'Ketentuan Syarat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '80daefb6-b428-4cb6-8f42-38ac9579e7e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Poin Penting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('80daefb6-b428-4cb6-8f42-38ac9579e7e0', 'Poin Penting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '80daefb6-b428-4cb6-8f42-38ac9579e7e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Important Points'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('80daefb6-b428-4cb6-8f42-38ac9579e7e0', 'Important Points', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '80daefb6-b428-4cb6-8f42-38ac9579e7e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Guidelines'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('80daefb6-b428-4cb6-8f42-38ac9579e7e0', 'Guidelines', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '80daefb6-b428-4cb6-8f42-38ac9579e7e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Main Points'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('80daefb6-b428-4cb6-8f42-38ac9579e7e0', 'Main Points', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '80daefb6-b428-4cb6-8f42-38ac9579e7e0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Poin Utama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('80daefb6-b428-4cb6-8f42-38ac9579e7e0', 'Poin Utama', false, true);
  END IF;

  -- [VOCABULARY] 言葉遣い (Level 39)
  UPDATE item_meanings SET meaning = 'Tata Krama Berbahasa', primary_meaning = true, accepted_answer = true WHERE id = 'b6083302-7d21-4116-967b-978275859b0e';
  UPDATE items SET slug = 'tata-krama-berbahasa' WHERE id = 'fcc9e1dd-dba8-49f4-87b1-60cffed28d97';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fcc9e1dd-dba8-49f4-87b1-60cffed28d97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tutur Kata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fcc9e1dd-dba8-49f4-87b1-60cffed28d97', 'Tutur Kata', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fcc9e1dd-dba8-49f4-87b1-60cffed28d97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pilihan Kata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fcc9e1dd-dba8-49f4-87b1-60cffed28d97', 'Pilihan Kata', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fcc9e1dd-dba8-49f4-87b1-60cffed28d97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Manner Of Speaking'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fcc9e1dd-dba8-49f4-87b1-60cffed28d97', 'Manner Of Speaking', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fcc9e1dd-dba8-49f4-87b1-60cffed28d97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wording'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fcc9e1dd-dba8-49f4-87b1-60cffed28d97', 'Wording', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fcc9e1dd-dba8-49f4-87b1-60cffed28d97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Way Of Speaking'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fcc9e1dd-dba8-49f4-87b1-60cffed28d97', 'Way Of Speaking', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fcc9e1dd-dba8-49f4-87b1-60cffed28d97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Word Choice'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fcc9e1dd-dba8-49f4-87b1-60cffed28d97', 'Word Choice', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fcc9e1dd-dba8-49f4-87b1-60cffed28d97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Word Usage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fcc9e1dd-dba8-49f4-87b1-60cffed28d97', 'Word Usage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fcc9e1dd-dba8-49f4-87b1-60cffed28d97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Word Use'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fcc9e1dd-dba8-49f4-87b1-60cffed28d97', 'Word Use', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fcc9e1dd-dba8-49f4-87b1-60cffed28d97' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Choice Of Words'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fcc9e1dd-dba8-49f4-87b1-60cffed28d97', 'Choice Of Words', false, true);
  END IF;

  -- [VOCABULARY] 謙虚 (Level 39)
  UPDATE item_meanings SET meaning = 'Rendah Hati', primary_meaning = true, accepted_answer = true WHERE id = '6c231163-c550-41d5-adaf-23a04505e17b';
  UPDATE items SET slug = 'rendah-hati' WHERE id = '43d8dfb1-3f8a-4bcc-b6d2-997127fb7e77';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43d8dfb1-3f8a-4bcc-b6d2-997127fb7e77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berhati Tunduk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43d8dfb1-3f8a-4bcc-b6d2-997127fb7e77', 'Berhati Tunduk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43d8dfb1-3f8a-4bcc-b6d2-997127fb7e77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kesopanan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43d8dfb1-3f8a-4bcc-b6d2-997127fb7e77', 'Kesopanan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43d8dfb1-3f8a-4bcc-b6d2-997127fb7e77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Humility'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43d8dfb1-3f8a-4bcc-b6d2-997127fb7e77', 'Humility', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43d8dfb1-3f8a-4bcc-b6d2-997127fb7e77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Modesty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43d8dfb1-3f8a-4bcc-b6d2-997127fb7e77', 'Modesty', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '43d8dfb1-3f8a-4bcc-b6d2-997127fb7e77' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kerendahhatian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('43d8dfb1-3f8a-4bcc-b6d2-997127fb7e77', 'Kerendahhatian', false, true);
  END IF;

  -- [VOCABULARY] 譲る (Level 39)
  UPDATE item_meanings SET meaning = 'Menyerahkan', primary_meaning = true, accepted_answer = true WHERE id = '8434a66b-b668-4d06-8535-cb16f56cd827';
  UPDATE items SET slug = 'menyerahkan' WHERE id = 'c11804d6-6b91-4459-863e-e6815864d861';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c11804d6-6b91-4459-863e-e6815864d861' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengalah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c11804d6-6b91-4459-863e-e6815864d861', 'Mengalah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c11804d6-6b91-4459-863e-e6815864d861' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memberikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c11804d6-6b91-4459-863e-e6815864d861', 'Memberikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c11804d6-6b91-4459-863e-e6815864d861' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hand Over'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c11804d6-6b91-4459-863e-e6815864d861', 'To Hand Over', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c11804d6-6b91-4459-863e-e6815864d861' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Yield'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c11804d6-6b91-4459-863e-e6815864d861', 'To Yield', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c11804d6-6b91-4459-863e-e6815864d861' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerahkan (Kursi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c11804d6-6b91-4459-863e-e6815864d861', 'Menyerahkan (Kursi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c11804d6-6b91-4459-863e-e6815864d861' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hak)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c11804d6-6b91-4459-863e-e6815864d861', 'Hak)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c11804d6-6b91-4459-863e-e6815864d861' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengakui'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c11804d6-6b91-4459-863e-e6815864d861', 'Untuk Mengakui', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c11804d6-6b91-4459-863e-e6815864d861' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Concede'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c11804d6-6b91-4459-863e-e6815864d861', 'To Concede', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c11804d6-6b91-4459-863e-e6815864d861' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyerahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c11804d6-6b91-4459-863e-e6815864d861', 'Untuk Menyerahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c11804d6-6b91-4459-863e-e6815864d861' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Turn Over'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c11804d6-6b91-4459-863e-e6815864d861', 'To Turn Over', false, true);
  END IF;

  -- [VOCABULARY] 跳ねる (Level 39)
  UPDATE item_meanings SET meaning = 'Melompat Lenting', primary_meaning = true, accepted_answer = true WHERE id = 'f2a66bba-32e6-4933-a181-606eab52b294';
  UPDATE items SET slug = 'melompat-lenting' WHERE id = '08d941cf-e884-452b-8c46-ad61b9af50b4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '08d941cf-e884-452b-8c46-ad61b9af50b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memercik Air'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('08d941cf-e884-452b-8c46-ad61b9af50b4', 'Memercik Air', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '08d941cf-e884-452b-8c46-ad61b9af50b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melompat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('08d941cf-e884-452b-8c46-ad61b9af50b4', 'Untuk Melompat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '08d941cf-e884-452b-8c46-ad61b9af50b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hop'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('08d941cf-e884-452b-8c46-ad61b9af50b4', 'To Hop', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '08d941cf-e884-452b-8c46-ad61b9af50b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Splash'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('08d941cf-e884-452b-8c46-ad61b9af50b4', 'To Splash', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '08d941cf-e884-452b-8c46-ad61b9af50b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Jump'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('08d941cf-e884-452b-8c46-ad61b9af50b4', 'To Jump', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '08d941cf-e884-452b-8c46-ad61b9af50b4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Leap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('08d941cf-e884-452b-8c46-ad61b9af50b4', 'To Leap', false, true);
  END IF;

  -- [VOCABULARY] 跳躍 (Level 39)
  UPDATE item_meanings SET meaning = 'Lompatan Tinggi', primary_meaning = true, accepted_answer = true WHERE id = '3e8be7aa-6b17-48db-93ac-730fc0c781eb';
  UPDATE items SET slug = 'lompatan-tinggi' WHERE id = 'b69b8f05-3780-4e51-a652-0584c20c3a50';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b69b8f05-3780-4e51-a652-0584c20c3a50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lonjakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b69b8f05-3780-4e51-a652-0584c20c3a50', 'Lonjakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b69b8f05-3780-4e51-a652-0584c20c3a50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melompat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b69b8f05-3780-4e51-a652-0584c20c3a50', 'Melompat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b69b8f05-3780-4e51-a652-0584c20c3a50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jump'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b69b8f05-3780-4e51-a652-0584c20c3a50', 'Jump', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b69b8f05-3780-4e51-a652-0584c20c3a50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b69b8f05-3780-4e51-a652-0584c20c3a50', 'Leap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b69b8f05-3780-4e51-a652-0584c20c3a50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melewati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b69b8f05-3780-4e51-a652-0584c20c3a50', 'Melewati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b69b8f05-3780-4e51-a652-0584c20c3a50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bound'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b69b8f05-3780-4e51-a652-0584c20c3a50', 'Bound', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b69b8f05-3780-4e51-a652-0584c20c3a50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Skip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b69b8f05-3780-4e51-a652-0584c20c3a50', 'Skip', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b69b8f05-3780-4e51-a652-0584c20c3a50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jumping'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b69b8f05-3780-4e51-a652-0584c20c3a50', 'Jumping', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b69b8f05-3780-4e51-a652-0584c20c3a50' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Leaping'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b69b8f05-3780-4e51-a652-0584c20c3a50', 'Leaping', false, true);
  END IF;

  -- [VOCABULARY] 躍る (Level 39)
  UPDATE item_meanings SET meaning = 'Melompat Gembira', primary_meaning = true, accepted_answer = true WHERE id = '893b2343-d53f-4ea1-b4a8-af92b055fd75';
  UPDATE items SET slug = 'melompat-gembira' WHERE id = 'bcbb75c7-3837-4755-ad06-a43e237ec2ef';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bcbb75c7-3837-4755-ad06-a43e237ec2ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berdebar-debar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bcbb75c7-3837-4755-ad06-a43e237ec2ef', 'Berdebar-debar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bcbb75c7-3837-4755-ad06-a43e237ec2ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Melompat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bcbb75c7-3837-4755-ad06-a43e237ec2ef', 'Untuk Melompat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bcbb75c7-3837-4755-ad06-a43e237ec2ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Leap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bcbb75c7-3837-4755-ad06-a43e237ec2ef', 'To Leap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bcbb75c7-3837-4755-ad06-a43e237ec2ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Dance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bcbb75c7-3837-4755-ad06-a43e237ec2ef', 'To Dance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bcbb75c7-3837-4755-ad06-a43e237ec2ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Jump'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bcbb75c7-3837-4755-ad06-a43e237ec2ef', 'To Jump', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bcbb75c7-3837-4755-ad06-a43e237ec2ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bounce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bcbb75c7-3837-4755-ad06-a43e237ec2ef', 'To Bounce', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bcbb75c7-3837-4755-ad06-a43e237ec2ef' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Bangkit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bcbb75c7-3837-4755-ad06-a43e237ec2ef', 'Untuk Bangkit', false, true);
  END IF;

  -- [VOCABULARY] 連邦 (Level 39)
  UPDATE item_meanings SET meaning = 'Negara Federasi', primary_meaning = true, accepted_answer = true WHERE id = '5dbb2ce6-8f14-47f5-9e0b-c9ba071d354a';
  UPDATE items SET slug = 'negara-federasi' WHERE id = '76ba49b1-93aa-46a3-a709-19e42bc25940';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76ba49b1-93aa-46a3-a709-19e42bc25940' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uni Federal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76ba49b1-93aa-46a3-a709-19e42bc25940', 'Uni Federal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76ba49b1-93aa-46a3-a709-19e42bc25940' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Persemakmuran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76ba49b1-93aa-46a3-a709-19e42bc25940', 'Persemakmuran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76ba49b1-93aa-46a3-a709-19e42bc25940' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Federation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76ba49b1-93aa-46a3-a709-19e42bc25940', 'Federation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76ba49b1-93aa-46a3-a709-19e42bc25940' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Commonwealth'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76ba49b1-93aa-46a3-a709-19e42bc25940', 'Commonwealth', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '76ba49b1-93aa-46a3-a709-19e42bc25940' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Federasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('76ba49b1-93aa-46a3-a709-19e42bc25940', 'Federasi', false, true);
  END IF;

  -- [VOCABULARY] 銃殺 (Level 39)
  UPDATE item_meanings SET meaning = 'Hukuman Mati Tembak', primary_meaning = true, accepted_answer = true WHERE id = 'ed644fe0-902f-4318-8979-2444ceed8ac6';
  UPDATE items SET slug = 'hukuman-mati-tembak' WHERE id = '586d08d6-ff9b-4a19-a884-3ebd96cfa996';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '586d08d6-ff9b-4a19-a884-3ebd96cfa996' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ditembak Mati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('586d08d6-ff9b-4a19-a884-3ebd96cfa996', 'Ditembak Mati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '586d08d6-ff9b-4a19-a884-3ebd96cfa996' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kematian Karena Penembakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('586d08d6-ff9b-4a19-a884-3ebd96cfa996', 'Kematian Karena Penembakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '586d08d6-ff9b-4a19-a884-3ebd96cfa996' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Execution By Firing Squad'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('586d08d6-ff9b-4a19-a884-3ebd96cfa996', 'Execution By Firing Squad', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '586d08d6-ff9b-4a19-a884-3ebd96cfa996' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shoot To Death'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('586d08d6-ff9b-4a19-a884-3ebd96cfa996', 'Shoot To Death', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '586d08d6-ff9b-4a19-a884-3ebd96cfa996' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shooting Death'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('586d08d6-ff9b-4a19-a884-3ebd96cfa996', 'Shooting Death', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '586d08d6-ff9b-4a19-a884-3ebd96cfa996' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shot To Death'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('586d08d6-ff9b-4a19-a884-3ebd96cfa996', 'Shot To Death', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '586d08d6-ff9b-4a19-a884-3ebd96cfa996' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shooting To Death'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('586d08d6-ff9b-4a19-a884-3ebd96cfa996', 'Shooting To Death', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '586d08d6-ff9b-4a19-a884-3ebd96cfa996' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kill By Gun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('586d08d6-ff9b-4a19-a884-3ebd96cfa996', 'Kill By Gun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '586d08d6-ff9b-4a19-a884-3ebd96cfa996' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Killing With A Gun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('586d08d6-ff9b-4a19-a884-3ebd96cfa996', 'Killing With A Gun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '586d08d6-ff9b-4a19-a884-3ebd96cfa996' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Death By Shooting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('586d08d6-ff9b-4a19-a884-3ebd96cfa996', 'Death By Shooting', false, true);
  END IF;

  -- [VOCABULARY] 隆盛 (Level 39)
  UPDATE item_meanings SET meaning = 'Puncak Kejayaan', primary_meaning = true, accepted_answer = true WHERE id = '5531db20-3592-4352-925a-8ae8b1e4e9a0';
  UPDATE items SET slug = 'puncak-kejayaan' WHERE id = '60822b14-be65-4381-854b-1eb48f887789';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '60822b14-be65-4381-854b-1eb48f887789' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemakmuran Besar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('60822b14-be65-4381-854b-1eb48f887789', 'Kemakmuran Besar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '60822b14-be65-4381-854b-1eb48f887789' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemakmuran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('60822b14-be65-4381-854b-1eb48f887789', 'Kemakmuran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '60822b14-be65-4381-854b-1eb48f887789' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prosperity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('60822b14-be65-4381-854b-1eb48f887789', 'Prosperity', false, true);
  END IF;

  -- [VOCABULARY] 隆起 (Level 39)
  UPDATE item_meanings SET meaning = 'Tonjolan Naik', primary_meaning = true, accepted_answer = true WHERE id = '17589636-a0f4-40ac-9290-6f7a23df26b4';
  UPDATE items SET slug = 'tonjolan-naik' WHERE id = 'dcb8a886-5e40-4c77-bd9f-2e39a270ff1c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dcb8a886-5e40-4c77-bd9f-2e39a270ff1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pengangkatan Kerak Bumi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dcb8a886-5e40-4c77-bd9f-2e39a270ff1c', 'Pengangkatan Kerak Bumi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dcb8a886-5e40-4c77-bd9f-2e39a270ff1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benjol'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dcb8a886-5e40-4c77-bd9f-2e39a270ff1c', 'Benjol', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dcb8a886-5e40-4c77-bd9f-2e39a270ff1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Protuberance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dcb8a886-5e40-4c77-bd9f-2e39a270ff1c', 'Protuberance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dcb8a886-5e40-4c77-bd9f-2e39a270ff1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Uplift'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dcb8a886-5e40-4c77-bd9f-2e39a270ff1c', 'Uplift', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dcb8a886-5e40-4c77-bd9f-2e39a270ff1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tonjolan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dcb8a886-5e40-4c77-bd9f-2e39a270ff1c', 'Tonjolan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dcb8a886-5e40-4c77-bd9f-2e39a270ff1c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bulge'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dcb8a886-5e40-4c77-bd9f-2e39a270ff1c', 'Bulge', false, true);
  END IF;

  -- [VOCABULARY] 雇う (Level 39)
  UPDATE item_meanings SET meaning = 'Mempekerjakan', primary_meaning = true, accepted_answer = true WHERE id = 'a9eee9ec-fac0-4804-bcc5-a8f83384e51e';
  UPDATE items SET slug = 'mempekerjakan' WHERE id = '958c42ad-b230-46e2-9dfe-554c87ec56cc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '958c42ad-b230-46e2-9dfe-554c87ec56cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menggaji Karyawan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('958c42ad-b230-46e2-9dfe-554c87ec56cc', 'Menggaji Karyawan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '958c42ad-b230-46e2-9dfe-554c87ec56cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mempekerjakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('958c42ad-b230-46e2-9dfe-554c87ec56cc', 'Untuk Mempekerjakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '958c42ad-b230-46e2-9dfe-554c87ec56cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Employ'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('958c42ad-b230-46e2-9dfe-554c87ec56cc', 'To Employ', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '958c42ad-b230-46e2-9dfe-554c87ec56cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('958c42ad-b230-46e2-9dfe-554c87ec56cc', 'To Hire', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '958c42ad-b230-46e2-9dfe-554c87ec56cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyewa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('958c42ad-b230-46e2-9dfe-554c87ec56cc', 'Untuk Menyewa', false, true);
  END IF;

  -- [VOCABULARY] 項目 (Level 39)
  UPDATE item_meanings SET meaning = 'Butir Poin', primary_meaning = true, accepted_answer = true WHERE id = '9e82a859-e617-4a3d-94f5-d83bc18510e3';
  UPDATE items SET slug = 'butir-poin' WHERE id = 'fccc2661-1f41-44f8-a7e8-fb6a7379a600';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fccc2661-1f41-44f8-a7e8-fb6a7379a600' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Item Daftar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fccc2661-1f41-44f8-a7e8-fb6a7379a600', 'Item Daftar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fccc2661-1f41-44f8-a7e8-fb6a7379a600' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Klausul'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fccc2661-1f41-44f8-a7e8-fb6a7379a600', 'Klausul', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fccc2661-1f41-44f8-a7e8-fb6a7379a600' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Barang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fccc2661-1f41-44f8-a7e8-fb6a7379a600', 'Barang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fccc2661-1f41-44f8-a7e8-fb6a7379a600' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Item'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fccc2661-1f41-44f8-a7e8-fb6a7379a600', 'Item', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fccc2661-1f41-44f8-a7e8-fb6a7379a600' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Clause'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fccc2661-1f41-44f8-a7e8-fb6a7379a600', 'Clause', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fccc2661-1f41-44f8-a7e8-fb6a7379a600' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Entry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fccc2661-1f41-44f8-a7e8-fb6a7379a600', 'Entry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fccc2661-1f41-44f8-a7e8-fb6a7379a600' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pintu masuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fccc2661-1f41-44f8-a7e8-fb6a7379a600', 'Pintu masuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fccc2661-1f41-44f8-a7e8-fb6a7379a600' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ayat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fccc2661-1f41-44f8-a7e8-fb6a7379a600', 'Ayat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fccc2661-1f41-44f8-a7e8-fb6a7379a600' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Barang Data'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fccc2661-1f41-44f8-a7e8-fb6a7379a600', 'Barang Data', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fccc2661-1f41-44f8-a7e8-fb6a7379a600' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Data Item'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fccc2661-1f41-44f8-a7e8-fb6a7379a600', 'Data Item', false, true);
  END IF;

  -- [VOCABULARY] 香り (Level 39)
  UPDATE item_meanings SET meaning = 'Aroma Harum', primary_meaning = true, accepted_answer = true WHERE id = 'aa8e8b72-dc0d-4933-92e6-800027a627f2';
  UPDATE items SET slug = 'aroma-harum' WHERE id = 'e5830873-d651-42cb-9ac6-e3407be724fc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5830873-d651-42cb-9ac6-e3407be724fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Semerbak Wangi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5830873-d651-42cb-9ac6-e3407be724fc', 'Semerbak Wangi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5830873-d651-42cb-9ac6-e3407be724fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Parfum'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5830873-d651-42cb-9ac6-e3407be724fc', 'Parfum', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5830873-d651-42cb-9ac6-e3407be724fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fragrance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5830873-d651-42cb-9ac6-e3407be724fc', 'Fragrance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5830873-d651-42cb-9ac6-e3407be724fc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Aroma'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5830873-d651-42cb-9ac6-e3407be724fc', 'Aroma', false, true);
  END IF;

END $$;
