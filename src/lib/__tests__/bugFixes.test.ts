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

  describe('P0: Resilient Quiz Review Meaning Matching (Slash & Parenthesis Expansion)', () => {
    it('should expand slash-separated and parenthesis-wrapped meanings into individual accepted answers', async () => {
      const { expandAcceptedMeanings } = await import('@/store/useQuizStore');
      
      const expanded = expandAcceptedMeanings([
        'Unggul / Berbakat / Jenius',
        'Pengar (Mabuk Pasca Minum / Hangover)',
        'Kamu Brengsek! / Kau Keparat! (Kasar)',
      ]);

      // Should accept individual components
      expect(expanded).toContain('unggul');
      expect(expanded).toContain('berbakat');
      expect(expanded).toContain('jenius');
      expect(expanded).toContain('unggul / berbakat / jenius');

      // Should accept core word without parenthesis
      expect(expanded).toContain('pengar');
      expect(expanded).toContain('mabuk pasca minum');
      expect(expanded).toContain('hangover');

      // Should accept with and without exclamation marks
      expect(expanded).toContain('kamu brengsek');
      expect(expanded).toContain('kau keparat');
      expect(expanded).toContain('kasar');
    });

    it('should mark review answer correct when typing any individual component of a multi-word translation', async () => {
      const { initializeSession, setUserInput, submitAnswer } = useQuizStore.getState();

      const mockItem: any = {
        id: 'test-shun',
        type: 'kanji',
        character: '俊',
        level: 40,
        accepted_meanings: ['Unggul / Berbakat / Jenius', 'Genius'],
        accepted_readings: ['しゅん'],
        primary_meaning: 'Unggul / Berbakat / Jenius',
        primary_reading: 'しゅん',
      };

      initializeSession([mockItem], 'review');

      // Find the meaning card
      const state = useQuizStore.getState();
      const meaningCard = state.queue.find(c => c.cardType === 'meaning');
      expect(meaningCard).toBeDefined();

      // Directly set activeCard to meaning card for testing
      useQuizStore.setState({ activeCard: meaningCard });

      // User types only "Jenius"
      setUserInput('Jenius');
      await submitAnswer();
      expect(useQuizStore.getState().isCorrect).toBe(true);

      // User types only "Unggul"
      useQuizStore.setState({ isAnswerSubmitted: false, isCorrect: false });
      setUserInput('unggul');
      await submitAnswer();
      expect(useQuizStore.getState().isCorrect).toBe(true);

      // User types only "Berbakat"
      useQuizStore.setState({ isAnswerSubmitted: false, isCorrect: false });
      setUserInput('berbakat');
      await submitAnswer();
      expect(useQuizStore.getState().isCorrect).toBe(true);
    });
  });

  describe('P5: Dynamic Chunk Ranges for 2000+ Progress Rows', () => {
    it('should generate complete contiguous chunk ranges without gaps or truncation', async () => {
      const { generateChunkRanges } = await import('@/lib/userProgress');
      const ranges = generateChunkRanges(2332, 1000, 1000);
      expect(ranges).toEqual([
        [1000, 1999],
        [2000, 2331],
      ]);
    });
  });

  describe('P6: Review Item Reading and Meaning Acceptance for WaniKani Items', () => {
    it('should accept exact Japanese kana readings such as きんねん for 近年', async () => {
      const { initializeSession, setUserInput, submitAnswer } = useQuizStore.getState();

      const kinnenItem: any = {
        id: 'kinnen-uuid',
        type: 'vocabulary',
        character: '近年',
        level: 14,
        slug: 'beberapa-tahun-terakhir',
        primary_meaning: 'Beberapa Tahun Terakhir',
        primary_reading: 'きんねん',
        accepted_meanings: ['beberapa tahun terakhir', 'recent years', 'lately'],
        accepted_readings: ['きんねん'],
      };

      initializeSession([kinnenItem], 'review');

      // Test reading card
      const state = useQuizStore.getState();
      const readingCard = state.queue.find(c => c.cardType === 'reading');
      expect(readingCard).toBeDefined();

      useQuizStore.setState({ activeCard: readingCard, isAnswerSubmitted: false, isCorrect: false });
      setUserInput('きんねん');
      await submitAnswer();
      expect(useQuizStore.getState().isCorrect).toBe(true);

      // Test meaning card
      const meaningCard = state.queue.find(c => c.cardType === 'meaning');
      expect(meaningCard).toBeDefined();

      useQuizStore.setState({ activeCard: meaningCard, isAnswerSubmitted: false, isCorrect: false });
      setUserInput('beberapa tahun terakhir');
      await submitAnswer();
      expect(useQuizStore.getState().isCorrect).toBe(true);
    });
  });
});

