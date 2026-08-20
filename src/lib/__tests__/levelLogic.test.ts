import { describe, it, expect } from 'vitest';
import {
  calculateUserLevel,
  calculatePenalty,
  getNextReviewDate,
  checkPrerequisitesMet,
  getUnlockableItemsOnLevelUp,
  getUnlockableDependentItems,
  MAX_LEVEL,
  LEVEL_UP_RATIO_THRESHOLD,
  KanjiItem,
  ItemInfo,
} from '../levelLogic';

describe('Level Up & SRS Logic Test Suite', () => {
  describe('Rule 1: 90% Guru Kanji Level Up Calculation', () => {
    const mockLevel1Kanji: KanjiItem[] = [
      { id: 'k1', level: 1 },
      { id: 'k2', level: 1 },
      { id: 'k3', level: 1 },
      { id: 'k4', level: 1 },
      { id: 'k5', level: 1 },
      { id: 'k6', level: 1 },
      { id: 'k7', level: 1 },
      { id: 'k8', level: 1 },
      { id: 'k9', level: 1 },
      { id: 'k10', level: 1 },
    ];

    it('should stay at Level 1 if less than 90% kanji are Guru (< 9 / 10)', () => {
      // 8 of 10 are Guru (80%)
      const guruSet = new Set(['k1', 'k2', 'k3', 'k4', 'k5', 'k6', 'k7', 'k8']);
      const level = calculateUserLevel(mockLevel1Kanji, guruSet);
      expect(level).toBe(1);
    });

    it('should level up to Level 2 if exactly 90% kanji are Guru (9 / 10)', () => {
      // 9 of 10 are Guru (90%)
      const guruSet = new Set(['k1', 'k2', 'k3', 'k4', 'k5', 'k6', 'k7', 'k8', 'k9']);
      const level = calculateUserLevel(mockLevel1Kanji, guruSet);
      expect(level).toBe(2);
    });

    it('should level up to Level 2 if 100% kanji are Guru (10 / 10)', () => {
      const guruSet = new Set(mockLevel1Kanji.map((k) => k.id));
      const level = calculateUserLevel(mockLevel1Kanji, guruSet);
      expect(level).toBe(2);
    });

    it('should correctly advance multiple levels sequentially (Chain Level Up)', () => {
      const allKanji: KanjiItem[] = [
        // Level 1: 10 items, all guru
        ...Array.from({ length: 10 }, (_, i) => ({ id: `l1_k${i + 1}`, level: 1 })),
        // Level 2: 10 items, 9 guru (90%)
        ...Array.from({ length: 10 }, (_, i) => ({ id: `l2_k${i + 1}`, level: 2 })),
        // Level 3: 10 items, 5 guru (50%)
        ...Array.from({ length: 10 }, (_, i) => ({ id: `l3_k${i + 1}`, level: 3 })),
      ];

      const guruSet = new Set([
        // All level 1
        'l1_k1', 'l1_k2', 'l1_k3', 'l1_k4', 'l1_k5', 'l1_k6', 'l1_k7', 'l1_k8', 'l1_k9', 'l1_k10',
        // 9 from level 2
        'l2_k1', 'l2_k2', 'l2_k3', 'l2_k4', 'l2_k5', 'l2_k6', 'l2_k7', 'l2_k8', 'l2_k9',
        // 5 from level 3
        'l3_k1', 'l3_k2', 'l3_k3', 'l3_k4', 'l3_k5',
      ]);

      const level = calculateUserLevel(allKanji, guruSet);
      expect(level).toBe(3);
    });

    it('should stop progression at MAX_LEVEL (60)', () => {
      const allKanji: KanjiItem[] = [];
      const guruSet = new Set<string>();

      for (let lvl = 1; lvl <= 60; lvl++) {
        for (let k = 1; k <= 5; k++) {
          const id = `l${lvl}_k${k}`;
          allKanji.push({ id, level: lvl });
          guruSet.add(id);
        }
      }

      const level = calculateUserLevel(allKanji, guruSet, null, 60);
      expect(level).toBe(60);
    });

    it('should prioritize profileLevel override if specified', () => {
      const guruSet = new Set(['k1', 'k2', 'k3']); // < 90%
      const level = calculateUserLevel(mockLevel1Kanji, guruSet, 15);
      expect(level).toBe(15);
    });
  });

  describe('Rule 2: Radicals Auto-Unlock on Level Up', () => {
    it('should automatically unlock all radicals of the new level', () => {
      const newLevelItems: ItemInfo[] = [
        { id: 'rad_1', level: 2, type: 'radical' },
        { id: 'rad_2', level: 2, type: 'radical' },
        { id: 'kanji_1', level: 2, type: 'kanji' },
      ];

      const itemPrereqsMap = new Map<string, string[]>([
        ['kanji_1', ['rad_1', 'rad_2']], // kanji requires new radicals
      ]);

      const guruSet = new Set<string>(); // Radicals are not guru yet!

      const unlockable = getUnlockableItemsOnLevelUp(newLevelItems, itemPrereqsMap, guruSet);

      // Radicals MUST unlock immediately
      expect(unlockable).toContain('rad_1');
      expect(unlockable).toContain('rad_2');
      // Kanji must NOT unlock yet because radicals are not Guru
      expect(unlockable).not.toContain('kanji_1');
    });
  });

  describe('Rule 3: Prerequisite Hierarchical Unlocking', () => {
    it('checkPrerequisitesMet should return true only when ALL required items are Guru', () => {
      const guruSet = new Set(['rad_1', 'rad_2']);

      expect(checkPrerequisitesMet(['rad_1'], guruSet)).toBe(true);
      expect(checkPrerequisitesMet(['rad_1', 'rad_2'], guruSet)).toBe(true);
      expect(checkPrerequisitesMet(['rad_1', 'rad_2', 'rad_3'], guruSet)).toBe(false);
      expect(checkPrerequisitesMet([], guruSet)).toBe(true);
    });

    it('should unlock dependent kanji/vocab only after ALL prerequisites reach Guru (Stage >= 5)', () => {
      const dependentItems: ItemInfo[] = [
        { id: 'kanji_water', level: 1, type: 'kanji' },
        { id: 'vocab_river', level: 1, type: 'vocabulary' },
      ];

      const itemPrereqsMap = new Map<string, string[]>([
        ['kanji_water', ['rad_drop', 'rad_stream']],
        ['vocab_river', ['kanji_water', 'kanji_tree']],
      ]);

      // Case A: Only 1 radical Guru -> kanji stays locked
      const guruSetA = new Set(['rad_drop']);
      const unlockableA = getUnlockableDependentItems(dependentItems, itemPrereqsMap, guruSetA, 1);
      expect(unlockableA).toEqual([]);

      // Case B: Both radicals Guru -> kanji unlocks
      const guruSetB = new Set(['rad_drop', 'rad_stream']);
      const unlockableB = getUnlockableDependentItems(dependentItems, itemPrereqsMap, guruSetB, 1);
      expect(unlockableB).toContain('kanji_water');
      expect(unlockableB).not.toContain('vocab_river'); // kanji_tree not Guru yet

      // Case C: All prerequisites for vocab also Guru -> vocab unlocks
      const guruSetC = new Set(['rad_drop', 'rad_stream', 'kanji_water', 'kanji_tree']);
      const unlockableC = getUnlockableDependentItems(dependentItems, itemPrereqsMap, guruSetC, 1);
      expect(unlockableC).toContain('kanji_water');
      expect(unlockableC).toContain('vocab_river');
    });

    it('should NOT unlock dependent items whose level exceeds userLevel', () => {
      const dependentItems: ItemInfo[] = [
        { id: 'kanji_l1', level: 1, type: 'kanji' },
        { id: 'kanji_l2', level: 2, type: 'kanji' }, // Level 2 item
      ];

      const itemPrereqsMap = new Map<string, string[]>([
        ['kanji_l1', ['rad_1']],
        ['kanji_l2', ['rad_1']],
      ]);

      const guruSet = new Set(['rad_1']);
      // User is Level 1
      const userLevel = 1;

      const unlockable = getUnlockableDependentItems(dependentItems, itemPrereqsMap, guruSet, userLevel);
      expect(unlockable).toContain('kanji_l1');
      expect(unlockable).not.toContain('kanji_l2'); // Restricted by userLevel
    });
  });

  describe('Rule 4: SRS Stage Transitions & Penalties', () => {
    it('should advance stage by +1 when wrongCount is 0', () => {
      expect(calculatePenalty(1, 0)).toBe(2);
      expect(calculatePenalty(4, 0)).toBe(5);
      expect(calculatePenalty(8, 0)).toBe(9);
      expect(calculatePenalty(9, 0)).toBe(9); // Max stage 9
    });

    it('should apply penalty factor 1 for stages < 5 (Apprentice)', () => {
      // Stage 1, 1 wrong -> Math.max(1, 1 - ceil(1/2)*1) = Math.max(1, 0) = 1
      expect(calculatePenalty(1, 1)).toBe(1);
      // Stage 3, 1 wrong -> 3 - ceil(1/2)*1 = 2
      expect(calculatePenalty(3, 1)).toBe(2);
      // Stage 4, 2 wrong -> 4 - ceil(2/2)*1 = 3
      expect(calculatePenalty(4, 2)).toBe(3);
      // Stage 4, 3 wrong -> 4 - ceil(3/2)*1 = 2
      expect(calculatePenalty(4, 3)).toBe(2);
    });

    it('should apply penalty factor 2 for stages >= 5 (Guru / Master / Enlightened)', () => {
      // Stage 5, 1 wrong -> 5 - ceil(1/2)*2 = 3
      expect(calculatePenalty(5, 1)).toBe(3);
      // Stage 6, 1 wrong -> 6 - ceil(1/2)*2 = 4
      expect(calculatePenalty(6, 1)).toBe(4);
      // Stage 7, 2 wrong -> 7 - ceil(2/2)*2 = 5
      expect(calculatePenalty(7, 2)).toBe(5);
      // Stage 8, 4 wrong -> 8 - ceil(4/2)*2 = 4
      expect(calculatePenalty(8, 4)).toBe(4);
    });

    it('should compute next review date according to SRS intervals', () => {
      const base = new Date('2026-01-01T00:00:00.000Z');
      
      // Stage 1: 4 hours (240 min)
      const r1 = getNextReviewDate(1, base);
      expect(r1).toBe(new Date('2026-01-01T04:00:00.000Z').toISOString());

      // Stage 3: 24 hours (1 day)
      const r3 = getNextReviewDate(3, base);
      expect(r3).toBe(new Date('2026-01-02T00:00:00.000Z').toISOString());

      // Stage 9 (Burned): null
      const r9 = getNextReviewDate(9, base);
      expect(r9).toBeNull();
    });
  });
});
