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
    primary_reading: type !== 'radical' ? 'かん' : undefined,
    accepted_readings: type !== 'radical' ? ['かん'] : undefined,
    srs_stage: 1,
  };
}

describe('Wrap-Up & SRS Feedback Logic Tests', () => {
  beforeEach(() => {
    useQuizStore.getState().resetStore();
  });

  describe('Active Pool & toggleWrapUp Behavior', () => {
    it('should cap initial queue to at most 10 unique items (20 cards) in review mode and put remainder in reserve', () => {
      // Create 15 kanji items (each has 2 cards: meaning and reading = 30 cards total)
      const items = Array.from({ length: 15 }, (_, i) => createMockItem(`item-${i + 1}`, 'kanji'));
      useQuizStore.getState().initializeSession(items, 'review');

      const initialQueue = useQuizStore.getState().queue;
      expect(initialQueue.length).toBe(20);
      expect(useQuizStore.getState().reserveItems.length).toBe(5);

      // Unique item IDs in queue must be exactly 10
      const uniqueIds = new Set(initialQueue.map(c => c.itemId));
      expect(uniqueIds.size).toBe(10);
    });

    it('should lock reserve when wrap up is toggled ON and restore reserve when toggled OFF', () => {
      const items = Array.from({ length: 15 }, (_, i) => createMockItem(`item-${i + 1}`, 'kanji'));
      useQuizStore.getState().initializeSession(items, 'review');

      expect(useQuizStore.getState().reserveItems.length).toBe(5);

      // Toggle ON
      useQuizStore.getState().toggleWrapUp();
      expect(useQuizStore.getState().wrapUpActive).toBe(true);
      expect(useQuizStore.getState().reserveItems.length).toBe(0);
      expect(useQuizStore.getState().untrimmedReserve?.length).toBe(5);
      expect(useQuizStore.getState().queue.length).toBe(20);

      // Toggle OFF
      useQuizStore.getState().toggleWrapUp();
      const stateAfterUntoggle = useQuizStore.getState();
      expect(stateAfterUntoggle.wrapUpActive).toBe(false);
      expect(stateAfterUntoggle.reserveItems.length).toBe(5);
      expect(stateAfterUntoggle.queue.length).toBe(20);
    });

    it('should NOT destructively drop the remaining card of an item during proceedNext while wrap up is active', async () => {
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
      await useQuizStore.getState().submitAnswer();

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

  describe('Sliding Active Pool & Spacing Mechanics', () => {
    it('should space meaning and reading cards apart and never have directly adjacent identical items', () => {
      const items = Array.from({ length: 10 }, (_, i) => createMockItem(`sp-${i + 1}`, 'kanji'));
      useQuizStore.getState().initializeSession(items, 'review');

      const queue = useQuizStore.getState().queue;
      expect(queue.length).toBe(20);

      // Verify no two adjacent cards share the exact same itemId
      for (let i = 0; i < queue.length - 1; i++) {
        expect(queue[i].itemId).not.toBe(queue[i + 1].itemId);
      }
    });

    it('should replenish active pool from reserve when an item is completed', async () => {
      // 12 items: 10 active + 2 reserve
      const items = Array.from({ length: 12 }, (_, i) => createMockItem(`rep-${i + 1}`, 'kanji'));
      useQuizStore.getState().initializeSession(items, 'review');

      expect(useQuizStore.getState().reserveItems.length).toBe(2);

      // Find both cards for the first item in queue
      const state = useQuizStore.getState();
      const targetItemId = state.queue[0].itemId;

      // Answer first card correctly
      const firstCard = state.queue[0];
      const ans1 = firstCard.cardType === 'meaning'
        ? firstCard.item.accepted_meanings![0]
        : firstCard.item.accepted_readings![0];
      useQuizStore.getState().setUserInput(ans1);
      await useQuizStore.getState().submitAnswer();
      useQuizStore.getState().proceedNext();

      // Reserve should still be 2 because item is not yet fully completed
      expect(useQuizStore.getState().reserveItems.length).toBe(2);

      // Locate sister card in the queue and answer it
      const currentQueue = useQuizStore.getState().queue;
      const sisterIndex = currentQueue.findIndex(c => c.itemId === targetItemId);
      expect(sisterIndex).toBeGreaterThanOrEqual(0);

      // Rotate queue to make sister card active
      const rotatedQueue = [
        ...currentQueue.slice(sisterIndex),
        ...currentQueue.slice(0, sisterIndex),
      ];
      useQuizStore.setState({ queue: rotatedQueue, activeCard: rotatedQueue[0] });

      const sisterCard = useQuizStore.getState().activeCard!;
      const ans2 = sisterCard.cardType === 'meaning'
        ? sisterCard.item.accepted_meanings![0]
        : sisterCard.item.accepted_readings![0];
      useQuizStore.getState().setUserInput(ans2);
      await useQuizStore.getState().submitAnswer();
      useQuizStore.getState().proceedNext();

      // Item is now fully completed! Reserve should have decreased from 2 to 1 as 1 item was drawn
      expect(useQuizStore.getState().reserveItems.length).toBe(1);
    });

    it('should requeue wrong card to requeuedCards, keep counterpart card, and draw replacement item once item leaves active queue', async () => {
      // 12 items: 10 active + 2 reserve
      const items = Array.from({ length: 12 }, (_, i) => createMockItem(`err-${i + 1}`, 'kanji'));
      useQuizStore.getState().initializeSession(items, 'review');

      expect(useQuizStore.getState().reserveItems.length).toBe(2);
      expect(useQuizStore.getState().requeuedCards.length).toBe(0);

      const firstCard = useQuizStore.getState().queue[0];
      const targetItemId = firstCard.itemId;

      // Submit incorrect answer for first card
      useQuizStore.getState().setUserInput('wrong_ans');
      await useQuizStore.getState().submitAnswer();
      useQuizStore.getState().proceedNext();

      const afterFirstState = useQuizStore.getState();
      // 1. Wrong card moved to requeuedCards
      expect(afterFirstState.requeuedCards.length).toBe(1);
      expect(afterFirstState.requeuedCards[0].itemId).toBe(targetItemId);

      // 2. Counterpart card is still present in queue
      const counterpartInQueue = afterFirstState.queue.some(
        c => c.itemId === targetItemId && c.cardType !== firstCard.cardType
      );
      expect(counterpartInQueue).toBe(true);

      // 3. Since counterpart is still in queue, active items count is still 10, reserve is 2
      expect(afterFirstState.reserveItems.length).toBe(2);

      // Now answer counterpart card
      const sisterIndex = afterFirstState.queue.findIndex(c => c.itemId === targetItemId);
      const rotatedQueue = [
        ...afterFirstState.queue.slice(sisterIndex),
        ...afterFirstState.queue.slice(0, sisterIndex),
      ];
      useQuizStore.setState({ queue: rotatedQueue, activeCard: rotatedQueue[0] });

      const sisterCard = useQuizStore.getState().activeCard!;
      const sisterAns = sisterCard.cardType === 'meaning'
        ? sisterCard.item.accepted_meanings![0]
        : sisterCard.item.accepted_readings![0];
      useQuizStore.getState().setUserInput(sisterAns);
      await useQuizStore.getState().submitAnswer();
      useQuizStore.getState().proceedNext();

      // 4. Now that targetItem has no cards remaining in active queue, replacement item is drawn from reserve (2 -> 1)
      expect(useQuizStore.getState().reserveItems.length).toBe(1);
    });
  });
});

