# 🦀 GaniKani — Technical Architecture & Blueprint (Lean Edition)
*Fitur sampingan Reverse SRS (Arti $\rightarrow$ Jepang) di dalam KaniGani. Prinsip: pakai ulang apa yang sudah ada.*

---

## 1. Visi
**GaniKani** melatih *Production / Active Recall* (lihat Arti + Part of Speech + Mora $\rightarrow$ ketik Bacaan Kana dan mengingat Kanji), melengkapi KaniGani yang melatih *Recognition*. Terinspirasi langsung dari **KaniWani**.

- **Arsitektur Tunggal**: Satu repo (`KaniGani-main`), satu database Supabase, satu akun pengguna.
- **Titik Akses**: Dapat dibuka langsung dari dropdown **Menu Akun** ([Navbar.tsx](src/components/Navbar.tsx)) $\rightarrow$ `/ganikani`.
- **Sumber Data Bersama**: GaniKani membaca `user_progress` KaniGani secara langsung. Pengguna WaniKani cukup melakukan sinkronisasi WaniKani reguler yang sudah ada di Pengaturan KaniGani (`/api/wanikani/sync`), dan GaniKani otomatis mengikutinya tanpa memerlukan API eksternal baru.

---

## 2. Empat Layar Utama

```text
Menu Akun (Navbar KaniGani) → /ganikani
  ├── /ganikani           Dashboard (Ringkasan antrean & stage SRS)
  ├── /ganikani/lesson    Lesson (Slide pengenalan + kuis batch 5)
  ├── /ganikani/review    Review (Fast-paced Reverse Quiz)
  └── /ganikani/settings  Setting (Follow toggle, ambang batas, preferensi)
```

### Layout Khusus Sub-Portal (`src/app/ganikani/layout.tsx`)
- Tampilan terisolasi, spartan, dan fokus pada teks (bebas dari navbar ramai KaniGani reguler).
- **Header Minimalis**:
  - Sisi Kiri: Brand `🦀 GaniKani` (klik untuk kembali ke `/ganikani` Dashboard).
  - Sisi Tengah: Tautan cepat (`Dashboard`, `Lesson`, `Review`, `Setting`).
  - Sisi Kanan: Tombol navigasi keluar `[← Kembali ke KaniGani]` (tautan langsung ke `/dashboard`).


### 1. Dashboard (`/ganikani`)
- Counter ringkas: **Review Due** dan **Lesson Tersedia**.
- Tombol aksi utama: `[Mulai Lesson]` dan `[Mulai Review]`.
- Bar / kartu ringkasan distribusi stage SRS GaniKani (Pemula, Lulus, Mahir, Ahli, Tuntas).

### 2. Lesson (`/ganikani/lesson`) — Batch 5 Item
- **Alur Belajar**:
  1. **Fase Slide**: Menampilkan kartu Arti Utama (ID), Arti Alternatif (termasuk EN), Part of Speech, panjang mora (`X音`), huruf Kanji target, cara baca Kana, dan tombol audio pengucapan asli.
  2. **Fase Kuis Lesson**: Kuis reverse 5 item. Item yang tuntas langsung aktif masuk ke **SRS Stage 1 (Apprentice 1)** di GaniKani.
- **Kriteria Kelayakan Lesson**:
  - Item bertipe `vocabulary` dengan status di KaniGani `user_progress.srs_stage >= ambang` (default **5 / Guru 1**, dapat diubah di Setting).
  - Item belum pernah dipelajari di GaniKani (belum memiliki baris di `ganikani_progress`).
- **Urutan Antrean Lesson**: Diurutkan secara sistematis berdasarkan `items.level ASC, items.lesson_position ASC` agar pengguna mempelajari kosakata level rendah terlebih dahulu.

### 3. Review (`/ganikani/review`) — Pengalaman Cepat ala KaniWani
- **Struktur Front Card (Soal)**:
  - **Badge Header**: Komponen badge kelas kata ([PartOfSpeechBadge.tsx](src/components/ui/PartOfSpeechBadge.tsx)) yang sudah ada, digabung dengan indikator mora:
    `[ Kata Kerja (Ichidan) • 3音 ]` (misal: `3音` untuk kata dengan 3 mora seperti `たべる`).
  - **Arti Utama (Teks Besar Paling Atas)**: 1 arti utama Bahasa Indonesia dari `item_meanings` (yang berstatus `primary_meaning = true`).
  - **Di Bawah Arti Utama**:
    - **Arti Alternatif**: Seluruh arti sampingan dari `item_meanings` (termasuk arti Bahasa Inggris bawaan WaniKani yang memang tersimpan sebagai alternatif).
    - **Sinonim Kustom Pengguna**: Menampilkan chip sinonim arti personal dari `user_item_data.meaning_synonyms`.
