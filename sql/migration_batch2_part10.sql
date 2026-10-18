-- Migration: Batch 2 Part 10 (Level 30)
-- Total items: 40

DO $$
BEGIN

  -- [KANJI] 乏 (Level 30)
  UPDATE item_meanings SET meaning = 'Langka', primary_meaning = true, accepted_answer = true WHERE id = 'fa56b374-2a67-45d9-b057-42ab53e3da26';
  UPDATE items SET slug = 'langka' WHERE id = 'e22d1e4f-d864-45da-921f-bf309541b202';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e22d1e4f-d864-45da-921f-bf309541b202' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kurang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e22d1e4f-d864-45da-921f-bf309541b202', 'Kurang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e22d1e4f-d864-45da-921f-bf309541b202' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Miskin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e22d1e4f-d864-45da-921f-bf309541b202', 'Miskin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e22d1e4f-d864-45da-921f-bf309541b202' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Scarce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e22d1e4f-d864-45da-921f-bf309541b202', 'Scarce', false, true);
  END IF;

  -- [KANJI] 懐 (Level 30)
  UPDATE item_meanings SET meaning = 'Nostalgia', primary_meaning = true, accepted_answer = true WHERE id = '11c785f0-5c1d-482f-b7b7-1ffd2f866da1';
  UPDATE items SET slug = 'nostalgia' WHERE id = '142fd38d-caad-471d-b60d-14119377c854';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '142fd38d-caad-471d-b60d-14119377c854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saku Dada'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('142fd38d-caad-471d-b60d-14119377c854', 'Saku Dada', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '142fd38d-caad-471d-b60d-14119377c854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rasa Rindu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('142fd38d-caad-471d-b60d-14119377c854', 'Rasa Rindu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '142fd38d-caad-471d-b60d-14119377c854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rindu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('142fd38d-caad-471d-b60d-14119377c854', 'Rindu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '142fd38d-caad-471d-b60d-14119377c854' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bosom Pocket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('142fd38d-caad-471d-b60d-14119377c854', 'Bosom Pocket', false, true);
  END IF;

  -- [KANJI] 押 (Level 30)
  UPDATE item_meanings SET meaning = 'Mendorong', primary_meaning = true, accepted_answer = true WHERE id = '6972e99b-9447-48a7-8ca0-a73b213380ec';
  UPDATE items SET slug = 'mendorong' WHERE id = '9998d180-7d91-46aa-b848-4875f4dd8e27';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9998d180-7d91-46aa-b848-4875f4dd8e27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menekan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9998d180-7d91-46aa-b848-4875f4dd8e27', 'Menekan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9998d180-7d91-46aa-b848-4875f4dd8e27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memencet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9998d180-7d91-46aa-b848-4875f4dd8e27', 'Memencet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9998d180-7d91-46aa-b848-4875f4dd8e27' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Push'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9998d180-7d91-46aa-b848-4875f4dd8e27', 'Push', false, true);
  END IF;

  -- [KANJI] 渇 (Level 30)
  UPDATE item_meanings SET meaning = 'Haus', primary_meaning = true, accepted_answer = true WHERE id = '322478aa-43b7-47a0-bebf-ddb1e34630e7';
  UPDATE items SET slug = 'haus' WHERE id = 'aba2077b-5666-4e44-94d1-eb93e57669b0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aba2077b-5666-4e44-94d1-eb93e57669b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kering'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aba2077b-5666-4e44-94d1-eb93e57669b0', 'Kering', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aba2077b-5666-4e44-94d1-eb93e57669b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dahaga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aba2077b-5666-4e44-94d1-eb93e57669b0', 'Dahaga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aba2077b-5666-4e44-94d1-eb93e57669b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dry Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aba2077b-5666-4e44-94d1-eb93e57669b0', 'Dry Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aba2077b-5666-4e44-94d1-eb93e57669b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Thirst'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aba2077b-5666-4e44-94d1-eb93e57669b0', 'Thirst', false, true);
  END IF;

  -- [KANJI] 濡 (Level 30)
  UPDATE item_meanings SET meaning = 'Basah', primary_meaning = true, accepted_answer = true WHERE id = '015cbf41-4381-4c6f-bb5f-551b7194d8c0';
  UPDATE items SET slug = 'basah' WHERE id = '22c0939f-d472-4e24-a767-7140517c0d80';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22c0939f-d472-4e24-a767-7140517c0d80' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lembap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22c0939f-d472-4e24-a767-7140517c0d80', 'Lembap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22c0939f-d472-4e24-a767-7140517c0d80' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Wet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22c0939f-d472-4e24-a767-7140517c0d80', 'Wet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '22c0939f-d472-4e24-a767-7140517c0d80' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Damp'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('22c0939f-d472-4e24-a767-7140517c0d80', 'Damp', false, true);
  END IF;

  -- [KANJI] 符 (Level 30)
  UPDATE item_meanings SET meaning = 'Karcis', primary_meaning = true, accepted_answer = true WHERE id = '97f7d142-bc8c-4b2a-b8ee-b24385ee4177';
  UPDATE items SET slug = 'karcis' WHERE id = '637a3b86-a8ff-4d8a-9a06-7e38ce6c2ca4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '637a3b86-a8ff-4d8a-9a06-7e38ce6c2ca4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Simbol'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('637a3b86-a8ff-4d8a-9a06-7e38ce6c2ca4', 'Simbol', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '637a3b86-a8ff-4d8a-9a06-7e38ce6c2ca4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tanda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('637a3b86-a8ff-4d8a-9a06-7e38ce6c2ca4', 'Tanda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '637a3b86-a8ff-4d8a-9a06-7e38ce6c2ca4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Token'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('637a3b86-a8ff-4d8a-9a06-7e38ce6c2ca4', 'Token', false, true);
  END IF;

  -- [KANJI] 背 (Level 30)
  UPDATE item_meanings SET meaning = 'Tinggi Badan', primary_meaning = true, accepted_answer = true WHERE id = '1f7256ec-8d86-4ed6-b3b0-405a1a67adca';
  UPDATE items SET slug = 'tinggi-badan' WHERE id = 'e6d26ec1-2aa7-43b2-935a-bbaf6602b760';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6d26ec1-2aa7-43b2-935a-bbaf6602b760' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Punggung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6d26ec1-2aa7-43b2-935a-bbaf6602b760', 'Punggung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6d26ec1-2aa7-43b2-935a-bbaf6602b760' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tinggi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6d26ec1-2aa7-43b2-935a-bbaf6602b760', 'Tinggi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6d26ec1-2aa7-43b2-935a-bbaf6602b760' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Height'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6d26ec1-2aa7-43b2-935a-bbaf6602b760', 'Height', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e6d26ec1-2aa7-43b2-935a-bbaf6602b760' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e6d26ec1-2aa7-43b2-935a-bbaf6602b760', 'Back', false, true);
  END IF;

  -- [KANJI] 覧 (Level 30)
  UPDATE item_meanings SET meaning = 'Melihat', primary_meaning = true, accepted_answer = true WHERE id = '9f942b16-f02b-4f2e-a54c-c5816fa7a546';
  UPDATE items SET slug = 'melihat' WHERE id = 'e7ac3b13-9ae7-4a40-9c08-83c9fcc4620f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e7ac3b13-9ae7-4a40-9c08-83c9fcc4620f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membaca'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e7ac3b13-9ae7-4a40-9c08-83c9fcc4620f', 'Membaca', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e7ac3b13-9ae7-4a40-9c08-83c9fcc4620f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meninjau'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e7ac3b13-9ae7-4a40-9c08-83c9fcc4620f', 'Meninjau', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e7ac3b13-9ae7-4a40-9c08-83c9fcc4620f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Look At'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e7ac3b13-9ae7-4a40-9c08-83c9fcc4620f', 'Look At', false, true);
  END IF;

  -- [KANJI] 越 (Level 30)
  UPDATE item_meanings SET meaning = 'Melampaui', primary_meaning = true, accepted_answer = true WHERE id = 'a141c5dd-a4d5-417a-8e06-6aaa408176ab';
  UPDATE items SET slug = 'melampaui' WHERE id = 'b0412983-227a-4645-90ae-96612b2685ac';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0412983-227a-4645-90ae-96612b2685ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melewati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0412983-227a-4645-90ae-96612b2685ac', 'Melewati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0412983-227a-4645-90ae-96612b2685ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyeberang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0412983-227a-4645-90ae-96612b2685ac', 'Menyeberang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0412983-227a-4645-90ae-96612b2685ac' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Go Beyond'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0412983-227a-4645-90ae-96612b2685ac', 'Go Beyond', false, true);
  END IF;

  -- [KANJI] 預 (Level 30)
  UPDATE item_meanings SET meaning = 'Menitipkan', primary_meaning = true, accepted_answer = true WHERE id = '70359775-3b34-4375-927f-2e6a013917cc';
  UPDATE items SET slug = 'menitipkan' WHERE id = 'b7516ad5-72c9-4da0-a290-849fce977698';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7516ad5-72c9-4da0-a290-849fce977698' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menabung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7516ad5-72c9-4da0-a290-849fce977698', 'Menabung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7516ad5-72c9-4da0-a290-849fce977698' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7516ad5-72c9-4da0-a290-849fce977698', 'Menyerahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b7516ad5-72c9-4da0-a290-849fce977698' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deposit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b7516ad5-72c9-4da0-a290-849fce977698', 'Deposit', false, true);
  END IF;

  -- [RADICAL] 片 (Level 30)
  UPDATE item_meanings SET meaning = 'Pecahan', primary_meaning = true, accepted_answer = true WHERE id = '2619c540-f851-4a7b-bd82-305d341ba176';
  UPDATE items SET slug = 'pecahan' WHERE id = 'a46e14a6-8b82-4230-8874-07065ebd6fa4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a46e14a6-8b82-4230-8874-07065ebd6fa4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sebelah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a46e14a6-8b82-4230-8874-07065ebd6fa4', 'Sebelah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a46e14a6-8b82-4230-8874-07065ebd6fa4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serpihan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a46e14a6-8b82-4230-8874-07065ebd6fa4', 'Serpihan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a46e14a6-8b82-4230-8874-07065ebd6fa4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('One Sided'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a46e14a6-8b82-4230-8874-07065ebd6fa4', 'One Sided', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a46e14a6-8b82-4230-8874-07065ebd6fa4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Fragment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a46e14a6-8b82-4230-8874-07065ebd6fa4', 'Fragment', false, true);
  END IF;

  -- [VOCABULARY] ご覧 (Level 30)
  UPDATE item_meanings SET meaning = 'Silakan Lihat', primary_meaning = true, accepted_answer = true WHERE id = 'a3d88a33-3558-4cd9-8097-779662c3c363';
  UPDATE items SET slug = 'silakan-lihat' WHERE id = '92505942-fb7e-476a-9d8b-832991f21178';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92505942-fb7e-476a-9d8b-832991f21178' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melihat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92505942-fb7e-476a-9d8b-832991f21178', 'Melihat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92505942-fb7e-476a-9d8b-832991f21178' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyaksikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92505942-fb7e-476a-9d8b-832991f21178', 'Menyaksikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '92505942-fb7e-476a-9d8b-832991f21178' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Looking At'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('92505942-fb7e-476a-9d8b-832991f21178', 'Looking At', false, true);
  END IF;

  -- [VOCABULARY] バイキング (Level 30)
  UPDATE item_meanings SET meaning = 'Prasmanan', primary_meaning = true, accepted_answer = true WHERE id = '78fcded5-1592-458c-ac8f-32d7062c1747';
  UPDATE items SET slug = 'prasmanan' WHERE id = 'f122beb1-4566-4e61-bbcc-ee701d855b0e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f122beb1-4566-4e61-bbcc-ee701d855b0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('All You Can Eat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f122beb1-4566-4e61-bbcc-ee701d855b0e', 'All You Can Eat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f122beb1-4566-4e61-bbcc-ee701d855b0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buffet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f122beb1-4566-4e61-bbcc-ee701d855b0e', 'Buffet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f122beb1-4566-4e61-bbcc-ee701d855b0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Smorgasbord'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f122beb1-4566-4e61-bbcc-ee701d855b0e', 'Smorgasbord', false, true);
  END IF;

  -- [VOCABULARY] 一覧 (Level 30)
  UPDATE item_meanings SET meaning = 'Daftar', primary_meaning = true, accepted_answer = true WHERE id = 'dc82f007-f18a-4b56-b039-ae3407d552eb';
  UPDATE items SET slug = 'daftar' WHERE id = 'e18df054-37e1-4ef5-8e71-a2f52e0a973f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e18df054-37e1-4ef5-8e71-a2f52e0a973f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Daftar Lengkap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e18df054-37e1-4ef5-8e71-a2f52e0a973f', 'Daftar Lengkap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e18df054-37e1-4ef5-8e71-a2f52e0a973f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ikhtisar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e18df054-37e1-4ef5-8e71-a2f52e0a973f', 'Ikhtisar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e18df054-37e1-4ef5-8e71-a2f52e0a973f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ringkasan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e18df054-37e1-4ef5-8e71-a2f52e0a973f', 'Ringkasan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e18df054-37e1-4ef5-8e71-a2f52e0a973f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A List'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e18df054-37e1-4ef5-8e71-a2f52e0a973f', 'A List', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e18df054-37e1-4ef5-8e71-a2f52e0a973f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Overview'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e18df054-37e1-4ef5-8e71-a2f52e0a973f', 'Overview', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e18df054-37e1-4ef5-8e71-a2f52e0a973f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ikhtisar Ringkas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e18df054-37e1-4ef5-8e71-a2f52e0a973f', 'Ikhtisar Ringkas', false, true);
  END IF;

  -- [VOCABULARY] 乏しい (Level 30)
  UPDATE item_meanings SET meaning = 'Langka', primary_meaning = true, accepted_answer = true WHERE id = '4623dbe3-e9d8-458c-b7b0-802a47fbd5d8';
  UPDATE items SET slug = 'langka' WHERE id = '177d6c8b-4e89-47be-9346-8345fb866ecc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '177d6c8b-4e89-47be-9346-8345fb866ecc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serba Kekurangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('177d6c8b-4e89-47be-9346-8345fb866ecc', 'Serba Kekurangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '177d6c8b-4e89-47be-9346-8345fb866ecc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kurang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('177d6c8b-4e89-47be-9346-8345fb866ecc', 'Kurang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '177d6c8b-4e89-47be-9346-8345fb866ecc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Miskin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('177d6c8b-4e89-47be-9346-8345fb866ecc', 'Miskin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '177d6c8b-4e89-47be-9346-8345fb866ecc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Scarce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('177d6c8b-4e89-47be-9346-8345fb866ecc', 'Scarce', false, true);
  END IF;

  -- [VOCABULARY] 処置 (Level 30)
  UPDATE item_meanings SET meaning = 'Tindakan', primary_meaning = true, accepted_answer = true WHERE id = '9cb3562d-5532-4bc8-879f-4984997c6b85';
  UPDATE items SET slug = 'tindakan' WHERE id = '0d8a96fa-6aa3-4266-918f-b6b163def103';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d8a96fa-6aa3-4266-918f-b6b163def103' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penanganan Medis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d8a96fa-6aa3-4266-918f-b6b163def103', 'Penanganan Medis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d8a96fa-6aa3-4266-918f-b6b163def103' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perlakuan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d8a96fa-6aa3-4266-918f-b6b163def103', 'Perlakuan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d8a96fa-6aa3-4266-918f-b6b163def103' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Treatment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d8a96fa-6aa3-4266-918f-b6b163def103', 'Treatment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0d8a96fa-6aa3-4266-918f-b6b163def103' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Measure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0d8a96fa-6aa3-4266-918f-b6b163def103', 'Measure', false, true);
  END IF;

  -- [VOCABULARY] 切符 (Level 30)
  UPDATE item_meanings SET meaning = 'Tiket', primary_meaning = true, accepted_answer = true WHERE id = 'fb70c596-25e1-46d5-802a-151c7878aa9f';
  UPDATE items SET slug = 'tiket' WHERE id = '142e20d3-27de-4b00-a7b3-097760f6e2a5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '142e20d3-27de-4b00-a7b3-097760f6e2a5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karcis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('142e20d3-27de-4b00-a7b3-097760f6e2a5', 'Karcis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '142e20d3-27de-4b00-a7b3-097760f6e2a5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karcis Kereta'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('142e20d3-27de-4b00-a7b3-097760f6e2a5', 'Karcis Kereta', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '142e20d3-27de-4b00-a7b3-097760f6e2a5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ticket'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('142e20d3-27de-4b00-a7b3-097760f6e2a5', 'Ticket', false, true);
  END IF;

  -- [VOCABULARY] 匂う (Level 30)
  UPDATE item_meanings SET meaning = 'Berbau', primary_meaning = true, accepted_answer = true WHERE id = '0921e92a-a155-472a-bd88-e97947e1c351';
  UPDATE items SET slug = 'berbau' WHERE id = 'd4ffa5e9-ad29-4ac8-ab78-d4b4efac6cc9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd4ffa5e9-ad29-4ac8-ab78-d4b4efac6cc9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menguarkan Bau'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d4ffa5e9-ad29-4ac8-ab78-d4b4efac6cc9', 'Menguarkan Bau', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd4ffa5e9-ad29-4ac8-ab78-d4b4efac6cc9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mencurigakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d4ffa5e9-ad29-4ac8-ab78-d4b4efac6cc9', 'Mencurigakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd4ffa5e9-ad29-4ac8-ab78-d4b4efac6cc9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Smell'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d4ffa5e9-ad29-4ac8-ab78-d4b4efac6cc9', 'To Smell', false, true);
  END IF;

  -- [VOCABULARY] 懐かしい (Level 30)
  UPDATE item_meanings SET meaning = 'Bernostalgia', primary_meaning = true, accepted_answer = true WHERE id = 'fdf65f48-8cf6-4467-b658-4291c5bd5157';
  UPDATE items SET slug = 'bernostalgia' WHERE id = 'b02b3ad3-506b-46e5-9aa6-3b1330b1ad83';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b02b3ad3-506b-46e5-9aa6-3b1330b1ad83' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dirindukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b02b3ad3-506b-46e5-9aa6-3b1330b1ad83', 'Dirindukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b02b3ad3-506b-46e5-9aa6-3b1330b1ad83' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bikin Kangen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b02b3ad3-506b-46e5-9aa6-3b1330b1ad83', 'Bikin Kangen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b02b3ad3-506b-46e5-9aa6-3b1330b1ad83' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kangen'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b02b3ad3-506b-46e5-9aa6-3b1330b1ad83', 'Kangen', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b02b3ad3-506b-46e5-9aa6-3b1330b1ad83' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nostalgic'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b02b3ad3-506b-46e5-9aa6-3b1330b1ad83', 'Nostalgic', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b02b3ad3-506b-46e5-9aa6-3b1330b1ad83' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bikin Bernostalgia'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b02b3ad3-506b-46e5-9aa6-3b1330b1ad83', 'Bikin Bernostalgia', false, true);
  END IF;

  -- [VOCABULARY] 成程 (Level 30)
  UPDATE item_meanings SET meaning = 'Pantas Saja', primary_meaning = true, accepted_answer = true WHERE id = '8f2543ef-f7c4-426d-802e-cd45b06ff685';
  UPDATE items SET slug = 'pantas-saja' WHERE id = '187943a9-254a-4d08-8345-c015649ab896';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '187943a9-254a-4d08-8345-c015649ab896' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masuk Akal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('187943a9-254a-4d08-8345-c015649ab896', 'Masuk Akal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '187943a9-254a-4d08-8345-c015649ab896' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Naruhodo'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('187943a9-254a-4d08-8345-c015649ab896', 'Naruhodo', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '187943a9-254a-4d08-8345-c015649ab896' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Oh Begitu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('187943a9-254a-4d08-8345-c015649ab896', 'Oh Begitu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '187943a9-254a-4d08-8345-c015649ab896' AND LOWER(TRIM(meaning)) = LOWER(TRIM('I See'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('187943a9-254a-4d08-8345-c015649ab896', 'I See', false, true);
  END IF;

  -- [VOCABULARY] 我が〜 (Level 30)
  UPDATE item_meanings SET meaning = 'Milik Kami', primary_meaning = true, accepted_answer = true WHERE id = '5111858a-5855-41dc-abaf-713200609cba';
  UPDATE items SET slug = 'milik-kami' WHERE id = 'c1033019-a1b7-4ade-81b2-49d3abfaf4e8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1033019-a1b7-4ade-81b2-49d3abfaf4e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kami'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1033019-a1b7-4ade-81b2-49d3abfaf4e8', 'Kami', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1033019-a1b7-4ade-81b2-49d3abfaf4e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Punya Kami'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1033019-a1b7-4ade-81b2-49d3abfaf4e8', 'Punya Kami', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1033019-a1b7-4ade-81b2-49d3abfaf4e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Our'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1033019-a1b7-4ade-81b2-49d3abfaf4e8', 'Our', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c1033019-a1b7-4ade-81b2-49d3abfaf4e8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('... Kami'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c1033019-a1b7-4ade-81b2-49d3abfaf4e8', '... Kami', false, true);
  END IF;

  -- [VOCABULARY] 押さえる (Level 30)
  UPDATE item_meanings SET meaning = 'Menahan', primary_meaning = true, accepted_answer = true WHERE id = '027aa1f8-66ec-4ebf-bb63-56fa4c547088';
  UPDATE items SET slug = 'menahan' WHERE id = 'b37b96ca-9ad1-4e9d-8bda-d4e161bb45d6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b37b96ca-9ad1-4e9d-8bda-d4e161bb45d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memegang Erat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b37b96ca-9ad1-4e9d-8bda-d4e161bb45d6', 'Memegang Erat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b37b96ca-9ad1-4e9d-8bda-d4e161bb45d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menekan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b37b96ca-9ad1-4e9d-8bda-d4e161bb45d6', 'Menekan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b37b96ca-9ad1-4e9d-8bda-d4e161bb45d6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Hold Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b37b96ca-9ad1-4e9d-8bda-d4e161bb45d6', 'To Hold Down', false, true);
  END IF;

  -- [VOCABULARY] 押す (Level 30)
  UPDATE item_meanings SET meaning = 'Mendorong', primary_meaning = true, accepted_answer = true WHERE id = 'a30dbfb7-e8c3-4bfe-82f8-32874e0d8fab';
  UPDATE items SET slug = 'mendorong' WHERE id = '8a1c07ad-e137-4e89-86cd-812fe62d7620';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a1c07ad-e137-4e89-86cd-812fe62d7620' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menekan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a1c07ad-e137-4e89-86cd-812fe62d7620', 'Menekan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a1c07ad-e137-4e89-86cd-812fe62d7620' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memencet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a1c07ad-e137-4e89-86cd-812fe62d7620', 'Memencet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8a1c07ad-e137-4e89-86cd-812fe62d7620' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Push'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8a1c07ad-e137-4e89-86cd-812fe62d7620', 'To Push', false, true);
  END IF;

  -- [VOCABULARY] 更生 (Level 30)
  UPDATE item_meanings SET meaning = 'Rehabilitasi', primary_meaning = true, accepted_answer = true WHERE id = 'eb6bbd26-d042-4e26-8acf-141c0cd22890';
  UPDATE items SET slug = 'rehabilitasi' WHERE id = 'aeaf717c-2793-4ef6-af63-75123eb5ae6d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aeaf717c-2793-4ef6-af63-75123eb5ae6d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menata Hidup Baru'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aeaf717c-2793-4ef6-af63-75123eb5ae6d', 'Menata Hidup Baru', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aeaf717c-2793-4ef6-af63-75123eb5ae6d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Insaf'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aeaf717c-2793-4ef6-af63-75123eb5ae6d', 'Insaf', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'aeaf717c-2793-4ef6-af63-75123eb5ae6d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rehabilitation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('aeaf717c-2793-4ef6-af63-75123eb5ae6d', 'Rehabilitation', false, true);
  END IF;

  -- [VOCABULARY] 欠乏 (Level 30)
  UPDATE item_meanings SET meaning = 'Kelangkaan', primary_meaning = true, accepted_answer = true WHERE id = '303263c5-edac-4c88-b7ec-9ab0b382f07c';
  UPDATE items SET slug = 'kelangkaan' WHERE id = 'c0c8fa86-825c-48fa-ab38-aba4a851e7f3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0c8fa86-825c-48fa-ab38-aba4a851e7f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Defisit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0c8fa86-825c-48fa-ab38-aba4a851e7f3', 'Defisit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0c8fa86-825c-48fa-ab38-aba4a851e7f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kekurangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0c8fa86-825c-48fa-ab38-aba4a851e7f3', 'Kekurangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0c8fa86-825c-48fa-ab38-aba4a851e7f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Scarcity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0c8fa86-825c-48fa-ab38-aba4a851e7f3', 'Scarcity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c0c8fa86-825c-48fa-ab38-aba4a851e7f3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deficiency'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c0c8fa86-825c-48fa-ab38-aba4a851e7f3', 'Deficiency', false, true);
  END IF;

  -- [VOCABULARY] 浮気 (Level 30)
  UPDATE item_meanings SET meaning = 'Selingkuh', primary_meaning = true, accepted_answer = true WHERE id = '0584d299-0c6b-405a-9d36-2049065d2845';
  UPDATE items SET slug = 'selingkuh' WHERE id = '4b9c0d58-f9c3-466b-a0d4-9ed0e28bf127';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b9c0d58-f9c3-466b-a0d4-9ed0e28bf127' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Main Mata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b9c0d58-f9c3-466b-a0d4-9ed0e28bf127', 'Main Mata', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b9c0d58-f9c3-466b-a0d4-9ed0e28bf127' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serong'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b9c0d58-f9c3-466b-a0d4-9ed0e28bf127', 'Serong', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b9c0d58-f9c3-466b-a0d4-9ed0e28bf127' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cheat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b9c0d58-f9c3-466b-a0d4-9ed0e28bf127', 'Cheat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b9c0d58-f9c3-466b-a0d4-9ed0e28bf127' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Affair'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b9c0d58-f9c3-466b-a0d4-9ed0e28bf127', 'Affair', false, true);
  END IF;

  -- [VOCABULARY] 渇く (Level 30)
  UPDATE item_meanings SET meaning = 'Haus', primary_meaning = true, accepted_answer = true WHERE id = 'dc783b83-2468-45b8-a417-ed99db5562c6';
  UPDATE items SET slug = 'haus' WHERE id = '70f9affd-a8e6-4504-b2aa-df9ac5b271ab';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70f9affd-a8e6-4504-b2aa-df9ac5b271ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tenggorokan Kering'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70f9affd-a8e6-4504-b2aa-df9ac5b271ab', 'Tenggorokan Kering', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70f9affd-a8e6-4504-b2aa-df9ac5b271ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dahaga'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70f9affd-a8e6-4504-b2aa-df9ac5b271ab', 'Dahaga', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '70f9affd-a8e6-4504-b2aa-df9ac5b271ab' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Become Thirsty'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('70f9affd-a8e6-4504-b2aa-df9ac5b271ab', 'To Become Thirsty', false, true);
  END IF;

  -- [VOCABULARY] 濡らす (Level 30)
  UPDATE item_meanings SET meaning = 'Membasahi', primary_meaning = true, accepted_answer = true WHERE id = '1edae3d4-76bd-430d-a5d7-521fb2ba8b94';
  UPDATE items SET slug = 'membasahi' WHERE id = '94b12a04-77d1-42b3-bd1e-5704046aa52a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94b12a04-77d1-42b3-bd1e-5704046aa52a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadikan Basah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94b12a04-77d1-42b3-bd1e-5704046aa52a', 'Menjadikan Basah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94b12a04-77d1-42b3-bd1e-5704046aa52a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Wet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94b12a04-77d1-42b3-bd1e-5704046aa52a', 'To Wet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '94b12a04-77d1-42b3-bd1e-5704046aa52a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Moisten'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('94b12a04-77d1-42b3-bd1e-5704046aa52a', 'To Moisten', false, true);
  END IF;

  -- [VOCABULARY] 玄米 (Level 30)
  UPDATE item_meanings SET meaning = 'Beras Merah', primary_meaning = true, accepted_answer = true WHERE id = 'd73f792b-a601-45bd-b41d-c18bd1be7d0a';
  UPDATE items SET slug = 'beras-merah' WHERE id = '7345c346-3c45-4a79-9bc6-8910c17b52bd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7345c346-3c45-4a79-9bc6-8910c17b52bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Beras Cokelat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7345c346-3c45-4a79-9bc6-8910c17b52bd', 'Beras Cokelat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7345c346-3c45-4a79-9bc6-8910c17b52bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pecah Kulit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7345c346-3c45-4a79-9bc6-8910c17b52bd', 'Pecah Kulit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7345c346-3c45-4a79-9bc6-8910c17b52bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Brown Rice'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7345c346-3c45-4a79-9bc6-8910c17b52bd', 'Brown Rice', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7345c346-3c45-4a79-9bc6-8910c17b52bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unpolished Rice'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7345c346-3c45-4a79-9bc6-8910c17b52bd', 'Unpolished Rice', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7345c346-3c45-4a79-9bc6-8910c17b52bd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cokelat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7345c346-3c45-4a79-9bc6-8910c17b52bd', 'Cokelat', false, true);
  END IF;

  -- [VOCABULARY] 背 (Level 30)
  UPDATE item_meanings SET meaning = 'Tinggi Badan', primary_meaning = true, accepted_answer = true WHERE id = '5eac8d31-a902-47c2-a9c9-f6b0e3766ff3';
  UPDATE items SET slug = 'tinggi-badan' WHERE id = 'd389c28f-f27d-4b20-ae94-dbd46a07f7eb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd389c28f-f27d-4b20-ae94-dbd46a07f7eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Punggung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d389c28f-f27d-4b20-ae94-dbd46a07f7eb', 'Punggung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd389c28f-f27d-4b20-ae94-dbd46a07f7eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tinggi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d389c28f-f27d-4b20-ae94-dbd46a07f7eb', 'Tinggi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd389c28f-f27d-4b20-ae94-dbd46a07f7eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Height'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d389c28f-f27d-4b20-ae94-dbd46a07f7eb', 'Height', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd389c28f-f27d-4b20-ae94-dbd46a07f7eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Back'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d389c28f-f27d-4b20-ae94-dbd46a07f7eb', 'Back', false, true);
  END IF;

  -- [VOCABULARY] 背後 (Level 30)
  UPDATE item_meanings SET meaning = 'Bagian Belakang', primary_meaning = true, accepted_answer = true WHERE id = 'b3c27b5a-ae64-4728-be0b-bc56902dda07';
  UPDATE items SET slug = 'bagian-belakang' WHERE id = 'cb4f602d-5a69-4a37-9df8-0623ba686a3f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cb4f602d-5a69-4a37-9df8-0623ba686a3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Di Balik Layar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cb4f602d-5a69-4a37-9df8-0623ba686a3f', 'Di Balik Layar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cb4f602d-5a69-4a37-9df8-0623ba686a3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Latar Belakang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cb4f602d-5a69-4a37-9df8-0623ba686a3f', 'Latar Belakang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cb4f602d-5a69-4a37-9df8-0623ba686a3f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Background'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cb4f602d-5a69-4a37-9df8-0623ba686a3f', 'Background', false, true);
  END IF;

  -- [VOCABULARY] 観覧 (Level 30)
  UPDATE item_meanings SET meaning = 'Menonton', primary_meaning = true, accepted_answer = true WHERE id = '4f9cff18-f017-42d1-a513-b151913fb988';
  UPDATE items SET slug = 'menonton' WHERE id = '6ffe0d63-db88-4dfb-b5d2-111d47f90863';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ffe0d63-db88-4dfb-b5d2-111d47f90863' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyaksikan Acara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ffe0d63-db88-4dfb-b5d2-111d47f90863', 'Menyaksikan Acara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ffe0d63-db88-4dfb-b5d2-111d47f90863' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melihat Pameran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ffe0d63-db88-4dfb-b5d2-111d47f90863', 'Melihat Pameran', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ffe0d63-db88-4dfb-b5d2-111d47f90863' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Viewing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ffe0d63-db88-4dfb-b5d2-111d47f90863', 'Viewing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6ffe0d63-db88-4dfb-b5d2-111d47f90863' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Watching'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6ffe0d63-db88-4dfb-b5d2-111d47f90863', 'Watching', false, true);
  END IF;

  -- [VOCABULARY] 詰まる (Level 30)
  UPDATE item_meanings SET meaning = 'Tersumbat', primary_meaning = true, accepted_answer = true WHERE id = 'a3b3f336-e60a-44c7-93ac-2cf3999265ce';
  UPDATE items SET slug = 'tersumbat' WHERE id = 'a44619ee-4695-45d3-b765-b8d9e4b11db2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a44619ee-4695-45d3-b765-b8d9e4b11db2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terisi Penuh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a44619ee-4695-45d3-b765-b8d9e4b11db2', 'Terisi Penuh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a44619ee-4695-45d3-b765-b8d9e4b11db2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Buntu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a44619ee-4695-45d3-b765-b8d9e4b11db2', 'Buntu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a44619ee-4695-45d3-b765-b8d9e4b11db2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Macet'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a44619ee-4695-45d3-b765-b8d9e4b11db2', 'Macet', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a44619ee-4695-45d3-b765-b8d9e4b11db2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Stuffed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a44619ee-4695-45d3-b765-b8d9e4b11db2', 'To Be Stuffed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a44619ee-4695-45d3-b765-b8d9e4b11db2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Clogged'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a44619ee-4695-45d3-b765-b8d9e4b11db2', 'To Be Clogged', false, true);
  END IF;

  -- [VOCABULARY] 越える (Level 30)
  UPDATE item_meanings SET meaning = 'Melampaui', primary_meaning = true, accepted_answer = true WHERE id = '9efb47e9-70f8-41c8-8a7b-ee480b91b7b0';
  UPDATE items SET slug = 'melampaui' WHERE id = '154e6c18-ee36-4717-8358-23caa5efe597';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '154e6c18-ee36-4717-8358-23caa5efe597' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melewati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('154e6c18-ee36-4717-8358-23caa5efe597', 'Melewati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '154e6c18-ee36-4717-8358-23caa5efe597' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyeberangi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('154e6c18-ee36-4717-8358-23caa5efe597', 'Menyeberangi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '154e6c18-ee36-4717-8358-23caa5efe597' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Go Beyond'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('154e6c18-ee36-4717-8358-23caa5efe597', 'To Go Beyond', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '154e6c18-ee36-4717-8358-23caa5efe597' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Cross Over'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('154e6c18-ee36-4717-8358-23caa5efe597', 'To Cross Over', false, true);
  END IF;

  -- [VOCABULARY] 越権 (Level 30)
  UPDATE item_meanings SET meaning = 'Penyalahgunaan Wewenang', primary_meaning = true, accepted_answer = true WHERE id = '5d9edcc8-f6a3-4a94-b91e-5561971cb7f0';
  UPDATE items SET slug = 'penyalahgunaan-wewenang' WHERE id = 'b11fcf43-be4a-4cf6-88b3-ac9e3340f3aa';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b11fcf43-be4a-4cf6-88b3-ac9e3340f3aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melampaui Batas Kuasa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b11fcf43-be4a-4cf6-88b3-ac9e3340f3aa', 'Melampaui Batas Kuasa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b11fcf43-be4a-4cf6-88b3-ac9e3340f3aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Overstepping Authority'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b11fcf43-be4a-4cf6-88b3-ac9e3340f3aa', 'Overstepping Authority', false, true);
  END IF;

  -- [VOCABULARY] 退ける (Level 30)
  UPDATE item_meanings SET meaning = 'Menyingkirkan', primary_meaning = true, accepted_answer = true WHERE id = '6b3a1894-295c-4954-afe3-0f0473a5c2e0';
  UPDATE items SET slug = 'menyingkirkan' WHERE id = 'b87a3761-269c-498e-a591-adaaa6bd05dc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b87a3761-269c-498e-a591-adaaa6bd05dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menepis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b87a3761-269c-498e-a591-adaaa6bd05dc', 'Menepis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b87a3761-269c-498e-a591-adaaa6bd05dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menolak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b87a3761-269c-498e-a591-adaaa6bd05dc', 'Menolak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b87a3761-269c-498e-a591-adaaa6bd05dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Repel'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b87a3761-269c-498e-a591-adaaa6bd05dc', 'To Repel', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b87a3761-269c-498e-a591-adaaa6bd05dc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Dismiss'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b87a3761-269c-498e-a591-adaaa6bd05dc', 'To Dismiss', false, true);
  END IF;

  -- [VOCABULARY] 適当 (Level 30)
  UPDATE item_meanings SET meaning = 'Tepat', primary_meaning = true, accepted_answer = true WHERE id = '1ae85b02-b877-42a8-ab1e-608ab7dbc017';
  UPDATE items SET slug = 'tepat' WHERE id = 'b1da3dce-f8ae-4919-a54e-88387fcc3a74';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1da3dce-f8ae-4919-a54e-88387fcc3a74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cocok'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1da3dce-f8ae-4919-a54e-88387fcc3a74', 'Cocok', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1da3dce-f8ae-4919-a54e-88387fcc3a74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Asal-asalan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1da3dce-f8ae-4919-a54e-88387fcc3a74', 'Asal-asalan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1da3dce-f8ae-4919-a54e-88387fcc3a74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Appropriate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1da3dce-f8ae-4919-a54e-88387fcc3a74', 'Appropriate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b1da3dce-f8ae-4919-a54e-88387fcc3a74' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Suitable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b1da3dce-f8ae-4919-a54e-88387fcc3a74', 'Suitable', false, true);
  END IF;

  -- [VOCABULARY] 鉄板 (Level 30)
  UPDATE item_meanings SET meaning = 'Plat Besi', primary_meaning = true, accepted_answer = true WHERE id = '8f3dccd5-77bf-44ad-82a0-77a616586083';
  UPDATE items SET slug = 'plat-besi' WHERE id = '5c6f1d20-2416-4f78-ba37-d47c93e62bb2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c6f1d20-2416-4f78-ba37-d47c93e62bb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Teppan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c6f1d20-2416-4f78-ba37-d47c93e62bb2', 'Teppan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c6f1d20-2416-4f78-ba37-d47c93e62bb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pasti Sukses'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c6f1d20-2416-4f78-ba37-d47c93e62bb2', 'Pasti Sukses', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c6f1d20-2416-4f78-ba37-d47c93e62bb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pasti Mantap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c6f1d20-2416-4f78-ba37-d47c93e62bb2', 'Pasti Mantap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c6f1d20-2416-4f78-ba37-d47c93e62bb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Iron Plate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c6f1d20-2416-4f78-ba37-d47c93e62bb2', 'Iron Plate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '5c6f1d20-2416-4f78-ba37-d47c93e62bb2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sudah Pasti Sukses'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('5c6f1d20-2416-4f78-ba37-d47c93e62bb2', 'Sudah Pasti Sukses', false, true);
  END IF;

  -- [VOCABULARY] 預ける (Level 30)
  UPDATE item_meanings SET meaning = 'Menitipkan', primary_meaning = true, accepted_answer = true WHERE id = '671efae5-d60c-402d-9c41-c352f93a5e25';
  UPDATE items SET slug = 'menitipkan' WHERE id = '769b4ccb-a029-4d93-93cf-cd1d703082b0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '769b4ccb-a029-4d93-93cf-cd1d703082b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyerahkan Sementara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('769b4ccb-a029-4d93-93cf-cd1d703082b0', 'Menyerahkan Sementara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '769b4ccb-a029-4d93-93cf-cd1d703082b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menitip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('769b4ccb-a029-4d93-93cf-cd1d703082b0', 'Menitip', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '769b4ccb-a029-4d93-93cf-cd1d703082b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Deposit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('769b4ccb-a029-4d93-93cf-cd1d703082b0', 'To Deposit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '769b4ccb-a029-4d93-93cf-cd1d703082b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Entrust'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('769b4ccb-a029-4d93-93cf-cd1d703082b0', 'To Entrust', false, true);
  END IF;

  -- [VOCABULARY] 預金 (Level 30)
  UPDATE item_meanings SET meaning = 'Tabungan', primary_meaning = true, accepted_answer = true WHERE id = 'a1c2bfd1-42c4-432e-a8cd-b7bc87e752b6';
  UPDATE items SET slug = 'tabungan' WHERE id = '99b3d041-a155-4760-8d1e-6e5d65435a7e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '99b3d041-a155-4760-8d1e-6e5d65435a7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tabungan Bank'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('99b3d041-a155-4760-8d1e-6e5d65435a7e', 'Tabungan Bank', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '99b3d041-a155-4760-8d1e-6e5d65435a7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deposito'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('99b3d041-a155-4760-8d1e-6e5d65435a7e', 'Deposito', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '99b3d041-a155-4760-8d1e-6e5d65435a7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bank Deposit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('99b3d041-a155-4760-8d1e-6e5d65435a7e', 'Bank Deposit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '99b3d041-a155-4760-8d1e-6e5d65435a7e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deposit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('99b3d041-a155-4760-8d1e-6e5d65435a7e', 'Deposit', false, true);
  END IF;

END $$;
