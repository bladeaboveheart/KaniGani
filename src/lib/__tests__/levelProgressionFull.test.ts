import { describe, it, expect } from 'vitest';
import {
  generateChunkRanges,
} from '../userProgress';
import {
  calculateUserLevel,
  isLevel60Master,
  checkPrerequisitesMet,
  getUnlockableItemsOnLevelUp,
  KanjiItem,
} from '../levelLogic';

describe('Level 0 to 60 Learning Journey & Data Chunking Tests', () => {
  describe('Adaptive Chunking (generateChunkRanges)', () => {
    it('generates exact chunks for totalCount matching database prerequisites (~17,014 rows)', () => {
      const ranges = generateChunkRanges(17014, 1000, 0);
      expect(ranges.length).toBe(18);
      expect(ranges[0]).toEqual([0, 999]);
      expect(ranges[1]).toEqual([1000, 1999]);
      expect(ranges[17]).toEqual([17000, 17013]);
    });

    it('generates chunks starting from offset 1000 for user_progress', () => {
      const ranges = generateChunkRanges(9449, 1000, 1000);
      expect(ranges.length).toBe(9);
      expect(ranges[0]).toEqual([1000, 1999]);
      expect(ranges[8]).toEqual([9000, 9448]);
    });

    it('returns empty array when totalCount <= startOffset', () => {
      expect(generateChunkRanges(500, 1000, 1000)).toEqual([]);
      expect(generateChunkRanges(1000, 1000, 1000)).toEqual([]);
    });
  });

  describe('Curriculum Simulation (Levels 1 to 60)', () => {
    it('simulates progressive progression through all 60 levels without deadlock', () => {
      // Create mock kanji for all 60 levels (10 kanji per level = 600 kanji)
      const allKanji: KanjiItem[] = [];
      for (let lvl = 1; lvl <= 60; lvl++) {
        for (let i = 1; i <= 10; i++) {
          allKanji.push({
            id: `kanji_l${lvl}_${i}`,
            level: lvl,
            character: `漢${lvl}_${i}`,
            type: 'kanji',
          });
        }
      }

      const guruSet = new Set<string>();

      // Initially at level 1 with 0 guru kanji
      expect(calculateUserLevel(allKanji, guruSet)).toBe(1);
      expect(isLevel60Master(allKanji, guruSet)).toBe(false);

      // Pass 8 kanji of Level 1 (80% < 90%) -> stays level 1
      for (let i = 1; i <= 8; i++) {
        guruSet.add(`kanji_l1_${i}`);
      }
      expect(calculateUserLevel(allKanji, guruSet)).toBe(1);

      // Pass 9th kanji of Level 1 (90% >= 90%) -> advances to level 2!
      guruSet.add(`kanji_l1_9`);
      expect(calculateUserLevel(allKanji, guruSet)).toBe(2);

      // Rapidly complete levels 2 through 59
      for (let lvl = 2; lvl <= 59; lvl++) {
        for (let i = 1; i <= 9; i++) {
          guruSet.add(`kanji_l${lvl}_${i}`);
        }
        expect(calculateUserLevel(allKanji, guruSet)).toBe(lvl + 1);
      }

      // Now user has arrived at Level 60
      expect(calculateUserLevel(allKanji, guruSet)).toBe(60);
      expect(isLevel60Master(allKanji, guruSet)).toBe(false);

      // Complete 8 kanji of Level 60 -> not yet master
      for (let i = 1; i <= 8; i++) {
        guruSet.add(`kanji_l60_${i}`);
      }
      expect(isLevel60Master(allKanji, guruSet)).toBe(false);

      // Complete 9th kanji of Level 60 (90%) -> reaches Level 60 Master!
      guruSet.add(`kanji_l60_9`);
      expect(isLevel60Master(allKanji, guruSet)).toBe(true);
      // calculateUserLevel caps at 60
      expect(calculateUserLevel(allKanji, guruSet)).toBe(60);
    });
  });

  describe('Prerequisite Checks & Unlock Progression', () => {
    it('correctly verifies prerequisite Guru requirements', () => {
      const guruSet = new Set(['rad_1', 'rad_2']);
      expect(checkPrerequisitesMet(['rad_1', 'rad_2'], guruSet)).toBe(true);
      expect(checkPrerequisitesMet(['rad_1', 'rad_3'], guruSet)).toBe(false);
      expect(checkPrerequisitesMet([], guruSet)).toBe(true);
    });

    it('unlocks radicals immediately and kanji only when prereqs are met', () => {
      const newItems = [
        { id: 'rad_new_1', level: 15, type: 'radical' },
        { id: 'kanji_new_1', level: 15, type: 'kanji' },
        { id: 'kanji_new_2', level: 15, type: 'kanji' },
      ];

      const prereqsMap = new Map<string, string[]>([
        ['kanji_new_1', ['rad_ready']],
        ['kanji_new_2', ['rad_not_ready']],
      ]);

      const guruSet = new Set(['rad_ready']);

      const unlockables = getUnlockableItemsOnLevelUp(newItems, prereqsMap, guruSet);

      expect(unlockables).toContain('rad_new_1');
      expect(unlockables).toContain('kanji_new_1');
      expect(unlockables).not.toContain('kanji_new_2');
    });
  });
});
