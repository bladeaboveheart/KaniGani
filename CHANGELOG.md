# Changelog
All notable changes to this project will be documented in this file.
Format based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Fixed
- **GaniKani 'F' Key Detail Drawer Shortcut Restricted to Submitted Cards:**
  - In `src/app/ganikani/lesson/page.tsx` and `src/app/ganikani/review/page.tsx`, restricted the `F` shortcut and Eye toggle button strictly to cards where `isAnswerSubmitted === true`. Previously, when `userInput.trim() === ''`, pressing `f` as the initial letter triggered `showItemInfo` and prevented default keystroke handling, blocking users from typing vocabulary starting with `f` (such as `futatsu` / `ふたつ`, `fune`, `furui`).
  - Added input element target guards (`!(e.target instanceof HTMLInputElement)`) and `e.stopPropagation()` in `GanikaniReadingSynonymsEditor.tsx` so typing `f` inside custom synonym inputs also avoids accidentally closing or toggling the info drawer modal.
- **GaniKani PostgREST 1,000-Row Limit & Dashboard Lesson Counter:**
  - In `src/services/ganikaniService.ts`, implemented `fetchAllGanikaniProgress`, `fetchAllEligibleKaniGaniVocab`, and `fetchAllDueGanikaniReviews` using adaptive parallel chunking (`generateChunkRanges`). Eliminated the silent 1,000-row cap so that users with thousands of eligible Guru vocabulary items see their true, accurate lesson and review counts (e.g. >1,000 Kosakata Baru Tersedia).
- **GaniKani Wanakana Romaji-to-Kana IME Keystroke Conversion:**
  - Replaced naive `wanakana.toHiragana(val)` on every keystroke with `wanakana.toKana(val, { IMEMode: true })` in Lesson, Review, and Synonym Editor. Previously, typing isolated letters like `n` in `nanatsu` prematurely converted to `ん`, resulting in corrupt strings like `んあんあつ`. With `IMEMode: true`, syllable buffers are respected, correctly yielding `ななつ`.
- **GaniKani Lesson & Review Enter-to-Next Progression:**
  - Replaced `<form>` wrapper with `<div className="relative">` and unified action triggers under `handleQuizAction()` and `handleReviewAction()`.
  - Added `e.stopPropagation()` on input `onKeyDown` and target input guards (`e.target === inputRef.current`) on global window listeners to eliminate event bubbling race conditions where a single `Enter` keypress simultaneously submitted the answer and advanced to the next card.
  - Replaced `disabled={isAnswerSubmitted}` with `readOnly={isAnswerSubmitted}` and ensured automatic refocus (`setTimeout(..., 20)`), so the first `Enter` properly presents the card result with "Lanjut (Tekan Enter)", and the second `Enter` advances to the next card cleanly.
- **Level Progression & WaniKani Baseline Level Advancement:**
  - Fixed `calculateUserLevel` in `src/lib/levelLogic.ts` so `profileLevel` serves as a minimum baseline rather than an unconditional ceiling, allowing accounts imported at Level 14 to advance to Level 15+ when 90% of Level 14 kanji reach Guru.
- **Lesson Queue Sorting & Auto-Unlock Restriction:**
  - In `src/hooks/useDashboardData.ts`, restricted auto-unlock of Level 1 radicals strictly to `userLevel === 1` to prevent retired radicals from polluting lesson queues of higher-level users.
  - Added strict multi-tier sorting by `level` -> `type` (radical -> kanji -> vocabulary) -> `lesson_position` in `useDashboardData.ts` and `src/app/lesson/page.tsx`.
- **Lesson Picker Modal Duplicate React Key:**
  - Fixed duplicate React key warning (`f197bc5b-...`) in `LessonPickerModal.tsx` by using composite keys `${level}-${type}-${item.id}` and deduplicating items.
- **Dashboard Review Item Count Discrepancy:** Fixed query builder in-place mutation race condition in `fetchAllUserProgress()` (`src/services/progressService.ts` and `src/lib/userProgress.ts`). Fresh query builders are now created per range chunk so that rows between 1,000 and 1,999 are completely fetched, correctly displaying all 2,008+ items.
- **Review Session 1000-Item Limit:** Fixed PostgREST hard default cap in `src/app/review/page.tsx` by introducing total due count calculation and configurable review batching (default 100 items per batch).
- **Empty Answers & Failed Meaning/Reading Validation:** Replaced vulnerable multi-UUID query filter (`.in('item_id', itemIds)` which triggered HTTP 400 Bad Request due to >37KB URLs) with single PostgREST nested relational query (`item_meanings(*)`, `item_readings(*)`, `item_audios(*)`, `item_context_sentences(*)`).
- **Answer Validation Fallback:** Added automatic fallback to `primary_meaning` and `primary_reading` if `accepted_answers` are empty, preventing blank correct answer labels and ensuring valid input like `きんねん` for `近年` is properly marked correct.
- **Global Vertical Scrolling Across All Pages:** Identified and resolved the root cause blocking vertical scrolling on all pages (`/`, `/dashboard`, `/radical`, `/kanji`, `/vocabulary`, `/settings`, `/admin`, etc.). In `src/app/layout.tsx`, `<html className="... h-full ...">` was applying `height: 100%`, clamping the root element's box model to viewport height. Removed `h-full` from `<html>`, updated `<body>` to `min-h-screen`, and added global `html { min-height: 100%; overflow-y: auto; overflow-x: hidden; }` and `body { overflow-x: hidden; }` in `src/app/globals.css`. Removed ad-hoc container overflow constraints across all pages, ensuring natural scrolling.
- **Quiz Info Drawer Auto-Scroll:** Added automatic smooth scroll-into-view when toggling the detail info drawer (`F` key or Eye button) during review and lesson quiz sessions, ensuring mnemonics, example sentences, and readings are immediately visible.
- **Dictionary Pages Layout Spacing:** Added `pb-16` bottom padding to `src/app/radical/page.tsx`, `src/app/kanji/page.tsx`, and `src/app/vocabulary/page.tsx` so cards at the bottom of the page have generous breathing room above the footer.

