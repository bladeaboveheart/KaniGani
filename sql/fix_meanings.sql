-- ============================================================
-- Migration: Fix English Meanings to Indonesian
-- Applies to item_meanings for kanji and vocabulary items
-- ============================================================

-- Step 1: Update meanings that have direct translation
-- (UPDATE first, then DELETE duplicates)

DO $$
DECLARE
  translations TEXT[][] := ARRAY[
    -- Numbers
    ARRAY['One', 'Satu'],
    ARRAY['Two', 'Dua'],
    ARRAY['Three', 'Tiga'],
    ARRAY['Four', 'Empat'],
    ARRAY['Five', 'Lima'],
    ARRAY['Six', 'Enam'],
    ARRAY['Seven', 'Tujuh'],
    ARRAY['Eight', 'Delapan'],
    ARRAY['Nine', 'Sembilan'],
    ARRAY['Ten', 'Sepuluh'],
    ARRAY['Hundred', 'Ratus'],
    ARRAY['Thousand', 'Ribu'],
    -- Family
    ARRAY['Big Brother', 'Kakak Laki-laki'],
    ARRAY['Elder Brother', 'Kakak Laki-laki'],
    ARRAY['Big Sister', 'Kakak Perempuan'],
    ARRAY['Elder Sister', 'Kakak Perempuan'],
    ARRAY['Little Sister', 'Adik Perempuan'],
    ARRAY['Little Brother', 'Adik Laki-laki'],
    ARRAY['Father', 'Ayah'],
    ARRAY['Mother', 'Ibu'],
    ARRAY['Family', 'Keluarga'],
    -- Time/seasons
    ARRAY['Evening', 'Malam'],
    ARRAY['Morning', 'Pagi'],
    ARRAY['Day Of The Week', 'Hari dalam Seminggu'],
    ARRAY['Interval', 'Jarak'],
    ARRAY['Fall', 'Musim Gugur'],
    ARRAY['Autumn', 'Musim Gugur'],
    -- Directions/Places
    ARRAY['Right', 'Kanan'],
    ARRAY['Right Direction', 'Arah Kanan'],
    ARRAY['Left', 'Kiri'],
    ARRAY['Left Direction', 'Arah Kiri'],
    ARRAY['North', 'Utara'],
    ARRAY['South', 'Selatan'],
    ARRAY['East', 'Timur'],
    ARRAY['West', 'Barat'],
    ARRAY['Exit', 'Keluar'],
    ARRAY['Place', 'Tempat'],
    ARRAY['Ground', 'Tanah'],
    ARRAY['Land', 'Wilayah'],
    ARRAY['Path', 'Jalur'],
    ARRAY['Street', 'Jalan'],
    ARRAY['Way', 'Cara'],
    ARRAY['Field', 'Ladang'],
    ARRAY['Rice Field', 'Sawah'],
    ARRAY['Public Chamber', 'Aula Publik'],
    -- Actions
    ARRAY['Do', 'Lakukan'],
    ARRAY['Replace', 'Ganti'],
    ARRAY['Dwell', 'Tinggal'],
    ARRAY['Reside', 'Bermukim'],
    ARRAY['Start', 'Mulai'],
    ARRAY['Construct', 'Membangun'],
    ARRAY['Return Home', 'Pulang'],
    ARRAY['Travel', 'Bepergian'],
    ARRAY['Gather', 'Kumpulkan'],
    ARRAY['Arrive', 'Tiba'],
    ARRAY['Sing', 'Bernyanyi'],
    ARRAY['Consider', 'Pertimbangkan'],
    ARRAY['Finish', 'Selesai'],
    ARRAY['Reply', 'Balas'],
    ARRAY['Response', 'Jawaban'],
    ARRAY['Use', 'Gunakan'],
    ARRAY['Passable', 'Bisa Dilalui'],
    ARRAY['Meeting', 'Pertemuan'],
    -- Descriptions/Properties
    ARRAY['Age', 'Era'],
    ARRAY['Period', 'Periode'],
    ARRAY['Generation', 'Generasi'],
    ARRAY['Main', 'Utama'],
    ARRAY['Cheap', 'Murah'],
    ARRAY['White', 'Putih'],
    ARRAY['Fire', 'Api'],
    ARRAY['Book', 'Buku'],
    ARRAY['Circle', 'Lingkaran'],
    ARRAY['Shop', 'Toko'],
    ARRAY['Store', 'Toko'],
    ARRAY['Industry', 'Industri'],
    ARRAY['Occurrence', 'Kejadian'],
    ARRAY['Thought', 'Pikiran'],
    ARRAY['Sudden', 'Mendadak'],
    ARRAY['Evil', 'Jahat'],
    ARRAY['Sentence', 'Kalimat'],
    ARRAY['Material', 'Bahan'],
    ARRAY['Lots Of', 'Banyak'],
    ARRAY['Much', 'Banyak'],
    ARRAY['Character', 'Karakter'],
    ARRAY['Symbol', 'Simbol'],
    ARRAY['Painting', 'Lukisan'],
    ARRAY['Picture', 'Gambar'],
    ARRAY['Ill', 'Sakit'],
    ARRAY['Illness', 'Penyakit'],
    ARRAY['Sickness', 'Penyakit'],
    ARRAY['Reflection', 'Pantulan'],
    ARRAY['Clothing', 'Pakaian'],
    ARRAY['Ease', 'Santai'],
    ARRAY['Pleasure', 'Kesenangan'],
    ARRAY['Body', 'Badan'],
    ARRAY['Somebody', 'Seseorang'],
    ARRAY['Someone', 'Seseorang'],
    ARRAY['Oneself', 'Diri Sendiri'],
    ARRAY['Leg', 'Kaki'],
    ARRAY['Sufficient', 'Cukup'],
    ARRAY['Close', 'Dekat'],
    ARRAY['Luck', 'Keberuntungan'],
    ARRAY['Strength', 'Kekuatan'],
    ARRAY['Ability', 'Kemampuan'],
    ARRAY['China', 'Cina'],
    ARRAY['English', 'Bahasa Inggris'],
    ARRAY['Empty', 'Kosong'],
    ARRAY['Measurement', 'Pengukuran'],
    ARRAY['Attempt', 'Percobaan'],
    ARRAY['Train Station', 'Stasiun Kereta'],
    ARRAY['Article', 'Artikel'],
    ARRAY['Goods', 'Barang'],
    ARRAY['Products', 'Produk'],
    ARRAY['Question', 'Pertanyaan'],
    ARRAY['Food', 'Makanan'],
    ARRAY['Ocean', 'Samudra'],
    ARRAY['Fast', 'Cepat'],
    ARRAY['Quick', 'Cepat'],
    ARRAY['Correct', 'Benar'],
    ARRAY['Like', 'Seperti'],
    ARRAY['~Like', 'Ber-tipe'],
    ARRAY['Private', 'Pribadi'],
    ARRAY['A Little', 'Sedikit'],
    ARRAY['By Means Of', 'Dengan'],
    ARRAY['Compared With', 'Dibandingkan'],
    ARRAY['Since', 'Sejak'],
    ARRAY['With', 'Bersama'],
    ARRAY['Roof', 'Atap'],
    ARRAY['Yen', 'Yen'],
    ARRAY['Style', 'Gaya'],
    ARRAY['Way Of', 'Cara'],
    ARRAY['Good Morning', 'Selamat Pagi'],
    ARRAY['Machine Counter', 'Penghitung Mesin'],
    ARRAY['Number Of Machines', 'Jumlah Mesin'],
    ARRAY['Cooked Rice', 'Nasi'],
    ARRAY['Times', 'Kali'],
    ARRAY['Typical', 'Tipikal'],
    ARRAY['Guy', 'Pria'],
    ARRAY['Miss', 'Nona'],
    ARRAY['Notification', 'Pemberitahuan'],
    ARRAY['Flier', 'Brosur'],
    ARRAY['Diagram', 'Diagram'],
    ARRAY['Store', 'Toko'],
    ARRAY['Modal', 'Ibukota']
  ];
  t TEXT[];
  eng TEXT;
  idn TEXT;
