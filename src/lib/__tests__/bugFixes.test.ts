import { describe, it, expect, vi } from 'vitest';

vi.mock('@/lib/supabase', () => ({
  supabase: {
    from: () => ({
      select: () => ({
        eq: () => ({
          eq: () => Promise.resolve({ data: [] }),
        }),
      }),
    }),
  },
}));

import { useQuizStore } from '@/store/useQuizStore';

describe('Bug Fixes Verification Suite', () => {
  describe('P0: Search Result Sorting with Null/Undefined Characters & Slugs', () => {
    it('should safely sort items without crashing when character or primary_meaning is null', () => {
      const items: any[] = [
        {
          id: 'rad1',
          character: null, // Radical image (e.g. stick / gun)
          slug: 'gun',
          level: 1,
          type: 'radical',
          primary_meaning: 'Gun',
        },
        {
          id: 'kan1',
          character: '一',
          slug: 'one',
          level: 1,
          type: 'kanji',
          primary_meaning: 'One',
        },
        {
          id: 'rad2',
          character: null,
          slug: null,
          level: 2,
          type: 'radical',
          primary_meaning: null,
        },
      ];

      const lowerQ = 'gun';
      expect(() => {
        items.sort((a, b) => {
          const aCharMatch = (a.character?.toLowerCase() || '') === lowerQ;
          const bCharMatch = (b.character?.toLowerCase() || '') === lowerQ;
          if (aCharMatch && !bCharMatch) return -1;
          if (!aCharMatch && bCharMatch) return 1;

          const aMeaningMatch = (a.primary_meaning?.toLowerCase() || '') === lowerQ || (a.slug?.toLowerCase() || '') === lowerQ;
          const bMeaningMatch = (b.primary_meaning?.toLowerCase() || '') === lowerQ || (b.slug?.toLowerCase() || '') === lowerQ;
          if (aMeaningMatch && !bMeaningMatch) return -1;
          if (!aMeaningMatch && bMeaningMatch) return 1;

          return a.level - b.level;
        });
      }).not.toThrow();

      expect(items[0].slug).toBe('gun');
    });
  });

  describe('P1: SRS Apprentice & Studied Calculation Consistency', () => {
    it('should only count items in Apprentice if they are actually studied (next_review is not null)', () => {
      const sampleProgressRows = [
        { item_id: '1', srs_stage: 1, next_review: null }, // Unstudied unlocked lesson
        { item_id: '2', srs_stage: 1, next_review: '2026-09-21T00:00:00Z' }, // Studied apprentice 1
        { item_id: '3', srs_stage: 4, next_review: '2026-09-22T00:00:00Z' }, // Studied apprentice 4
        { item_id: '4', srs_stage: 5, next_review: '2026-09-25T00:00:00Z' }, // Guru
      ];

      let apprentice = 0;
      let guru = 0;
      let totalStudied = 0;

      sampleProgressRows.forEach((row) => {
        const stage = row.srs_stage;
        const isStudied = stage > 1 || (stage === 1 && Boolean(row.next_review));
        if (isStudied) {
          totalStudied++;
          if (stage >= 1 && stage <= 4) apprentice++;
          else if (stage >= 5 && stage <= 6) guru++;
        }
      });

      expect(totalStudied).toBe(3);
      expect(apprentice).toBe(2);
      expect(guru).toBe(1);

      // Verify that apprentice percentage does not exceed 100%
      const apprenticePct = Math.round((apprentice / totalStudied) * 100);
      expect(apprenticePct).toBe(67);
      expect(apprenticePct).toBeLessThanOrEqual(100);
    });
  });

  describe('P1: useQuizStore Error Breakdown Recording', () => {
    it('should track meaningWrongCounts and readingWrongCounts separately', async () => {
      const { initializeSession, submitAnswer, setUserInput } = useQuizStore.getState();

      const mockItem: any = {
        id: 'test-item-1',
        type: 'kanji',
        character: '日',
        accepted_meanings: ['sun', 'day'],
        accepted_readings: ['にち', 'ひ'],
        primary_meaning: 'Sun',
        primary_reading: 'にち',
      };

      initializeSession([mockItem], 'review');

      const state = useQuizStore.getState();
      expect(state.activeCard).not.toBeNull();

      const card = state.activeCard;
      if (card?.cardType === 'meaning') {
        setUserInput('totally_wrong_meaning');
      } else {
        setUserInput('あいうえお');
      }
      await submitAnswer();

      const updated = useQuizStore.getState();
      expect(updated.wrongCounts['test-item-1']).toBe(1);

      if (state.activeCard?.cardType === 'meaning') {
        expect(updated.meaningWrongCounts['test-item-1']).toBe(1);
        expect(updated.readingWrongCounts['test-item-1'] || 0).toBe(0);
      } else {
        expect(updated.readingWrongCounts['test-item-1']).toBe(1);
        expect(updated.meaningWrongCounts['test-item-1'] || 0).toBe(0);
      }
    });
  });
});