- **Input Field & Validasi Ketat (Strict Kana)**:
  - IME otomatis Wanakana (Romaji $\rightarrow$ Hiragana).
  - **Strict Matching**: Input Kana wajib 100% presisi sesuai `item_readings` atau `reading_synonyms` (standar WaniKani). Jika pengguna merasa hanya salah ketik (*typo*), pengguna cukup menekan tombol / shortcut **Redo (`Backspace`)** untuk mencoba ulang tanpa penalti SRS.
- **Mekanisme Kartu Kuis**:
  - Berbeda dengan KaniGani yang memiliki 2 kartu per item (`meaning` & `reading`), GaniKani **hanya memiliki 1 kartu per item** (`cardType: 'reverse'`).
- **Alur Antrean Review**:
  - **Tanpa Batching Terpotong**: Seluruh item yang jatuh tempo (*due*) langsung dimasukkan ke dalam sesi ulasan. Jika pengguna ingin berhenti lebih awal, mereka dapat menekan shortcut `W` (**Wrap Up**) untuk menyelesaikan kartu yang aktif lalu melihat ringkasan sesi.
- **Validasi Jawaban**:
  - Jawaban dinyatakan benar jika cocok dengan salah satu dari `item_readings` resmi (`accepted_answer = true`) ATAU cocok dengan `user_item_data.reading_synonyms` privat pengguna.
  - Tekan `Enter` $\rightarrow$ Jika benar, kartu berubah **Hijau (Benar)**.
  - **Default Cepat**: Tidak langsung membuka drawer info dan tidak langsung memutar audio. Tekan `Enter` sekali lagi untuk langsung lanjut ke kartu berikutnya.
  - Jika salah: Kartu berubah **Merah (Salah)**.
- **Pencatatan Aktivitas & Streak Harian (`activity_logs`)**:
  - Setiap ulasan dan kelulusan lesson di GaniKani otomatis dicatat ke tabel `activity_logs` KaniGani dengan `activity_type = 'review'` atau `'lesson'`.
  - Memastikan streak harian dan kalender aktivitas (*Heatmap*) pengguna di KaniGani tetap terisi dan bertambah saat belajar di GaniKani.
- **Kontrol Kuis Lengkap (Pakai Ulang Fitur KaniGani)**:
  - **Info Drawer (`F` / Ikon Mata)**: Membuka [QuizInfoDrawer](src/components/quiz/QuizInfoDrawer.tsx) untuk melihat Kanji lengkap, audio Kenichi/Kyoko, dan contoh kalimat.
  - **Redo (`Backspace` / Tombol Redo)**: Membatalkan salah ketik (*typo*) tanpa penalti SRS.
  - **Wrap Up (`W` / Tombol Jam)**: Menyelesaikan batch yang sedang aktif saat ini tanpa menarik item baru dari reserve queue.
  - **Tambah Sinonim (Privat)**: Menambahkan sinonim bacaan Jepang (Kana) ke `user_item_data.reading_synonyms`. Jika sebelumnya salah, verdict langsung dikoreksi retroaktif menjadi **Benar (Hijau)**.

### 4. Setting (`/ganikani/settings`)
- **Toggle "Follow WaniKani / Follow KaniGani"** (Default: **ON**):
  - *"Automatically syncs and unlocks items as they are unlocked in WaniKani/KaniGani. Turn this off if you wish to stop syncing, and before you end your WK subscription."*
  - **ON**: Kosakata yang mencapai ambang Guru di KaniGani otomatis masuk ke antrean Lesson.
  - **OFF**: Antrean Lesson dibekukan (tidak ada kata baru yang masuk), namun sesi Review untuk kata yang sudah dipelajari tetap berjalan normal.