BEGIN
  FOREACH t SLICE 1 IN ARRAY translations
  LOOP
    eng := t[1];
    idn := t[2];
    
    -- For each translation: if the Indonesian version doesn't already exist for that item,
    -- update the English version to Indonesian
    UPDATE public.item_meanings im
    SET meaning = idn
    WHERE im.meaning = eng
      AND NOT EXISTS (
        SELECT 1 FROM public.item_meanings im2
        WHERE im2.item_id = im.item_id AND im2.meaning = idn
      );
    
    -- Delete duplicate English meanings where Indonesian already exists
    DELETE FROM public.item_meanings im
    WHERE im.meaning = eng
      AND EXISTS (
        SELECT 1 FROM public.item_meanings im2
        WHERE im2.item_id = im.item_id AND im2.meaning = idn AND im2.id != im.id
      );
      
  END LOOP;
END $$;

-- Clean up: Remove '. Diri' artifact (typo)
UPDATE public.item_meanings SET meaning = 'Diri' WHERE meaning = '. Diri';

-- Fix: 'Menulin' typo → 'Menulis'
UPDATE public.item_meanings SET meaning = 'Menulis' WHERE meaning = 'Menulin';

-- Fix: Remove trailing/leading whitespace
UPDATE public.item_meanings SET meaning = TRIM(meaning) WHERE meaning != TRIM(meaning);

-- Remove duplicate meanings per item (keep one of each)
DELETE FROM public.item_meanings a
USING public.item_meanings b
WHERE a.item_id = b.item_id
  AND a.meaning = b.meaning
  AND a.ctid > b.ctid;

