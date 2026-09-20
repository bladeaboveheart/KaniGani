import { describe, it, expect, vi, beforeEach } from 'vitest';

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

import { useQuizStore, QuizCard } from '@/store/useQuizStore';
import { Item } from '@/lib/types';

function createMockItem(id: string, type: 'radical' | 'kanji' | 'vocabulary'): Item {
  return {
    id,
    type,
    character: '漢' + id,
    slug: 'item-' + id,
    level: 1,
    lesson_position: 1,
    primary_meaning: 'Meaning ' + id,
    accepted_meanings: ['meaning ' + id],
    primary_reading: type !== 'radical' ? 'kan' + id : undefined,
    accepted_readings: type !== 'radical' ? ['kan' + id] : undefined,
    srs_stage: 1,
  };
}

describe('Wrap-Up & SRS Feedback Logic Tests', () => {
  beforeEach(() => {
    useQuizStore.getState().resetStore();
  });

  describe('toggleWrapUp Behavior', () => {
    it('should cap queue to at most 10 unique items when wrap up is toggled ON', () => {
      // Create 15 kanji items (each has 2 cards: meaning and reading = 30 cards total)
      const items = Array.from({ length: 15 }, (_, i) => createMockItem(`item-${i + 1}`, 'kanji'));
      useQuizStore.getState().initializeSession(items, 'review');

      const initialQueue = useQuizStore.getState().queue;
      expect(initialQueue.length).toBe(30);

      // Toggle wrap up ON
      useQuizStore.getState().toggleWrapUp();

      const stateAfterWrapUp = useQuizStore.getState();
      expect(stateAfterWrapUp.wrapUpActive).toBe(true);

      // Unique item IDs in queue must be exactly 10
      const uniqueIds = new Set(stateAfterWrapUp.queue.map(c => c.itemId));
      expect(uniqueIds.size).toBe(10);
      // Both cards of each of the 10 items should be preserved
      expect(stateAfterWrapUp.queue.length).toBe(20);
    });

    it('should restore original untrimmed queue when wrap up is toggled OFF', () => {
      const items = Array.from({ length: 15 }, (_, i) => createMockItem(`item-${i + 1}`, 'kanji'));
      useQuizStore.getState().initializeSession(items, 'review');

      // Toggle ON
      useQuizStore.getState().toggleWrapUp();
      expect(useQuizStore.getState().queue.length).toBe(20);

      // Toggle OFF
      useQuizStore.getState().toggleWrapUp();
      const stateAfterUntoggle = useQuizStore.getState();
      expect(stateAfterUntoggle.wrapUpActive).toBe(false);
      expect(stateAfterUntoggle.queue.length).toBe(30);
    });

    it('should NOT destructively drop the remaining card of an item during proceedNext while wrap up is active', () => {
      // 2 kanji items = 4 cards
      const items = [
        createMockItem('k1', 'kanji'),
        createMockItem('k2', 'kanji'),
      ];
      useQuizStore.getState().initializeSession(items, 'review');
      useQuizStore.getState().toggleWrapUp();

      const queueBefore = useQuizStore.getState().queue;
      const firstCard = queueBefore[0];

      // Submit correct answer for first card
      const answer = firstCard.cardType === 'meaning'
        ? firstCard.item.accepted_meanings![0]
        : firstCard.item.accepted_readings![0];
      useQuizStore.getState().setUserInput(answer);
      useQuizStore.getState().submitAnswer();

      // Proceed to next card
      useQuizStore.getState().proceedNext();

      const queueAfter = useQuizStore.getState().queue;
      expect(queueAfter.length).toBe(3);

      // Verify the other card for firstCard's itemId is still present in queue
      const remainingSisterCard = queueAfter.find(
        c => c.itemId === firstCard.itemId && c.cardType !== firstCard.cardType
      );
      expect(remainingSisterCard).toBeDefined();
    });
  });

  describe('Closing Card (showSrs) Calculation', () => {
    it('should identify radical card as closing card immediately', () => {
      const radicalCard: QuizCard = {
        itemId: 'rad-1',
        type: 'radical',
        character: '一',
        cardType: 'meaning',
        item: createMockItem('rad-1', 'radical'),
        attempts: 0,
      };

      const itemProgress: Record<string, { meaningCorrect: boolean; readingCorrect: boolean }> = {};
      const prog = itemProgress[radicalCard.itemId];
      const isClosingCard = radicalCard.type === 'radical'
        ? true
        : radicalCard.cardType === 'meaning'
          ? Boolean(prog?.readingCorrect)
          : Boolean(prog?.meaningCorrect);

      expect(isClosingCard).toBe(true);
    });

    it('should NOT identify first kanji card as closing card (meaning card without reading done)', () => {
      const kanjiMeaningCard: QuizCard = {
        itemId: 'kan-1',
        type: 'kanji',
        character: '人',
        cardType: 'meaning',
        item: createMockItem('kan-1', 'kanji'),
        attempts: 0,
      };

      const itemProgress: Record<string, { meaningCorrect: boolean; readingCorrect: boolean }> = {};
      const prog = itemProgress[kanjiMeaningCard.itemId];
      const isClosingCard = kanjiMeaningCard.type === 'radical'
        ? true
        : kanjiMeaningCard.cardType === 'meaning'
          ? Boolean(prog?.readingCorrect)
          : Boolean(prog?.meaningCorrect);

      expect(isClosingCard).toBe(false);
    });

    it('should identify second kanji card as closing card once the reading card was already correct', () => {
      const kanjiMeaningCard: QuizCard = {
        itemId: 'kan-1',
        type: 'kanji',
        character: '人',
        cardType: 'meaning',
        item: createMockItem('kan-1', 'kanji'),
        attempts: 0,
      };

      // Reading was already completed earlier in session
      const itemProgress: Record<string, { meaningCorrect: boolean; readingCorrect: boolean }> = {
        'kan-1': { meaningCorrect: false, readingCorrect: true },
      };
      const prog = itemProgress[kanjiMeaningCard.itemId];
      const isClosingCard = kanjiMeaningCard.type === 'radical'
        ? true
        : kanjiMeaningCard.cardType === 'meaning'
          ? Boolean(prog?.readingCorrect)
          : Boolean(prog?.meaningCorrect);

      expect(isClosingCard).toBe(true);
    });
  });
});