### Added
- **GaniKani Mobile UX Layout Alignment (Ala KaniGani):**
  - **Single Unified Card Container**: Redesigned Lesson Quiz and Review Quiz to use a unified, continuous card (`rounded-3xl border shadow-xl overflow-hidden`) with a top hero banner, prompt divider strip (`Ketik Cara Baca Kosakata (Kana)`), and integrated top navbar (Home exit button, Session title, accuracy %, completed count, and remaining count).
  - **Embedded Arrow Submit Button in Input (`QuizInput` style)**: Relocated the giant standalone submit button into a compact, responsive circular action button nested directly inside the right edge of the input field (`ArrowRight`), preventing virtual keyboard shift and unnecessary scrolling on mobile devices.
  - **Mobile Thumb-Zone Action Buttons**: Placed the action controls (`[Wrap Up]`, `[Redo / Undo]`, `[Detail Info (F)]`) directly under the input field in a centered, ergonomic button row for effortless one-handed thumb interaction on mobile devices.
  - **Inline Feedback Strip (`QuizFeedback` style)**: Added real-time inline verdict strips below the action buttons showing confirmation text, SRS stage progress (`Stage X ↑`), and the correct answer upon mistakes.
  - **Tabbed Lesson Learn Phase with Mobile Swipe Gestures**: Replaced the long vertical scrolling lesson slide with a compact card featuring three interactive tabs (`Info`, `Mnemonic`, and `Kalimat Contoh`) and integrated `useSwipeGesture` for intuitive left/right swiping on touchscreens.
- **User-Scoped Custom Synonyms & Personal Notes (WaniKani-Style):**
  - **Database & RLS**: Created `public.user_item_data` with Row Level Security (`auth.uid() = user_id`) to persist personal alternative meanings (`meaning_synonyms: text[]`), meaning mnemonics (`meaning_note: text`), and reading mnemonics (`reading_note: text`) per user without modifying global catalog items.
  - **Inline Minimalist UI**: Built `UserSynonymsEditor` (interactive chip list with inline input, `+`, edit pencil, trash icons) and `UserNoteEditor` (collapsible rich-text note editor supporting `<FormattedText />` semantic tags). Zero popups or redirects.
  - **Omnipresent Touchpoints**: Integrated into:
    - Slide Lesson & Info Tab (`src/app/lesson/page.tsx`)
    - Review & Lesson Collapsible Info Drawer (`src/components/quiz/QuizInfoDrawer.tsx`)
    - Dictionary Item Detail Modal (`src/components/dictionary/ItemDetailModal.tsx`)
    - Full Page Dictionary View (`src/components/dictionary/ItemFullPageView.tsx`)
  - **Live Quiz Validation & Retroactive Correction**:
    - Custom synonyms are automatically merged into `accepted_meanings` during session initialization.
    - Added `addCustomSynonymAndValidate` in `src/store/useQuizStore.ts`: if a user inputs an answer marked incorrect, opens the info drawer, and adds that answer as a synonym, the system retroactively flips the verdict to **CORRECT (green)**, decrements the mistake counter, and removes the card from retry queues.
