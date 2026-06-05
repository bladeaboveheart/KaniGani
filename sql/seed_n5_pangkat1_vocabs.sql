-- ============================================================
-- KaniGani Seed Data: N5 - Pangkat 1 (Vocabulary)
-- Generated automatically
-- ============================================================

DO $$
DECLARE
  v_rank_id UUID := 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d';
  
  -- Vocabulary variables
  v_vocab_1 UUID;
  v_vocab_2 UUID;
  v_vocab_3 UUID;
  v_vocab_4 UUID;
  v_vocab_5 UUID;
  v_vocab_6 UUID;
  v_vocab_7 UUID;
  v_vocab_8 UUID;
  v_vocab_9 UUID;
  v_vocab_10 UUID;
  v_vocab_11 UUID;
  v_vocab_12 UUID;
  v_vocab_13 UUID;
  v_vocab_14 UUID;
  v_vocab_15 UUID;
  v_vocab_16 UUID;
  v_vocab_17 UUID;
  v_vocab_18 UUID;
  v_vocab_19 UUID;
  v_vocab_20 UUID;
  v_vocab_21 UUID;
  v_vocab_22 UUID;
  v_vocab_23 UUID;
  v_vocab_24 UUID;
  v_vocab_25 UUID;
  v_vocab_26 UUID;
  v_vocab_27 UUID;
  v_vocab_28 UUID;
  v_vocab_29 UUID;
  v_vocab_30 UUID;
  v_vocab_31 UUID;
  v_vocab_32 UUID;
  v_vocab_33 UUID;
  v_vocab_34 UUID;
  v_vocab_35 UUID;
  v_vocab_36 UUID;
  v_vocab_37 UUID;
  v_vocab_38 UUID;
  v_vocab_39 UUID;
  v_vocab_40 UUID;
  v_vocab_41 UUID;
  v_vocab_42 UUID;
  v_vocab_43 UUID;
  v_vocab_44 UUID;
  v_vocab_45 UUID;
  v_vocab_46 UUID;
  v_vocab_47 UUID;
  v_vocab_48 UUID;
  v_vocab_49 UUID;
  v_vocab_50 UUID;
  v_vocab_51 UUID;
  v_vocab_52 UUID;
  v_vocab_53 UUID;
  v_vocab_54 UUID;
  v_vocab_55 UUID;
  v_vocab_56 UUID;
  v_vocab_57 UUID;
  v_vocab_58 UUID;
  v_vocab_59 UUID;
  v_vocab_60 UUID;
  v_vocab_61 UUID;
  v_vocab_62 UUID;
  v_vocab_63 UUID;
  v_vocab_64 UUID;
  v_vocab_65 UUID;
  v_vocab_66 UUID;
  v_vocab_67 UUID;
  v_vocab_68 UUID;
  v_vocab_69 UUID;
  v_vocab_70 UUID;
  v_vocab_71 UUID;
  v_vocab_72 UUID;
  v_vocab_73 UUID;
  v_vocab_74 UUID;
  v_vocab_75 UUID;
  v_vocab_76 UUID;
  v_vocab_77 UUID;
  v_vocab_78 UUID;
  v_vocab_79 UUID;
  v_vocab_80 UUID;
  v_vocab_81 UUID;
  v_vocab_82 UUID;
  v_vocab_83 UUID;

  -- Kanji variables
  k_kanji_4e00 UUID;
  k_kanji_4eba UUID;
  k_kanji_5165 UUID;
  k_kanji_4e8c UUID;
  k_kanji_5341 UUID;
  k_kanji_516b UUID;
  k_kanji_4e03 UUID;
  k_kanji_4e5d UUID;
  k_kanji_5927 UUID;
  k_kanji_5b50 UUID;
  k_kanji_4e0a UUID;
  k_kanji_5973 UUID;
  k_kanji_4e0b UUID;
  k_kanji_5c0f UUID;
  k_kanji_5c71 UUID;
  k_kanji_4e07 UUID;
  k_kanji_5ddd UUID;
  k_kanji_4e09 UUID;
  k_kanji_571f UUID;
  k_kanji_5343 UUID;
  k_kanji_5206 UUID;
  k_kanji_65e5 UUID;
  k_kanji_4e2d UUID;
  k_kanji_4eca UUID;
  k_kanji_6708 UUID;
  k_kanji_6c34 UUID;
  k_kanji_6728 UUID;
  k_kanji_7236 UUID;
  k_kanji_53cb UUID;
  k_kanji_5929 UUID;
