-- Migration: Batch 3 Part 5 (Level 35)
-- Total items: 78

DO $$
BEGIN

  -- [KANJI] 亀 (Level 35)
  UPDATE item_meanings SET meaning = 'Kura-kura', primary_meaning = true, accepted_answer = true WHERE id = '092a3ab6-0a80-4437-b8dc-d6854d625e21';
  UPDATE items SET slug = 'kura-kura' WHERE id = '23d1ce91-2e9e-4bb4-9815-16f3d47e12c9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '23d1ce91-2e9e-4bb4-9815-16f3d47e12c9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penyu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('23d1ce91-2e9e-4bb4-9815-16f3d47e12c9', 'Penyu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '23d1ce91-2e9e-4bb4-9815-16f3d47e12c9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Turtle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('23d1ce91-2e9e-4bb4-9815-16f3d47e12c9', 'Turtle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '23d1ce91-2e9e-4bb4-9815-16f3d47e12c9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tortoise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('23d1ce91-2e9e-4bb4-9815-16f3d47e12c9', 'Tortoise', false, true);
  END IF;

  -- [KANJI] 互 (Level 35)
  UPDATE item_meanings SET meaning = 'Saling', primary_meaning = true, accepted_answer = true WHERE id = 'f020339b-1388-452b-b845-028dffc699e1';
  UPDATE items SET slug = 'saling' WHERE id = '477ed897-d78e-422d-b2fc-e17518ca3602';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '477ed897-d78e-422d-b2fc-e17518ca3602' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Timbal Balik'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('477ed897-d78e-422d-b2fc-e17518ca3602', 'Timbal Balik', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '477ed897-d78e-422d-b2fc-e17518ca3602' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mutual'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('477ed897-d78e-422d-b2fc-e17518ca3602', 'Mutual', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '477ed897-d78e-422d-b2fc-e17518ca3602' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reciprocal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('477ed897-d78e-422d-b2fc-e17518ca3602', 'Reciprocal', false, true);
  END IF;

  -- [KANJI] 介 (Level 35)
  UPDATE item_meanings SET meaning = 'Menengahi', primary_meaning = true, accepted_answer = true WHERE id = 'd1ef2c17-95af-42a7-aa84-bd69681aa965';
  UPDATE items SET slug = 'menengahi' WHERE id = '6f3e03e3-78bf-41ca-9def-d2f976f5446e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f3e03e3-78bf-41ca-9def-d2f976f5446e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membantu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f3e03e3-78bf-41ca-9def-d2f976f5446e', 'Membantu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f3e03e3-78bf-41ca-9def-d2f976f5446e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Melalui'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f3e03e3-78bf-41ca-9def-d2f976f5446e', 'Melalui', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f3e03e3-78bf-41ca-9def-d2f976f5446e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jammed In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f3e03e3-78bf-41ca-9def-d2f976f5446e', 'Jammed In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f3e03e3-78bf-41ca-9def-d2f976f5446e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mediate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f3e03e3-78bf-41ca-9def-d2f976f5446e', 'Mediate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6f3e03e3-78bf-41ca-9def-d2f976f5446e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terjebak di'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6f3e03e3-78bf-41ca-9def-d2f976f5446e', 'Terjebak di', false, true);
  END IF;

  -- [KANJI] 剣 (Level 35)
  UPDATE item_meanings SET meaning = 'Pedang Anggar', primary_meaning = true, accepted_answer = true WHERE id = '0a5ac0d0-2f8d-49ee-999e-e342623bc937';
  UPDATE items SET slug = 'pedang-anggar' WHERE id = 'e4be2662-d2c9-4dff-baaf-9e6cb56f4b95';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4be2662-d2c9-4dff-baaf-9e6cb56f4b95' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pedang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4be2662-d2c9-4dff-baaf-9e6cb56f4b95', 'Pedang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4be2662-d2c9-4dff-baaf-9e6cb56f4b95' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sword'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4be2662-d2c9-4dff-baaf-9e6cb56f4b95', 'Sword', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e4be2662-d2c9-4dff-baaf-9e6cb56f4b95' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Blade'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e4be2662-d2c9-4dff-baaf-9e6cb56f4b95', 'Blade', false, true);
  END IF;

  -- [KANJI] 厄 (Level 35)
  UPDATE item_meanings SET meaning = 'Nasib Buruk', primary_meaning = true, accepted_answer = true WHERE id = '7b58d173-4f76-4469-adc6-ccb91429e282';
  UPDATE items SET slug = 'nasib-buruk' WHERE id = '2aa7e197-c141-4259-8851-e06eecca303e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2aa7e197-c141-4259-8851-e06eecca303e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemalangan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2aa7e197-c141-4259-8851-e06eecca303e', 'Kemalangan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2aa7e197-c141-4259-8851-e06eecca303e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sial'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2aa7e197-c141-4259-8851-e06eecca303e', 'Sial', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2aa7e197-c141-4259-8851-e06eecca303e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Misfortune'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2aa7e197-c141-4259-8851-e06eecca303e', 'Misfortune', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2aa7e197-c141-4259-8851-e06eecca303e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bad Luck'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2aa7e197-c141-4259-8851-e06eecca303e', 'Bad Luck', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2aa7e197-c141-4259-8851-e06eecca303e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Unlucky'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2aa7e197-c141-4259-8851-e06eecca303e', 'Unlucky', false, true);
  END IF;

  -- [KANJI] 唾 (Level 35)
  UPDATE item_meanings SET meaning = 'Air Liur', primary_meaning = true, accepted_answer = true WHERE id = '198a09eb-b184-422d-8923-4864cad55e99';
  UPDATE items SET slug = 'air-liur' WHERE id = 'b8a3ce2f-a1ec-479d-87da-b25ea229c449';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8a3ce2f-a1ec-479d-87da-b25ea229c449' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ludah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8a3ce2f-a1ec-479d-87da-b25ea229c449', 'Ludah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8a3ce2f-a1ec-479d-87da-b25ea229c449' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Saliva'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8a3ce2f-a1ec-479d-87da-b25ea229c449', 'Saliva', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8a3ce2f-a1ec-479d-87da-b25ea229c449' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8a3ce2f-a1ec-479d-87da-b25ea229c449', 'Spit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8a3ce2f-a1ec-479d-87da-b25ea229c449' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spittle'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8a3ce2f-a1ec-479d-87da-b25ea229c449', 'Spittle', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8a3ce2f-a1ec-479d-87da-b25ea229c449' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meludah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8a3ce2f-a1ec-479d-87da-b25ea229c449', 'Meludah', false, true);
  END IF;

  -- [KANJI] 喋 (Level 35)
  UPDATE item_meanings SET meaning = 'Mengobrol', primary_meaning = true, accepted_answer = true WHERE id = 'e46c180e-aaad-4f68-a0e1-0fad98f9ef90';
  UPDATE items SET slug = 'mengobrol' WHERE id = 'b0db4ae3-75a8-4e55-b4ab-22cca00105e4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0db4ae3-75a8-4e55-b4ab-22cca00105e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Banyak Bicara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0db4ae3-75a8-4e55-b4ab-22cca00105e4', 'Banyak Bicara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0db4ae3-75a8-4e55-b4ab-22cca00105e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Chat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0db4ae3-75a8-4e55-b4ab-22cca00105e4', 'Chat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0db4ae3-75a8-4e55-b4ab-22cca00105e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Talk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0db4ae3-75a8-4e55-b4ab-22cca00105e4', 'Talk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0db4ae3-75a8-4e55-b4ab-22cca00105e4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bicara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0db4ae3-75a8-4e55-b4ab-22cca00105e4', 'Bicara', false, true);
  END IF;

  -- [KANJI] 寿 (Level 35)
  UPDATE item_meanings SET meaning = 'Umur Panjang', primary_meaning = true, accepted_answer = true WHERE id = '536828d2-2df3-49d2-9ca7-51e743375b31';
  UPDATE items SET slug = 'umur-panjang' WHERE id = 'c8e0b134-5cac-4036-80b7-cbf10bf79784';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8e0b134-5cac-4036-80b7-cbf10bf79784' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perayaan Berkah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8e0b134-5cac-4036-80b7-cbf10bf79784', 'Perayaan Berkah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8e0b134-5cac-4036-80b7-cbf10bf79784' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Longevity'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8e0b134-5cac-4036-80b7-cbf10bf79784', 'Longevity', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8e0b134-5cac-4036-80b7-cbf10bf79784' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Long Life'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8e0b134-5cac-4036-80b7-cbf10bf79784', 'Long Life', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8e0b134-5cac-4036-80b7-cbf10bf79784' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jangka hidup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8e0b134-5cac-4036-80b7-cbf10bf79784', 'Jangka hidup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8e0b134-5cac-4036-80b7-cbf10bf79784' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lifetime'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8e0b134-5cac-4036-80b7-cbf10bf79784', 'Lifetime', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8e0b134-5cac-4036-80b7-cbf10bf79784' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Celebration'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8e0b134-5cac-4036-80b7-cbf10bf79784', 'Celebration', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8e0b134-5cac-4036-80b7-cbf10bf79784' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Festivities'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8e0b134-5cac-4036-80b7-cbf10bf79784', 'Festivities', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8e0b134-5cac-4036-80b7-cbf10bf79784' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Congratulations'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8e0b134-5cac-4036-80b7-cbf10bf79784', 'Congratulations', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c8e0b134-5cac-4036-80b7-cbf10bf79784' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lifespan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c8e0b134-5cac-4036-80b7-cbf10bf79784', 'Lifespan', false, true);
  END IF;

  -- [KANJI] 己 (Level 35)
  UPDATE item_meanings SET meaning = 'Diri Sendiri', primary_meaning = true, accepted_answer = true WHERE id = '2eb57149-f027-4a5d-9c1c-940b6c8a1325';
  UPDATE items SET slug = 'diri-sendiri' WHERE id = '49e322e6-4d67-4523-b273-a07713dfb5a5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49e322e6-4d67-4523-b273-a07713dfb5a5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pribadi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49e322e6-4d67-4523-b273-a07713dfb5a5', 'Pribadi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49e322e6-4d67-4523-b273-a07713dfb5a5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Self'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49e322e6-4d67-4523-b273-a07713dfb5a5', 'Self', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49e322e6-4d67-4523-b273-a07713dfb5a5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Oneself'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49e322e6-4d67-4523-b273-a07713dfb5a5', 'Oneself', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '49e322e6-4d67-4523-b273-a07713dfb5a5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('49e322e6-4d67-4523-b273-a07713dfb5a5', 'Diri', false, true);
  END IF;

  -- [KANJI] 彫 (Level 35)
  UPDATE item_meanings SET meaning = 'Mengukir', primary_meaning = true, accepted_answer = true WHERE id = 'f3f18777-c20d-4358-a00f-83bf87df2102';
  UPDATE items SET slug = 'mengukir' WHERE id = '1473b9bc-e910-4760-854b-321a49cc4ac3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1473b9bc-e910-4760-854b-321a49cc4ac3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memahat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1473b9bc-e910-4760-854b-321a49cc4ac3', 'Memahat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1473b9bc-e910-4760-854b-321a49cc4ac3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1473b9bc-e910-4760-854b-321a49cc4ac3', 'Carve', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1473b9bc-e910-4760-854b-321a49cc4ac3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Engrave'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1473b9bc-e910-4760-854b-321a49cc4ac3', 'Engrave', false, true);
  END IF;

  -- [KANJI] 恥 (Level 35)
  UPDATE item_meanings SET meaning = 'Malu', primary_meaning = true, accepted_answer = true WHERE id = 'a7b571b0-2404-41cd-9ac1-7fcb12ded1b2';
  UPDATE items SET slug = 'malu' WHERE id = '9af20c6c-2c2c-460f-b90e-52e68c8b4023';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9af20c6c-2c2c-460f-b90e-52e68c8b4023' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rasa Aib'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9af20c6c-2c2c-460f-b90e-52e68c8b4023', 'Rasa Aib', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9af20c6c-2c2c-460f-b90e-52e68c8b4023' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shame'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9af20c6c-2c2c-460f-b90e-52e68c8b4023', 'Shame', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '9af20c6c-2c2c-460f-b90e-52e68c8b4023' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Embarrassment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('9af20c6c-2c2c-460f-b90e-52e68c8b4023', 'Embarrassment', false, true);
  END IF;

  -- [KANJI] 戚 (Level 35)
  UPDATE item_meanings SET meaning = 'Kerabat', primary_meaning = true, accepted_answer = true WHERE id = 'd65cd01c-7308-4b8c-83bd-d6ffe8910351';
  UPDATE items SET slug = 'kerabat' WHERE id = '1e9392f5-040e-45cd-bbf0-e946212d7053';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e9392f5-040e-45cd-bbf0-e946212d7053' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sanak Saudara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e9392f5-040e-45cd-bbf0-e946212d7053', 'Sanak Saudara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e9392f5-040e-45cd-bbf0-e946212d7053' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Relatives'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e9392f5-040e-45cd-bbf0-e946212d7053', 'Relatives', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e9392f5-040e-45cd-bbf0-e946212d7053' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e9392f5-040e-45cd-bbf0-e946212d7053', 'Kin', false, true);
  END IF;

  -- [KANJI] 捉 (Level 35)
  UPDATE item_meanings SET meaning = 'Menangkap', primary_meaning = true, accepted_answer = true WHERE id = 'c0924cd6-aa85-4f06-938b-b2f427af296a';
  UPDATE items SET slug = 'menangkap' WHERE id = '2313309c-8b24-47c6-b179-49c075d042fd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2313309c-8b24-47c6-b179-49c075d042fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memahami Makna'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2313309c-8b24-47c6-b179-49c075d042fd', 'Memahami Makna', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2313309c-8b24-47c6-b179-49c075d042fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Catch'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2313309c-8b24-47c6-b179-49c075d042fd', 'Catch', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2313309c-8b24-47c6-b179-49c075d042fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Grasp'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2313309c-8b24-47c6-b179-49c075d042fd', 'Grasp', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2313309c-8b24-47c6-b179-49c075d042fd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Capture'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2313309c-8b24-47c6-b179-49c075d042fd', 'Capture', false, true);
  END IF;

  -- [KANJI] 汁 (Level 35)
  UPDATE item_meanings SET meaning = 'Sup', primary_meaning = true, accepted_answer = true WHERE id = '47675f02-fb10-4785-992a-773a4b6fcd27';
  UPDATE items SET slug = 'sup' WHERE id = '44864899-043b-4c90-9706-3dbeb7a78ffe';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '44864899-043b-4c90-9706-3dbeb7a78ffe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kuah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('44864899-043b-4c90-9706-3dbeb7a78ffe', 'Kuah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '44864899-043b-4c90-9706-3dbeb7a78ffe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sari Buah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('44864899-043b-4c90-9706-3dbeb7a78ffe', 'Sari Buah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '44864899-043b-4c90-9706-3dbeb7a78ffe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Soup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('44864899-043b-4c90-9706-3dbeb7a78ffe', 'Soup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '44864899-043b-4c90-9706-3dbeb7a78ffe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Juice'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('44864899-043b-4c90-9706-3dbeb7a78ffe', 'Juice', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '44864899-043b-4c90-9706-3dbeb7a78ffe' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Broth'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('44864899-043b-4c90-9706-3dbeb7a78ffe', 'Broth', false, true);
  END IF;

  -- [KANJI] 測 (Level 35)
  UPDATE item_meanings SET meaning = 'Mengukur', primary_meaning = true, accepted_answer = true WHERE id = 'f300f553-5b4a-4992-b88b-ef7f6fba96cc';
  UPDATE items SET slug = 'mengukur' WHERE id = 'b9e3925d-6838-4333-82be-cef14f5996f8';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b9e3925d-6838-4333-82be-cef14f5996f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memperkirakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b9e3925d-6838-4333-82be-cef14f5996f8', 'Memperkirakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b9e3925d-6838-4333-82be-cef14f5996f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Measure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b9e3925d-6838-4333-82be-cef14f5996f8', 'Measure', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b9e3925d-6838-4333-82be-cef14f5996f8' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ukuran'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b9e3925d-6838-4333-82be-cef14f5996f8', 'Ukuran', false, true);
  END IF;

  -- [KANJI] 滞 (Level 35)
  UPDATE item_meanings SET meaning = 'Mandek', primary_meaning = true, accepted_answer = true WHERE id = '6bac19d7-f7e9-4d4b-b539-b2a5d1374b81';
  UPDATE items SET slug = 'mandek' WHERE id = '21858fdf-4619-42d7-beb3-99627829ce9f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21858fdf-4619-42d7-beb3-99627829ce9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tersendat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21858fdf-4619-42d7-beb3-99627829ce9f', 'Tersendat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21858fdf-4619-42d7-beb3-99627829ce9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menetap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21858fdf-4619-42d7-beb3-99627829ce9f', 'Menetap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21858fdf-4619-42d7-beb3-99627829ce9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stagnate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21858fdf-4619-42d7-beb3-99627829ce9f', 'Stagnate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '21858fdf-4619-42d7-beb3-99627829ce9f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stay'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('21858fdf-4619-42d7-beb3-99627829ce9f', 'Stay', false, true);
  END IF;

  -- [KANJI] 漠 (Level 35)
  UPDATE item_meanings SET meaning = 'Samar-samar', primary_meaning = true, accepted_answer = true WHERE id = 'edd06a3f-a2b2-416f-af3b-dcfeaef7792d';
  UPDATE items SET slug = 'samar-samar' WHERE id = '6cdc9dc4-7126-433e-ba2e-d19ff2a4fd20';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cdc9dc4-7126-433e-ba2e-d19ff2a4fd20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Luas Membentang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cdc9dc4-7126-433e-ba2e-d19ff2a4fd20', 'Luas Membentang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cdc9dc4-7126-433e-ba2e-d19ff2a4fd20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vague'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cdc9dc4-7126-433e-ba2e-d19ff2a4fd20', 'Vague', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cdc9dc4-7126-433e-ba2e-d19ff2a4fd20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Desert'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cdc9dc4-7126-433e-ba2e-d19ff2a4fd20', 'Desert', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cdc9dc4-7126-433e-ba2e-d19ff2a4fd20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gurun'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cdc9dc4-7126-433e-ba2e-d19ff2a4fd20', 'Gurun', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '6cdc9dc4-7126-433e-ba2e-d19ff2a4fd20' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak jelas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('6cdc9dc4-7126-433e-ba2e-d19ff2a4fd20', 'Tidak jelas', false, true);
  END IF;

  -- [KANJI] 潰 (Level 35)
  UPDATE item_meanings SET meaning = 'Meremukkan', primary_meaning = true, accepted_answer = true WHERE id = '0b9e97f6-6258-416f-8dc7-ad751cf1a992';
  UPDATE items SET slug = 'meremukkan' WHERE id = '8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghancurkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9', 'Menghancurkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bangkrut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9', 'Bangkrut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Crush'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9', 'Crush', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Smash'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9', 'Smash', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Labu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9', 'Labu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Squash'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9', 'Squash', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flatten'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9', 'Flatten', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Squish'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8fbf3f1b-bfe3-4f7b-b3d8-dd05eeff8de9', 'Squish', false, true);
  END IF;

  -- [KANJI] 炎 (Level 35)
  UPDATE item_meanings SET meaning = 'Kobaran Api', primary_meaning = true, accepted_answer = true WHERE id = '69dcc44d-45a5-4c29-923d-1f41fe235405';
  UPDATE items SET slug = 'kobaran-api' WHERE id = '77243104-eec3-43c1-9043-acc1e9d3c8cc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77243104-eec3-43c1-9043-acc1e9d3c8cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Radang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77243104-eec3-43c1-9043-acc1e9d3c8cc', 'Radang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77243104-eec3-43c1-9043-acc1e9d3c8cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Flame'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77243104-eec3-43c1-9043-acc1e9d3c8cc', 'Flame', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77243104-eec3-43c1-9043-acc1e9d3c8cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Blaze'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77243104-eec3-43c1-9043-acc1e9d3c8cc', 'Blaze', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77243104-eec3-43c1-9043-acc1e9d3c8cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inflammation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77243104-eec3-43c1-9043-acc1e9d3c8cc', 'Inflammation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77243104-eec3-43c1-9043-acc1e9d3c8cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Api'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77243104-eec3-43c1-9043-acc1e9d3c8cc', 'Api', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '77243104-eec3-43c1-9043-acc1e9d3c8cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Big Fire'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('77243104-eec3-43c1-9043-acc1e9d3c8cc', 'Big Fire', false, true);
  END IF;

  -- [KANJI] 為 (Level 35)
  UPDATE item_meanings SET meaning = 'Demi', primary_meaning = true, accepted_answer = true WHERE id = '265518d8-690c-40c1-a500-aefac99d5494';
  UPDATE items SET slug = 'demi' WHERE id = 'ca5b4580-f722-4de2-93bb-fbed8b7ebb98';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca5b4580-f722-4de2-93bb-fbed8b7ebb98' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karena'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca5b4580-f722-4de2-93bb-fbed8b7ebb98', 'Karena', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca5b4580-f722-4de2-93bb-fbed8b7ebb98' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bertindak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca5b4580-f722-4de2-93bb-fbed8b7ebb98', 'Bertindak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca5b4580-f722-4de2-93bb-fbed8b7ebb98' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sake'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca5b4580-f722-4de2-93bb-fbed8b7ebb98', 'Sake', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca5b4580-f722-4de2-93bb-fbed8b7ebb98' AND LOWER(TRIM(meaning)) = LOWER(TRIM('For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca5b4580-f722-4de2-93bb-fbed8b7ebb98', 'For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ca5b4580-f722-4de2-93bb-fbed8b7ebb98' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Do'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ca5b4580-f722-4de2-93bb-fbed8b7ebb98', 'Do', false, true);
  END IF;

  -- [KANJI] 獄 (Level 35)
  UPDATE item_meanings SET meaning = 'Penjara', primary_meaning = true, accepted_answer = true WHERE id = '68b7cefb-7d94-44dc-b8be-3e8515de2d2f';
  UPDATE items SET slug = 'penjara' WHERE id = 'a6b6cf3e-5303-4cfe-98d5-2d4c5d9842cc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a6b6cf3e-5303-4cfe-98d5-2d4c5d9842cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Neraka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a6b6cf3e-5303-4cfe-98d5-2d4c5d9842cc', 'Neraka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a6b6cf3e-5303-4cfe-98d5-2d4c5d9842cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prison'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a6b6cf3e-5303-4cfe-98d5-2d4c5d9842cc', 'Prison', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a6b6cf3e-5303-4cfe-98d5-2d4c5d9842cc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jail'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a6b6cf3e-5303-4cfe-98d5-2d4c5d9842cc', 'Jail', false, true);
  END IF;

  -- [KANJI] 破 (Level 35)
  UPDATE item_meanings SET meaning = 'Merobek', primary_meaning = true, accepted_answer = true WHERE id = '48d63044-5b98-4742-b7c2-72d7a9425ff1';
  UPDATE items SET slug = 'merobek' WHERE id = '349ead72-97b2-4d0b-967a-000c96efb074';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '349ead72-97b2-4d0b-967a-000c96efb074' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memecahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('349ead72-97b2-4d0b-967a-000c96efb074', 'Memecahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '349ead72-97b2-4d0b-967a-000c96efb074' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kalah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('349ead72-97b2-4d0b-967a-000c96efb074', 'Kalah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '349ead72-97b2-4d0b-967a-000c96efb074' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('349ead72-97b2-4d0b-967a-000c96efb074', 'Tear', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '349ead72-97b2-4d0b-967a-000c96efb074' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Break'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('349ead72-97b2-4d0b-967a-000c96efb074', 'Break', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '349ead72-97b2-4d0b-967a-000c96efb074' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Rend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('349ead72-97b2-4d0b-967a-000c96efb074', 'Rend', false, true);
  END IF;

  -- [KANJI] 紹 (Level 35)
  UPDATE item_meanings SET meaning = 'Memperkenalkan', primary_meaning = true, accepted_answer = true WHERE id = '0d1c86d1-e38a-4054-add5-b29cdde61f12';
  UPDATE items SET slug = 'memperkenalkan' WHERE id = 'f5739f23-f4f1-45e1-aa12-e77694e8a7aa';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5739f23-f4f1-45e1-aa12-e77694e8a7aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mewarisi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5739f23-f4f1-45e1-aa12-e77694e8a7aa', 'Mewarisi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5739f23-f4f1-45e1-aa12-e77694e8a7aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Introduce'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5739f23-f4f1-45e1-aa12-e77694e8a7aa', 'Introduce', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f5739f23-f4f1-45e1-aa12-e77694e8a7aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Introduction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f5739f23-f4f1-45e1-aa12-e77694e8a7aa', 'Introduction', false, true);
  END IF;

  -- [KANJI] 舎 (Level 35)
  UPDATE item_meanings SET meaning = 'Pondok', primary_meaning = true, accepted_answer = true WHERE id = '555cc889-9592-453b-b0c2-0901fc773d71';
  UPDATE items SET slug = 'pondok' WHERE id = '4ed72234-ead4-4913-9f8a-51da1f8292b7';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ed72234-ead4-4913-9f8a-51da1f8292b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bangunan Asrama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ed72234-ead4-4913-9f8a-51da1f8292b7', 'Bangunan Asrama', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ed72234-ead4-4913-9f8a-51da1f8292b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cottage'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ed72234-ead4-4913-9f8a-51da1f8292b7', 'Cottage', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4ed72234-ead4-4913-9f8a-51da1f8292b7' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4ed72234-ead4-4913-9f8a-51da1f8292b7', 'Hut', false, true);
  END IF;

  -- [KANJI] 講 (Level 35)
  UPDATE item_meanings SET meaning = 'Kuliah', primary_meaning = true, accepted_answer = true WHERE id = 'e3dd2919-1a78-4af4-80b2-f6b52f9ed2be';
  UPDATE items SET slug = 'kuliah' WHERE id = '13fbc8bb-1964-4d16-b585-ddfad4b0eae3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '13fbc8bb-1964-4d16-b585-ddfad4b0eae3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ceramah Ilmiah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('13fbc8bb-1964-4d16-b585-ddfad4b0eae3', 'Ceramah Ilmiah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '13fbc8bb-1964-4d16-b585-ddfad4b0eae3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lecture'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('13fbc8bb-1964-4d16-b585-ddfad4b0eae3', 'Lecture', false, true);
  END IF;

  -- [KANJI] 軒 (Level 35)
  UPDATE item_meanings SET meaning = 'Penghitung Rumah', primary_meaning = true, accepted_answer = true WHERE id = 'a6576d6f-3a96-410b-ac22-af87dc44ed81';
  UPDATE items SET slug = 'penghitung-rumah' WHERE id = '3be1b0b9-7154-42ec-86df-e0d4147d9ee2';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3be1b0b9-7154-42ec-86df-e0d4147d9ee2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Titisan Atap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3be1b0b9-7154-42ec-86df-e0d4147d9ee2', 'Titisan Atap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3be1b0b9-7154-42ec-86df-e0d4147d9ee2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('House Counter'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3be1b0b9-7154-42ec-86df-e0d4147d9ee2', 'House Counter', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3be1b0b9-7154-42ec-86df-e0d4147d9ee2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Eaves'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3be1b0b9-7154-42ec-86df-e0d4147d9ee2', 'Eaves', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3be1b0b9-7154-42ec-86df-e0d4147d9ee2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Konter Rumah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3be1b0b9-7154-42ec-86df-e0d4147d9ee2', 'Konter Rumah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3be1b0b9-7154-42ec-86df-e0d4147d9ee2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Number Of Houses'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3be1b0b9-7154-42ec-86df-e0d4147d9ee2', 'Number Of Houses', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3be1b0b9-7154-42ec-86df-e0d4147d9ee2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Houses Buildings'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3be1b0b9-7154-42ec-86df-e0d4147d9ee2', 'Houses Buildings', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3be1b0b9-7154-42ec-86df-e0d4147d9ee2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Atap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3be1b0b9-7154-42ec-86df-e0d4147d9ee2', 'Atap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3be1b0b9-7154-42ec-86df-e0d4147d9ee2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Number Of Buildings'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3be1b0b9-7154-42ec-86df-e0d4147d9ee2', 'Number Of Buildings', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3be1b0b9-7154-42ec-86df-e0d4147d9ee2' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Counter For Buildings'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3be1b0b9-7154-42ec-86df-e0d4147d9ee2', 'Counter For Buildings', false, true);
  END IF;

  -- [KANJI] 遅 (Level 35)
  UPDATE item_meanings SET meaning = 'Terlambat', primary_meaning = true, accepted_answer = true WHERE id = '488f6dc2-8964-4fdf-90e3-a80d1b688d9e';
  UPDATE items SET slug = 'terlambat' WHERE id = '05bd1af4-a267-4734-b937-26fe023af4c5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05bd1af4-a267-4734-b937-26fe023af4c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lambat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05bd1af4-a267-4734-b937-26fe023af4c5', 'Lambat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05bd1af4-a267-4734-b937-26fe023af4c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Late'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05bd1af4-a267-4734-b937-26fe023af4c5', 'Late', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05bd1af4-a267-4734-b937-26fe023af4c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Slow'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05bd1af4-a267-4734-b937-26fe023af4c5', 'Slow', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '05bd1af4-a267-4734-b937-26fe023af4c5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Be Late'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('05bd1af4-a267-4734-b937-26fe023af4c5', 'Be Late', false, true);
  END IF;

  -- [KANJI] 酔 (Level 35)
  UPDATE item_meanings SET meaning = 'Mabuk', primary_meaning = true, accepted_answer = true WHERE id = '9aec271f-bcf0-45d4-84b8-80c073a657c3';
  UPDATE items SET slug = 'mabuk' WHERE id = '40880fc8-07b3-4a59-869e-0ae471977adc';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '40880fc8-07b3-4a59-869e-0ae471977adc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terlena'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('40880fc8-07b3-4a59-869e-0ae471977adc', 'Terlena', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '40880fc8-07b3-4a59-869e-0ae471977adc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Drunk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('40880fc8-07b3-4a59-869e-0ae471977adc', 'Drunk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '40880fc8-07b3-4a59-869e-0ae471977adc' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Intoxicated'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('40880fc8-07b3-4a59-869e-0ae471977adc', 'Intoxicated', false, true);
  END IF;

  -- [KANJI] 銅 (Level 35)
  UPDATE item_meanings SET meaning = 'Tembaga', primary_meaning = true, accepted_answer = true WHERE id = 'dda08f39-2f86-48db-8fae-00160b0fb514';
  UPDATE items SET slug = 'tembaga' WHERE id = '514e2ecf-97cc-47c4-af23-73d6c2ddeb71';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '514e2ecf-97cc-47c4-af23-73d6c2ddeb71' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perunggu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('514e2ecf-97cc-47c4-af23-73d6c2ddeb71', 'Perunggu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '514e2ecf-97cc-47c4-af23-73d6c2ddeb71' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Copper'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('514e2ecf-97cc-47c4-af23-73d6c2ddeb71', 'Copper', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '514e2ecf-97cc-47c4-af23-73d6c2ddeb71' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bronze'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('514e2ecf-97cc-47c4-af23-73d6c2ddeb71', 'Bronze', false, true);
  END IF;

  -- [KANJI] 鍋 (Level 35)
  UPDATE item_meanings SET meaning = 'Panci Masak', primary_meaning = true, accepted_answer = true WHERE id = 'e7ec7194-d308-48cf-b15a-7e000ca858e3';
  UPDATE items SET slug = 'panci-masak' WHERE id = 'b8aa52cf-8648-4fd3-b1c8-18e62435631c';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8aa52cf-8648-4fd3-b1c8-18e62435631c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hotpot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8aa52cf-8648-4fd3-b1c8-18e62435631c', 'Hotpot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8aa52cf-8648-4fd3-b1c8-18e62435631c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cooking Pot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8aa52cf-8648-4fd3-b1c8-18e62435631c', 'Cooking Pot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8aa52cf-8648-4fd3-b1c8-18e62435631c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cook Pot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8aa52cf-8648-4fd3-b1c8-18e62435631c', 'Cook Pot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8aa52cf-8648-4fd3-b1c8-18e62435631c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Cookpot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8aa52cf-8648-4fd3-b1c8-18e62435631c', 'Cookpot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8aa52cf-8648-4fd3-b1c8-18e62435631c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hot Pot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8aa52cf-8648-4fd3-b1c8-18e62435631c', 'Hot Pot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b8aa52cf-8648-4fd3-b1c8-18e62435631c' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b8aa52cf-8648-4fd3-b1c8-18e62435631c', 'Pot', false, true);
  END IF;

  -- [RADICAL] 将 (Level 35)
  UPDATE item_meanings SET meaning = 'Panglima', primary_meaning = true, accepted_answer = true WHERE id = '1daac3a6-67ed-41bf-bbeb-e5b1a8476b33';
  UPDATE items SET slug = 'panglima' WHERE id = '62bb81b4-a2c9-4c46-a6ee-d6fc638d25ff';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62bb81b4-a2c9-4c46-a6ee-d6fc638d25ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Komandan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62bb81b4-a2c9-4c46-a6ee-d6fc638d25ff', 'Komandan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62bb81b4-a2c9-4c46-a6ee-d6fc638d25ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jenderal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62bb81b4-a2c9-4c46-a6ee-d6fc638d25ff', 'Jenderal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62bb81b4-a2c9-4c46-a6ee-d6fc638d25ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Commander'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62bb81b4-a2c9-4c46-a6ee-d6fc638d25ff', 'Commander', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '62bb81b4-a2c9-4c46-a6ee-d6fc638d25ff' AND LOWER(TRIM(meaning)) = LOWER(TRIM('General'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('62bb81b4-a2c9-4c46-a6ee-d6fc638d25ff', 'General', false, true);
  END IF;

  -- [VOCABULARY] 一筋 (Level 35)
  UPDATE item_meanings SET meaning = 'Fokus Sepenuh Hati', primary_meaning = true, accepted_answer = true WHERE id = 'df3d2067-a86b-41de-a7c1-b77040193f55';
  UPDATE items SET slug = 'fokus-sepenuh-hati' WHERE id = 'd34f6e1b-c5ec-4c04-8a7f-d62e782d54e5';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd34f6e1b-c5ec-4c04-8a7f-d62e782d54e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Seutas Garis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d34f6e1b-c5ec-4c04-8a7f-d62e782d54e5', 'Seutas Garis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd34f6e1b-c5ec-4c04-8a7f-d62e782d54e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dengan Pikiran Lajang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d34f6e1b-c5ec-4c04-8a7f-d62e782d54e5', 'Dengan Pikiran Lajang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd34f6e1b-c5ec-4c04-8a7f-d62e782d54e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Single Mindedly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d34f6e1b-c5ec-4c04-8a7f-d62e782d54e5', 'Single Mindedly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd34f6e1b-c5ec-4c04-8a7f-d62e782d54e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Earnestly'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d34f6e1b-c5ec-4c04-8a7f-d62e782d54e5', 'Earnestly', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd34f6e1b-c5ec-4c04-8a7f-d62e782d54e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dengan sungguh-sungguh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d34f6e1b-c5ec-4c04-8a7f-d62e782d54e5', 'Dengan sungguh-sungguh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd34f6e1b-c5ec-4c04-8a7f-d62e782d54e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sungguh-sungguh'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d34f6e1b-c5ec-4c04-8a7f-d62e782d54e5', 'Sungguh-sungguh', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd34f6e1b-c5ec-4c04-8a7f-d62e782d54e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sebuah Garis'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d34f6e1b-c5ec-4c04-8a7f-d62e782d54e5', 'Sebuah Garis', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd34f6e1b-c5ec-4c04-8a7f-d62e782d54e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Line'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d34f6e1b-c5ec-4c04-8a7f-d62e782d54e5', 'A Line', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'd34f6e1b-c5ec-4c04-8a7f-d62e782d54e5' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Intently'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('d34f6e1b-c5ec-4c04-8a7f-d62e782d54e5', 'Intently', false, true);
  END IF;

  -- [VOCABULARY] 予測 (Level 35)
  UPDATE item_meanings SET meaning = 'Perkiraan', primary_meaning = true, accepted_answer = true WHERE id = 'bad76fae-d504-44c0-867a-e99a85b0ba93';
  UPDATE items SET slug = 'perkiraan' WHERE id = 'c5c07799-a2ce-4832-a9f7-1d4a26391fa6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5c07799-a2ce-4832-a9f7-1d4a26391fa6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prediksi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5c07799-a2ce-4832-a9f7-1d4a26391fa6', 'Prediksi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5c07799-a2ce-4832-a9f7-1d4a26391fa6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ramalan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5c07799-a2ce-4832-a9f7-1d4a26391fa6', 'Ramalan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5c07799-a2ce-4832-a9f7-1d4a26391fa6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Prediction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5c07799-a2ce-4832-a9f7-1d4a26391fa6', 'Prediction', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5c07799-a2ce-4832-a9f7-1d4a26391fa6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Forecast'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5c07799-a2ce-4832-a9f7-1d4a26391fa6', 'Forecast', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5c07799-a2ce-4832-a9f7-1d4a26391fa6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Estimate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5c07799-a2ce-4832-a9f7-1d4a26391fa6', 'Estimate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5c07799-a2ce-4832-a9f7-1d4a26391fa6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Speculating'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5c07799-a2ce-4832-a9f7-1d4a26391fa6', 'Speculating', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5c07799-a2ce-4832-a9f7-1d4a26391fa6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Speculate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5c07799-a2ce-4832-a9f7-1d4a26391fa6', 'Speculate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5c07799-a2ce-4832-a9f7-1d4a26391fa6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Speculation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5c07799-a2ce-4832-a9f7-1d4a26391fa6', 'Speculation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5c07799-a2ce-4832-a9f7-1d4a26391fa6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Estimating'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5c07799-a2ce-4832-a9f7-1d4a26391fa6', 'Estimating', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c5c07799-a2ce-4832-a9f7-1d4a26391fa6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Estimation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c5c07799-a2ce-4832-a9f7-1d4a26391fa6', 'Estimation', false, true);
  END IF;

  -- [VOCABULARY] 互い (Level 35)
  UPDATE item_meanings SET meaning = 'Saling', primary_meaning = true, accepted_answer = true WHERE id = 'fa20fe65-ab0e-4e57-abd2-ce24b6352ec9';
  UPDATE items SET slug = 'saling' WHERE id = '89432cd8-3f7f-4fcc-8bc2-1f53d255389e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '89432cd8-3f7f-4fcc-8bc2-1f53d255389e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu Sama Lain'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('89432cd8-3f7f-4fcc-8bc2-1f53d255389e', 'Satu Sama Lain', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '89432cd8-3f7f-4fcc-8bc2-1f53d255389e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Each Other'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('89432cd8-3f7f-4fcc-8bc2-1f53d255389e', 'Each Other', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '89432cd8-3f7f-4fcc-8bc2-1f53d255389e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mutual'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('89432cd8-3f7f-4fcc-8bc2-1f53d255389e', 'Mutual', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '89432cd8-3f7f-4fcc-8bc2-1f53d255389e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bersama'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('89432cd8-3f7f-4fcc-8bc2-1f53d255389e', 'Bersama', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '89432cd8-3f7f-4fcc-8bc2-1f53d255389e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kebalikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('89432cd8-3f7f-4fcc-8bc2-1f53d255389e', 'Kebalikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '89432cd8-3f7f-4fcc-8bc2-1f53d255389e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Together'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('89432cd8-3f7f-4fcc-8bc2-1f53d255389e', 'Together', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '89432cd8-3f7f-4fcc-8bc2-1f53d255389e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Reciprocal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('89432cd8-3f7f-4fcc-8bc2-1f53d255389e', 'Reciprocal', false, true);
  END IF;

  -- [VOCABULARY] 交互に (Level 35)
  UPDATE item_meanings SET meaning = 'Secara Bergantian', primary_meaning = true, accepted_answer = true WHERE id = '8db52859-71ba-4481-b6c9-2563e1b55fb9';
  UPDATE items SET slug = 'secara-bergantian' WHERE id = '90ed689f-0e5c-42c2-94b9-f29fc00b4dbf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90ed689f-0e5c-42c2-94b9-f29fc00b4dbf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berselang-seling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90ed689f-0e5c-42c2-94b9-f29fc00b4dbf', 'Berselang-seling', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90ed689f-0e5c-42c2-94b9-f29fc00b4dbf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bergantian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90ed689f-0e5c-42c2-94b9-f29fc00b4dbf', 'Bergantian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90ed689f-0e5c-42c2-94b9-f29fc00b4dbf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alternately'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90ed689f-0e5c-42c2-94b9-f29fc00b4dbf', 'Alternately', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90ed689f-0e5c-42c2-94b9-f29fc00b4dbf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('By Turns'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90ed689f-0e5c-42c2-94b9-f29fc00b4dbf', 'By Turns', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90ed689f-0e5c-42c2-94b9-f29fc00b4dbf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Taking Turns'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90ed689f-0e5c-42c2-94b9-f29fc00b4dbf', 'Taking Turns', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90ed689f-0e5c-42c2-94b9-f29fc00b4dbf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satu demi satu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90ed689f-0e5c-42c2-94b9-f29fc00b4dbf', 'Satu demi satu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90ed689f-0e5c-42c2-94b9-f29fc00b4dbf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alternating'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90ed689f-0e5c-42c2-94b9-f29fc00b4dbf', 'Alternating', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90ed689f-0e5c-42c2-94b9-f29fc00b4dbf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Selang seling'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90ed689f-0e5c-42c2-94b9-f29fc00b4dbf', 'Selang seling', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90ed689f-0e5c-42c2-94b9-f29fc00b4dbf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('In Turns'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90ed689f-0e5c-42c2-94b9-f29fc00b4dbf', 'In Turns', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '90ed689f-0e5c-42c2-94b9-f29fc00b4dbf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('One After The Other'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('90ed689f-0e5c-42c2-94b9-f29fc00b4dbf', 'One After The Other', false, true);
  END IF;

  -- [VOCABULARY] 傷つく (Level 35)
  UPDATE item_meanings SET meaning = 'Terluka', primary_meaning = true, accepted_answer = true WHERE id = '88829522-73c0-42ca-9c8b-84fa1a1bf00e';
  UPDATE items SET slug = 'terluka' WHERE id = 'fbd62603-9d16-4a9d-954d-fbf6eb9c802f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fbd62603-9d16-4a9d-954d-fbf6eb9c802f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tersakiti Hatinya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fbd62603-9d16-4a9d-954d-fbf6eb9c802f', 'Tersakiti Hatinya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fbd62603-9d16-4a9d-954d-fbf6eb9c802f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Terluka'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fbd62603-9d16-4a9d-954d-fbf6eb9c802f', 'Untuk Terluka', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fbd62603-9d16-4a9d-954d-fbf6eb9c802f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Hurt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fbd62603-9d16-4a9d-954d-fbf6eb9c802f', 'To Get Hurt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fbd62603-9d16-4a9d-954d-fbf6eb9c802f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Injured'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fbd62603-9d16-4a9d-954d-fbf6eb9c802f', 'To Be Injured', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fbd62603-9d16-4a9d-954d-fbf6eb9c802f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Wounded'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fbd62603-9d16-4a9d-954d-fbf6eb9c802f', 'To Be Wounded', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fbd62603-9d16-4a9d-954d-fbf6eb9c802f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Hurt'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fbd62603-9d16-4a9d-954d-fbf6eb9c802f', 'To Be Hurt', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fbd62603-9d16-4a9d-954d-fbf6eb9c802f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Injured'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fbd62603-9d16-4a9d-954d-fbf6eb9c802f', 'To Get Injured', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'fbd62603-9d16-4a9d-954d-fbf6eb9c802f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Wounded'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('fbd62603-9d16-4a9d-954d-fbf6eb9c802f', 'To Get Wounded', false, true);
  END IF;

  -- [VOCABULARY] 僅か (Level 35)
  UPDATE item_meanings SET meaning = 'Hanya Sedikit', primary_meaning = true, accepted_answer = true WHERE id = '3e1b3d4a-5a3b-4f3b-89fc-67c0ca595ebb';
  UPDATE items SET slug = 'hanya-sedikit' WHERE id = '7251203a-b476-4e98-a117-e38d0631d969';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7251203a-b476-4e98-a117-e38d0631d969' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat Sedikit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7251203a-b476-4e98-a117-e38d0631d969', 'Sangat Sedikit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7251203a-b476-4e98-a117-e38d0631d969' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Beberapa'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7251203a-b476-4e98-a117-e38d0631d969', 'Beberapa', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7251203a-b476-4e98-a117-e38d0631d969' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Few'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7251203a-b476-4e98-a117-e38d0631d969', 'A Few', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7251203a-b476-4e98-a117-e38d0631d969' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Only A Little'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7251203a-b476-4e98-a117-e38d0631d969', 'Only A Little', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7251203a-b476-4e98-a117-e38d0631d969' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Little Bit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7251203a-b476-4e98-a117-e38d0631d969', 'A Little Bit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7251203a-b476-4e98-a117-e38d0631d969' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meagre'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7251203a-b476-4e98-a117-e38d0631d969', 'Meagre', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7251203a-b476-4e98-a117-e38d0631d969' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meager'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7251203a-b476-4e98-a117-e38d0631d969', 'Meager', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7251203a-b476-4e98-a117-e38d0631d969' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hanya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7251203a-b476-4e98-a117-e38d0631d969', 'Hanya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7251203a-b476-4e98-a117-e38d0631d969' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sedikit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7251203a-b476-4e98-a117-e38d0631d969', 'Sedikit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7251203a-b476-4e98-a117-e38d0631d969' AND LOWER(TRIM(meaning)) = LOWER(TRIM('A Little'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7251203a-b476-4e98-a117-e38d0631d969', 'A Little', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7251203a-b476-4e98-a117-e38d0631d969' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Just'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7251203a-b476-4e98-a117-e38d0631d969', 'Just', false, true);
  END IF;

  -- [VOCABULARY] 儲かる (Level 35)
  UPDATE item_meanings SET meaning = 'Mendatangkan Keuntungan', primary_meaning = true, accepted_answer = true WHERE id = 'd54c5b52-ac6c-46db-b43e-2586165b2a5c';
  UPDATE items SET slug = 'mendatangkan-keuntungan' WHERE id = '4b58d17c-b492-4491-9840-ac31bab892b0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b58d17c-b492-4491-9840-ac31bab892b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Laba'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b58d17c-b492-4491-9840-ac31bab892b0', 'Laba', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b58d17c-b492-4491-9840-ac31bab892b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Menguntungkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b58d17c-b492-4491-9840-ac31bab892b0', 'Menjadi Menguntungkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b58d17c-b492-4491-9840-ac31bab892b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Profitable'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b58d17c-b492-4491-9840-ac31bab892b0', 'To Be Profitable', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b58d17c-b492-4491-9840-ac31bab892b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Yield Profit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b58d17c-b492-4491-9840-ac31bab892b0', 'To Yield Profit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b58d17c-b492-4491-9840-ac31bab892b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Generate Money'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b58d17c-b492-4491-9840-ac31bab892b0', 'To Generate Money', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b58d17c-b492-4491-9840-ac31bab892b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bring In A Profit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b58d17c-b492-4491-9840-ac31bab892b0', 'To Bring In A Profit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b58d17c-b492-4491-9840-ac31bab892b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghasilkan Uang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b58d17c-b492-4491-9840-ac31bab892b0', 'Untuk Menghasilkan Uang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b58d17c-b492-4491-9840-ac31bab892b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghasilkan Untung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b58d17c-b492-4491-9840-ac31bab892b0', 'Untuk Menghasilkan Untung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b58d17c-b492-4491-9840-ac31bab892b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bring In Money'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b58d17c-b492-4491-9840-ac31bab892b0', 'To Bring In Money', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '4b58d17c-b492-4491-9840-ac31bab892b0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Yield A Profit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('4b58d17c-b492-4491-9840-ac31bab892b0', 'To Yield A Profit', false, true);
  END IF;

  -- [VOCABULARY] 入獄 (Level 35)
  UPDATE item_meanings SET meaning = 'Masuk Penjara', primary_meaning = true, accepted_answer = true WHERE id = 'e5c0b95f-b746-45ca-8cd2-588b31c311cb';
  UPDATE items SET slug = 'masuk-penjara' WHERE id = 'c9a9f02d-5b33-4d72-a1c1-895276ea98aa';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9a9f02d-5b33-4d72-a1c1-895276ea98aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemenjaraan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9a9f02d-5b33-4d72-a1c1-895276ea98aa', 'Pemenjaraan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9a9f02d-5b33-4d72-a1c1-895276ea98aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hukuman penjara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9a9f02d-5b33-4d72-a1c1-895276ea98aa', 'Hukuman penjara', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9a9f02d-5b33-4d72-a1c1-895276ea98aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Imprisonment'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9a9f02d-5b33-4d72-a1c1-895276ea98aa', 'Imprisonment', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c9a9f02d-5b33-4d72-a1c1-895276ea98aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Imprisoning'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c9a9f02d-5b33-4d72-a1c1-895276ea98aa', 'Imprisoning', false, true);
  END IF;

  -- [VOCABULARY] 勇む (Level 35)
  UPDATE item_meanings SET meaning = 'Bersemangat Membara', primary_meaning = true, accepted_answer = true WHERE id = 'ae3078ee-b0ca-42e2-a7e2-1ae88db97e00';
  UPDATE items SET slug = 'bersemangat-membara' WHERE id = '8060b7b7-d999-413a-a355-ddb2a19eddcb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8060b7b7-d999-413a-a355-ddb2a19eddcb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bernyali Berani'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8060b7b7-d999-413a-a355-ddb2a19eddcb', 'Bernyali Berani', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8060b7b7-d999-413a-a355-ddb2a19eddcb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agar Bersemangat Tinggi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8060b7b7-d999-413a-a355-ddb2a19eddcb', 'Agar Bersemangat Tinggi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8060b7b7-d999-413a-a355-ddb2a19eddcb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be In High Spirits'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8060b7b7-d999-413a-a355-ddb2a19eddcb', 'To Be In High Spirits', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8060b7b7-d999-413a-a355-ddb2a19eddcb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Brave'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8060b7b7-d999-413a-a355-ddb2a19eddcb', 'To Be Brave', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8060b7b7-d999-413a-a355-ddb2a19eddcb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Encouraged'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8060b7b7-d999-413a-a355-ddb2a19eddcb', 'To Be Encouraged', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8060b7b7-d999-413a-a355-ddb2a19eddcb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Enthusiastic'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8060b7b7-d999-413a-a355-ddb2a19eddcb', 'To Be Enthusiastic', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8060b7b7-d999-413a-a355-ddb2a19eddcb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Eager'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8060b7b7-d999-413a-a355-ddb2a19eddcb', 'To Be Eager', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8060b7b7-d999-413a-a355-ddb2a19eddcb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Courageous'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8060b7b7-d999-413a-a355-ddb2a19eddcb', 'To Be Courageous', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '8060b7b7-d999-413a-a355-ddb2a19eddcb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Inspired'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('8060b7b7-d999-413a-a355-ddb2a19eddcb', 'To Be Inspired', false, true);
  END IF;

  -- [VOCABULARY] 厄介 (Level 35)
  UPDATE item_meanings SET meaning = 'Merepotkan', primary_meaning = true, accepted_answer = true WHERE id = '54d8d979-aabd-4dd0-a0af-03ef405ad2cb';
  UPDATE items SET slug = 'merepotkan' WHERE id = 'b11818a3-8e27-47f7-8c4e-525adc1aab33';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b11818a3-8e27-47f7-8c4e-525adc1aab33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyusahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b11818a3-8e27-47f7-8c4e-525adc1aab33', 'Menyusahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b11818a3-8e27-47f7-8c4e-525adc1aab33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Masalah Rumit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b11818a3-8e27-47f7-8c4e-525adc1aab33', 'Masalah Rumit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b11818a3-8e27-47f7-8c4e-525adc1aab33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sulit'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b11818a3-8e27-47f7-8c4e-525adc1aab33', 'Sulit', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b11818a3-8e27-47f7-8c4e-525adc1aab33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Troublesome'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b11818a3-8e27-47f7-8c4e-525adc1aab33', 'Troublesome', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b11818a3-8e27-47f7-8c4e-525adc1aab33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Nuisance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b11818a3-8e27-47f7-8c4e-525adc1aab33', 'Nuisance', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b11818a3-8e27-47f7-8c4e-525adc1aab33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Worry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b11818a3-8e27-47f7-8c4e-525adc1aab33', 'Worry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b11818a3-8e27-47f7-8c4e-525adc1aab33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bother'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b11818a3-8e27-47f7-8c4e-525adc1aab33', 'Bother', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b11818a3-8e27-47f7-8c4e-525adc1aab33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Burdensome'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b11818a3-8e27-47f7-8c4e-525adc1aab33', 'Burdensome', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b11818a3-8e27-47f7-8c4e-525adc1aab33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Burden'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b11818a3-8e27-47f7-8c4e-525adc1aab33', 'Burden', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b11818a3-8e27-47f7-8c4e-525adc1aab33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Trouble'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b11818a3-8e27-47f7-8c4e-525adc1aab33', 'Trouble', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b11818a3-8e27-47f7-8c4e-525adc1aab33' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hard To Deal With'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b11818a3-8e27-47f7-8c4e-525adc1aab33', 'Hard To Deal With', false, true);
  END IF;

  -- [VOCABULARY] 否定する (Level 35)
  UPDATE item_meanings SET meaning = 'Membantah', primary_meaning = true, accepted_answer = true WHERE id = '7e9aad15-7635-4ae1-90cb-706600c5d5e0';
  UPDATE items SET slug = 'membantah' WHERE id = 'ad5b0b8d-02e8-4dea-91db-b5ba24b05a2f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad5b0b8d-02e8-4dea-91db-b5ba24b05a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyangkal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad5b0b8d-02e8-4dea-91db-b5ba24b05a2f', 'Menyangkal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad5b0b8d-02e8-4dea-91db-b5ba24b05a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menolak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad5b0b8d-02e8-4dea-91db-b5ba24b05a2f', 'Untuk Menolak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad5b0b8d-02e8-4dea-91db-b5ba24b05a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Deny'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad5b0b8d-02e8-4dea-91db-b5ba24b05a2f', 'To Deny', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ad5b0b8d-02e8-4dea-91db-b5ba24b05a2f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Negate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ad5b0b8d-02e8-4dea-91db-b5ba24b05a2f', 'To Negate', false, true);
  END IF;

  -- [VOCABULARY] 喋る (Level 35)
  UPDATE item_meanings SET meaning = 'Mengobrol', primary_meaning = true, accepted_answer = true WHERE id = '669bacc0-fc77-4f15-b8a9-b0e71598e4b4';
  UPDATE items SET slug = 'mengobrol' WHERE id = '7d065dc0-e514-49a3-a2e8-4d61a3d59a0e';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d065dc0-e514-49a3-a2e8-4d61a3d59a0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berbincang-bincang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d065dc0-e514-49a3-a2e8-4d61a3d59a0e', 'Berbincang-bincang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d065dc0-e514-49a3-a2e8-4d61a3d59a0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengobrol'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d065dc0-e514-49a3-a2e8-4d61a3d59a0e', 'Untuk Mengobrol', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d065dc0-e514-49a3-a2e8-4d61a3d59a0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Chat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d065dc0-e514-49a3-a2e8-4d61a3d59a0e', 'To Chat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d065dc0-e514-49a3-a2e8-4d61a3d59a0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Talk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d065dc0-e514-49a3-a2e8-4d61a3d59a0e', 'To Talk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7d065dc0-e514-49a3-a2e8-4d61a3d59a0e' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Berbicara'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7d065dc0-e514-49a3-a2e8-4d61a3d59a0e', 'Untuk Berbicara', false, true);
  END IF;

  -- [VOCABULARY] 宣言する (Level 35)
  UPDATE item_meanings SET meaning = 'Menyatakan', primary_meaning = true, accepted_answer = true WHERE id = 'cd9bb229-858b-451a-aad5-decdb798f407';
  UPDATE items SET slug = 'menyatakan' WHERE id = 'cb3d6c66-5fd7-4f60-bdbd-fb9a6d9d46cf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cb3d6c66-5fd7-4f60-bdbd-fb9a6d9d46cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memproklamasikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cb3d6c66-5fd7-4f60-bdbd-fb9a6d9d46cf', 'Memproklamasikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cb3d6c66-5fd7-4f60-bdbd-fb9a6d9d46cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memberitakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cb3d6c66-5fd7-4f60-bdbd-fb9a6d9d46cf', 'Untuk Memberitakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cb3d6c66-5fd7-4f60-bdbd-fb9a6d9d46cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Proclaim'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cb3d6c66-5fd7-4f60-bdbd-fb9a6d9d46cf', 'To Proclaim', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cb3d6c66-5fd7-4f60-bdbd-fb9a6d9d46cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Declare'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cb3d6c66-5fd7-4f60-bdbd-fb9a6d9d46cf', 'To Declare', false, true);
  END IF;

  -- [VOCABULARY] 寿命 (Level 35)
  UPDATE item_meanings SET meaning = 'Masa Hidup', primary_meaning = true, accepted_answer = true WHERE id = '8da230c6-2cc1-479c-88f1-26179be0b16a';
  UPDATE items SET slug = 'masa-hidup' WHERE id = 'b3bbc5a2-01e3-46c8-974d-675be1ad7369';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3bbc5a2-01e3-46c8-974d-675be1ad7369' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Umur Harapan Hidup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3bbc5a2-01e3-46c8-974d-675be1ad7369', 'Umur Harapan Hidup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3bbc5a2-01e3-46c8-974d-675be1ad7369' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Jangka hidup'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3bbc5a2-01e3-46c8-974d-675be1ad7369', 'Jangka hidup', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3bbc5a2-01e3-46c8-974d-675be1ad7369' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lifespan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3bbc5a2-01e3-46c8-974d-675be1ad7369', 'Lifespan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b3bbc5a2-01e3-46c8-974d-675be1ad7369' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Life Expectancy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b3bbc5a2-01e3-46c8-974d-675be1ad7369', 'Life Expectancy', false, true);
  END IF;

  -- [VOCABULARY] 尊敬する (Level 35)
  UPDATE item_meanings SET meaning = 'Menghormati', primary_meaning = true, accepted_answer = true WHERE id = 'a77ecc78-42a7-4b85-bf12-1b12992b0cf7';
  UPDATE items SET slug = 'menghormati' WHERE id = 'c3826141-e8e1-41bc-8b4b-48efd1908036';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3826141-e8e1-41bc-8b4b-48efd1908036' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menaruh Rasa Hormat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3826141-e8e1-41bc-8b4b-48efd1908036', 'Menaruh Rasa Hormat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3826141-e8e1-41bc-8b4b-48efd1908036' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghormati'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3826141-e8e1-41bc-8b4b-48efd1908036', 'Untuk Menghormati', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3826141-e8e1-41bc-8b4b-48efd1908036' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Respect'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3826141-e8e1-41bc-8b4b-48efd1908036', 'To Respect', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3826141-e8e1-41bc-8b4b-48efd1908036' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Honor'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3826141-e8e1-41bc-8b4b-48efd1908036', 'To Honor', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c3826141-e8e1-41bc-8b4b-48efd1908036' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Honour'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c3826141-e8e1-41bc-8b4b-48efd1908036', 'To Honour', false, true);
  END IF;

  -- [VOCABULARY] 彫刻 (Level 35)
  UPDATE item_meanings SET meaning = 'Seni Patung', primary_meaning = true, accepted_answer = true WHERE id = '10dc4c28-3e47-4882-964c-1b656304f415';
  UPDATE items SET slug = 'seni-patung' WHERE id = 'eeaef209-6b08-4e42-9c35-032b20a16345';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eeaef209-6b08-4e42-9c35-032b20a16345' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Seni Ukir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eeaef209-6b08-4e42-9c35-032b20a16345', 'Seni Ukir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eeaef209-6b08-4e42-9c35-032b20a16345' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Patung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eeaef209-6b08-4e42-9c35-032b20a16345', 'Patung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eeaef209-6b08-4e42-9c35-032b20a16345' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sculpture'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eeaef209-6b08-4e42-9c35-032b20a16345', 'Sculpture', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eeaef209-6b08-4e42-9c35-032b20a16345' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carving'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eeaef209-6b08-4e42-9c35-032b20a16345', 'Carving', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eeaef209-6b08-4e42-9c35-032b20a16345' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carve'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eeaef209-6b08-4e42-9c35-032b20a16345', 'Carve', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eeaef209-6b08-4e42-9c35-032b20a16345' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sculpturing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eeaef209-6b08-4e42-9c35-032b20a16345', 'Sculpturing', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eeaef209-6b08-4e42-9c35-032b20a16345' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Engrave'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eeaef209-6b08-4e42-9c35-032b20a16345', 'Engrave', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'eeaef209-6b08-4e42-9c35-032b20a16345' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Engraving'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('eeaef209-6b08-4e42-9c35-032b20a16345', 'Engraving', false, true);
  END IF;

  -- [VOCABULARY] 恥ずかしい (Level 35)
  UPDATE item_meanings SET meaning = 'Malu', primary_meaning = true, accepted_answer = true WHERE id = '7526f57b-8dcc-4bab-8b8c-a5e15d11ce5d';
  UPDATE items SET slug = 'malu' WHERE id = '81b34c2f-2535-466c-872c-74414ed83b75';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '81b34c2f-2535-466c-872c-74414ed83b75' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Merasa Canggung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('81b34c2f-2535-466c-872c-74414ed83b75', 'Merasa Canggung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '81b34c2f-2535-466c-872c-74414ed83b75' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memalukan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('81b34c2f-2535-466c-872c-74414ed83b75', 'Memalukan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '81b34c2f-2535-466c-872c-74414ed83b75' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('81b34c2f-2535-466c-872c-74414ed83b75', 'Shy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '81b34c2f-2535-466c-872c-74414ed83b75' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Embarrassed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('81b34c2f-2535-466c-872c-74414ed83b75', 'Embarrassed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '81b34c2f-2535-466c-872c-74414ed83b75' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ashamed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('81b34c2f-2535-466c-872c-74414ed83b75', 'Ashamed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '81b34c2f-2535-466c-872c-74414ed83b75' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Embarrassing'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('81b34c2f-2535-466c-872c-74414ed83b75', 'Embarrassing', false, true);
  END IF;

  -- [VOCABULARY] 捉える (Level 35)
  UPDATE item_meanings SET meaning = 'Menangkap', primary_meaning = true, accepted_answer = true WHERE id = '8cb43490-d7ff-4242-98d8-f1a84f0dbd78';
  UPDATE items SET slug = 'menangkap' WHERE id = 'b0ecbb76-f0c2-429f-824f-7a1a953707dd';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0ecbb76-f0c2-429f-824f-7a1a953707dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memahami Makna Esensi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0ecbb76-f0c2-429f-824f-7a1a953707dd', 'Memahami Makna Esensi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0ecbb76-f0c2-429f-824f-7a1a953707dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk dipahami'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0ecbb76-f0c2-429f-824f-7a1a953707dd', 'Untuk dipahami', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0ecbb76-f0c2-429f-824f-7a1a953707dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grasp'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0ecbb76-f0c2-429f-824f-7a1a953707dd', 'To Grasp', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0ecbb76-f0c2-429f-824f-7a1a953707dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Perceive'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0ecbb76-f0c2-429f-824f-7a1a953707dd', 'To Perceive', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0ecbb76-f0c2-429f-824f-7a1a953707dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Capture'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0ecbb76-f0c2-429f-824f-7a1a953707dd', 'To Capture', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0ecbb76-f0c2-429f-824f-7a1a953707dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Perceive As'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0ecbb76-f0c2-429f-824f-7a1a953707dd', 'To Perceive As', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0ecbb76-f0c2-429f-824f-7a1a953707dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memahami'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0ecbb76-f0c2-429f-824f-7a1a953707dd', 'Untuk Memahami', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0ecbb76-f0c2-429f-824f-7a1a953707dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Captivate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0ecbb76-f0c2-429f-824f-7a1a953707dd', 'To Captivate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'b0ecbb76-f0c2-429f-824f-7a1a953707dd' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memikat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('b0ecbb76-f0c2-429f-824f-7a1a953707dd', 'Untuk Memikat', false, true);
  END IF;

  -- [VOCABULARY] 推測 (Level 35)
  UPDATE item_meanings SET meaning = 'Dugaan', primary_meaning = true, accepted_answer = true WHERE id = '45282be9-6d98-46e9-bada-2ce25c508450';
  UPDATE items SET slug = 'dugaan' WHERE id = 'a83032d8-12fa-43a5-a625-f2e26f4b06f1';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a83032d8-12fa-43a5-a625-f2e26f4b06f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terkaan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a83032d8-12fa-43a5-a625-f2e26f4b06f1', 'Terkaan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a83032d8-12fa-43a5-a625-f2e26f4b06f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Spekulasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a83032d8-12fa-43a5-a625-f2e26f4b06f1', 'Spekulasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a83032d8-12fa-43a5-a625-f2e26f4b06f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Conjecture'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a83032d8-12fa-43a5-a625-f2e26f4b06f1', 'Conjecture', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a83032d8-12fa-43a5-a625-f2e26f4b06f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Guess'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a83032d8-12fa-43a5-a625-f2e26f4b06f1', 'Guess', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a83032d8-12fa-43a5-a625-f2e26f4b06f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inference'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a83032d8-12fa-43a5-a625-f2e26f4b06f1', 'Inference', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a83032d8-12fa-43a5-a625-f2e26f4b06f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Speculate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a83032d8-12fa-43a5-a625-f2e26f4b06f1', 'Speculate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a83032d8-12fa-43a5-a625-f2e26f4b06f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Speculation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a83032d8-12fa-43a5-a625-f2e26f4b06f1', 'Speculation', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a83032d8-12fa-43a5-a625-f2e26f4b06f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tebakan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a83032d8-12fa-43a5-a625-f2e26f4b06f1', 'Tebakan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'a83032d8-12fa-43a5-a625-f2e26f4b06f1' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Surmising'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('a83032d8-12fa-43a5-a625-f2e26f4b06f1', 'Surmising', false, true);
  END IF;

  -- [VOCABULARY] 暮れる (Level 35)
  UPDATE item_meanings SET meaning = 'Hari Menjadi Gelap', primary_meaning = true, accepted_answer = true WHERE id = 'a3bdcf11-7e96-4d74-a1d2-dc0dc368b9bb';
  UPDATE items SET slug = 'hari-menjadi-gelap' WHERE id = '3f753e46-24a7-4bed-857f-a8c4670da0e6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f753e46-24a7-4bed-857f-a8c4670da0e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tahun Berakhir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f753e46-24a7-4bed-857f-a8c4670da0e6', 'Tahun Berakhir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f753e46-24a7-4bed-857f-a8c4670da0e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Gelap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f753e46-24a7-4bed-857f-a8c4670da0e6', 'Menjadi Gelap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f753e46-24a7-4bed-857f-a8c4670da0e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Grow Dark'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f753e46-24a7-4bed-857f-a8c4670da0e6', 'To Grow Dark', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f753e46-24a7-4bed-857f-a8c4670da0e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To End'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f753e46-24a7-4bed-857f-a8c4670da0e6', 'To End', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f753e46-24a7-4bed-857f-a8c4670da0e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Lost'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f753e46-24a7-4bed-857f-a8c4670da0e6', 'To Be Lost', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f753e46-24a7-4bed-857f-a8c4670da0e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengakhiri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f753e46-24a7-4bed-857f-a8c4670da0e6', 'Untuk Mengakhiri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f753e46-24a7-4bed-857f-a8c4670da0e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Run Out'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f753e46-24a7-4bed-857f-a8c4670da0e6', 'To Run Out', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f753e46-24a7-4bed-857f-a8c4670da0e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Close'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f753e46-24a7-4bed-857f-a8c4670da0e6', 'To Close', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3f753e46-24a7-4bed-857f-a8c4670da0e6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Get Dark'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3f753e46-24a7-4bed-857f-a8c4670da0e6', 'To Get Dark', false, true);
  END IF;

  -- [VOCABULARY] 有意 (Level 35)
  UPDATE item_meanings SET meaning = 'Bermakna Penting', primary_meaning = true, accepted_answer = true WHERE id = '648f2d9d-5b88-46d5-acd3-07c372638478';
  UPDATE items SET slug = 'bermakna-penting' WHERE id = '47e21f78-4821-4c92-b0ed-7fe1d0839323';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47e21f78-4821-4c92-b0ed-7fe1d0839323' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Signifikan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47e21f78-4821-4c92-b0ed-7fe1d0839323', 'Signifikan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47e21f78-4821-4c92-b0ed-7fe1d0839323' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Makna'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47e21f78-4821-4c92-b0ed-7fe1d0839323', 'Makna', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47e21f78-4821-4c92-b0ed-7fe1d0839323' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Significant'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47e21f78-4821-4c92-b0ed-7fe1d0839323', 'Significant', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47e21f78-4821-4c92-b0ed-7fe1d0839323' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Meaningful'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47e21f78-4821-4c92-b0ed-7fe1d0839323', 'Meaningful', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47e21f78-4821-4c92-b0ed-7fe1d0839323' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Penting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47e21f78-4821-4c92-b0ed-7fe1d0839323', 'Penting', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '47e21f78-4821-4c92-b0ed-7fe1d0839323' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Significance'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('47e21f78-4821-4c92-b0ed-7fe1d0839323', 'Significance', false, true);
  END IF;

  -- [VOCABULARY] 油断 (Level 35)
  UPDATE item_meanings SET meaning = 'Lengah', primary_meaning = true, accepted_answer = true WHERE id = 'a7c25d19-32a1-40b4-b577-02d4ee060612';
  UPDATE items SET slug = 'lengah' WHERE id = '624da51c-96ec-44fb-90bb-cbe42e6beabb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '624da51c-96ec-44fb-90bb-cbe42e6beabb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kurang Waspada'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('624da51c-96ec-44fb-90bb-cbe42e6beabb', 'Kurang Waspada', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '624da51c-96ec-44fb-90bb-cbe42e6beabb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lalai'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('624da51c-96ec-44fb-90bb-cbe42e6beabb', 'Lalai', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '624da51c-96ec-44fb-90bb-cbe42e6beabb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kurangnya perhatian'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('624da51c-96ec-44fb-90bb-cbe42e6beabb', 'Kurangnya perhatian', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '624da51c-96ec-44fb-90bb-cbe42e6beabb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Carelessness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('624da51c-96ec-44fb-90bb-cbe42e6beabb', 'Carelessness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '624da51c-96ec-44fb-90bb-cbe42e6beabb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Off Guard'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('624da51c-96ec-44fb-90bb-cbe42e6beabb', 'Off Guard', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '624da51c-96ec-44fb-90bb-cbe42e6beabb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Being Off Guard'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('624da51c-96ec-44fb-90bb-cbe42e6beabb', 'Being Off Guard', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '624da51c-96ec-44fb-90bb-cbe42e6beabb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inattention'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('624da51c-96ec-44fb-90bb-cbe42e6beabb', 'Inattention', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '624da51c-96ec-44fb-90bb-cbe42e6beabb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Negligence'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('624da51c-96ec-44fb-90bb-cbe42e6beabb', 'Negligence', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '624da51c-96ec-44fb-90bb-cbe42e6beabb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Be Off Guard'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('624da51c-96ec-44fb-90bb-cbe42e6beabb', 'Be Off Guard', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '624da51c-96ec-44fb-90bb-cbe42e6beabb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Caught Off Guard'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('624da51c-96ec-44fb-90bb-cbe42e6beabb', 'Caught Off Guard', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '624da51c-96ec-44fb-90bb-cbe42e6beabb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Inattentiveness'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('624da51c-96ec-44fb-90bb-cbe42e6beabb', 'Inattentiveness', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '624da51c-96ec-44fb-90bb-cbe42e6beabb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Let Your Guard Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('624da51c-96ec-44fb-90bb-cbe42e6beabb', 'Let Your Guard Down', false, true);
  END IF;

  -- [VOCABULARY] 泥酔 (Level 35)
  UPDATE item_meanings SET meaning = 'Mabuk Berat', primary_meaning = true, accepted_answer = true WHERE id = 'f6b599db-b1c4-42a3-ab74-dcdcc606f487';
  UPDATE items SET slug = 'mabuk-berat' WHERE id = '401f1178-d4c5-4d3e-81d2-73fe3d27459b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '401f1178-d4c5-4d3e-81d2-73fe3d27459b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Teler Parah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('401f1178-d4c5-4d3e-81d2-73fe3d27459b', 'Teler Parah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '401f1178-d4c5-4d3e-81d2-73fe3d27459b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mati Mabuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('401f1178-d4c5-4d3e-81d2-73fe3d27459b', 'Mati Mabuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '401f1178-d4c5-4d3e-81d2-73fe3d27459b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Dead Drunk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('401f1178-d4c5-4d3e-81d2-73fe3d27459b', 'Dead Drunk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '401f1178-d4c5-4d3e-81d2-73fe3d27459b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Completely Drunk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('401f1178-d4c5-4d3e-81d2-73fe3d27459b', 'Completely Drunk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '401f1178-d4c5-4d3e-81d2-73fe3d27459b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Benar-benar Mabuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('401f1178-d4c5-4d3e-81d2-73fe3d27459b', 'Benar-benar Mabuk', false, true);
  END IF;

  -- [VOCABULARY] 測る (Level 35)
  UPDATE item_meanings SET meaning = 'Mengukur', primary_meaning = true, accepted_answer = true WHERE id = 'cc2e41b9-8d1d-4d66-8393-6ae1eed258d3';
  UPDATE items SET slug = 'mengukur' WHERE id = '0ec68eed-2823-41de-9cb6-804d260aed72';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ec68eed-2823-41de-9cb6-804d260aed72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menakar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ec68eed-2823-41de-9cb6-804d260aed72', 'Menakar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ec68eed-2823-41de-9cb6-804d260aed72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghitung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ec68eed-2823-41de-9cb6-804d260aed72', 'Menghitung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ec68eed-2823-41de-9cb6-804d260aed72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Measure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ec68eed-2823-41de-9cb6-804d260aed72', 'To Measure', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ec68eed-2823-41de-9cb6-804d260aed72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengukur (Panjang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ec68eed-2823-41de-9cb6-804d260aed72', 'Mengukur (Panjang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ec68eed-2823-41de-9cb6-804d260aed72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kedalaman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ec68eed-2823-41de-9cb6-804d260aed72', 'Kedalaman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ec68eed-2823-41de-9cb6-804d260aed72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Waktu)'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ec68eed-2823-41de-9cb6-804d260aed72', 'Waktu)', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ec68eed-2823-41de-9cb6-804d260aed72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengukur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ec68eed-2823-41de-9cb6-804d260aed72', 'Untuk Mengukur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ec68eed-2823-41de-9cb6-804d260aed72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mengukur Secara Ilmiah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ec68eed-2823-41de-9cb6-804d260aed72', 'Untuk Mengukur Secara Ilmiah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '0ec68eed-2823-41de-9cb6-804d260aed72' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Measure Scientifically'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('0ec68eed-2823-41de-9cb6-804d260aed72', 'To Measure Scientifically', false, true);
  END IF;

  -- [VOCABULARY] 滞る (Level 35)
  UPDATE item_meanings SET meaning = 'Tersendat', primary_meaning = true, accepted_answer = true WHERE id = '3d690de1-a985-430b-8ab1-2dea47073fc8';
  UPDATE items SET slug = 'tersendat' WHERE id = 'f31f8aab-7265-485c-8979-b4a8e2a868cb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f31f8aab-7265-485c-8979-b4a8e2a868cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mandek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f31f8aab-7265-485c-8979-b4a8e2a868cb', 'Mandek', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f31f8aab-7265-485c-8979-b4a8e2a868cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tertunggak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f31f8aab-7265-485c-8979-b4a8e2a868cb', 'Tertunggak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f31f8aab-7265-485c-8979-b4a8e2a868cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Terlambat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f31f8aab-7265-485c-8979-b4a8e2a868cb', 'Terlambat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f31f8aab-7265-485c-8979-b4a8e2a868cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stagnate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f31f8aab-7265-485c-8979-b4a8e2a868cb', 'To Stagnate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f31f8aab-7265-485c-8979-b4a8e2a868cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Delayed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f31f8aab-7265-485c-8979-b4a8e2a868cb', 'To Be Delayed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f31f8aab-7265-485c-8979-b4a8e2a868cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Behind'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f31f8aab-7265-485c-8979-b4a8e2a868cb', 'To Be Behind', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f31f8aab-7265-485c-8979-b4a8e2a868cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Akan Tertunda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f31f8aab-7265-485c-8979-b4a8e2a868cb', 'Akan Tertunda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'f31f8aab-7265-485c-8979-b4a8e2a868cb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Overdue'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('f31f8aab-7265-485c-8979-b4a8e2a868cb', 'To Be Overdue', false, true);
  END IF;

  -- [VOCABULARY] 漠然 (Level 35)
  UPDATE item_meanings SET meaning = 'Samar-samar', primary_meaning = true, accepted_answer = true WHERE id = '03379e0e-5ae5-459c-8c5e-40cde33862cf';
  UPDATE items SET slug = 'samar-samar' WHERE id = 'ea7668c8-a9e0-4b0b-9016-cef40b06c05a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea7668c8-a9e0-4b0b-9016-cef40b06c05a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Tidak Jelas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea7668c8-a9e0-4b0b-9016-cef40b06c05a', 'Tidak Jelas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea7668c8-a9e0-4b0b-9016-cef40b06c05a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengambang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea7668c8-a9e0-4b0b-9016-cef40b06c05a', 'Mengambang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea7668c8-a9e0-4b0b-9016-cef40b06c05a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Vague'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea7668c8-a9e0-4b0b-9016-cef40b06c05a', 'Vague', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ea7668c8-a9e0-4b0b-9016-cef40b06c05a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Obscure'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ea7668c8-a9e0-4b0b-9016-cef40b06c05a', 'Obscure', false, true);
  END IF;

  -- [VOCABULARY] 潰す (Level 35)
  UPDATE item_meanings SET meaning = 'Meremukkan', primary_meaning = true, accepted_answer = true WHERE id = 'e6f41adf-84bb-4ea6-8a74-98cf75eef564';
  UPDATE items SET slug = 'meremukkan' WHERE id = '14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menghancurkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a', 'Menghancurkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Membuang Waktu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a', 'Membuang Waktu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghancurkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a', 'Untuk Menghancurkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Crush'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a', 'To Crush', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Smash'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a', 'To Smash', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Squash'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a', 'To Squash', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Flatten Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a', 'To Flatten Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Ruin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a', 'To Ruin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Smash Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a', 'To Smash Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Squash Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a', 'To Squash Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Ruin Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('14e35cee-a6b3-46a4-9f70-8b7b04d8fd3a', 'To Ruin Something', false, true);
  END IF;

  -- [VOCABULARY] 為に (Level 35)
  UPDATE item_meanings SET meaning = 'Demi', primary_meaning = true, accepted_answer = true WHERE id = 'ae4a6c7d-9cc2-4b98-93c3-8bb5cb431d3b';
  UPDATE items SET slug = 'demi' WHERE id = '7993c3ed-221c-43b3-89ad-e76a3062002b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7993c3ed-221c-43b3-89ad-e76a3062002b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Keperluan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7993c3ed-221c-43b3-89ad-e76a3062002b', 'Untuk Keperluan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7993c3ed-221c-43b3-89ad-e76a3062002b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Karena'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7993c3ed-221c-43b3-89ad-e76a3062002b', 'Karena', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7993c3ed-221c-43b3-89ad-e76a3062002b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('For The Sake Of'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7993c3ed-221c-43b3-89ad-e76a3062002b', 'For The Sake Of', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7993c3ed-221c-43b3-89ad-e76a3062002b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('In Order To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7993c3ed-221c-43b3-89ad-e76a3062002b', 'In Order To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7993c3ed-221c-43b3-89ad-e76a3062002b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Due To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7993c3ed-221c-43b3-89ad-e76a3062002b', 'Due To', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7993c3ed-221c-43b3-89ad-e76a3062002b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7993c3ed-221c-43b3-89ad-e76a3062002b', 'Untuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7993c3ed-221c-43b3-89ad-e76a3062002b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('For'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7993c3ed-221c-43b3-89ad-e76a3062002b', 'For', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '7993c3ed-221c-43b3-89ad-e76a3062002b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('7993c3ed-221c-43b3-89ad-e76a3062002b', 'To', false, true);
  END IF;

  -- [VOCABULARY] 蒸し暑い (Level 35)
  UPDATE item_meanings SET meaning = 'Panas Lembap', primary_meaning = true, accepted_answer = true WHERE id = 'ebd6df66-d665-4022-9223-17001e11f1f5';
  UPDATE items SET slug = 'panas-lembap' WHERE id = 'cbb767dd-5860-4250-a9e2-f460955c04cf';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cbb767dd-5860-4250-a9e2-f460955c04cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Gerah Pengap'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cbb767dd-5860-4250-a9e2-f460955c04cf', 'Gerah Pengap', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cbb767dd-5860-4250-a9e2-f460955c04cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Panas dan Lembab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cbb767dd-5860-4250-a9e2-f460955c04cf', 'Panas dan Lembab', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cbb767dd-5860-4250-a9e2-f460955c04cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Hot And Humid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cbb767dd-5860-4250-a9e2-f460955c04cf', 'Hot And Humid', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cbb767dd-5860-4250-a9e2-f460955c04cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sultry'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cbb767dd-5860-4250-a9e2-f460955c04cf', 'Sultry', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cbb767dd-5860-4250-a9e2-f460955c04cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Humid and Hot'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cbb767dd-5860-4250-a9e2-f460955c04cf', 'Humid and Hot', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cbb767dd-5860-4250-a9e2-f460955c04cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lembab'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cbb767dd-5860-4250-a9e2-f460955c04cf', 'Lembab', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cbb767dd-5860-4250-a9e2-f460955c04cf' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Humid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cbb767dd-5860-4250-a9e2-f460955c04cf', 'Humid', false, true);
  END IF;

  -- [VOCABULARY] 蒸し返す (Level 35)
  UPDATE item_meanings SET meaning = 'Mengungkit-ungkit Kembali', primary_meaning = true, accepted_answer = true WHERE id = '83a2865c-68b0-447b-ad04-6a72920adc87';
  UPDATE items SET slug = 'mengungkit-ungkit-kembali' WHERE id = 'bb5e7833-aaee-4c96-9a1d-df8eb0373b82';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb5e7833-aaee-4c96-9a1d-df8eb0373b82' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memanaskan Lagi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb5e7833-aaee-4c96-9a1d-df8eb0373b82', 'Memanaskan Lagi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb5e7833-aaee-4c96-9a1d-df8eb0373b82' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk mengulangi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb5e7833-aaee-4c96-9a1d-df8eb0373b82', 'Untuk mengulangi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb5e7833-aaee-4c96-9a1d-df8eb0373b82' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Rehash'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb5e7833-aaee-4c96-9a1d-df8eb0373b82', 'To Rehash', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb5e7833-aaee-4c96-9a1d-df8eb0373b82' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Bring Up Again'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb5e7833-aaee-4c96-9a1d-df8eb0373b82', 'To Bring Up Again', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb5e7833-aaee-4c96-9a1d-df8eb0373b82' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memunculkan Lagi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb5e7833-aaee-4c96-9a1d-df8eb0373b82', 'Untuk Memunculkan Lagi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb5e7833-aaee-4c96-9a1d-df8eb0373b82' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Memanaskan Kembali'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb5e7833-aaee-4c96-9a1d-df8eb0373b82', 'Untuk Memanaskan Kembali', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb5e7833-aaee-4c96-9a1d-df8eb0373b82' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Reheat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb5e7833-aaee-4c96-9a1d-df8eb0373b82', 'To Reheat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb5e7833-aaee-4c96-9a1d-df8eb0373b82' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Drag Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb5e7833-aaee-4c96-9a1d-df8eb0373b82', 'To Drag Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'bb5e7833-aaee-4c96-9a1d-df8eb0373b82' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Re-Steam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('bb5e7833-aaee-4c96-9a1d-df8eb0373b82', 'To Re-Steam', false, true);
  END IF;

  -- [VOCABULARY] 盛り上げる (Level 35)
  UPDATE item_meanings SET meaning = 'Menyemarakkan', primary_meaning = true, accepted_answer = true WHERE id = '58fc6b43-e514-45c5-be41-f81b0556f0bb';
  UPDATE items SET slug = 'menyemarakkan' WHERE id = '2be3fef5-48fd-4d13-9a12-e578f097ed48';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be3fef5-48fd-4d13-9a12-e578f097ed48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menumpuk Tinggi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be3fef5-48fd-4d13-9a12-e578f097ed48', 'Menumpuk Tinggi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be3fef5-48fd-4d13-9a12-e578f097ed48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menumpuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be3fef5-48fd-4d13-9a12-e578f097ed48', 'Untuk Menumpuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be3fef5-48fd-4d13-9a12-e578f097ed48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Liven Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be3fef5-48fd-4d13-9a12-e578f097ed48', 'To Liven Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be3fef5-48fd-4d13-9a12-e578f097ed48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Stir Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be3fef5-48fd-4d13-9a12-e578f097ed48', 'To Stir Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be3fef5-48fd-4d13-9a12-e578f097ed48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pile Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be3fef5-48fd-4d13-9a12-e578f097ed48', 'To Pile Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be3fef5-48fd-4d13-9a12-e578f097ed48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menggerakkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be3fef5-48fd-4d13-9a12-e578f097ed48', 'Untuk Menggerakkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be3fef5-48fd-4d13-9a12-e578f097ed48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Heap Up'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be3fef5-48fd-4d13-9a12-e578f097ed48', 'To Heap Up', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '2be3fef5-48fd-4d13-9a12-e578f097ed48' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghidupkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('2be3fef5-48fd-4d13-9a12-e578f097ed48', 'Untuk Menghidupkan', false, true);
  END IF;

  -- [VOCABULARY] 真剣 (Level 35)
  UPDATE item_meanings SET meaning = 'Sungguh-sungguh', primary_meaning = true, accepted_answer = true WHERE id = '682270eb-4cba-4012-89eb-d3c9affc83d8';
  UPDATE items SET slug = 'sungguh-sungguh' WHERE id = '10a544b5-eab9-4199-ae86-cd241c3c46f6';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10a544b5-eab9-4199-ae86-cd241c3c46f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Sangat Serius'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10a544b5-eab9-4199-ae86-cd241c3c46f6', 'Sangat Serius', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10a544b5-eab9-4199-ae86-cd241c3c46f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serius'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10a544b5-eab9-4199-ae86-cd241c3c46f6', 'Serius', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10a544b5-eab9-4199-ae86-cd241c3c46f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Serious'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10a544b5-eab9-4199-ae86-cd241c3c46f6', 'Serious', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '10a544b5-eab9-4199-ae86-cd241c3c46f6' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Earnest'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('10a544b5-eab9-4199-ae86-cd241c3c46f6', 'Earnest', false, true);
  END IF;

  -- [VOCABULARY] 破る (Level 35)
  UPDATE item_meanings SET meaning = 'Merobek', primary_meaning = true, accepted_answer = true WHERE id = '43e414de-d22f-46f9-bbce-111ebad71068';
  UPDATE items SET slug = 'merobek' WHERE id = 'c85589b6-4af8-4cd2-baa8-0be184f02da4';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c85589b6-4af8-4cd2-baa8-0be184f02da4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Memecahkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c85589b6-4af8-4cd2-baa8-0be184f02da4', 'Memecahkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c85589b6-4af8-4cd2-baa8-0be184f02da4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengingkari'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c85589b6-4af8-4cd2-baa8-0be184f02da4', 'Mengingkari', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c85589b6-4af8-4cd2-baa8-0be184f02da4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Tear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c85589b6-4af8-4cd2-baa8-0be184f02da4', 'To Tear', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c85589b6-4af8-4cd2-baa8-0be184f02da4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Break'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c85589b6-4af8-4cd2-baa8-0be184f02da4', 'To Break', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c85589b6-4af8-4cd2-baa8-0be184f02da4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Rip'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c85589b6-4af8-4cd2-baa8-0be184f02da4', 'To Rip', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c85589b6-4af8-4cd2-baa8-0be184f02da4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Istirahat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c85589b6-4af8-4cd2-baa8-0be184f02da4', 'Untuk Istirahat', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c85589b6-4af8-4cd2-baa8-0be184f02da4' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Merobek'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c85589b6-4af8-4cd2-baa8-0be184f02da4', 'Untuk Merobek', false, true);
  END IF;

  -- [VOCABULARY] 破船 (Level 35)
  UPDATE item_meanings SET meaning = 'Karam Kapal', primary_meaning = true, accepted_answer = true WHERE id = 'aded28a1-fa9e-424b-8a8d-a960fe0aec2d';
  UPDATE items SET slug = 'karam-kapal' WHERE id = '35d2f9b7-1fe5-4bd8-8ab1-05c57ba50370';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35d2f9b7-1fe5-4bd8-8ab1-05c57ba50370' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bangkai Kapal Karam'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35d2f9b7-1fe5-4bd8-8ab1-05c57ba50370', 'Bangkai Kapal Karam', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35d2f9b7-1fe5-4bd8-8ab1-05c57ba50370' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kecelakaan kapal'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35d2f9b7-1fe5-4bd8-8ab1-05c57ba50370', 'Kecelakaan kapal', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '35d2f9b7-1fe5-4bd8-8ab1-05c57ba50370' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Shipwreck'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('35d2f9b7-1fe5-4bd8-8ab1-05c57ba50370', 'Shipwreck', false, true);
  END IF;

  -- [VOCABULARY] 算定する (Level 35)
  UPDATE item_meanings SET meaning = 'Menghitung Taksiran', primary_meaning = true, accepted_answer = true WHERE id = '74c9a420-a40b-4b22-a043-8debe2e7255b';
  UPDATE items SET slug = 'menghitung-taksiran' WHERE id = '82235f44-88cb-4afc-a4a5-29722b9f75b3';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82235f44-88cb-4afc-a4a5-29722b9f75b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mengkalkulasi'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82235f44-88cb-4afc-a4a5-29722b9f75b3', 'Mengkalkulasi', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82235f44-88cb-4afc-a4a5-29722b9f75b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menghitung'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82235f44-88cb-4afc-a4a5-29722b9f75b3', 'Untuk Menghitung', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82235f44-88cb-4afc-a4a5-29722b9f75b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Calculate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82235f44-88cb-4afc-a4a5-29722b9f75b3', 'To Calculate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82235f44-88cb-4afc-a4a5-29722b9f75b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Estimate'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82235f44-88cb-4afc-a4a5-29722b9f75b3', 'To Estimate', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '82235f44-88cb-4afc-a4a5-29722b9f75b3' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Appraise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('82235f44-88cb-4afc-a4a5-29722b9f75b3', 'To Appraise', false, true);
  END IF;

  -- [VOCABULARY] 納まる (Level 35)
  UPDATE item_meanings SET meaning = 'Pas Tertampung', primary_meaning = true, accepted_answer = true WHERE id = '594f4939-871f-48d7-ae89-e5bc781001fa';
  UPDATE items SET slug = 'pas-tertampung' WHERE id = '3fc22395-7736-4b38-94e6-0adeed27a98f';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3fc22395-7736-4b38-94e6-0adeed27a98f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mereda Masuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3fc22395-7736-4b38-94e6-0adeed27a98f', 'Mereda Masuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3fc22395-7736-4b38-94e6-0adeed27a98f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menyelesaikannya'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3fc22395-7736-4b38-94e6-0adeed27a98f', 'Untuk Menyelesaikannya', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3fc22395-7736-4b38-94e6-0adeed27a98f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Settle Down'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3fc22395-7736-4b38-94e6-0adeed27a98f', 'To Settle Down', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3fc22395-7736-4b38-94e6-0adeed27a98f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Fit Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3fc22395-7736-4b38-94e6-0adeed27a98f', 'To Fit Into', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3fc22395-7736-4b38-94e6-0adeed27a98f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Happy'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3fc22395-7736-4b38-94e6-0adeed27a98f', 'To Be Happy', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3fc22395-7736-4b38-94e6-0adeed27a98f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Agar Puas'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3fc22395-7736-4b38-94e6-0adeed27a98f', 'Agar Puas', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3fc22395-7736-4b38-94e6-0adeed27a98f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Settle Into'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3fc22395-7736-4b38-94e6-0adeed27a98f', 'To Settle Into', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3fc22395-7736-4b38-94e6-0adeed27a98f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Satisfied'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3fc22395-7736-4b38-94e6-0adeed27a98f', 'To Be Satisfied', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '3fc22395-7736-4b38-94e6-0adeed27a98f' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Paid'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('3fc22395-7736-4b38-94e6-0adeed27a98f', 'To Be Paid', false, true);
  END IF;

  -- [VOCABULARY] 納得 (Level 35)
  UPDATE item_meanings SET meaning = 'Paham Menerima', primary_meaning = true, accepted_answer = true WHERE id = '21ef680c-931e-43f3-b1a7-4cb31f5c836f';
  UPDATE items SET slug = 'paham-menerima' WHERE id = 'e83604b0-a8ac-4181-b384-912aa9957bee';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e83604b0-a8ac-4181-b384-912aa9957bee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Teryakinkan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e83604b0-a8ac-4181-b384-912aa9957bee', 'Teryakinkan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e83604b0-a8ac-4181-b384-912aa9957bee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Yakin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e83604b0-a8ac-4181-b384-912aa9957bee', 'Menjadi Yakin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e83604b0-a8ac-4181-b384-912aa9957bee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Consent'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e83604b0-a8ac-4181-b384-912aa9957bee', 'Consent', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e83604b0-a8ac-4181-b384-912aa9957bee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Understanding'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e83604b0-a8ac-4181-b384-912aa9957bee', 'Understanding', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e83604b0-a8ac-4181-b384-912aa9957bee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Convinced'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e83604b0-a8ac-4181-b384-912aa9957bee', 'Convinced', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e83604b0-a8ac-4181-b384-912aa9957bee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Izin'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e83604b0-a8ac-4181-b384-912aa9957bee', 'Izin', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e83604b0-a8ac-4181-b384-912aa9957bee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Satisfaction'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e83604b0-a8ac-4181-b384-912aa9957bee', 'Satisfaction', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e83604b0-a8ac-4181-b384-912aa9957bee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Being Persuaded'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e83604b0-a8ac-4181-b384-912aa9957bee', 'Being Persuaded', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e83604b0-a8ac-4181-b384-912aa9957bee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Be Persuaded'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e83604b0-a8ac-4181-b384-912aa9957bee', 'Be Persuaded', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e83604b0-a8ac-4181-b384-912aa9957bee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Being Convinced'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e83604b0-a8ac-4181-b384-912aa9957bee', 'Being Convinced', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e83604b0-a8ac-4181-b384-912aa9957bee' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Accepting'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e83604b0-a8ac-4181-b384-912aa9957bee', 'Accepting', false, true);
  END IF;

  -- [VOCABULARY] 素人 (Level 35)
  UPDATE item_meanings SET meaning = 'Orang Awam', primary_meaning = true, accepted_answer = true WHERE id = 'c6271d10-667c-4cbe-90e8-6b575b0d67b5';
  UPDATE items SET slug = 'orang-awam' WHERE id = 'e5091dff-a663-40ba-8b6e-5331f0ce71f0';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5091dff-a663-40ba-8b6e-5331f0ce71f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Pemula'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5091dff-a663-40ba-8b6e-5331f0ce71f0', 'Pemula', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5091dff-a663-40ba-8b6e-5331f0ce71f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Amatir'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5091dff-a663-40ba-8b6e-5331f0ce71f0', 'Amatir', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5091dff-a663-40ba-8b6e-5331f0ce71f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Amateur'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5091dff-a663-40ba-8b6e-5331f0ce71f0', 'Amateur', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5091dff-a663-40ba-8b6e-5331f0ce71f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Novice'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5091dff-a663-40ba-8b6e-5331f0ce71f0', 'Novice', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5091dff-a663-40ba-8b6e-5331f0ce71f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Layman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5091dff-a663-40ba-8b6e-5331f0ce71f0', 'Layman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5091dff-a663-40ba-8b6e-5331f0ce71f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Beginner'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5091dff-a663-40ba-8b6e-5331f0ce71f0', 'Beginner', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'e5091dff-a663-40ba-8b6e-5331f0ce71f0' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ordinary Person'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('e5091dff-a663-40ba-8b6e-5331f0ce71f0', 'Ordinary Person', false, true);
  END IF;

  -- [VOCABULARY] 行為 (Level 35)
  UPDATE item_meanings SET meaning = 'Tindakan', primary_meaning = true, accepted_answer = true WHERE id = '047d6972-eee0-488b-a65d-fd7aaec1a567';
  UPDATE items SET slug = 'tindakan' WHERE id = '1e320e23-6405-4710-a8c1-90203964d7ad';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e320e23-6405-4710-a8c1-90203964d7ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perbuatan Nyata'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e320e23-6405-4710-a8c1-90203964d7ad', 'Perbuatan Nyata', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e320e23-6405-4710-a8c1-90203964d7ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Akta'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e320e23-6405-4710-a8c1-90203964d7ad', 'Akta', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e320e23-6405-4710-a8c1-90203964d7ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Act'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e320e23-6405-4710-a8c1-90203964d7ad', 'Act', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e320e23-6405-4710-a8c1-90203964d7ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Deed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e320e23-6405-4710-a8c1-90203964d7ad', 'Deed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e320e23-6405-4710-a8c1-90203964d7ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Action'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e320e23-6405-4710-a8c1-90203964d7ad', 'Action', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e320e23-6405-4710-a8c1-90203964d7ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Conduct'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e320e23-6405-4710-a8c1-90203964d7ad', 'Conduct', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e320e23-6405-4710-a8c1-90203964d7ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Bertindak'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e320e23-6405-4710-a8c1-90203964d7ad', 'Bertindak', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e320e23-6405-4710-a8c1-90203964d7ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Perilaku'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e320e23-6405-4710-a8c1-90203964d7ad', 'Perilaku', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1e320e23-6405-4710-a8c1-90203964d7ad' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Behavior'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1e320e23-6405-4710-a8c1-90203964d7ad', 'Behavior', false, true);
  END IF;

  -- [VOCABULARY] 装う (Level 35)
  UPDATE item_meanings SET meaning = 'Berpura-pura', primary_meaning = true, accepted_answer = true WHERE id = 'e63222de-a73e-4c26-aed5-d8497333410e';
  UPDATE items SET slug = 'berpura-pura' WHERE id = 'cf7522a5-1898-4427-97d7-887a1535463b';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf7522a5-1898-4427-97d7-887a1535463b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menyamarkan Diri'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf7522a5-1898-4427-97d7-887a1535463b', 'Menyamarkan Diri', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf7522a5-1898-4427-97d7-887a1535463b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Berpura-pura'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf7522a5-1898-4427-97d7-887a1535463b', 'Untuk Berpura-pura', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf7522a5-1898-4427-97d7-887a1535463b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Pretend'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf7522a5-1898-4427-97d7-887a1535463b', 'To Pretend', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf7522a5-1898-4427-97d7-887a1535463b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Disguise'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf7522a5-1898-4427-97d7-887a1535463b', 'To Disguise', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf7522a5-1898-4427-97d7-887a1535463b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Dressed In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf7522a5-1898-4427-97d7-887a1535463b', 'To Be Dressed In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf7522a5-1898-4427-97d7-887a1535463b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Attired In'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf7522a5-1898-4427-97d7-887a1535463b', 'To Be Attired In', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf7522a5-1898-4427-97d7-887a1535463b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Attired'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf7522a5-1898-4427-97d7-887a1535463b', 'To Be Attired', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf7522a5-1898-4427-97d7-887a1535463b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Dressed'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf7522a5-1898-4427-97d7-887a1535463b', 'To Be Dressed', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf7522a5-1898-4427-97d7-887a1535463b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Attire Oneself'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf7522a5-1898-4427-97d7-887a1535463b', 'To Attire Oneself', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf7522a5-1898-4427-97d7-887a1535463b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Feign'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf7522a5-1898-4427-97d7-887a1535463b', 'To Feign', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'cf7522a5-1898-4427-97d7-887a1535463b' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Wear'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('cf7522a5-1898-4427-97d7-887a1535463b', 'To Wear', false, true);
  END IF;

  -- [VOCABULARY] 講演 (Level 35)
  UPDATE item_meanings SET meaning = 'Ceramah Umum', primary_meaning = true, accepted_answer = true WHERE id = '5c89bcb9-0e7a-40df-b100-20f8e6bf7dfc';
  UPDATE items SET slug = 'ceramah-umum' WHERE id = 'ecf57e55-038b-4ac0-bd05-745d48b518eb';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecf57e55-038b-4ac0-bd05-745d48b518eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kuliah Akbar'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecf57e55-038b-4ac0-bd05-745d48b518eb', 'Kuliah Akbar', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecf57e55-038b-4ac0-bd05-745d48b518eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kuliah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecf57e55-038b-4ac0-bd05-745d48b518eb', 'Kuliah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecf57e55-038b-4ac0-bd05-745d48b518eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lecture'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecf57e55-038b-4ac0-bd05-745d48b518eb', 'Lecture', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecf57e55-038b-4ac0-bd05-745d48b518eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Address'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecf57e55-038b-4ac0-bd05-745d48b518eb', 'Address', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'ecf57e55-038b-4ac0-bd05-745d48b518eb' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Alamat'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('ecf57e55-038b-4ac0-bd05-745d48b518eb', 'Alamat', false, true);
  END IF;

  -- [VOCABULARY] 講義 (Level 35)
  UPDATE item_meanings SET meaning = 'Perkuliahan Akademik', primary_meaning = true, accepted_answer = true WHERE id = '4aad1240-afb7-4ace-bd65-97f059792647';
  UPDATE items SET slug = 'perkuliahan-akademik' WHERE id = 'c2f67063-b557-4b3b-81cd-858acf6ee563';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c2f67063-b557-4b3b-81cd-858acf6ee563' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kuliah'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c2f67063-b557-4b3b-81cd-858acf6ee563', 'Kuliah', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c2f67063-b557-4b3b-81cd-858acf6ee563' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Lecture'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c2f67063-b557-4b3b-81cd-858acf6ee563', 'Lecture', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'c2f67063-b557-4b3b-81cd-858acf6ee563' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Class'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('c2f67063-b557-4b3b-81cd-858acf6ee563', 'Class', false, true);
  END IF;

  -- [VOCABULARY] 遅れる (Level 35)
  UPDATE item_meanings SET meaning = 'Terlambat', primary_meaning = true, accepted_answer = true WHERE id = '5a7ff081-dda9-48be-b215-7181af167b64';
  UPDATE items SET slug = 'terlambat' WHERE id = '1eaa2aa4-e6bb-445d-8c47-73a2204a5223';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1eaa2aa4-e6bb-445d-8c47-73a2204a5223' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Ketinggalan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1eaa2aa4-e6bb-445d-8c47-73a2204a5223', 'Ketinggalan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '1eaa2aa4-e6bb-445d-8c47-73a2204a5223' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Late'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('1eaa2aa4-e6bb-445d-8c47-73a2204a5223', 'To Be Late', false, true);
  END IF;

  -- [VOCABULARY] 遅延 (Level 35)
  UPDATE item_meanings SET meaning = 'Penundaan', primary_meaning = true, accepted_answer = true WHERE id = '61246907-a694-463e-a0c0-4ce49bb2c7ac';
  UPDATE items SET slug = 'penundaan' WHERE id = 'efda4ca7-7151-4ad8-9a27-856d271a470d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efda4ca7-7151-4ad8-9a27-856d271a470d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Delay Waktu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efda4ca7-7151-4ad8-9a27-856d271a470d', 'Delay Waktu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efda4ca7-7151-4ad8-9a27-856d271a470d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menunda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efda4ca7-7151-4ad8-9a27-856d271a470d', 'Menunda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'efda4ca7-7151-4ad8-9a27-856d271a470d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Delay'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('efda4ca7-7151-4ad8-9a27-856d271a470d', 'Delay', false, true);
  END IF;

  -- [VOCABULARY] 遅滞 (Level 35)
  UPDATE item_meanings SET meaning = 'Keterlambatan', primary_meaning = true, accepted_answer = true WHERE id = '4c68a088-8dc6-4034-9e10-652131030d50';
  UPDATE items SET slug = 'keterlambatan' WHERE id = '15a74db9-8e54-44bc-9d7d-d9f752b4329d';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '15a74db9-8e54-44bc-9d7d-d9f752b4329d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Kemandekan Urusan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('15a74db9-8e54-44bc-9d7d-d9f752b4329d', 'Kemandekan Urusan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '15a74db9-8e54-44bc-9d7d-d9f752b4329d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menunda'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('15a74db9-8e54-44bc-9d7d-d9f752b4329d', 'Menunda', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '15a74db9-8e54-44bc-9d7d-d9f752b4329d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Delay'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('15a74db9-8e54-44bc-9d7d-d9f752b4329d', 'Delay', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '15a74db9-8e54-44bc-9d7d-d9f752b4329d' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Stagnation'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('15a74db9-8e54-44bc-9d7d-d9f752b4329d', 'Stagnation', false, true);
  END IF;

  -- [VOCABULARY] 酔う (Level 35)
  UPDATE item_meanings SET meaning = 'Mabuk Alkohol', primary_meaning = true, accepted_answer = true WHERE id = '4e2dc7cb-f4cc-456d-8bdc-35a7081ae3e0';
  UPDATE items SET slug = 'mabuk-alkohol' WHERE id = 'dfbd365f-6bdf-426f-9b8f-14792b2e2f59';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dfbd365f-6bdf-426f-9b8f-14792b2e2f59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Mabuk Kendaraan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dfbd365f-6bdf-426f-9b8f-14792b2e2f59', 'Mabuk Kendaraan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dfbd365f-6bdf-426f-9b8f-14792b2e2f59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi Mabuk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dfbd365f-6bdf-426f-9b8f-14792b2e2f59', 'Menjadi Mabuk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dfbd365f-6bdf-426f-9b8f-14792b2e2f59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Drunk'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dfbd365f-6bdf-426f-9b8f-14792b2e2f59', 'To Be Drunk', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dfbd365f-6bdf-426f-9b8f-14792b2e2f59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Carsick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dfbd365f-6bdf-426f-9b8f-14792b2e2f59', 'To Be Carsick', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dfbd365f-6bdf-426f-9b8f-14792b2e2f59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi mabuk laut'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dfbd365f-6bdf-426f-9b8f-14792b2e2f59', 'Menjadi mabuk laut', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dfbd365f-6bdf-426f-9b8f-14792b2e2f59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Menjadi mabuk kendaraan'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dfbd365f-6bdf-426f-9b8f-14792b2e2f59', 'Menjadi mabuk kendaraan', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dfbd365f-6bdf-426f-9b8f-14792b2e2f59' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be Seasick'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dfbd365f-6bdf-426f-9b8f-14792b2e2f59', 'To Be Seasick', false, true);
  END IF;

  -- [VOCABULARY] 鑑みる (Level 35)
  UPDATE item_meanings SET meaning = 'Mempertimbangkan', primary_meaning = true, accepted_answer = true WHERE id = '610acc9a-5b6b-4ea1-8b90-a06e7989a66f';
  UPDATE items SET slug = 'mempertimbangkan' WHERE id = 'dd046097-2a9e-4464-8f3e-f855245310aa';
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd046097-2a9e-4464-8f3e-f855245310aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Berkaca pada Pengalaman'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd046097-2a9e-4464-8f3e-f855245310aa', 'Berkaca pada Pengalaman', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd046097-2a9e-4464-8f3e-f855245310aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Mempertimbangkan Sesuatu'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd046097-2a9e-4464-8f3e-f855245310aa', 'Untuk Mempertimbangkan Sesuatu', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd046097-2a9e-4464-8f3e-f855245310aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Into Account'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd046097-2a9e-4464-8f3e-f855245310aa', 'To Take Into Account', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd046097-2a9e-4464-8f3e-f855245310aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Consider'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd046097-2a9e-4464-8f3e-f855245310aa', 'To Consider', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd046097-2a9e-4464-8f3e-f855245310aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('Untuk Menjadi Terang'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd046097-2a9e-4464-8f3e-f855245310aa', 'Untuk Menjadi Terang', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd046097-2a9e-4464-8f3e-f855245310aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Reflect On Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd046097-2a9e-4464-8f3e-f855245310aa', 'To Reflect On Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd046097-2a9e-4464-8f3e-f855245310aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Warning From Something'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd046097-2a9e-4464-8f3e-f855245310aa', 'To Take Warning From Something', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd046097-2a9e-4464-8f3e-f855245310aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Take Something Into Account'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd046097-2a9e-4464-8f3e-f855245310aa', 'To Take Something Into Account', false, true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = 'dd046097-2a9e-4464-8f3e-f855245310aa' AND LOWER(TRIM(meaning)) = LOWER(TRIM('To Be In Light Of'))) THEN
    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('dd046097-2a9e-4464-8f3e-f855245310aa', 'To Be In Light Of', false, true);
  END IF;

END $$;
