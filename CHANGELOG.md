# Changelog
All notable changes to this project will be documented in this file.
Format based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Fixed
- **PostgREST 1,000-Row Query Limit Mitigation Across Platform:**
  - `fetchDictionaryTierItems()` in `src/services/itemsService.ts`: Added dynamic 1,000-row chunking to prevent PostgREST silent truncation on vocabulary tiers exceeding 1,000 items (e.g. Level 10 was missing 123 items, and Levels 18–20 were completely truncated).
  - `fetchReferenceItems()` in `src/services/itemsService.ts`: Added chunking to retrieve all 2,500+ radicals and kanji without cutting off at 1,000 items.
  - `fetchAllItemPrerequisites()` in `src/services/itemsService.ts`: Replaced hardcoded chunk ranges (capped at 7,000) with dynamic count-based chunking supporting all 17,014+ prerequisite relations.
  - `ProgressInspector.tsx` in `src/components/admin/ProgressInspector.tsx`: Chunked user progress queries so admin can inspect accounts with >1,000 items.
  - `fetchActivityLogs()` in `src/services/statsService.ts`: Added descending sort and chunking for heatmap activity records.
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
- **Review Batch Continuity:** Added `hasNextBatch` and `onNextBatch` support to `QuizSummaryView`, allowing users to comfortably proceed to the next 100 items or return to the dashboard.
- **Header Batch Indicator:** Added dynamic session batch indicator in `QuizHeader` (e.g. `Batch 100 / 2.008 Total`).