- **Ambang Batas Buka Kunci (Unlock Threshold)**:
  - Default: **5 (Guru 1)**. Bisa disesuaikan pengguna (misal: 4 untuk Apprentice 4, 7 untuk Master).
- **Preferensi Kuis**:
  - `Buka Detail Otomatis Saat Benar` (Default: **OFF**).
  - `Putar Audio Otomatis Saat Benar` (Default: **OFF**).
  - `Shortcut Keyboard Aktif` (Default: **ON**).

---

## 3. Skema Database Supabase (Normalisasi Penuh, Tanpa Duplikasi)

Semua data kamus (`characters`, `meanings`, `readings`, `parts_of_speech`, `audio`) **selalu di-join langsung dari tabel `items` yang sudah ada**.

### 1. Tabel Eksisting yang Dimanfaatkan (Zero Change)
- `items`: Kolom `parts_of_speech text[]` **sudah ada** di database dan siap dipakai langsung.
- `item_meanings`: Sudah menyimpan arti utama ID dan arti alternatif (termasuk terjemahan EN).
- `item_readings`: Menyimpan seluruh bacaan Kana resmi.

### 2. Kolom Baru pada `user_item_data` (Migrasi Sederhana)
- `reading_synonyms TEXT[] DEFAULT '{}'` — Menyimpan sinonim bacaan Kana privat per pengguna (berproteksi RLS `auth.uid() = user_id`).

### 3. Tabel Baru: `public.ganikani_progress`
Menyimpan progres SRS reverse recall pengguna (berproteksi RLS `auth.uid() = user_id`):
- `user_id`: UUID (FK `auth.users`, Composite PK)
- `item_id`: UUID (FK `public.items`, Composite PK)
- `srs_stage`: SmallInt (1-4=Apprentice, 5-6=Guru, 7=Master, 8=Enlightened, 9=Burned)
- `next_review_at`: Timestamp with time zone
- `incorrect_count`: Integer (Default: 0)
- `streak`: Integer (Default: 0)
- `created_at` & `updated_at`: Timestamps

### 4. Tabel Baru: `public.ganikani_settings`
Menyimpan preferensi pengguna (berproteksi RLS `auth.uid() = user_id`):
- `user_id`: UUID (Primary Key, FK `auth.users`)
- `follow`: Boolean (Default: `true`)
- `unlock_stage`: SmallInt (Default: `5` / Guru 1)
- `auto_expand_details`: Boolean (Default: `false`)
- `auto_play_audio`: Boolean (Default: `false`)
- `keyboard_shortcuts`: Boolean (Default: `true`)
- `updated_at`: Timestamps

---

## 4. Strategi Penggunaan Ulang Kode (Ponytail Standard)

| Kebutuhan | Strategi Eksekusi |
|---|---|
| **Engine Kuis (Zustand)** | Tambahkan mode `mode: 'ganikani'` pada `useQuizStore.ts`. Mode ini menghasilkan 1 kartu per kata (`cardType: 'reverse'`) dan mengarahkan penyimpanan progres ke `ganikani_progress`. |
| **Drawer Info Detail** | Pakai ulang `QuizInfoDrawer.tsx` yang sudah ada (lengkap dengan audio player, stroke order, dan context sentences). |
| **Badge Kelas Kata** | Pakai ulang `PartOfSpeechBadge.tsx` dan `partsOfSpeech.ts`. |
| **Wrap Up, Redo, Shortcut** | Pakai ulang handler yang sudah teruji di `useQuizStore.ts`. |
| **Perhitungan Mora (`X音`)** | Fungsi utilitas ringan di sisi klien (`moraCounter.ts`) yang menghitung jumlah ketukan mora dari bacaan utama. |
| **Sinkronisasi WaniKani** | Menggunakan sinkronisasi KaniGani yang sudah ada tanpa menulis baris kode sinkronisasi baru. |

---

## 5. Aturan & Edge Cases

1. **Independensi SRS GaniKani**: Setelah sebuah kosakata masuk ke GaniKani, progres SRS-nya berjalan **sepenuhnya mandiri**. Jika di kemudian hari item tersebut turun stage di KaniGani reguler, item tersebut **tetap aktif** di GaniKani dan tidak dikunci kembali.
2. **Kosakata Hanya-Kana (Kana-Only Vocab)**: Kartu menampilkan arti, dan jawaban yang diharapkan adalah bacaan kananya.
3. **Item dengan Banyak Bacaan Alternatif**: Semua bacaan resmi di `item_readings` yang berstatus `accepted_answer = true` sah diterima sebagai jawaban benar. Indikator `X音` mengacu pada panjang bacaan utama (`primary_reading = true`).
4. **Isolasi Sinonim**: Sinonim bacaan privat yang disimpan di `user_item_data.reading_synonyms` hanya berlaku untuk akun pengguna yang bersangkutan.

