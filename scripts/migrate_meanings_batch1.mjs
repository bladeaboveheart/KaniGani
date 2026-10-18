import fs from 'fs';

// Batch 1 items (Level 1-20) with multiple primary meanings
export const batch1Updates = [
  {
    id: "213ed9c2-59ed-4987-bb2b-13e5e80ecdb0",
    meaning_id: "9aaa2b7e-74dc-458c-920b-ddc9916958a8",
    level: 6,
    type: "vocabulary",
    character: "午後",
    newPrimary: "Sore",
    newSlug: "sore",
    alternatives: ["Siang", "PM", "Petang", "P.M."]
  },
  {
    id: "78aba44e-6a62-4d9f-843f-e2654960c1fe",
    meaning_id: "c238ea6c-1c80-4dcb-afcb-c4ae33de3642",
    level: 9,
    type: "vocabulary",
    character: "辛口",
    newPrimary: "Pedas",
    newSlug: "pedas",
    alternatives: ["Tajam", "Rasa Pedas", "Keras"]
  },
  {
    id: "b0862e11-ec33-4633-8689-ea8463aecd02",
    meaning_id: "6a216317-02ac-4ac8-a2df-ff3ab48c6299",
    level: 10,
    type: "vocabulary",
    character: "ちょっと",
    newPrimary: "Sebentar",
    newSlug: "sebentar",
    alternatives: ["Sedikit", "Tunggu Sebentar", "Agak"]
  },
  {
    id: "497c9761-c834-4658-8a69-d55f5ebb4ee5",
    meaning_id: "015d15a6-e028-4e1d-a1d2-34df00dc4886",
    level: 12,
    type: "vocabulary",
    character: "もう",
    newPrimary: "Sudah",
    newSlug: "sudah",
    alternatives: ["Lagi", "Sudah Selesai", "Lagi Sedikit"]
  },
  {
    id: "10ad24f6-397c-430c-8167-b14e717a899a",
    meaning_id: "738b641c-9e85-41e3-ae09-24846420a1a8",
    level: 13,
    type: "kanji",
    character: "俺",
    newPrimary: "Gua",
    newSlug: "gua",
    alternatives: ["Aku", "Saya", "Gue"]
  },
  {
    id: "7ad600d0-ac8d-4e00-be6b-937a3c98cb19",
    meaning_id: "05b02061-cc70-4b3e-9a23-98c7de75e21a",
    level: 13,
    type: "kanji",
    character: "様",
    newPrimary: "Tuan",
    newSlug: "tuan",
    alternatives: ["Nyonya", "Sufiks Gelar", "Yang Terhormat"]
  },
  {
    id: "2c938955-ac6a-40e2-9b81-bc2f1e3f3543",
    meaning_id: "4b55283c-8bea-484d-8209-031fc69e768c",
    level: 13,
    type: "kanji",
    character: "課",
    newPrimary: "Seksi",
    newSlug: "seksi",
    alternatives: ["Bab", "Bagian", "Divisi"]
  },
  {
    id: "a0e85a69-c6b7-4318-be06-9bbe0f17f76b",
    meaning_id: "e5a38222-798c-458d-82a7-09cb0b94a714",
    level: 13,
    type: "vocabulary",
    character: "〜様",
    newPrimary: "Tuan",
    newSlug: "tuan",
    alternatives: ["Nyonya", "Sufiks Tuan"]
  },
  {
    id: "107afc8d-cd97-4175-8f2f-45c22223bfee",
    meaning_id: "10f5903e-25a5-424b-9a57-285dc1697379",
    level: 13,
    type: "vocabulary",
    character: "俺",
    newPrimary: "Gua",
    newSlug: "gua",
    alternatives: ["Aku", "Saya", "Gue"]
  },
  {
    id: "6158f1af-4c82-430b-9a54-89db2436bf00",
    meaning_id: "3d6fabb5-fa4a-4818-b688-d14db17d2451",
    level: 13,
    type: "vocabulary",
    character: "俺たち",
    newPrimary: "Kami",
    newSlug: "kami",
    alternatives: ["Kita", "Kami Sekalian"]
  },
  {
    id: "9e86e2cf-75b6-4311-9433-5867b6cf8492",
    meaning_id: "8e67eca4-b40e-4201-afd6-a3fbfe3932b2",
    level: 13,
    type: "vocabulary",
    character: "岸",
    newPrimary: "Pantai",
    newSlug: "pantai",
    alternatives: ["Tepian", "Pesisir", "Tepi Sungai"]
  },
  {
    id: "a622b4f6-2b8b-4caf-ad33-87a153fe315f",
    meaning_id: "5d823bf6-9617-4036-adfa-cfdc1ccc3dbd",
    level: 13,
    type: "vocabulary",
    character: "疑問",
    newPrimary: "Pertanyaan",
    newSlug: "pertanyaan",
    alternatives: ["Keraguan", "Tanya", "Ragu"]
  },
  {
    id: "2db71102-8b48-4d4e-83b0-f5e750c0c5f2",
    meaning_id: "108e00b8-c80e-491b-b757-711d4c1644d1",
    level: 13,
    type: "vocabulary",
    character: "神様",
    newPrimary: "Tuhan",
    newSlug: "tuhan",
    alternatives: ["Dewa", "Sang Pencipta"]
  },
  {
    id: "eb0da12b-5e86-4f57-9195-0ed3ef60d9e8",
    meaning_id: "99eb1966-17c5-4639-bd16-120ce70c3acd",
    level: 13,
    type: "vocabulary",
    character: "輪",
    newPrimary: "Lingkaran",
    newSlug: "lingkaran",
    alternatives: ["Cincin", "Gelang", "Roda"]
  },
  {
    id: "e43e3efa-af1a-4278-a622-7287446e9b96",
    meaning_id: "f9dfdbf3-e054-47b4-9ff9-61dbdc52d7b7",
    level: 14,
    type: "vocabulary",
    character: "〜的",
    newPrimary: "Bersifat",
    newSlug: "bersifat",
    alternatives: ["Tipikal", "Karakteristik"]
  },
  {
    id: "c0497fc3-1ef6-44b8-858f-6f485b3b86ac",
    meaning_id: "3848f393-5afd-48a1-9178-5ca7bb0fd1df",
    level: 14,
    type: "vocabulary",
    character: "俺ら",
    newPrimary: "Kami",
    newSlug: "kami",
    alternatives: ["Kita", "Kami Sekalian"]
  },
  {
    id: "558125de-4a36-4cb5-b4f8-c7f539258c91",
    meaning_id: "8bf75926-997e-4912-9a79-25283d97d3a4",
    level: 14,
    type: "vocabulary",
    character: "悪口",
    newPrimary: "Umpatan",
    newSlug: "umpatan",
    alternatives: ["Celaan", "Makian", "Fitnah"]
  },
  {
    id: "357032ce-63c3-49d1-866e-2ddc3440f137",
    meaning_id: "a4c2935d-d0fa-4838-98b8-89c0e2a09cda",
    level: 14,
    type: "vocabulary",
    character: "感じ",
    newPrimary: "Kesan",
    newSlug: "kesan",
    alternatives: ["Perasaan", "Sensasi", "Firasat"]
  },
  {
    id: "c7b81773-6fa7-451b-907c-33d8b7842422",
    meaning_id: "419aa414-9f2f-4930-ae6b-c6eac323ec44",
    level: 14,
    type: "vocabulary",
    character: "折角",
    newPrimary: "Susah Payah",
    newSlug: "susah-payah",
    alternatives: ["Mumpung", "Bersusah Payah"]
  },
  {
    id: "591c5537-75db-422e-a2ae-eaab6432e871",
    meaning_id: "e6b35593-0ed4-4f9a-968e-2da3f0c3e1e1",
    level: 14,
    type: "vocabulary",
    character: "望み",
    newPrimary: "Harapan",
    newSlug: "harapan",
    alternatives: ["Keinginan", "Cita-cita", "Asa"]
  },
  {
    id: "de041b6c-6f57-4e21-b911-d7ab9b92f4bc",
    meaning_id: "024e742f-27e6-4f25-a904-d3393109ecc7",
    level: 14,
    type: "vocabulary",
    character: "気持ち悪い",
    newPrimary: "Menjijikkan",
    newSlug: "menjijikkan",
    alternatives: ["Mual", "Geli", "Tidak Nyaman"]
  },
  {
    id: "9821b33f-1190-43fc-8714-ab0b61a796ec",
    meaning_id: "40a43862-d46e-4e6a-961d-53829e3d8493",
    level: 14,
    type: "vocabulary",
    character: "理性",
    newPrimary: "Akal Sehat",
    newSlug: "akal-sehat",
    alternatives: ["Nalar", "Rasio"]
  },
  {
    id: "8e87e938-c054-493e-a4b8-f7db7df9a740",
    meaning_id: "be422844-6232-4430-8ec0-bf5af59a73a1",
    level: 14,
    type: "vocabulary",
    character: "約",
    newPrimary: "Sekitar",
    newSlug: "sekitar",
    alternatives: ["Kira-kira", "Kurang Lebih"]
  },
  {
    id: "0d16e2a9-78a0-4438-8681-4afc8accabc0",
    meaning_id: "63f7ae87-ebb0-4ab0-ad3e-6b49e258226d",
    level: 14,
    type: "vocabulary",
    character: "間に合う",
    newPrimary: "Tepat Waktu",
    newSlug: "tepat-waktu",
    alternatives: ["Sempat", "Keburu"]
  },
  {
    id: "e668ada1-46dd-457c-b19a-b3526abfe812",
    meaning_id: "b959b4f9-2339-4e62-92fe-c2d81f9534e1",
    level: 14,
    type: "vocabulary",
    character: "願望",
    newPrimary: "Keinginan",
    newSlug: "keinginan",
    alternatives: ["Harapan", "Hasrat"]
  },
  {
    id: "7d340716-8475-4565-8018-e1e203cacca4",
    meaning_id: "4c58b592-1e60-4db8-808c-6cb97956ba0a",
    level: 15,
    type: "kanji",
    character: "丈",
    newPrimary: "Kokoh",
    newSlug: "kokoh",
    alternatives: ["Panjang", "Tinggi"]
  },
  {
    id: "553d39de-0aad-42b9-a4ca-205c533a8c11",
    meaning_id: "fbfeafaf-9c85-4b24-b991-1bab1969092e",
    level: 15,
    type: "kanji",
    character: "変",
    newPrimary: "Berubah",
    newSlug: "berubah",
    alternatives: ["Aneh", "Perubahan"]
  },
  {
    id: "19063a93-fffa-416b-83eb-5ff6078e3318",
    meaning_id: "104a2680-a156-4654-a926-939d7b2c7fb2",
    level: 15,
    type: "kanji",
    character: "紀",
    newPrimary: "Zaman",
    newSlug: "zaman",
    alternatives: ["Abad", "Era"]
  },
  {
    id: "8f6d638e-1fe9-4dc9-98b1-fac41f83b976",
    meaning_id: "cd10c537-f143-42d7-8f3e-53cc9d143ce8",
    level: 15,
    type: "kanji",
    character: "飯",
    newPrimary: "Nasi",
    newSlug: "nasi",
    alternatives: ["Makanan", "Santapan"]
  },
  {
    id: "1b4986d8-0204-4d4d-89db-fab69620bebe",
    meaning_id: "7107a2b9-d41e-4529-94ca-cd09906e605d",
    level: 15,
    type: "vocabulary",
    character: "不法",
    newPrimary: "Ilegal",
    newSlug: "ilegal",
    alternatives: ["Melanggar Hukum", "Haram"]
  },
  {
    id: "b0bd4eaf-6e58-4ebc-8c61-08bf6ed5e1e1",
    meaning_id: "5f8aa0dc-b9bf-4831-a2fe-8436f841c71a",
    level: 15,
    type: "vocabulary",
    character: "了解",
    newPrimary: "Paham",
    newSlug: "paham",
    alternatives: ["Dimengerti", "Mengerti", "Siap"]
  },
  {
    id: "bffef089-2da9-4f8c-a0b4-24162ca78afe",
    meaning_id: "e55ce12b-beb6-4443-85da-ef4c5c10cb8d",
    level: 15,
    type: "vocabulary",
    character: "大変",
    newPrimary: "Berat",
    newSlug: "berat",
    alternatives: ["Gawat", "Sulit", "Sukar", "Sangat"]
  },
  {
    id: "56461b9c-eb8c-4d25-8f22-9600ed0fe116",
    meaning_id: "2fbd9450-ca9d-4f07-ba49-25e118fdbec8",
    level: 15,
    type: "vocabulary",
    character: "情けない",
    newPrimary: "Menyedihkan",
    newSlug: "menyedihkan",
    alternatives: ["Memalukan", "Menyedihkan Sekali"]
  },
  {
    id: "95076056-a8f5-4e00-8127-1f86f8b61bea",
    meaning_id: "14d3df28-1059-45ff-b90b-21dcc29dbc46",
    level: 15,
    type: "vocabulary",
    character: "感想",
    newPrimary: "Kesan",
    newSlug: "kesan",
    alternatives: ["Tanggapan", "Opini", "Pendapat"]
  },
  {
    id: "6f1f7eeb-fb81-4be1-89a6-484fc23c9396",
    meaning_id: "dafc7709-8ce4-46a9-bc88-ec073272f3f6",
    level: 15,
    type: "vocabulary",
    character: "時計",
    newPrimary: "Jam",
    newSlug: "jam",
    alternatives: ["Jam Tangan", "Arloji"]
  },
  {
    id: "3e397ac3-90dd-4f08-a2d7-13e547ce8700",
    meaning_id: "873f92df-1cc8-40e8-a85b-4678143bf6f7",
    level: 15,
    type: "vocabulary",
    character: "解ける",
    newPrimary: "Terpecahkan",
    newSlug: "terpecahkan",
    alternatives: ["Terurai", "Lepas", "Terbuka"]
  },
  {
    id: "c4708473-fb2c-446b-8a25-4aa1fa76bfdd",
    meaning_id: "b2616d55-82bf-4a83-bda2-023164fb6a55",
    level: 15,
    type: "vocabulary",
    character: "頑丈",
    newPrimary: "Kokoh",
    newSlug: "kokoh",
    alternatives: ["Kuat", "Kekar"]
  },
  {
    id: "eb3c8193-1632-4340-8634-c5217d1a8d17",
    meaning_id: "d4cf5a5a-a5a7-4c55-bd01-924713982575",
    level: 15,
    type: "vocabulary",
    character: "飯",
    newPrimary: "Nasi",
    newSlug: "nasi",
    alternatives: ["Makanan", "Santapan"]
  },
  {
    id: "96eb38ef-5715-4864-9c1f-9b9383ca493d",
    meaning_id: "bd20741c-dae2-4ee1-9f55-a637c6034206",
    level: 16,
    type: "kanji",
    character: "係",
    newPrimary: "Petugas",
    newSlug: "petugas",
    alternatives: ["Hubungan", "Penanggung Jawab"]
  },
  {
    id: "a9fb8892-a47d-4bac-9a17-20ab498cfb15",
    meaning_id: "240d7076-8cdc-4ec8-b3a6-c1125e93555b",
    level: 16,
    type: "kanji",
    character: "弁",
    newPrimary: "Dialek",
    newSlug: "dialek",
    alternatives: ["Katup", "Tutur Kata"]
  },
  {
    id: "842f66bd-37df-429f-8315-83c470a6f467",
    meaning_id: "9278e73e-0e08-43a2-9132-075d91c2f4ad",
    level: 16,
    type: "kanji",
    character: "留",
    newPrimary: "Menahan",
    newSlug: "menahan",
    alternatives: ["Tinggal", "Menetap"]
  },
  {
    id: "adc7862a-af6f-4167-9104-441ca888fa8d",
    meaning_id: "7ed8cc9c-e832-47af-a02f-6483b659fca8",
    level: 16,
    type: "kanji",
    character: "辞",
    newPrimary: "Mengundurkan Diri",
    newSlug: "mengundurkan-diri",
    alternatives: ["Kata", "Berhenti"]
  },
  {
    id: "506a2500-73aa-4c55-bf4f-9ee188f21b3f",
    meaning_id: "a228e56a-dbd7-407f-a449-a9aeb646d4e2",
    level: 16,
    type: "kanji",
    character: "面",
    newPrimary: "Permukaan",
    newSlug: "permukaan",
    alternatives: ["Muka", "Wajah", "Sisi"]
  },
  {
    id: "b94315ba-14ed-4681-9d86-34df158e4911",
    meaning_id: "6a25279b-5663-4b09-98c2-e00bf4d8f4ee",
    level: 16,
    type: "vocabulary",
    character: "急",
    newPrimary: "Mendadak",
    newSlug: "mendadak",
    alternatives: ["Tiba-tiba", "Genting", "Cepat"]
  },
  {
    id: "b0e968d9-2733-42b6-9078-e5b2e9925aec",
    meaning_id: "0db166b9-8b7d-45ad-81f2-0a627af8d0f6",
    level: 16,
    type: "vocabulary",
    character: "留守",
    newPrimary: "Tidak Di Rumah",
    newSlug: "tidak-di-rumah",
    alternatives: ["Sedang Keluar", "Absen"]
  },
  {
    id: "4628a5db-3872-4021-8331-1d0cf2fa8b7a",
    meaning_id: "2876dc7e-28ff-4184-b721-30b64964b747",
    level: 16,
    type: "vocabulary",
    character: "面",
    newPrimary: "Permukaan",
    newSlug: "permukaan",
    alternatives: ["Muka", "Topeng", "Wajah"]
  },
  {
    id: "962b91c0-46ae-444f-b0c6-ab115f9413ad",
    meaning_id: "20e107d7-0f66-4de9-875c-c6408a727a88",
    level: 17,
    type: "kanji",
    character: "察",
    newPrimary: "Menebak",
    newSlug: "menebak",
    alternatives: ["Menilai", "Menduga"]
  },
  {
    id: "510a3a44-709f-42b4-ad25-7af3b4e15bf4",
    meaning_id: "6b570c1e-a5a3-4a05-8bcf-8e672d24e308",
    level: 17,
    type: "kanji",
    character: "常",
    newPrimary: "Biasa",
    newSlug: "biasa",
    alternatives: ["Selalu", "Normal", "Rutin"]
  },
  {
    id: "5c30ebcd-00a4-48d4-a44f-3db302deea2b",
    meaning_id: "a2102ef5-ad46-46cf-91ac-f2c19cb4ba9e",
    level: 17,
    type: "kanji",
    character: "是",
    newPrimary: "Kebenaran",
    newSlug: "kebenaran",
    alternatives: ["Mutlak", "Benar"]
  },
  {
    id: "4425e8f5-bc8c-4129-8d65-bafc7fcf1693",
    meaning_id: "29394d81-364d-4a45-b8dd-d8b912ee1c48",
    level: 17,
    type: "kanji",
    character: "非",
    newPrimary: "Kesalahan",
    newSlug: "kesalahan",
    alternatives: ["Bukan", "Non-"]
  },
  {
    id: "334f2559-975d-498b-b96c-ece41963b061",
    meaning_id: "29e2fc38-fb65-4b8c-b8cc-7df95139d3ef",
    level: 17,
    type: "vocabulary",
    character: "ペラペラ",
    newPrimary: "Fasih",
    newSlug: "fasih",
    alternatives: ["Lancar", "Cerewet"]
  },
  {
    id: "ef06667b-c00d-4067-9024-50e01efe0c18",
    meaning_id: "b3672c1d-4d04-4ee3-acda-8039b1167c40",
    level: 17,
    type: "vocabulary",
    character: "非常",
    newPrimary: "Darurat",
    newSlug: "darurat",
    alternatives: ["Sangat", "Luar Biasa"]
  },
  {
    id: "9cb09d56-21ed-463c-98fe-f5f716cd6c8a",
    meaning_id: "e4c57339-fa79-4ef6-8fef-326f9a8d3c51",
    level: 18,
    type: "kanji",
    character: "喫",
    newPrimary: "Menghisap",
    newSlug: "menghisap",
    alternatives: ["Mengonsumsi", "Menelan"]
  },
  {
    id: "75fc242f-09b2-406c-bac6-7616f053ed06",
    meaning_id: "2a3e3d5c-9cb1-498e-a4b5-905f4b8fa065",
    level: 18,
    type: "kanji",
    character: "座",
    newPrimary: "Duduk",
    newSlug: "duduk",
    alternatives: ["Tempat Duduk", "Kursi"]
  },
  {
    id: "6ce4e056-81f9-44a9-a5ae-e22b407750cf",
    meaning_id: "7698e217-bf58-488a-b99a-d78afae06a8c",
    level: 18,
    type: "kanji",
    character: "種",
    newPrimary: "Benih",
    newSlug: "benih",
    alternatives: ["Jenis", "Macam", "Spesies"]
  },
  {
    id: "7e6d6c86-a24e-48cd-b45b-3ec5d5987f84",
    meaning_id: "3a16674e-8765-4861-b7a2-b4159826281c",
    level: 19,
    type: "kanji",
    character: "乱",
    newPrimary: "Kekacauan",
    newSlug: "kekacauan",
    alternatives: ["Kerusuhan", "Kekacauan Besar"]
  },
  {
    id: "a74c2867-83fe-466a-9f46-1aff3d15d09d",
    meaning_id: "2f132c0e-f8c9-45e3-8734-7257c9fadc57",
    level: 19,
    type: "kanji",
    character: "善",
    newPrimary: "Kebajikan",
    newSlug: "kebajikan",
    alternatives: ["Kebaikan", "Budi Baik"]
  },
  {
    id: "0b2ff24c-5ea4-4f29-aa59-bc1b0616f569",
    meaning_id: "4182c707-6998-4a09-bce3-3e78a6eb2394",
    level: 19,
    type: "kanji",
    character: "容",
    newPrimary: "Isi",
    newSlug: "isi",
    alternatives: ["Rupa", "Wajah", "Bentuk"]
  },
  {
    id: "58531af7-1782-4811-ab79-7cf35a6c4012",
    meaning_id: "72f10a85-3a1d-44db-b683-27cdabf32915",
    level: 19,
    type: "kanji",
    character: "徒",
    newPrimary: "Murid",
    newSlug: "murid",
    alternatives: ["Pengikut", "Siswa"]
  },
  {
    id: "e64f02af-497c-4d06-8507-146c46892c92",
    meaning_id: "f016850e-ee70-4d7f-bcc7-44aac3c9da6a",
    level: 19,
    type: "kanji",
    character: "得",
    newPrimary: "Memperoleh",
    newSlug: "memperoleh",
    alternatives: ["Untung", "Mendapat"]
  },
  {
    id: "d82bdb48-9dcd-4ff7-a8ec-4bcfd17f79be",
    meaning_id: "84afff24-2533-40fd-b2bd-cb73912c3cf3",
    level: 19,
    type: "kanji",
    character: "改",
    newPrimary: "Memperbaiki",
    newSlug: "memperbaiki",
    alternatives: ["Merombak", "Memperbarui"]
  },
  {
    id: "bf347e17-f18c-4be8-b56b-7e673131d44b",
    meaning_id: "16f26bfe-5a01-4bae-96ac-5104a37cc940",
    level: 19,
    type: "kanji",
    character: "易",
    newPrimary: "Mudah",
    newSlug: "mudah",
    alternatives: ["Sederhana", "Gampang"]
  },
  {
    id: "555b146f-c75b-4819-971a-43c6175bb2e1",
    meaning_id: "6d04f738-65d8-4a07-b2b9-48c0a508e80f",
    level: 19,
    type: "kanji",
    character: "暴",
    newPrimary: "Kekerasan",
    newSlug: "kekerasan",
    alternatives: ["Mengamuk", "Amukan"]
  },
  {
    id: "9f1b6218-4867-4e95-95f0-d58118e018ba",
    meaning_id: "96caa0d7-d555-453d-80cd-4846d3552e59",
    level: 19,
    type: "kanji",
    character: "節",
    newPrimary: "Ruas",
    newSlug: "ruas",
    alternatives: ["Sendi", "Musim", "Buku"]
  },
  {
    id: "19a5c9d7-4282-4bb3-8628-db1e5f145cff",
    meaning_id: "ae8bac3f-2792-48c1-82c5-0b16ce5bf4ff",
    level: 19,
    type: "kanji",
    character: "詞",
    newPrimary: "Kelas Kata",
    newSlug: "kelas-kata",
    alternatives: ["Lirik", "Kata"]
  },
  {
    id: "b31aa61b-d0dd-4a70-a733-0bf7cf996afe",
    meaning_id: "69225bde-02cd-454c-bbda-fda4c6273ab3",
    level: 19,
    type: "kanji",
    character: "閥",
    newPrimary: "Faksi",
    newSlug: "faksi",
    alternatives: ["Klik", "Kelompok"]
  },
  {
    id: "594e273f-ffcd-4360-9342-b535a452f953",
    meaning_id: "61c31f11-689b-4174-985b-bc12f4b574e3",
    level: 19,
    type: "vocabulary",
    character: "いい加減",
    newPrimary: "Asal-asalan",
    newSlug: "asal-asalan",
    alternatives: ["Ceroboh", "Sembarangan"]
  },
  {
    id: "dda1c1a5-cbe4-47e2-84be-0df36770e478",
    meaning_id: "35de2564-98ed-4f9a-acbd-edd692a16702",
    level: 19,
    type: "vocabulary",
    character: "一冊",
    newPrimary: "Satu Jilid",
    newSlug: "satu-jilid",
    alternatives: ["Satu Buku"]
  },
  {
    id: "9c39d591-8f08-414d-b536-2d8acc16b4c3",
    meaning_id: "56c6995a-34f3-4c90-b707-eff7fbfb5807",
    level: 19,
    type: "vocabulary",
    character: "三冊",
    newPrimary: "Tiga Jilid",
    newSlug: "tiga-jilid",
    alternatives: ["Tiga Buku"]
  },
  {
    id: "592f498d-8fa1-410f-acfa-8ea483235162",
    meaning_id: "3a728379-56e8-4fa0-9009-eb326d1e1dd6",
    level: 19,
    type: "vocabulary",
    character: "乱れる",
    newPrimary: "Kacau",
    newSlug: "kacau",
    alternatives: ["Berantakan", "Kusut"]
  },
  {
    id: "aaaa4dac-a342-4994-b359-67ff48e9600a",
    meaning_id: "6a679ce6-b04b-488d-8aa2-7acc071606a1",
    level: 19,
    type: "vocabulary",
    character: "仲直り",
    newPrimary: "Berdamai",
    newSlug: "berdamai",
    alternatives: ["Rujuk", "Baikan"]
  },
  {
    id: "6cb1db15-6c4a-4043-9ff6-f4aecf9d6f8c",
    meaning_id: "d5f39632-1d24-44a6-b96a-e67ba756dd7c",
    level: 19,
    type: "vocabulary",
    character: "信徒",
    newPrimary: "Penganut",
    newSlug: "penganut",
    alternatives: ["Jemaat", "Pengikut"]
  },
  {
    id: "392b0ac8-9866-49d1-b843-9895b9a1040e",
    meaning_id: "0c60020b-e29b-4092-8004-592b1b369135",
    level: 19,
    type: "vocabulary",
    character: "八冊",
    newPrimary: "Delapan Jilid",
    newSlug: "delapan-jilid",
    alternatives: ["Delapan Buku"]
  },
  {
    id: "edaeacec-77d1-4b79-bec9-3881e864fdeb",
    meaning_id: "869d684e-5649-431b-ba3d-cde90f2ed531",
    level: 19,
    type: "vocabulary",
    character: "内容",
    newPrimary: "Isi",
    newSlug: "isi",
    alternatives: ["Konten", "Muatan"]
  },
  {
    id: "aee15530-7f84-4c45-b7f7-1d4d882e0bd4",
    meaning_id: "f6ad2ae6-8e16-4182-9a5a-0db1e841a71a",
    level: 19,
    type: "vocabulary",
    character: "外れる",
    newPrimary: "Terlepas",
    newSlug: "terlepas",
    alternatives: ["Meleset", "Copot"]
  },
  {
    id: "9d978ad5-342f-48e7-8980-3d15fd3d76d9",
    meaning_id: "0b8de532-9564-4c2d-bb64-0203baa25237",
    level: 19,
    type: "vocabulary",
    character: "宇宙",
    newPrimary: "Alam Semesta",
    newSlug: "alam-semesta",
    alternatives: ["Luar Angkasa", "Kosmos"]
  },
  {
    id: "3161b579-5d59-44fc-9a31-4240eccfc7c2",
    meaning_id: "4bd1c5f1-dc3a-41f3-b2c1-6c784e321388",
    level: 19,
    type: "vocabulary",
    character: "宙",
    newPrimary: "Luar Angkasa",
    newSlug: "luar-angkasa",
    alternatives: ["Melayang Di Udara", "Angkasa"]
  },
  {
    id: "c5692855-164b-4c4b-a002-7397ef1c597b",
    meaning_id: "0af18d16-483a-46b7-af08-5503991e369c",
    level: 19,
    type: "vocabulary",
    character: "暴走",
    newPrimary: "Mengamuk",
    newSlug: "mengamuk",
    alternatives: ["Ugal-ugalan", "Lepas Kendali"]
  },
  {
    id: "6feac216-aaa0-4f7c-a2c6-4399238f5934",
    meaning_id: "5d3ef567-33ae-4e2d-b95b-09d52758edeb",
    level: 19,
    type: "vocabulary",
    character: "生徒",
    newPrimary: "Murid",
    newSlug: "murid",
    alternatives: ["Siswa", "Pelajar"]
  },
  {
    id: "86d9ffe4-8298-48c4-9c31-9cca96796e1b",
    meaning_id: "3c6ff74a-5246-4fae-975e-c06e2c7420be",
    level: 19,
    type: "vocabulary",
    character: "続く",
    newPrimary: "Berlanjut",
    newSlug: "berlanjut",
    alternatives: ["Bersambung", "Menerus"]
  },
  {
    id: "33030572-e8b3-4c04-b054-64a60aa98dbc",
    meaning_id: "c5cb70d0-13f5-451f-9175-9ab9624c8995",
    level: 19,
    type: "vocabulary",
    character: "連れる",
    newPrimary: "Membawa Serta",
    newSlug: "membawa-serta",
    alternatives: ["Mengajak", "Membawa Bersama"]
  },
  {
    id: "1c1eb091-8d12-4442-97cb-f1bf9a8c464e",
    meaning_id: "e40f4e04-2fb2-4aa1-a4d8-47331e2eecd6",
    level: 19,
    type: "vocabulary",
    character: "連中",
    newPrimary: "Gerombolan",
    newSlug: "gerombolan",
    alternatives: ["Kawan-kawan", "Rombongan"]
  },
  {
    id: "343b2e48-160d-4d32-9be5-a293ffaeefe3",
    meaning_id: "5baf0f53-15ae-4a3f-9e68-9f4f118982c0",
    level: 19,
    type: "vocabulary",
    character: "順番",
    newPrimary: "Urutan",
    newSlug: "urutan",
    alternatives: ["Giliran", "Antrean"]
  },
  {
    id: "b6595695-cd50-4929-a25f-3f38ed51039b",
    meaning_id: "89f48a1e-14d2-4e84-ae6b-440e5f3bfc42",
    level: 20,
    type: "kanji",
    character: "倒",
    newPrimary: "Tumbang",
    newSlug: "tumbang",
    alternatives: ["Menggulingkan", "Jatuh", "Roboh"]
  },
  {
    id: "008348ed-1551-4b0a-98c9-cc308e872f1b",
    meaning_id: "7cb517c3-de6c-4754-80ad-12dca8964464",
    level: 20,
    type: "kanji",
    character: "嫌",
    newPrimary: "Tidak Suka",
    newSlug: "tidak-suka",
    alternatives: ["Benci", "Enggan"]
  },
  {
    id: "748eac7a-7ad2-4b26-b9b5-e1e9312fe763",
    meaning_id: "105ece16-c14d-45be-b554-adbfedb7cd98",
    level: 20,
    type: "kanji",
    character: "害",
    newPrimary: "Bahaya",
    newSlug: "bahaya",
    alternatives: ["Kerusakan", "Dampak Buruk"]
  },
  {
    id: "b8766466-07d5-40d4-82db-be4205be61f2",
    meaning_id: "3953effc-0ac3-4e5b-9054-c701eb4821ec",
    level: 20,
    type: "kanji",
    character: "率",
    newPrimary: "Rasio",
    newSlug: "rasio",
    alternatives: ["Persentase", "Tingkat", "Tarif"]
  },
  {
    id: "eb518e88-f18f-402e-84b8-97de7496c642",
    meaning_id: "dd2b1b48-e9b0-4652-acb4-0277e6811a20",
    level: 20,
    type: "kanji",
    character: "産",
    newPrimary: "Melahirkan",
    newSlug: "melahirkan",
    alternatives: ["Produksi", "Menghasilkan"]
  },
  {
    id: "cff13843-027a-41e8-b5b6-cb0f1a765db0",
    meaning_id: "827c5712-b7ba-4e15-8e76-5fb022651aa6",
    level: 20,
    type: "kanji",
    character: "経",
    newPrimary: "Melewati",
    newSlug: "melewati",
    alternatives: ["Garis Bujur", "Melalui"]
  },
  {
    id: "95b83ab2-6e73-42d8-a4e3-643938147787",
    meaning_id: "ffcc45c0-fabb-4bd6-b0ee-929977b5d051",
    level: 20,
    type: "kanji",
    character: "被",
    newPrimary: "Tertimpa",
    newSlug: "tertimpa",
    alternatives: ["Menderita", "Terkena"]
  },
  {
    id: "92c3936f-eede-493c-aab9-1f0dffb3e66d",
    meaning_id: "6f92ce1f-eefd-4b59-96b9-b542e3ff6cda",
    level: 20,
    type: "kanji",
    character: "論",
    newPrimary: "Teori",
    newSlug: "teori",
    alternatives: ["Argumen", "Perdebatan"]
  },
  {
    id: "e9268410-014c-486b-bca6-436ca48c5565",
    meaning_id: "44c33196-43b6-434c-a4b7-78d5c46a04ed",
    level: 20,
    type: "vocabulary",
    character: "一個",
    newPrimary: "Satu Buah",
    newSlug: "satu-buah",
    alternatives: ["Satu Butir", "Satu Biji"]
  },
  {
    id: "a3ef8da4-c16e-4d49-af8b-3e906e3b8fb0",
    meaning_id: "3435eee0-3c38-49e0-9503-c2752de8dac0",
    level: 20,
    type: "vocabulary",
    character: "三個",
    newPrimary: "Tiga Buah",
    newSlug: "tiga-buah",
    alternatives: ["Tiga Butir"]
  },
  {
    id: "b4de419a-0a71-4dd5-ac38-424f0f66db2c",
    meaning_id: "d79a4c0a-c421-4973-92dc-bffd26e17dae",
    level: 20,
    type: "vocabulary",
    character: "不思議",
    newPrimary: "Ajaib",
    newSlug: "ajaib",
    alternatives: ["Misterius", "Aneh"]
  },
  {
    id: "a0886c7f-8b88-4b69-b0ef-24fdbb91bf22",
    meaning_id: "a9c02f79-bb32-4b3d-863f-2842e8a0e91f",
    level: 20,
    type: "vocabulary",
    character: "倒す",
    newPrimary: "Menumbangkan",
    newSlug: "menumbangkan",
    alternatives: ["Mengalahkan", "Merobohkan"]
  },
  {
    id: "2d052a50-97c8-4cc4-82f2-c20ef6108ba1",
    meaning_id: "7529dbc7-6aca-4425-b3de-c992ff419686",
    level: 20,
    type: "vocabulary",
    character: "同感",
    newPrimary: "Sependapat",
    newSlug: "sependapat",
    alternatives: ["Sepemikiran", "Setuju"]
  },
  {
    id: "749eee4f-719f-41bb-8445-8b052f85da62",
    meaning_id: "36d0906a-7340-45e6-9210-aea2805bdd31",
    level: 20,
    type: "vocabulary",
    character: "困る",
    newPrimary: "Mengalami Kesulitan",
    newSlug: "mengalami-kesulitan",
    alternatives: ["Bingung", "Susah", "Repot"]
  },
  {
    id: "c9d19ac5-7cf0-4df6-bf23-d0562f7dbd18",
    meaning_id: "7da36430-579b-4382-9164-66fcbd16775e",
    level: 20,
    type: "vocabulary",
    character: "嫌",
    newPrimary: "Tidak Suka",
    newSlug: "tidak-suka",
    alternatives: ["Enggan", "Benci"]
  },
  {
    id: "b077ea41-08cd-4255-a515-74f33475cf5b",
    meaning_id: "561a2a31-f637-46c5-be8b-00d01391eee4",
    level: 20,
    type: "vocabulary",
    character: "嫌悪",
    newPrimary: "Kebencian",
    newSlug: "kebencian",
    alternatives: ["Rasa Muak", "Muak", "Benci"]
  },
  {
    id: "a7dea0b9-9cd4-43e1-923e-25bbd2f4aa15",
    meaning_id: "580ab00d-ff00-4769-b495-e61214202778",
    level: 20,
    type: "vocabulary",
    character: "実る",
    newPrimary: "Berbuah",
    newSlug: "berbuah",
    alternatives: ["Membuahkan Hasil", "Matang"]
  },
  {
    id: "4846cccd-a32f-4779-95fc-c6145f018803",
    meaning_id: "2abbcda6-ee59-48ab-99aa-3bcdeab0c0c1",
    level: 20,
    type: "vocabulary",
    character: "岩石",
    newPrimary: "Batuan",
    newSlug: "batuan",
    alternatives: ["Batu"]
  },
  {
    id: "b570e991-2201-4891-a0f1-1b4aaef1c9ba",
    meaning_id: "cc8c920e-5fc0-453c-9895-06cf456e8e09",
    level: 20,
    type: "vocabulary",
    character: "手洗い",
    newPrimary: "Toilet",
    newSlug: "toilet",
    alternatives: ["Cuci Tangan", "Kamar Kecil"]
  },
  {
    id: "a7180685-18af-4e47-98fc-f4723293609d",
    meaning_id: "3cd3950b-9ece-48fe-812a-98a46e7db5d2",
    level: 20,
    type: "vocabulary",
    character: "無くなる",
    newPrimary: "Habis",
    newSlug: "habis",
    alternatives: ["Hilang", "Lenyap"]
  },
  {
    id: "4a95f6c9-640f-4bca-9535-307f00544db1",
    meaning_id: "1da8e6a6-7ace-4902-bba4-1259e412a2b4",
    level: 20,
    type: "vocabulary",
    character: "焼ける",
    newPrimary: "Terbakar",
    newSlug: "terbakar",
    alternatives: ["Terpanggang", "Hangus"]
  },
  {
    id: "63973b66-3ef7-449a-9844-9bd72d73fefb",
    meaning_id: "9aaebfbc-b66d-4936-8d81-a630cea682b4",
    level: 20,
    type: "vocabulary",
    character: "産まれる",
    newPrimary: "Dilahirkan",
    newSlug: "dilahirkan",
    alternatives: ["Lahir"]
  },
  {
    id: "556148eb-39c4-4a10-bd20-946cbeaa9472",
    meaning_id: "976f3a0d-9df3-4891-9a26-4c1515b38e4d",
    level: 20,
    type: "vocabulary",
    character: "確率",
    newPrimary: "Probabilitas",
    newSlug: "probabilitas",
    alternatives: ["Kemungkinan", "Peluang"]
  },
  {
    id: "f35b81b6-93cc-44c0-a90c-647d2f8e3954",
    meaning_id: "05aa45eb-c42c-40f4-92d8-900d8fb7ebf0",
    level: 20,
    type: "vocabulary",
    character: "胸焼け",
    newPrimary: "Nyeri Ulu Hati",
    newSlug: "nyeri-ulu-hati",
    alternatives: ["Mulas", "Sakit Ulu Hati"]
  },
  {
    id: "ca6a962b-e70e-4264-b955-02730aa545bc",
    meaning_id: "1176d3fa-9e50-43ff-9508-e475ededdda3",
    level: 20,
    type: "vocabulary",
    character: "自在",
    newPrimary: "Leluasa",
    newSlug: "leluasa",
    alternatives: ["Bebas", "Suka Hati"]
  },
  {
    id: "b838fd82-b7e8-4a15-8001-4f082d9a63d9",
    meaning_id: "7f8306ba-c8eb-41ca-ae3f-fdf82cb63288",
    level: 20,
    type: "vocabulary",
    character: "被害",
    newPrimary: "Kerusakan",
    newSlug: "kerusakan",
    alternatives: ["Dampak Buruk", "Kerugian"]
  },
  {
    id: "a165c29a-8c24-4feb-adef-8cebb7a23a63",
    meaning_id: "49561aa6-f16f-4207-b2d8-144d508388ef",
    level: 20,
    type: "vocabulary",
    character: "議会",
    newPrimary: "Parlemen",
    newSlug: "parlemen",
    alternatives: ["Dewan Perwakilan", "Kongres"]
  },
  {
    id: "b0760c5d-a669-40fa-b496-e93e7c297a4a",
    meaning_id: "52c6cd9f-4965-4fd7-b830-245944844fa9",
    level: 20,
    type: "vocabulary",
    character: "議員",
    newPrimary: "Anggota Parlemen",
    newSlug: "anggota-parlemen",
    alternatives: ["Anggota Dewan", "Wakil Rakyat"]
  },
  {
    id: "5e50bf9d-eb84-4b81-8a68-6a2ba5983b5e",
    meaning_id: "4d607661-c503-4c6d-b86a-aad046574691",
    level: 20,
    type: "vocabulary",
    character: "面倒",
    newPrimary: "Merepotkan",
    newSlug: "merepotkan",
    alternatives: ["Rumit", "Susah", "Repot"]
  }
];

