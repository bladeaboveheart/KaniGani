-- ============================================================
-- Fix English and Mistranslated Radicals in Database
-- ============================================================

-- 1. Deleting unneeded duplicate primary meanings for radicals
DELETE FROM item_meanings im
WHERE im.item_id IN (SELECT id FROM items WHERE character = '金' AND type = 'radical')
  AND im.meaning = 'itu tidak';

DELETE FROM item_meanings im
WHERE im.item_id IN (SELECT id FROM items WHERE character = '夂' AND type = 'radical')
  AND im.meaning = 'Pergi';

DELETE FROM item_meanings im
WHERE im.item_id IN (SELECT id FROM items WHERE character = '聿' AND type = 'radical')
  AND im.meaning = 'untuk makan';

-- 2. Correcting primary meanings of radicals in item_meanings table
UPDATE item_meanings im SET meaning = 'Air' WHERE im.item_id IN (SELECT id FROM items WHERE character = '水' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Es' WHERE im.item_id IN (SELECT id FROM items WHERE character = '冫' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Kapak' WHERE im.item_id IN (SELECT id FROM items WHERE character = '斤' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Jari' WHERE im.item_id IN (SELECT id FROM items WHERE character = '扌' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Babi' WHERE im.item_id IN (SELECT id FROM items WHERE character = '豕' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Paus' WHERE im.item_id IN (SELECT id FROM items WHERE character = '[Paus]' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Emas' WHERE im.item_id IN (SELECT id FROM items WHERE character = '金' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Musim Dingin' WHERE im.item_id IN (SELECT id FROM items WHERE character = '夂' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Kuas' WHERE im.item_id IN (SELECT id FROM items WHERE character = '聿' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Badut' WHERE im.item_id IN (SELECT id FROM items WHERE character = '咅' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Gladiator' WHERE im.item_id IN (SELECT id FROM items WHERE character = '[gladiator]' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Batangan' WHERE im.item_id IN (SELECT id FROM items WHERE character = '[bar]' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Jaring' WHERE im.item_id IN (SELECT id FROM items WHERE character = '罒' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Cumi-cumi' WHERE im.item_id IN (SELECT id FROM items WHERE character = '[Cumi]' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Ular' WHERE im.item_id IN (SELECT id FROM items WHERE character = '巳' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Kanan' WHERE im.item_id IN (SELECT id FROM items WHERE character = '右' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Tetesan Es' WHERE im.item_id IN (SELECT id FROM items WHERE character = '丬' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Ibukota' WHERE im.item_id IN (SELECT id FROM items WHERE character = '京' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Panggil' WHERE im.item_id IN (SELECT id FROM items WHERE character = '召' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Gergaji' WHERE im.item_id IN (SELECT id FROM items WHERE character = '巩' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Sepatu Bot' WHERE im.item_id IN (SELECT id FROM items WHERE character = '堇' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Kakak Laki-laki' WHERE im.item_id IN (SELECT id FROM items WHERE character = '兄' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Sumur' WHERE im.item_id IN (SELECT id FROM items WHERE character = '井' AND type = 'radical') AND im.primary_meaning = true;
UPDATE item_meanings im SET meaning = 'Kaleng' WHERE im.item_id IN (SELECT id FROM items WHERE character = '缶' AND type = 'radical') AND im.primary_meaning = true;

-- 3. Unsetting extra primary meanings for other duplicate records
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '冂' AND type = 'radical') AND im.meaning = 'lebar';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '生' AND type = 'radical') AND im.meaning = 'tumbuh';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '夕' AND type = 'radical') AND im.meaning = 'sakit';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '囗' AND type = 'radical') AND im.meaning = 'lingkaran';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '儿' AND type = 'radical') AND im.meaning = 'anak';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '工' AND type = 'radical') AND im.meaning = 'bekerja';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '彳' AND type = 'radical') AND im.meaning = 'tangga';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '气' AND type = 'radical') AND im.meaning = 'uap';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '田' AND type = 'radical') AND im.meaning = 'peternakan';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '力' AND type = 'radical') AND im.meaning = 'energi';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '車' AND type = 'radical') AND im.meaning = 'gerobak';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '長' AND type = 'radical') AND im.meaning = 'pemimpin';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '玉' AND type = 'radical') AND im.meaning = 'raja';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '冖' AND type = 'radical') AND im.meaning = 'atap';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '食' AND type = 'radical') AND im.meaning = 'makanan';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '門' AND type = 'radical') AND im.meaning = 'pintu';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '言' AND type = 'radical') AND im.meaning = 'kata';
UPDATE item_meanings im SET primary_meaning = false WHERE im.item_id IN (SELECT id FROM items WHERE character = '士' AND type = 'radical') AND im.meaning = 'prajurit';

-- 4. Updating all radical slugs to match their lowercase Indonesian primary meaning with dashes
UPDATE items i
SET slug = LOWER(REPLACE(im.meaning, ' ', '-'))
FROM item_meanings im
WHERE im.item_id = i.id
  AND im.primary_meaning = true
  AND i.type = 'radical';