BEGIN
  -- 1. Clean up existing vocabularies in N5 Pangkat 1
  -- (Cascade delete will clean up meanings, readings, sentences, prerequisites, progress)
  DELETE FROM public.items WHERE type = 'vocabulary' AND rank_id = v_rank_id;

  -- 2. Fetch Kanji IDs
  SELECT id INTO k_kanji_4e00 FROM public.items WHERE type = 'kanji' AND character = '一' LIMIT 1;
  SELECT id INTO k_kanji_4eba FROM public.items WHERE type = 'kanji' AND character = '人' LIMIT 1;
  SELECT id INTO k_kanji_5165 FROM public.items WHERE type = 'kanji' AND character = '入' LIMIT 1;
  SELECT id INTO k_kanji_4e8c FROM public.items WHERE type = 'kanji' AND character = '二' LIMIT 1;
  SELECT id INTO k_kanji_5341 FROM public.items WHERE type = 'kanji' AND character = '十' LIMIT 1;
  SELECT id INTO k_kanji_516b FROM public.items WHERE type = 'kanji' AND character = '八' LIMIT 1;
  SELECT id INTO k_kanji_4e03 FROM public.items WHERE type = 'kanji' AND character = '七' LIMIT 1;
  SELECT id INTO k_kanji_4e5d FROM public.items WHERE type = 'kanji' AND character = '九' LIMIT 1;
  SELECT id INTO k_kanji_5927 FROM public.items WHERE type = 'kanji' AND character = '大' LIMIT 1;
  SELECT id INTO k_kanji_5b50 FROM public.items WHERE type = 'kanji' AND character = '子' LIMIT 1;
  SELECT id INTO k_kanji_4e0a FROM public.items WHERE type = 'kanji' AND character = '上' LIMIT 1;
  SELECT id INTO k_kanji_5973 FROM public.items WHERE type = 'kanji' AND character = '女' LIMIT 1;
  SELECT id INTO k_kanji_4e0b FROM public.items WHERE type = 'kanji' AND character = '下' LIMIT 1;
  SELECT id INTO k_kanji_5c0f FROM public.items WHERE type = 'kanji' AND character = '小' LIMIT 1;
  SELECT id INTO k_kanji_5c71 FROM public.items WHERE type = 'kanji' AND character = '山' LIMIT 1;
  SELECT id INTO k_kanji_4e07 FROM public.items WHERE type = 'kanji' AND character = '万' LIMIT 1;
  SELECT id INTO k_kanji_5ddd FROM public.items WHERE type = 'kanji' AND character = '川' LIMIT 1;
  SELECT id INTO k_kanji_4e09 FROM public.items WHERE type = 'kanji' AND character = '三' LIMIT 1;
  SELECT id INTO k_kanji_571f FROM public.items WHERE type = 'kanji' AND character = '土' LIMIT 1;
  SELECT id INTO k_kanji_5343 FROM public.items WHERE type = 'kanji' AND character = '千' LIMIT 1;
  SELECT id INTO k_kanji_5206 FROM public.items WHERE type = 'kanji' AND character = '分' LIMIT 1;
  SELECT id INTO k_kanji_65e5 FROM public.items WHERE type = 'kanji' AND character = '日' LIMIT 1;
  SELECT id INTO k_kanji_4e2d FROM public.items WHERE type = 'kanji' AND character = '中' LIMIT 1;
  SELECT id INTO k_kanji_4eca FROM public.items WHERE type = 'kanji' AND character = '今' LIMIT 1;
  SELECT id INTO k_kanji_6708 FROM public.items WHERE type = 'kanji' AND character = '月' LIMIT 1;
  SELECT id INTO k_kanji_6c34 FROM public.items WHERE type = 'kanji' AND character = '水' LIMIT 1;
  SELECT id INTO k_kanji_6728 FROM public.items WHERE type = 'kanji' AND character = '木' LIMIT 1;
  SELECT id INTO k_kanji_7236 FROM public.items WHERE type = 'kanji' AND character = '父' LIMIT 1;
  SELECT id INTO k_kanji_53cb FROM public.items WHERE type = 'kanji' AND character = '友' LIMIT 1;
  SELECT id INTO k_kanji_5929 FROM public.items WHERE type = 'kanji' AND character = '天' LIMIT 1;

  -- 3. Insert Vocabulary items
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '上', 'atas-v', 1, v_rank_id, 'Ingat kanji 上 yang berarti atas — dipakai langsung sebagai kata benda: posisi di atas.', 'Kata benda yang merujuk pada posisi atau arah ke atas.') RETURNING id INTO v_vocab_1;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '大人', 'orang-dewasa', 1, v_rank_id, 'Orang BESAR (大) yang sudah dewasa — kombinasi besar + orang.', 'Kata benda untuk orang dewasa; kontras dengan 子供 (anak-anak).') RETURNING id INTO v_vocab_2;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '一人', 'sendirian', 1, v_rank_id, 'SATU orang (一人) — hanya seorang diri, sendirian.', 'Juga bisa berarti "satu orang" dalam konteks menghitung.') RETURNING id INTO v_vocab_3;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '下', 'bawah-v', 1, v_rank_id, 'Kanji 下 yang berarti bawah — dipakai langsung sebagai kata benda posisi di bawah.', 'Kata benda yang merujuk pada posisi atau arah ke bawah.') RETURNING id INTO v_vocab_4;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '大きい', 'besar-i', 1, v_rank_id, 'Kanji BESAR (大) dengan akhiran い — menjadi kata sifat yang berarti besar.', 'Kata sifat い-adjective. Lawan kata: 小さい (kecil).') RETURNING id INTO v_vocab_5;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '八', 'delapan-v', 1, v_rank_id, 'Kanji DELAPAN (八) dibaca sendiri sebagai kata angka delapan.', 'Angka 8 dalam bentuk kata benda Jepang asli.') RETURNING id INTO v_vocab_6;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '八つ', 'delapan-hal', 1, v_rank_id, 'DELAPAN (八) hal — menggunakan penghitung つ untuk benda umum.', 'Cara menghitung delapan benda menggunakan penghitung asli Jepang.') RETURNING id INTO v_vocab_7;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '大した', 'hebat', 1, v_rank_id, 'Sesuatu yang BESAR (大) dampaknya — dipakai untuk menyatakan kehebatan.', 'Kata sifat na-adjective atau prenominal yang berarti luar biasa / hebat.') RETURNING id INTO v_vocab_8;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '山', 'gunung-v', 1, v_rank_id, 'Kanji GUNUNG (山) dibaca sendiri — langsung merujuk ke gunung.', 'Kata benda umum untuk gunung.') RETURNING id INTO v_vocab_9;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'ふじ山', 'gunung-fuji', 1, v_rank_id, 'GUNUNG (山) Fuji — gunung paling terkenal di Jepang.', 'Nama resmi: 富士山. Simbol nasional Jepang.') RETURNING id INTO v_vocab_10;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '九', 'sembilan-v', 1, v_rank_id, 'Kanji SEMBILAN (九) dibaca sebagai angka sembilan.', 'Angka 9. Bacaan きゅう lebih umum dalam percakapan modern.') RETURNING id INTO v_vocab_11;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '九つ', 'sembilan-hal', 1, v_rank_id, 'SEMBILAN (九) hal — menggunakan penghitung つ untuk benda umum.', 'Cara menghitung sembilan benda menggunakan penghitung asli Jepang.') RETURNING id INTO v_vocab_12;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '一', 'satu-v', 1, v_rank_id, 'Kanji SATU (一) dibaca sendiri — angka satu.', 'Angka 1 dalam bentuk kata benda Jepang asli.') RETURNING id INTO v_vocab_13;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '一つ', 'satu-hal', 1, v_rank_id, 'SATU (一) hal — penghitung つ untuk benda umum.', 'Cara menghitung satu benda menggunakan penghitung asli Jepang.') RETURNING id INTO v_vocab_14;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '人', 'orang-v', 1, v_rank_id, 'Kanji ORANG (人) dibaca sendiri — merujuk pada seseorang.', 'Bisa merujuk pada "orang", "manusia", atau "seseorang".') RETURNING id INTO v_vocab_15;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '下さい', 'tolong-berikan', 1, v_rank_id, 'Bentuk permintaan sopan dari BAWAH (下) — meminta sesuatu dengan rendah hati.', 'Ungkapan permintaan sopan. Sering ditulis ください dalam konteks sopan sehari-hari.') RETURNING id INTO v_vocab_16;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '川', 'sungai-v', 1, v_rank_id, 'Kanji SUNGAI (川) dibaca sendiri — merujuk pada sungai.', 'Kata benda umum untuk sungai.') RETURNING id INTO v_vocab_17;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '七', 'tujuh-v', 1, v_rank_id, 'Kanji TUJUH (七) dibaca sebagai angka tujuh.', 'Angka 7. Bacaan なな lebih umum dalam percakapan modern.') RETURNING id INTO v_vocab_18;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '七つ', 'tujuh-hal', 1, v_rank_id, 'TUJUH (七) hal — penghitung つ untuk benda umum.', 'Cara menghitung tujuh benda menggunakan penghitung asli Jepang.') RETURNING id INTO v_vocab_19;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '大きさ', 'ukuran', 1, v_rank_id, 'BESAR (大き) dijadikan kata benda dengan akhiran さ — tingkatan atau ukuran kebesaran.', 'Kata benda abstrak yang menyatakan ukuran. Contoh: どのくらいの大きさ (seberapa besar).') RETURNING id INTO v_vocab_20;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '十', 'sepuluh-v', 1, v_rank_id, 'Kanji SEPULUH (十) dibaca sendiri — angka sepuluh.', 'Angka 10 dalam bentuk kata benda Jepang.') RETURNING id INTO v_vocab_21;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '三', 'tiga-v', 1, v_rank_id, 'Kanji TIGA (三) dibaca sendiri — angka tiga.', 'Angka 3 dalam bentuk kata benda Jepang.') RETURNING id INTO v_vocab_22;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '三人', 'tiga-orang', 1, v_rank_id, 'TIGA (三) orang — gabungan kanji tiga dan orang.', 'Kata untuk "tiga orang". Penghitung 人 dipakai khusus untuk manusia.') RETURNING id INTO v_vocab_23;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '三つ', 'tiga-hal', 1, v_rank_id, 'TIGA (三) hal — penghitung つ untuk benda umum.', 'Cara menghitung tiga benda menggunakan penghitung asli Jepang.') RETURNING id INTO v_vocab_24;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '入る', 'masuk-v', 1, v_rank_id, 'Kata kerja dari kanji MASUK (入) — aksi memasuki suatu tempat.', 'Kata kerja intransitif. Pasangannya: 入れる (memasukkan sesuatu).') RETURNING id INTO v_vocab_25;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '上げる', 'mengangkat', 1, v_rank_id, 'Dari kanji ATAS (上) — bergerak ke atas, mengangkat sesuatu.', 'Kata kerja transitif. Pasangannya: 上がる (naik sendiri).') RETURNING id INTO v_vocab_26;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '下げる', 'menurunkan', 1, v_rank_id, 'Dari kanji BAWAH (下) — bergerak ke bawah, menurunkan sesuatu.', 'Kata kerja transitif. Pasangannya: 下がる (turun sendiri).') RETURNING id INTO v_vocab_27;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '二', 'dua-v', 1, v_rank_id, 'Kanji DUA (二) dibaca sendiri — angka dua.', 'Angka 2 dalam bentuk kata benda Jepang.') RETURNING id INTO v_vocab_28;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '二人', 'dua-orang', 1, v_rank_id, 'DUA (二) orang bersama — pasangan atau dua individu.', 'Kata untuk "dua orang". Sering dipakai untuk pasangan.') RETURNING id INTO v_vocab_29;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '二つ', 'dua-hal', 1, v_rank_id, 'DUA (二) hal — penghitung つ untuk benda umum.', 'Cara menghitung dua benda menggunakan penghitung asli Jepang.') RETURNING id INTO v_vocab_30;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '女', 'wanita-v', 1, v_rank_id, 'Kanji WANITA (女) dibaca sendiri — merujuk pada perempuan.', 'Kata benda umum untuk wanita atau perempuan.') RETURNING id INTO v_vocab_31;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '子', 'child', 1, v_rank_id, 'Menggunakan kanji ANAK (子) secara mandiri untuk menyebut anak kecil.', 'Kata benda umum untuk anak-anak.') RETURNING id INTO v_vocab_32;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '土', 'dirt', 1, v_rank_id, 'Kanji TANAH (土) dibaca mandiri untuk menyebutkan elemen tanah di kebun.', 'Elemen tanah, lumpur, atau pasir.') RETURNING id INTO v_vocab_33;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '八日', 'eighth-day', 1, v_rank_id, 'Kombinasi DELAPAN (八) dan HARI (日) untuk menyatakan hari kedelapan.', 'Hari ke-8 pada kalender bulanan.') RETURNING id INTO v_vocab_34;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '二月', 'february', 1, v_rank_id, 'Kombinasi DUA (二) dan BULAN (月) melambangkan bulan kedua.', 'Nama bulan Februari.') RETURNING id INTO v_vocab_35;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '女子', 'girl-n', 1, v_rank_id, 'Gabungan dari WANITA (女) dan ANAK (子) untuk menunjuk anak perempuan.', 'Anak perempuan / siswi sekolah.') RETURNING id INTO v_vocab_36;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '女の子', 'girl', 1, v_rank_id, 'Menggunakan partikel の untuk memperjelas identitas anak perempuan.', 'Anak perempuan (sopan sehari-hari).') RETURNING id INTO v_vocab_37;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'おはよう', 'good-morning', 1, v_rank_id, 'Salam sapaan pagi hari dalam bahasa Jepang (ditulis dengan kana).', 'Ungkapan salam Selamat Pagi.') RETURNING id INTO v_vocab_38;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '天', 'heavens', 1, v_rank_id, 'Kanji SURGA/LANGIT (天) dibaca secara mandiri.', 'Kubah langit luas atau surga.') RETURNING id INTO v_vocab_39;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'ホテル', 'hotel', 1, v_rank_id, 'Kata serapan bahasa asing Katakana untuk penginapan hotel.', 'Hotel tempat menginap.') RETURNING id INTO v_vocab_40;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '中', 'inside', 1, v_rank_id, 'Kanji TENGAH (中) dibaca mandiri sebagai posisi di dalam ruangan.', 'Arah posisi di dalam.') RETURNING id INTO v_vocab_41;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '一月', 'january', 1, v_rank_id, 'Kombinasi SATU (一) dan BULAN (月) melambangkan bulan pertama.', 'Nama bulan Januari.') RETURNING id INTO v_vocab_42;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '月', 'moon-v', 1, v_rank_id, 'Kanji BULAN (月) dibaca mandiri menunjuk benda langit bulan.', 'Bulan di angkasa.') RETURNING id INTO v_vocab_43;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '九日', 'ninth-day', 1, v_rank_id, 'Kombinasi SEMBILAN (九) dan HARI (日) melambangkan tanggal sembilan.', 'Hari ke-9 pada kalender bulanan.') RETURNING id INTO v_vocab_44;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '十月', 'october', 1, v_rank_id, 'Kombinasi SEPULUH (十) dan BULAN (月) melambangkan bulan kesepuluh.', 'Nama bulan Oktober.') RETURNING id INTO v_vocab_45;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '一日', 'one-day', 1, v_rank_id, 'Kombinasi SATU (一) dan HARI (日) untuk melambangkan satu hari penuh atau tanggal satu.', 'Satu hari penuh atau tanggal 1 (dibaca tsuitachi).') RETURNING id INTO v_vocab_46;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '二日', 'second-day', 1, v_rank_id, 'Kombinasi DUA (二) dan HARI (日) melambangkan hari kedua.', 'Tanggal 2 or durasi dua hari.') RETURNING id INTO v_vocab_47;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '七日', 'seventh-day', 1, v_rank_id, 'Kombinasi TUJUH (七) dan HARI (日) melambangkan hari ketujuh.', 'Tanggal 7 or durasi tujuh hari.') RETURNING id INTO v_vocab_48;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '小さい', 'small-v', 1, v_rank_id, 'Kanji KECIL (小) ditambah akhiran hiragana さい membentuk kata sifat kecil.', 'Kata sifat yang berarti kecil.') RETURNING id INTO v_vocab_49;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '日', 'sun-v', 1, v_rank_id, 'Kanji MATAHARI (日) dibaca secara mandiri.', 'Kata benda matahari atau hari.') RETURNING id INTO v_vocab_50;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '十日', 'tenth-day', 1, v_rank_id, 'Kombinasi SEPULUH (十) dan HARI (日) melambangkan hari kesepuluh.', 'Tanggal 10 or durasi sepuluh hari.') RETURNING id INTO v_vocab_51;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '三日', 'third-day', 1, v_rank_id, 'Kombinasi TIGA (三) dan HARI (日) melambangkan hari ketiga.', 'Tanggal 3 or durasi tiga hari.') RETURNING id INTO v_vocab_52;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '千', 'thousand-v', 1, v_rank_id, 'Kanji SERIBU (千) dibaca mandiri sebagai nominal angka seribu.', 'Nominal angka 1000.') RETURNING id INTO v_vocab_53;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '上る', 'to-climb', 1, v_rank_id, 'Kata kerja bertema ATAS (上) ditambah akhiranる menyatakan aksi mendaki.', 'Aksi memanjat atau mendaki gunung.') RETURNING id INTO v_vocab_54;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '木', 'tree-v', 1, v_rank_id, 'Kanji POHON (木) dibaca secara mandiri.', 'Tanaman pohon kayu.') RETURNING id INTO v_vocab_55;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '水中', 'underwater', 1, v_rank_id, 'Berada di TENGAH-TENGAH (中) atau di dalam AIR (水) — wilayah bawah air.', 'Kondisi di bawah permukaan air.') RETURNING id INTO v_vocab_56;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '水', 'water-v', 1, v_rank_id, 'Kanji AIR (水) dibaca secara mandiri.', 'Cairan air tawar jernih.') RETURNING id INTO v_vocab_57;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'アメリカ人', 'american-person', 1, v_rank_id, 'Kombinasi kata Amerika (katakana) dengan kanji ORANG (人) — Orang Amerika.', 'Kata benda kewarganegaraan.') RETURNING id INTO v_vocab_58;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'リンゴ', 'apple', 1, v_rank_id, 'Buah apel manis yang ditulis dalam huruf katakana.', 'Kata benda umum untuk buah apel.') RETURNING id INTO v_vocab_59;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'イギリス人', 'british-person', 1, v_rank_id, 'Kombinasi kata Inggris dengan kanji ORANG (人) — Orang Inggris.', 'Kata benda kewarganegaraan.') RETURNING id INTO v_vocab_60;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'コーヒー', 'coffee', 1, v_rank_id, 'Minuman kopi hitam beraroma wangi yang ditulis dengan katakana.', 'Kata benda umum.') RETURNING id INTO v_vocab_61;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '山びこ', 'echo', 1, v_rank_id, 'Suara teriakan di GUNUNG (山) yang memantul kembali — Gema.', 'Gema di daerah pegunungan.') RETURNING id INTO v_vocab_62;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'お父さん', 'father-polite', 1, v_rank_id, 'Bentuk panggilan sopan untuk AYAH (父) dengan awalan お dan akhiran さん.', 'Panggilan sopan "Ayah".') RETURNING id INTO v_vocab_63;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '父', 'father', 1, v_rank_id, 'Kanji AYAH (父) dibaca mandiri untuk menyebut ayah sendiri.', 'Kata benda untuk ayah sendiri.') RETURNING id INTO v_vocab_64;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'フランス人', 'french-person', 1, v_rank_id, 'Kombinasi kata Prancis dengan kanji ORANG (人) — Orang Prancis.', 'Kata benda kewarganegaraan.') RETURNING id INTO v_vocab_65;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '友人', 'friend', 1, v_rank_id, 'Kombinasi TEMAN (友) dan ORANG (人) — Teman karib.', 'Kata benda formal untuk sahabat.') RETURNING id INTO v_vocab_66;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'こんにちは', 'hello', 1, v_rank_id, 'Sapaan hangat di siang hari untuk mengucapkan halo/selamat siang.', 'Ungkapan salam.') RETURNING id INTO v_vocab_67;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '今', 'now', 1, v_rank_id, 'Kanji SEKARANG (今) dibaca secara mandiri.', 'Kata benda keterangan waktu sekarang.') RETURNING id INTO v_vocab_68;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '〜人', 'people-counter', 1, v_rank_id, 'Sufiks angka khusus untuk menghitung jumlah manusia/orang.', 'Kata bantu bilangan.') RETURNING id INTO v_vocab_69;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '大人しい', 'obedient', 1, v_rank_id, 'Sikap anak yang bertingkah tenang dan sopan layaknya ORANG DEWASA (大人).', 'Kata sifat yang berarti penurut, tenang, atau pendiam.') RETURNING id INTO v_vocab_70;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '十万', 'one-hundred-thousand', 1, v_rank_id, 'Kombinasi SEPULUH (十) kali SEPULUH RIBU (万) membentuk seratus ribu.', 'Bilangan angka 100.000.') RETURNING id INTO v_vocab_71;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'テーブルの上', 'on-the-table', 1, v_rank_id, 'Ungkapan untuk menyatakan letak posisi tepat di atas permukaan meja.', 'Di atas meja.') RETURNING id INTO v_vocab_72;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '分', 'part-noun', 1, v_rank_id, 'Kanji BAGIAN (分) dibaca secara mandiri.', 'Bagian, menit, atau porsi.') RETURNING id INTO v_vocab_73;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '一万', 'ten-thousand-number', 1, v_rank_id, 'Kombinasi SATU (一) dan SEPULUH RIBU (万) — Angka sepuluh ribu.', 'Angka 10.000.') RETURNING id INTO v_vocab_74;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '万', 'ten-thousand-noun', 1, v_rank_id, 'Kanji SEPULUH RIBU (万) dibaca secara mandiri.', 'Sepuluh ribu.') RETURNING id INTO v_vocab_75;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '今月', 'this-month', 1, v_rank_id, 'BULAN (月) yang sedang berjalan SEKARANG (今) — Bulan ini.', 'Keterangan waktu bulan ini.') RETURNING id INTO v_vocab_76;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'これ', 'this-one', 1, v_rank_id, 'Kata tunjuk untuk merujuk objek benda yang dekat dengan pembicara.', 'Kata ganti benda "ini".') RETURNING id INTO v_vocab_77;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '今日', 'today', 1, v_rank_id, 'HARI (日) yang sedang berjalan SEKARANG (今) — Hari ini.', 'Keterangan waktu hari ini.') RETURNING id INTO v_vocab_78;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'する', 'to-do', 1, v_rank_id, 'Kata kerja serbaguna yang berarti melakukan aksi atau aktivitas.', 'Kata kerja transitif/intransitif.') RETURNING id INTO v_vocab_79;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '二万', 'twenty-thousand', 1, v_rank_id, 'Kombinasi DUA (二) kali SEPULUH RIBU (万) — Dua puluh ribu.', 'Angka 20.000.') RETURNING id INTO v_vocab_80;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'ベッドの下', 'under-the-bed', 1, v_rank_id, 'Ungkapan untuk menyatakan letak posisi tepat di bawah tempat tidur.', 'Di bawah tempat tidur.') RETURNING id INTO v_vocab_81;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', 'いつ', 'when', 1, v_rank_id, 'Kata tanya keterangan waktu untuk menanyakan "kapan".', 'Kata tanya kapan.') RETURNING id INTO v_vocab_82;
  INSERT INTO public.items (type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES
    ('vocabulary', '女の人', 'woman', 1, v_rank_id, 'Kombinasi WANITA (女) dan ORANG (人) — Sosok wanita/perempuan.', 'Kata benda wanita dewasa.') RETURNING id INTO v_vocab_83;

  -- 4. Insert Meanings
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_1, 'Atas', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_2, 'Orang Dewasa', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_3, 'Sendirian', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_4, 'Bawah', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_5, 'Besar', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_6, 'Delapan', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_7, 'Delapan Hal', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_8, 'Hebat', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_8, 'Luar Biasa', false);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_9, 'Gunung', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_10, 'Gunung Fuji', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_11, 'Sembilan', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_12, 'Sembilan Hal', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_13, 'Satu', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_14, 'Satu Hal', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_15, 'Orang', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_16, 'Tolong Berikan', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_16, 'Mohon Berikan', false);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_17, 'Sungai', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_18, 'Tujuh', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_19, 'Tujuh Hal', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_20, 'Ukuran', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_21, 'Sepuluh', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_22, 'Tiga', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_23, 'Tiga Orang', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_24, 'Tiga Hal', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_25, 'Masuk', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_26, 'Mengangkat', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_27, 'Menurunkan', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_28, 'Dua', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_29, 'Dua Orang', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_30, 'Dua Hal', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_31, 'Wanita', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_32, 'Child', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_33, 'Dirt', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_33, 'Soil', false);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_34, 'Eighth Day', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_35, 'February', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_36, 'Girl', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_37, 'Girl', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_38, 'Good Morning', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_39, 'Heavens', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_40, 'Hotel', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_41, 'Inside', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_42, 'January', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_43, 'Moon', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_44, 'Ninth Day', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_45, 'October', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_46, 'One Day', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_47, 'Second Day', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_48, 'Seventh Day', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_49, 'Small', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_50, 'Sun', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_51, 'Tenth Day', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_52, 'Third Day', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_53, 'Thousand', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_54, 'To Climb', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_55, 'Tree', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_56, 'Underwater', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_57, 'Water', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_58, 'Orang Amerika', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_58, 'Amerika', false);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_59, 'Apel', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_60, 'Orang Inggris', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_60, 'Inggris', false);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_61, 'Kopi', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_62, 'Gema', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_63, 'Ayah', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_64, 'Ayah', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_65, 'Orang Prancis', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_65, 'Pria Prancis', false);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_66, 'Teman', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_67, 'Halo', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_67, 'Selamat Siang', false);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_68, 'Sekarang', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_69, 'Orang', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_70, 'Penurut', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_70, 'Pendiam', false);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_71, 'Seratus Ribu', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_72, 'Di Atas Meja', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_73, 'Bagian', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_73, 'Menit', false);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_74, 'Sepuluh Ribu', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_75, 'Sepuluh Ribu', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_76, 'Bulan Ini', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_77, 'Ini', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_77, 'Benda Ini', false);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_78, 'Hari Ini', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_79, 'Melakukan', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_80, 'Dua Puluh Ribu', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_81, 'Di Bawah Tempat Tidur', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_82, 'Kapan', true);
  INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_83, 'Wanita', true);

  -- 5. Insert Readings
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_1, 'うえ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_2, 'おとな', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_3, 'ひとり', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_4, 'した', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_5, 'おおきい', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_6, 'はち', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_7, 'やっつ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_8, 'たいした', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_9, 'やま', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_10, 'ふじさん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_11, 'きゅう', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_12, 'ここのつ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_13, 'いち', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_14, 'ひとつ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_15, 'ひと', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_16, 'ください', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_17, 'かわ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_18, 'なな', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_19, 'ななつ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_20, 'おおきさ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_21, 'じゅう', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_22, 'さん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_23, 'さんにん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_24, 'みっつ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_25, 'はいる', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_26, 'あげる', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_27, 'さげる', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_28, 'に', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_29, 'ふたり', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_30, 'ふたつ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_31, 'おんな', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_32, 'こ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_33, 'つち', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_34, 'ようか', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_35, 'にがつ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_36, 'じょし', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_37, 'おonnaのこ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_37, 'おんなのこ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_38, 'おはよう', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_39, 'てん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_40, 'ホテル', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_41, 'なか', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_42, 'いちがつ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_43, 'つき', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_44, 'ここのか', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_45, 'じゅうがつ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_46, 'いちにち', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_47, 'ふつか', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_48, 'なのか', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_49, 'ちいさい', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_50, 'ひ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_51, 'とおか', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_52, 'みっか', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_53, 'せん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_54, 'のぼる', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_55, 'き', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_56, 'すいちゅう', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_57, 'みず', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_58, 'あめりかじん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_59, 'リンゴ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_60, 'いぎりすじん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_61, 'コーヒー', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_62, 'やまびこ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_63, 'おとうさん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_64, 'ちち', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_65, 'ふらんすじん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_66, 'ゆうじん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_67, 'こんにちは', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_68, 'いま', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_69, 'にん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_70, 'おとなしい', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_71, 'じゅうまん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_72, 'てーぶるのうえ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_73, 'ぶん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_74, 'いちまん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_75, 'まん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_76, 'こんげつ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_77, 'これ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_78, 'きょう', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_79, 'する', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_80, 'にまん', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_81, 'べっどのした', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_82, 'いつ', NULL, true);
  INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_83, 'おんなのひと', NULL, true);

  -- 6. Insert Context Sentences
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_1, '本は机の上にあります。', 'Buku itu ada di atas meja.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_2, '大人は子供より背が高い。', 'Orang dewasa lebih tinggi dari anak-anak.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_3, '彼女は一人で旅行した。', 'Dia (perempuan) bepergian sendirian.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_4, '猫はテーブルの下にいる。', 'Kucing itu ada di bawah meja.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_5, 'あの山はとても大きい。', 'Gunung itu sangat besar.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_9, '富士山は日本一の山だ。', 'Gunung Fuji adalah gunung terbaik di Jepang.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_15, 'あの人は誰ですか？', 'Siapakah orang itu?');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_25, '部屋に入る前にノックしてください。', 'Tolong ketuk pintu sebelum masuk ke kamar.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_26, '手を上げてください。', 'Tolong angkat tangan Anda.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_27, '値段を下げてください。', 'Tolong turunkan harganya.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_31, 'あの女の人は先生です。', 'Wanita itu adalah seorang guru.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_58, '彼は親切なアメリカ人です。', 'Dia adalah orang Amerika yang ramah.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_59, 'リンゴを食べます。', 'Saya memakan buah apel.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_61, 'コーヒーを一杯ください。', 'Tolong berikan secangkir kopi.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_63, 'あなたのお父さんはお元気ですか？', 'Bagaimanakah kabar Ayah Anda?');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_64, '私の父は会社員です。', 'Ayah saya adalah seorang karyawan kantor.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_67, '皆さん、こんにちは。', 'Halo semuanya, selamat siang.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_68, '私は今、宿題をしています。', 'Saya sekarang sedang mengerjakan pekerjaan rumah.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_78, '今日は良い天気ですね。', 'Hari ini cuacanya sangat bagus ya.');
  INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_83, 'あそこにいる女の人は誰ですか？', 'Siapakah wanita yang berada di sebelah sana?');

  -- 7. Insert Junctions / Prerequisites
  IF k_kanji_4e0a IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_1, k_kanji_4e0a) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_1, k_kanji_4e0a) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5927 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_2, k_kanji_5927) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_2, k_kanji_5927) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eba IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_2, k_kanji_4eba) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_2, k_kanji_4eba) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e00 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_3, k_kanji_4e00) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_3, k_kanji_4e00) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eba IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_3, k_kanji_4eba) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_3, k_kanji_4eba) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e0b IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_4, k_kanji_4e0b) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_4, k_kanji_4e0b) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5927 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_5, k_kanji_5927) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_5, k_kanji_5927) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_516b IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_6, k_kanji_516b) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_6, k_kanji_516b) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_516b IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_7, k_kanji_516b) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_7, k_kanji_516b) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5927 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_8, k_kanji_5927) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_8, k_kanji_5927) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5c71 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_9, k_kanji_5c71) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_9, k_kanji_5c71) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5c71 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_10, k_kanji_5c71) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_10, k_kanji_5c71) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e5d IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_11, k_kanji_4e5d) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_11, k_kanji_4e5d) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e5d IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_12, k_kanji_4e5d) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_12, k_kanji_4e5d) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e00 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_13, k_kanji_4e00) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_13, k_kanji_4e00) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e00 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_14, k_kanji_4e00) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_14, k_kanji_4e00) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eba IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_15, k_kanji_4eba) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_15, k_kanji_4eba) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e0b IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_16, k_kanji_4e0b) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_16, k_kanji_4e0b) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5ddd IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_17, k_kanji_5ddd) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_17, k_kanji_5ddd) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e03 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_18, k_kanji_4e03) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_18, k_kanji_4e03) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e03 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_19, k_kanji_4e03) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_19, k_kanji_4e03) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5927 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_20, k_kanji_5927) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_20, k_kanji_5927) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5341 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_21, k_kanji_5341) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_21, k_kanji_5341) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e09 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_22, k_kanji_4e09) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_22, k_kanji_4e09) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e09 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_23, k_kanji_4e09) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_23, k_kanji_4e09) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eba IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_23, k_kanji_4eba) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_23, k_kanji_4eba) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e09 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_24, k_kanji_4e09) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_24, k_kanji_4e09) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5165 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_25, k_kanji_5165) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_25, k_kanji_5165) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e0a IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_26, k_kanji_4e0a) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_26, k_kanji_4e0a) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e0b IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_27, k_kanji_4e0b) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_27, k_kanji_4e0b) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e8c IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_28, k_kanji_4e8c) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_28, k_kanji_4e8c) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e8c IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_29, k_kanji_4e8c) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_29, k_kanji_4e8c) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eba IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_29, k_kanji_4eba) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_29, k_kanji_4eba) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e8c IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_30, k_kanji_4e8c) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_30, k_kanji_4e8c) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5973 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_31, k_kanji_5973) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_31, k_kanji_5973) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5b50 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_32, k_kanji_5b50) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_32, k_kanji_5b50) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_571f IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_33, k_kanji_571f) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_33, k_kanji_571f) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_516b IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_34, k_kanji_516b) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_34, k_kanji_516b) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_65e5 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_34, k_kanji_65e5) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_34, k_kanji_65e5) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e8c IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_35, k_kanji_4e8c) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_35, k_kanji_4e8c) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_6708 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_35, k_kanji_6708) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_35, k_kanji_6708) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5973 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_36, k_kanji_5973) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_36, k_kanji_5973) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5b50 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_36, k_kanji_5b50) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_36, k_kanji_5b50) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5973 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_37, k_kanji_5973) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_37, k_kanji_5973) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5b50 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_37, k_kanji_5b50) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_37, k_kanji_5b50) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5929 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_39, k_kanji_5929) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_39, k_kanji_5929) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e2d IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_41, k_kanji_4e2d) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_41, k_kanji_4e2d) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e00 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_42, k_kanji_4e00) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_42, k_kanji_4e00) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_6708 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_42, k_kanji_6708) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_42, k_kanji_6708) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_6708 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_43, k_kanji_6708) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_43, k_kanji_6708) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e5d IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_44, k_kanji_4e5d) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_44, k_kanji_4e5d) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_65e5 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_44, k_kanji_65e5) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_44, k_kanji_65e5) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5341 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_45, k_kanji_5341) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_45, k_kanji_5341) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_6708 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_45, k_kanji_6708) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_45, k_kanji_6708) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e00 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_46, k_kanji_4e00) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_46, k_kanji_4e00) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_65e5 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_46, k_kanji_65e5) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_46, k_kanji_65e5) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e8c IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_47, k_kanji_4e8c) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_47, k_kanji_4e8c) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_65e5 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_47, k_kanji_65e5) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_47, k_kanji_65e5) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e03 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_48, k_kanji_4e03) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_48, k_kanji_4e03) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_65e5 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_48, k_kanji_65e5) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_48, k_kanji_65e5) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5c0f IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_49, k_kanji_5c0f) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_49, k_kanji_5c0f) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_65e5 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_50, k_kanji_65e5) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_50, k_kanji_65e5) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5341 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_51, k_kanji_5341) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_51, k_kanji_5341) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_65e5 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_51, k_kanji_65e5) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_51, k_kanji_65e5) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e09 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_52, k_kanji_4e09) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_52, k_kanji_4e09) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_65e5 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_52, k_kanji_65e5) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_52, k_kanji_65e5) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5343 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_53, k_kanji_5343) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_53, k_kanji_5343) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e0a IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_54, k_kanji_4e0a) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_54, k_kanji_4e0a) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_6728 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_55, k_kanji_6728) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_55, k_kanji_6728) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_6c34 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_56, k_kanji_6c34) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_56, k_kanji_6c34) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e2d IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_56, k_kanji_4e2d) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_56, k_kanji_4e2d) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_6c34 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_57, k_kanji_6c34) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_57, k_kanji_6c34) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eba IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_58, k_kanji_4eba) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_58, k_kanji_4eba) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eba IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_60, k_kanji_4eba) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_60, k_kanji_4eba) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5c71 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_62, k_kanji_5c71) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_62, k_kanji_5c71) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_7236 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_63, k_kanji_7236) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_63, k_kanji_7236) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_7236 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_64, k_kanji_7236) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_64, k_kanji_7236) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eba IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_65, k_kanji_4eba) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_65, k_kanji_4eba) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_53cb IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_66, k_kanji_53cb) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_66, k_kanji_53cb) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eba IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_66, k_kanji_4eba) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_66, k_kanji_4eba) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eca IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_68, k_kanji_4eca) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_68, k_kanji_4eca) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eba IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_69, k_kanji_4eba) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_69, k_kanji_4eba) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5927 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_70, k_kanji_5927) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_70, k_kanji_5927) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eba IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_70, k_kanji_4eba) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_70, k_kanji_4eba) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5341 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_71, k_kanji_5341) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_71, k_kanji_5341) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e07 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_71, k_kanji_4e07) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_71, k_kanji_4e07) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e0a IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_72, k_kanji_4e0a) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_72, k_kanji_4e0a) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5206 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_73, k_kanji_5206) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_73, k_kanji_5206) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e00 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_74, k_kanji_4e00) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_74, k_kanji_4e00) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e07 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_74, k_kanji_4e07) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_74, k_kanji_4e07) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e07 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_75, k_kanji_4e07) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_75, k_kanji_4e07) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eca IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_76, k_kanji_4eca) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_76, k_kanji_4eca) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_6708 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_76, k_kanji_6708) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_76, k_kanji_6708) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eca IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_78, k_kanji_4eca) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_78, k_kanji_4eca) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_65e5 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_78, k_kanji_65e5) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_78, k_kanji_65e5) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e8c IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_80, k_kanji_4e8c) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_80, k_kanji_4e8c) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e07 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_80, k_kanji_4e07) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_80, k_kanji_4e07) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4e0b IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_81, k_kanji_4e0b) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_81, k_kanji_4e0b) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_5973 IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_83, k_kanji_5973) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_83, k_kanji_5973) ON CONFLICT DO NOTHING;
  END IF;
  IF k_kanji_4eba IS NOT NULL THEN
    INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES (v_vocab_83, k_kanji_4eba) ON CONFLICT DO NOTHING;
    INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_83, k_kanji_4eba) ON CONFLICT DO NOTHING;
  END IF;

  -- 8. Initialize progress for all existing profiles
  -- This ensures any existing user gets the new vocab items initialized as lesson (stage 0)
  DECLARE
    r_profile RECORD;
  BEGIN
    FOR r_profile IN SELECT id FROM public.profiles LOOP
      PERFORM public.initialize_user_progress(r_profile.id);
    END LOOP;
  END;

END $$;