function escapeSql(str) {
  return str.replace(/'/g, "''");
}

export function generateChunkSql(items, title) {
  let sql = `-- Migration: ${title}\n`;
  sql += `-- Total items: ${items.length}\n\n`;
  sql += `DO $$\nBEGIN\n\n`;

  for (const item of items) {
    const pEsc = escapeSql(item.newPrimary);
    const sEsc = escapeSql(item.newSlug);

    sql += `  -- [${item.type.toUpperCase()}] ${item.character} (Level ${item.level})\n`;
    sql += `  UPDATE item_meanings SET meaning = '${pEsc}', primary_meaning = true, accepted_answer = true WHERE id = '${item.meaning_id}';\n`;

    if (item.type !== 'radical' || item.character) {
      sql += `  UPDATE items SET slug = '${sEsc}' WHERE id = '${item.id}';\n`;
    }

    for (const alt of item.alternatives) {
      const aEsc = escapeSql(alt);
      sql += `  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '${item.id}' AND LOWER(TRIM(meaning)) = LOWER(TRIM('${aEsc}'))) THEN\n`;
      sql += `    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('${item.id}', '${aEsc}', false, true);\n`;
      sql += `  END IF;\n`;
    }

    sql += `\n`;
  }

  sql += `END $$;\n`;
  return sql;
}

if (process.argv[1].endsWith('migrate_meanings_batch1.mjs')) {
  const p1 = batch1Updates.slice(0, 40);
  const p2 = batch1Updates.slice(40, 80);
  const p3 = batch1Updates.slice(80);

  fs.writeFileSync('sql/migration_batch1_part1.sql', generateChunkSql(p1, 'Batch 1 Part 1 (Items 1-40)'), 'utf8');
  fs.writeFileSync('sql/migration_batch1_part2.sql', generateChunkSql(p2, 'Batch 1 Part 2 (Items 41-80)'), 'utf8');
  fs.writeFileSync('sql/migration_batch1_part3.sql', generateChunkSql(p3, 'Batch 1 Part 3 (Items 81-112)'), 'utf8');
  
  const fullSql = generateChunkSql(batch1Updates, 'Batch 1 Full (Level 1-20)');
  fs.writeFileSync('sql/migration_batch1_meanings.sql', fullSql, 'utf8');
  console.log(`Generated Part 1 (${p1.length}), Part 2 (${p2.length}), Part 3 (${p3.length}), and Full.`);
}