---

## 6. Roadmap Pembaruan Masa Depan (Future Updates / v2)

### 1. 📖 Sentence Cloze Review (Kuis Rumpang Kalimat Konteks)
Mode latihan terpisah yang dapat diakses langsung dari Dashboard GaniKani (`[Sentence Cloze Review]`) untuk melatih pemanggilan kosakata di dalam kalimat utuh:
- **Tampilan Front Card (Soal)**:
  - Mengambil contoh kalimat dari tabel `item_context_sentences`.
  - **Kalimat Bahasa Jepang Rumpang**: Karakter kata target (`item.character`, e.g. `額`) digantikan secara dinamis menjadi simbol `XXX`:
    > `上司が新人に：「社長のXXXが広いからと言ってまじまじと見てはいけないよ。二度とこの業界で働けなくなるからね。」`
  - **Kalimat Terjemahan Pendamping**: Terjemahan Bahasa Indonesia ditampilkan di bawahnya dengan kata kunci arti utama dicetak **tebal (bold)**:
    > `Bos kepada karyawan baru: Hanya karena **dahi** presiden direktur lebar bukan berarti kamu boleh menatapnya lekat-lekat...`
    *(Tersedia opsi untuk melihat terjemahan Bahasa Inggris jika data WaniKani tersedia).*
  - **Badge Pendamping**: Tetap menyertakan badge Part of Speech dan panjang mora (e.g. `[ Kata Benda • 3音 ]`).
- **Mekanisme Jawaban & Validasi**:
  - Pengguna mengetik bacaan Kana target (e.g. `ひたい`).
  - Saat dijawab benar: Simbol `XXX` pada kalimat mekar menampilkan huruf Kanji asli dengan aksen visual hijau: `社長の額（ひたい）が...`.
- **Dampak SRS Penuh**:
  - Hasil sesi *Sentence Cloze Review* memiliki **pengaruh SRS penuh** terhadap tabel `ganikani_progress` (jawaban benar menaikkan stage SRS, jawaban salah menurunkan stage SRS).

### 2. Fitur Lain yang Ditunda ke v2
- **Disambiguation Shake**: Animasi goyang deteksi bentrok homofon antar-kata yang berbeda.
- **Leech Training Khusus GaniKani**: Mode latihan kilat cramming khusus item lintah reverse.
- **Import Anki**: Tetap ditiadakan untuk menjaga integritas kurikulum.


---

## 7. Log Keputusan Final

| # | Keputusan | Alasan & Rasional |
|---|---|---|
| 1 | **Satu Repo & Satu DB** | Menghemat kuota Supabase, zero CORS, dan 1 akun SSO bagi pengguna. |
| 2 | **Tanpa API Sync Baru** | Memanfaatkan `user_progress` KaniGani yang sudah otomatis tersinkronisasi dengan WaniKani. |
| 3 | **Struktur Arti Front Card** | 1 arti utama (ID) di atas, arti alternatif (termasuk EN) dan sinonim kustom di bawahnya. Sesuai data nyata di database. |
| 4 | **Pakai Ulang POS Eksisting** | Kolom `items.parts_of_speech` dan komponennya sudah ada di kodebase, zero migration. |
| 5 | **Single-Card di `useQuizStore`** | Kuis reverse hanya menguji 1 kartu per item (Arti $\rightarrow$ Kana), bukan sepasang kartu. |
| 6 | **SRS Mandiri Pasca Unlock** | Meniru perilaku KaniWani asli, mencegah item yang sudah dipelajari tiba-tiba terkunci lagi. |
| 7 | **Follow = Bekukan Lesson** | Memberi kendali penuh saat pengguna ingin berhenti menarik kata baru sebelum langganan WK berakhir. |
| 8 | **Mora Dihitung di Klien** | Mengurangi beban database, cukup dengan fungsi string ringan di browser. |
