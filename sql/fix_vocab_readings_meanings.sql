-- Migration to fix incorrect meanings and delete duplicate readings
UPDATE item_meanings SET meaning = 'Nama' WHERE item_id = '7a1f64c2-abb1-412c-8407-3af12b8dad1f'; -- vocab: 名前
UPDATE item_meanings SET meaning = 'Prinsip' WHERE item_id = '83a7e77f-d1cf-4316-98c5-93bd25f5fa7d'; -- vocab: 主義
UPDATE item_meanings SET meaning = 'Nama' WHERE item_id = 'd80d85fc-d3bf-414d-b3b4-82424b1651f2'; -- radical: 名
UPDATE item_meanings SET meaning = 'Nama' WHERE item_id = 'a880360a-e28f-4b27-b951-b292f620772d'; -- vocab: 名
UPDATE item_meanings SET meaning = 'Nama / Terkenal' WHERE item_id = '51b7b8a2-f982-4b04-8275-1660a6c39433'; -- kanji: 名

-- Delete duplicate readings (keeping only one distinct row per item_id and reading)
DELETE FROM item_readings 
WHERE id NOT IN (
  SELECT DISTINCT ON (item_id, reading) id 
  FROM item_readings 
  ORDER BY item_id, reading, primary_reading DESC, id
);
