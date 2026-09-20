import { describe, it, expect } from 'vitest';
import {
  calculateLeechScore,
  getLeechSeverity,
  isLeech,
  calculateAccuracy,
  processLeechList,
} from '../leechLogic';

describe('Leech Logic Test Suite', () => {
  describe('calculateLeechScore', () => {
    it('returns 0 if incorrectCount is 0 or negative', () => {
      expect(calculateLeechScore(0, 0)).toBe(0);
      expect(calculateLeechScore(-2, 5)).toBe(0);
    });

    it('calculates score correctly with 0 streak (treated as max(1, streak))', () => {
      // 4 / (1 ^ 1.5) = 4
      expect(calculateLeechScore(4, 0)).toBe(4);
    });

    it('calculates score with positive streak', () => {
      // 4 / (2 ^ 1.5) = 4 / 2.8284 = 1.41
      expect(calculateLeechScore(4, 2)).toBe(1.41);
      // 9 / (4 ^ 1.5) = 9 / 8 = 1.13
      expect(calculateLeechScore(9, 4)).toBe(1.13);
    });

    it('rewards high streaks with much lower leech scores', () => {
      const scoreZeroStreak = calculateLeechScore(5, 0); // 5.0
      const scoreHighStreak = calculateLeechScore(5, 5); // 5 / (5^1.5) = 5 / 11.18 = 0.45
      expect(scoreHighStreak).toBeLessThan(scoreZeroStreak);
    });
  });

  describe('getLeechSeverity', () => {
    it('classifies severity tiers correctly', () => {
      expect(getLeechSeverity(5.0)).toBe('critical');
      expect(getLeechSeverity(4.0)).toBe('critical');
      expect(getLeechSeverity(2.5)).toBe('high');
      expect(getLeechSeverity(1.2)).toBe('medium');
      expect(getLeechSeverity(0.8)).toBe('low');
    });
  });

  describe('isLeech', () => {
    it('rejects locked or burned items', () => {
      expect(isLeech(0, 5)).toBe(false); // Locked
      expect(isLeech(9, 5)).toBe(false); // Burned (Tuntas)
    });

    it('rejects items with less than 2 mistakes', () => {
      expect(isLeech(2, 0)).toBe(false);
      expect(isLeech(2, 1)).toBe(false);
    });

    it('accepts active items with >= 2 mistakes', () => {
      expect(isLeech(1, 2)).toBe(true);
      expect(isLeech(3, 4)).toBe(true);
      expect(isLeech(5, 3)).toBe(true); // Guru/Lulus with past mistakes
      expect(isLeech(8, 2)).toBe(true);
    });
  });

  describe('calculateAccuracy', () => {
    it('handles empty reviews gracefully', () => {
      expect(calculateAccuracy(0, 0)).toBe(100);
    });

    it('calculates percentage accurately', () => {
      expect(calculateAccuracy(3, 1)).toBe(75);
      expect(calculateAccuracy(1, 1)).toBe(50);
      expect(calculateAccuracy(0, 4)).toBe(0);
      expect(calculateAccuracy(10, 0)).toBe(100);
    });
  });

  describe('processLeechList', () => {
    it('filters out non-leeches and sorts by leech_score descending', () => {
      const mockRaw = [
        {
          id: 'p1',
          item_id: 'item1',
          srs_stage: 2,
          incorrect_count: 5,
          correct_count: 5,
          current_streak: 1, // score = 5 / 1 = 5.0
          items: {
            id: 'item1',
            character: '日',
            type: 'kanji',
            level: 1,
            item_meanings: [{ meaning: 'Matahari', is_primary: true }],
            item_readings: [{ reading: 'にち', is_primary: true }],
          },
        },
        {
          id: 'p2',
          item_id: 'item2',
          srs_stage: 9, // Burned -> should be excluded!
          incorrect_count: 10,
          correct_count: 20,
          current_streak: 8,
          items: { id: 'item2', character: '月', type: 'kanji', level: 1 },
        },
        {
          id: 'p3',
          item_id: 'item3',
          srs_stage: 3,
          incorrect_count: 1, // Only 1 mistake -> excluded!
          correct_count: 5,
          current_streak: 2,
          items: { id: 'item3', character: '木', type: 'kanji', level: 1 },
        },
        {
          id: 'p4',
          item_id: 'item4',
          srs_stage: 1,
          incorrect_count: 6,
          correct_count: 2,
          current_streak: 0, // score = 6 / 1 = 6.0 (higher than p1!)
          items: {
            id: 'item4',
            character: '火',
            type: 'kanji',
            level: 1,
            item_meanings: [{ meaning: 'Api', is_primary: true }],
            item_readings: [{ reading: 'か', is_primary: true }],
          },
        },
      ];

      const result = processLeechList(mockRaw);
      expect(result).toHaveLength(2); // Only p4 and p1 qualify

      // p4 has leech_score 6.0, p1 has leech_score 5.0 -> p4 must come first!
      expect(result[0].item_id).toBe('item4');
      expect(result[0].character).toBe('火');
      expect(result[0].leech_score).toBe(6.0);
      expect(result[0].severity).toBe('critical');

      expect(result[1].item_id).toBe('item1');
      expect(result[1].character).toBe('日');
      expect(result[1].leech_score).toBe(5.0);
    });
  });
});
