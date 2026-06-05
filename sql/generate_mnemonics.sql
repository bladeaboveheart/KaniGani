-- ============================================================
-- Generate Mnemonics for All Items Without Mnemonics
-- ============================================================

-- 1. Fix null reading types for kanji (set to 'onyomi' as default)
UPDATE public.item_readings ir
SET reading_type = 'onyomi'
WHERE ir.reading_type IS NULL
  AND EXISTS (
    SELECT 1 FROM public.items i WHERE i.id = ir.item_id AND i.type = 'kanji'
  );

-- 2. Generate meaning mnemonics for RADICALS (all 205 are empty)
-- Use the first meaning as the name
UPDATE public.items i
SET meaning_mnemonic = (
  SELECT 'Radikal "' || COALESCE(im.meaning, i.character) || '". Bayangkan bentuk karakter ' ||
    COALESCE(i.character, '') || ' menggambarkan ' || LOWER(COALESCE(im.meaning, i.character)) || '.'
  FROM public.item_meanings im
  WHERE im.item_id = i.id
  ORDER BY im.meaning
  LIMIT 1
)
WHERE i.type = 'radical'
  AND (i.meaning_mnemonic IS NULL OR i.meaning_mnemonic = '');

-- For radicals without any meaning (use character as name)
UPDATE public.items i
SET meaning_mnemonic = 'Radikal "' || i.character || '". Perhatikan bentuk karakter ini dan asosiasikan dengan namanya.'
WHERE i.type = 'radical'
  AND (i.meaning_mnemonic IS NULL OR i.meaning_mnemonic = '');

-- 3. Generate reading mnemonics for RADICALS (they don't need reading mnemonics, set to empty description)
UPDATE public.items i
SET reading_mnemonic = 'Radikal tidak memiliki bacaan mandiri.'
WHERE i.type = 'radical'
  AND (i.reading_mnemonic IS NULL OR i.reading_mnemonic = '');

-- 4. Generate meaning mnemonics for KANJI that are missing them
UPDATE public.items i
SET meaning_mnemonic = (
  WITH kanji_info AS (
    SELECT 
      i.character,
      (SELECT meaning FROM public.item_meanings WHERE item_id = i.id ORDER BY meaning LIMIT 1) as primary_meaning,
      (SELECT STRING_AGG(ri.character || ' (' || COALESCE(rim.meaning, '') || ')', ', ' ORDER BY ri.character)
       FROM public.kanji_radicals kr
       JOIN public.items ri ON ri.id = kr.radical_id
       LEFT JOIN public.item_meanings rim ON rim.item_id = ri.id
       WHERE kr.kanji_id = i.id
       LIMIT 1) as radical_info
    FROM public.items i2 WHERE i2.id = i.id
  )
  SELECT 
    'Kanji ' || ki.character || ' berarti "' || COALESCE(ki.primary_meaning, '') || '". ' ||
    CASE 
      WHEN ki.radical_info IS NOT NULL 
        THEN 'Dibentuk dari radikal: ' || ki.radical_info || '. Bayangkan komponen-komponen ini bersama membentuk makna ' || LOWER(COALESCE(ki.primary_meaning, '')) || '.'
      ELSE 'Ingat bentuk karakter ini dan hubungkan dengan maknanya: ' || LOWER(COALESCE(ki.primary_meaning, '')) || '.'
    END
  FROM kanji_info ki
)
WHERE i.type = 'kanji'
  AND (i.meaning_mnemonic IS NULL OR i.meaning_mnemonic = '');

-- 5. Generate reading mnemonics for KANJI that are missing them
UPDATE public.items i
SET reading_mnemonic = (
  SELECT 
    'Untuk membaca kanji ' || i.character || ', ingat bunyi utamanya: "' || 
    ir.reading || '" (' || 
    CASE ir.reading_type 
      WHEN 'onyomi' THEN 'on-yomi / bacaan Cina'
      WHEN 'kunyomi' THEN 'kun-yomi / bacaan Jepang asli'
      ELSE 'bacaan'
    END || ').'
  FROM public.item_readings ir
  WHERE ir.item_id = i.id
    AND ir.primary_reading = true
  LIMIT 1
)
WHERE i.type = 'kanji'
  AND (i.reading_mnemonic IS NULL OR i.reading_mnemonic = '');

-- For kanji with no primary reading marked, use the first onyomi
UPDATE public.items i
SET reading_mnemonic = (
  SELECT 
    'Untuk membaca kanji ' || i.character || ', ingat bunyi: "' || 
    ir.reading || '" (' || 
    CASE ir.reading_type 
      WHEN 'onyomi' THEN 'on-yomi'
      WHEN 'kunyomi' THEN 'kun-yomi'
      ELSE 'bacaan'
    END || ').'
  FROM public.item_readings ir
  WHERE ir.item_id = i.id
  ORDER BY CASE ir.reading_type WHEN 'onyomi' THEN 1 WHEN 'kunyomi' THEN 2 ELSE 3 END
  LIMIT 1
)
WHERE i.type = 'kanji'
  AND (i.reading_mnemonic IS NULL OR i.reading_mnemonic = '');

-- 6. Generate meaning mnemonics for VOCABULARY that are missing them
UPDATE public.items i
SET meaning_mnemonic = (
  WITH vocab_info AS (
    SELECT 
      (SELECT meaning FROM public.item_meanings WHERE item_id = i.id ORDER BY meaning LIMIT 1) as primary_meaning
    FROM public.items i2 WHERE i2.id = i.id
  )
  SELECT 
    'Kata "' || i.character || '" berarti "' || COALESCE(vi.primary_meaning, '') || '". ' ||
    'Kombinasi karakter ini membentuk konsep ' || LOWER(COALESCE(vi.primary_meaning, '')) || '.'
  FROM vocab_info vi
)
WHERE i.type = 'vocabulary'
  AND (i.meaning_mnemonic IS NULL OR i.meaning_mnemonic = '');
