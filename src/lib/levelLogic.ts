/**
 * Level & SRS Logic Module for KaniGani
 * Centralized logic for level calculation, level up unlocking, prerequisite checks, and SRS intervals/penalties.
 */

export const MAX_LEVEL = 60;
export const LEVEL_UP_RATIO_THRESHOLD = 0.9; // 90% kanji in current level must be Guru (srs_stage >= 5)

// Official WaniKani SRS intervals in hours (drift-free: daily intervals are minus 1 hour)
export const SRS_INTERVALS_HOURS: Record<number, number> = {
  1: 4,               // 4 hours (Apprentice 1)
  2: 8,               // 8 hours (Apprentice 2)
  3: 23,              // 23 hours (Apprentice 3: 1 day - 1h)
  4: 47,              // 47 hours (Apprentice 4: 2 days - 1h)
  5: 167,             // 167 hours (Guru 1: 7 days - 1h)
  6: 335,             // 335 hours (Guru 2: 14 days - 1h)
  7: 719,             // 719 hours (Master: 30 days - 1h)
  8: 2879,            // 2879 hours (Enlightened: 120 days - 1h)
};

// Kept for backwards compatibility in minutes
export const SRS_INTERVALS: Record<number, number> = {
  1: 4 * 60,
  2: 8 * 60,
  3: 23 * 60,
  4: 47 * 60,
  5: 167 * 60,
  6: 335 * 60,
  7: 719 * 60,
  8: 2879 * 60,
};

export interface KanjiItem {
  id: string;
  level: number;
  type?: string;
  character?: string | null;
  slug?: string | null;
}

export interface ItemInfo {
  id: string;
  level: number;
  type: 'radical' | 'kanji' | 'vocabulary' | string;
}

/**
 * Calculates next review ISO string based on SRS stage.
 * Burned (stage 9) or invalid stages return null.
 * Follows WaniKani hourly batching: truncates review timestamp to top of the hour (:00:00.000Z).
 */
export function getNextReviewDate(stage: number, fromDate: Date = new Date()): string | null {
  if (stage >= 9 || stage < 1) return null;
  const intervalHours = SRS_INTERVALS_HOURS[stage];
  if (intervalHours === undefined) return null;

  const next = new Date(fromDate.getTime());
  next.setHours(next.getHours() + intervalHours);
  next.setMinutes(0, 0, 0); // Hourly batching (top of the hour)
  return next.toISOString();
}

/**
 * Calculates SRS stage penalty on wrong answer(s).
 * - wrongCount <= 0: stage + 1 (capped at 9)
 * - stage < 5: penaltyFactor = 1 -> penalty = ceil(wrongCount / 2) * 1
 * - stage >= 5: penaltyFactor = 2 -> penalty = ceil(wrongCount / 2) * 2
 * - minimum stage = 1
 */
export function calculatePenalty(currentStage: number, wrongCount: number): number {
  if (wrongCount <= 0) {
    return Math.min(9, currentStage + 1);
  }
  const penaltyFactor = currentStage >= 5 ? 2 : 1;
  const penalty = Math.ceil(wrongCount / 2) * penaltyFactor;
  return Math.max(1, currentStage - penalty);
}

/**
 * Calculates user level dynamically based on Guru Kanji progress or profile override.
 * User advances level when at least 90% (>= 0.9) of Kanji in the current level are Guru (stage >= 5).
 * Supports up to MAX_LEVEL (default 60).
 */
export function calculateUserLevel(
  allKanji: KanjiItem[],
  guruKanjiIdSet: Set<string>,
  profileLevel?: number | null,
  maxLevel: number = MAX_LEVEL
): number {
  // Start from profileLevel if set (e.g. from WaniKani sync or manual baseline), otherwise level 1
  let currentLevel =
    profileLevel !== null && profileLevel !== undefined && profileLevel > 0
      ? profileLevel
      : 1;

  while (currentLevel < maxLevel) {
    const levelKanji = allKanji.filter((k) => k.level === currentLevel);
    if (levelKanji.length === 0) {
      break; // No kanji found for this level
    }

    const passedCount = levelKanji.filter((k) => guruKanjiIdSet.has(k.id)).length;
    const passRatio = passedCount / levelKanji.length;

    if (passRatio >= LEVEL_UP_RATIO_THRESHOLD) {
      currentLevel++;
    } else {
      break;
    }
  }

  return currentLevel;
}

/**
 * Checks whether user has completed Level 60 (curriculum mastered):
 * At least 90% (>= 0.9) of Level 60 Kanji have reached Guru stage (stage >= 5).
 */
export function isLevel60Master(
  allKanji: KanjiItem[],
  guruKanjiIdSet: Set<string>
): boolean {
  const level60Kanji = allKanji.filter((k) => k.level === MAX_LEVEL);
  if (level60Kanji.length === 0) return false;
  const passedCount = level60Kanji.filter((k) => guruKanjiIdSet.has(k.id)).length;
  return passedCount / level60Kanji.length >= LEVEL_UP_RATIO_THRESHOLD;
}

/**
 * Checks whether all required prerequisite items have reached Guru stage (stage >= 5).
 */
export function checkPrerequisitesMet(
  requiredItemIds: string[],
  guruItemIdSet: Set<string>
): boolean {
  if (requiredItemIds.length === 0) return true;
  return requiredItemIds.every((id) => guruItemIdSet.has(id));
}

/**
 * Determines which items from a new level should be unlocked upon level up:
 * - Radicals are unlocked immediately (they have no prerequisites).
 * - Kanji / Vocab are unlocked only if ALL their prerequisites are already at Guru stage (stage >= 5).
 */
export function getUnlockableItemsOnLevelUp(
  newLevelItems: ItemInfo[],
  itemPrereqsMap: Map<string, string[]>,
  guruItemIdSet: Set<string>
): string[] {
  const unlockableIds: string[] = [];

  for (const item of newLevelItems) {
    if (item.type === 'radical') {
      unlockableIds.push(item.id);
    } else {
      const prereqs = itemPrereqsMap.get(item.id) || [];
      if (prereqs.length === 0 || checkPrerequisitesMet(prereqs, guruItemIdSet)) {
        unlockableIds.push(item.id);
      }
    }
  }

  return unlockableIds;
}

/**
 * Determines which dependent items can be unlocked after an item reaches Guru stage:
 * - Only items with level <= userLevel are considered.
 * - All prerequisites for the dependent item must be met (in guruItemIdSet).
 */
export function getUnlockableDependentItems(
  dependentItems: ItemInfo[],
  itemPrereqsMap: Map<string, string[]>,
  guruItemIdSet: Set<string>,
  userLevel: number
): string[] {
  const unlockableIds: string[] = [];

  for (const item of dependentItems) {
    // Restrict unlocking to current user level
    if (item.level > userLevel) {
      continue;
    }

    const prereqs = itemPrereqsMap.get(item.id) || [];
    if (prereqs.length > 0 && checkPrerequisitesMet(prereqs, guruItemIdSet)) {
      unlockableIds.push(item.id);
    }
  }

  return unlockableIds;
}
