import { describe, it, expect, vi, beforeEach } from 'vitest';

vi.mock('@/lib/supabase', () => ({
  supabase: {
    from: () => ({
      select: () => ({
        eq: () => ({
          eq: () => Promise.resolve({ data: [] }),
          maybeSingle: () => Promise.resolve({ data: null }),
        }),
        in: () => Promise.resolve({ data: [] }),
      }),
      upsert: () => Promise.resolve({ data: null, error: null }),
    }),
    auth: {
      getUser: () => Promise.resolve({ data: { user: { id: 'test-user-id' } } }),
    },
  },
}));

import { useQuizStore, QuizCard } from '@/store/useQuizStore';
import { Item } from '@/lib/types';

function createMockItem(id: string, customSynonyms: string[] = []): Item {
  return {
    id,
    type: 'kanji',
    character: '山',
    slug: 'yama',
    level: 1,
    lesson_position: 1,
    primary_meaning: 'Gunung',
    accepted_meanings: ['gunung', ...customSynonyms.map(s => s.toLowerCase().trim())],
    user_synonyms: customSynonyms,
    primary_reading: 'やま',
    accepted_readings: ['やま', 'サン'],
    srs_stage: 1,
  };
}

describe('User Item Data & Synonyms Store Tests', () => {
  beforeEach(() => {
    useQuizStore.getState().resetStore();
  });

  describe('addCustomSynonymAndValidate', () => {
    it('should add custom synonym to activeCard, queue, and originalItems', () => {
      const item = createMockItem('item-1');
      useQuizStore.getState().initializeSession([item], 'review');

      // Add synonym
      useQuizStore.getState().addCustomSynonymAndValidate('item-1', 'Bukit Besar');

      const state = useQuizStore.getState();
      const updatedItem = state.originalItems.find(i => i.id === 'item-1');

      expect(updatedItem?.accepted_meanings).toContain('bukit besar');
      expect(updatedItem?.user_synonyms).toContain('Bukit Besar');

      if (state.activeCard?.itemId === 'item-1') {
        expect(state.activeCard.item.accepted_meanings).toContain('bukit besar');
        expect(state.activeCard.item.user_synonyms).toContain('Bukit Besar');
      }
    });

    it('should retroactively convert incorrect answer to CORRECT if added synonym matches user input', async () => {
      const item = createMockItem('item-1');
      useQuizStore.getState().initializeSession([item], 'review');

      // Make sure active card is meaning card
      const state = useQuizStore.getState();
      if (state.activeCard?.cardType !== 'meaning') {
        // Swap or adjust queue so activeCard is meaning
        const meaningCard = state.queue.find(c => c.cardType === 'meaning');
        if (meaningCard) {
          useQuizStore.setState({
            activeCard: meaningCard,
            queue: state.queue.filter(c => c !== meaningCard),
          });
        }
      }

      // Submit an unaccepted answer: "bukit"
      useQuizStore.getState().setUserInput('bukit');
      await useQuizStore.getState().submitAnswer();

      // State after incorrect submission
      let curState = useQuizStore.getState();
      expect(curState.isAnswerSubmitted).toBe(true);
      expect(curState.isCorrect).toBe(false);
      expect(curState.incorrectActive).toBe(true);
      expect(curState.wrongCounts['item-1']).toBe(1);
      expect(curState.meaningWrongCounts['item-1']).toBe(1);

      // Now user adds "bukit" as a custom synonym while drawer is open
      useQuizStore.getState().addCustomSynonymAndValidate('item-1', 'Bukit');

      // State after adding synonym
      curState = useQuizStore.getState();
      expect(curState.isCorrect).toBe(true);
      expect(curState.incorrectActive).toBe(false);
      expect(curState.wrongCounts['item-1']).toBe(0);
      expect(curState.meaningWrongCounts['item-1']).toBe(0);

      // When proceedNext is called, it should proceed as a correct answer without re-queuing
      useQuizStore.getState().proceedNext();
      curState = useQuizStore.getState();
      expect(curState.requeuedCards.some(c => c.itemId === 'item-1' && c.cardType === 'meaning')).toBe(false);
    });

    it('should immediately accept custom synonyms initialized with item data', async () => {
      const itemWithCustomSynonym = createMockItem('item-2', ['Puncak']);
      useQuizStore.getState().initializeSession([itemWithCustomSynonym], 'review');

      // Ensure active card is meaning card
      const state = useQuizStore.getState();
      if (state.activeCard?.cardType !== 'meaning') {
        const meaningCard = state.queue.find(c => c.cardType === 'meaning');
        if (meaningCard) {
          useQuizStore.setState({
            activeCard: meaningCard,
            queue: state.queue.filter(c => c !== meaningCard),
          });
        }
      }

      // Submit "puncak"
      useQuizStore.getState().setUserInput('puncak');
      await useQuizStore.getState().submitAnswer();

      const curState = useQuizStore.getState();
      expect(curState.isAnswerSubmitted).toBe(true);
      expect(curState.isCorrect).toBe(true);
      expect(curState.wrongCounts['item-2'] || 0).toBe(0);
    });
  });
});
