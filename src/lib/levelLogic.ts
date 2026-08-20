/**
 * Level & SRS Logic Module for KaniGani
 * Centralized logic for level calculation, level up unlocking, prerequisite checks, and SRS intervals/penalties.
 */

export const MAX_LEVEL = 60;
export const LEVEL_UP_RATIO_THRESHOLD = 0.9; // 90% kanji in current level must be Guru (srs_stage >= 5)

export const SRS_INTERVALS: Record<number, number> = {
  1: 4 * 60,         // 4 hours
  2: 8 * 60,         // 8 hours
  3: 24 * 60,        // 24 hours (1 day)
  4: 2 * 24 * 60,    // 48 hours (2 days)
  5: 7 * 24 * 60,    // 7 days (1 week)
  6: 14 * 24 * 60,   // 14 days (2 weeks)
  7: 30 * 24 * 60,   // 30 days (1 month)
  8: 120 * 24 * 60,  // 120 days (4 months)
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
 */
export function getNextReviewDate(stage: number, fromDate: Date = new Date()): string | null {
  if (stage >= 9) return null;
  const intervalMinutes = SRS_INTERVALS[stage];
  if (!intervalMinutes) return null;
  const next = new Date(fromDate.getTime());
  next.setMinutes(next.getMinutes() + intervalMinutes);
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
  // If user profile has an explicit manual level set, respect it
  if (profileLevel !== null && profileLevel !== undefined && profileLevel > 0) {
    return profileLevel;
  }

  let currentLevel = 1;
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