- **Two-Column Meaning Display (Arti Utama & Arti Alternatif):** Added support across the platform to display alternative character meanings alongside the primary meaning in two distinct sub-columns. Applied consistently across Slide Lesson (`src/app/lesson/page.tsx`), Review & Lesson Quiz Drawer (`src/components/quiz/QuizInfoDrawer.tsx`), Dictionary Item Modal (`src/components/dictionary/ItemDetailModal.tsx`), and Full Page View (`src/components/dictionary/ItemFullPageView.tsx`). If no alternative meaning exists, a neutral dash (`-`) is displayed.
- **GaniKani (Reverse SRS Module — Meaning $\rightarrow$ Kana/Kanji):**
  - **Arsitektur Tunggal & Aksesibilitas**: Terintegrasi langsung dalam repo KaniGani, dapat diakses dari dropdown **Menu Akun** ([Navbar.tsx](src/components/Navbar.tsx)) $\rightarrow$ `/ganikani`.
  - **Sub-portal Minimalis**: Sub-portal spartan khusus ([src/app/ganikani/layout.tsx](src/app/ganikani/layout.tsx)) dengan navigasi cepat (`Dashboard`, `Lesson`, `Review`, `Pengaturan`) dan tombol `[← Kembali ke KaniGani]`.
  - **Database Migration**: Menambahkan `reading_synonyms TEXT[]` ke `public.user_item_data`, membuat tabel `public.ganikani_progress` untuk melacak stage SRS reverse secara mandiri, dan membuat tabel `public.ganikani_settings` dengan proteksi Row Level Security (RLS).
  - **Service Layer Lengkap**: [src/services/ganikaniService.ts](src/services/ganikaniService.ts) untuk dashboard stats, lesson queue (kriteria level KaniGani $\ge$ ambang batas Guru 1, urutan `level ASC, lesson_position ASC`), unbatched review queue, eksekusi lesson batch 5, submit SRS review dengan penalti dinamis (`levelLogic.ts`), dan pencatatan aktivitas ke `activity_logs` bersama (menjaga streak harian).
  - **Perhitungan Mora Klien**: [src/lib/moraCounter.ts](src/lib/moraCounter.ts) untuk menghitung ketukan mora kata Jepang secara akurat (`X音`), lengkap dengan unit test komprehensif.
  - **Dedicated Reverse Quiz Store**: [src/store/useGanikaniQuizStore.ts](src/store/useGanikaniQuizStore.ts) mengimplementasikan arsitektur *single-card per item* (`cardType: 'reverse'`), auto-conversion IME Romaji ke Kana via Wanakana, validasi ketat, mode Wrap Up (`W`), Redo salah ketik (`Backspace`), dan penambahan sinonim bacaan Jepang privat yang mengoreksi verdict salah secara retroaktif.
  - **Komponen UI Khusus GaniKani**:
    - [src/components/ganikani/GanikaniFrontCard.tsx](src/components/ganikani/GanikaniFrontCard.tsx): Badge header `[ POS • X音 ]`, Arti Utama (ID), alternatif (termasuk EN), dan sinonim pengguna.
    - [src/components/ganikani/GanikaniInfoDrawer.tsx](src/components/ganikani/GanikaniInfoDrawer.tsx): Drawer detail dengan audio pengucapan asli, mnemonics, contoh kalimat kontekstual, dan editor sinonim bacaan kustom.
    - [src/components/ganikani/GanikaniReadingSynonymsEditor.tsx](src/components/ganikani/GanikaniReadingSynonymsEditor.tsx): Manajemen chip sinonim bacaan Kana privat pengguna.
  - **Halaman Lengkap**:
    - [src/app/ganikani/page.tsx](src/app/ganikani/page.tsx): Dashboard dengan counter review due, lesson available, tombol aksi, dan grafik bar distribusi stage SRS.
    - [src/app/ganikani/lesson/page.tsx](src/app/ganikani/lesson/page.tsx): Alur belajar 2-fase: Fase Slide (pengenalan batch 5 kosakata) dan Fase Kuis (uji recall reverse).
    - [src/app/ganikani/review/page.tsx](src/app/ganikani/review/page.tsx): Pengalaman ulasan kilat ala KaniWani tanpa batas batching terpotong, shortcut keyboard responsif, dan ringkasan sesi ulasan.
    - [src/app/ganikani/settings/page.tsx](src/app/ganikani/settings/page.tsx): Toggle Follow WaniKani/KaniGani, pilihan ambang batas SRS (Guru 1 default), dan preferensi review.
- **Review Batch Continuity:** Added `hasNextBatch` and `onNextBatch` support to `QuizSummaryView`, allowing users to comfortably proceed to the next 100 items or return to the dashboard.
- **Header Batch Indicator:** Added dynamic session batch indicator in `QuizHeader` (e.g. `Batch 100 / 2.008 Total`).
- **Dynamic Sliding Review Queue & Active Interleaving:**
  - Implemented an active pool mechanism (`ACTIVE_POOL_SIZE = 10`) in `src/store/useQuizStore.ts` for review sessions with large item batches.
  - Replaced overwhelming 200-card bulk shuffles with scheduled interleaving (meaning and reading separated by 2-3 cards).
  - Cards for completed items are continuously replenished from reserve items, and failed cards are dynamically re-queued to the back of the active pool with an immediate fresh reserve item brought in. This ensures visible, steady SRS progress without feeling stuck.
- **Developer Mode On-The-Fly Item Editor (Lesson & Review):**
  - Added quick item editing capability for developers (`kanigani-dev-mode` enabled) directly mid-session without restarting or aborting active reviews or lessons.
  - Edit button is rendered strictly inside the Info Drawer (`QuizInfoDrawer`) during quizzes and the lesson info tab during the learn phase.
  - In-place memory synchronization immediately updates active card, queue, accepted meanings, and accepted readings so newly added answers are recognized without restarting the session.
  - Added new **"Awas Tertukar! (Kanji Mirip)"** tab in `ItemEditorModal` specifically for Kanji items, allowing searching and linking similar kanji with automatic bidirectional pairing in `item_similar_kanji`.
