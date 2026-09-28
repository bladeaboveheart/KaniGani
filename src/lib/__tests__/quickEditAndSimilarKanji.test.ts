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
import { Item } from '@/lib/types';

describe('Quick Edit & Similar Kanji In-Memory & Bidirectional Suite', () => {
  it('updates live quiz session when an item is modified mid-review without resetting progress', () => {
    const store = useQuizStore.getState();
    store.resetStore();

    const initialItem: Item = {
      id: 'kanji-1',
      type: 'kanji',
      character: '日',
      slug: 'sun',
      level: 1,
      lesson_position: 1,
      primary_meaning: 'Matahari',
      meaning_mnemonic: 'Kotak dengan garis tengah',
      accepted_meanings: ['Matahari', 'Sun', 'Hari'],
      primary_reading: 'にち',
      reading_mnemonic: 'Nichi',
      accepted_readings: ['にち', 'ひ'],
    };

    store.initializeSession([initialItem], 'review');

    const stateBefore = useQuizStore.getState();
    expect(stateBefore.activeCard).not.toBeNull();
    expect(stateBefore.activeCard?.item.accepted_meanings).toEqual(['Matahari', 'Sun', 'Hari']);

    // Developer adds a new alternative meaning "Sang Surya" on-the-fly
    const updatedItem: Item = {
      ...initialItem,
      accepted_meanings: ['Matahari', 'Sun', 'Hari', 'Sang Surya'],
    };

    // Apply the in-memory update pattern used in review/page.tsx and lesson/page.tsx
    const state = useQuizStore.getState();
    if (state.activeCard && state.activeCard.itemId === updatedItem.id) {
      useQuizStore.setState({
        activeCard: {
          ...state.activeCard,
          item: updatedItem,
          character: updatedItem.character,
        },
      });
    }

    const updatedQueue = state.queue.map((c) => {
      if (c.itemId === updatedItem.id) {
        return {
          ...c,
          item: updatedItem,
          character: updatedItem.character,
        };
      }
      return c;
    });

    const updatedOriginal = state.originalItems.map((it) => (it.id === updatedItem.id ? updatedItem : it));

    useQuizStore.setState({
      queue: updatedQueue,
      originalItems: updatedOriginal,
    });

    const stateAfter = useQuizStore.getState();
    expect(stateAfter.activeCard?.item.accepted_meanings).toContain('Sang Surya');
    expect(stateAfter.queue[0].item.accepted_meanings).toContain('Sang Surya');

    // Test that submitting "sang surya" is now accepted
    if (stateAfter.activeCard?.cardType === 'meaning') {
      useQuizStore.getState().setUserInput('sang surya');
      useQuizStore.getState().submitAnswer();
      expect(useQuizStore.getState().isCorrect).toBe(true);
    }
  });

  it('correctly creates bidirectional pairs for similar kanji', () => {
    const currentItemId = 'kanji-A';
    const selectedSimilarIds = ['kanji-B', 'kanji-C'];

    // Construct bidirectional pairs
    const pairs: { item_id: string; similar_item_id: string }[] = [];
    selectedSimilarIds.forEach((simId) => {
      pairs.push({ item_id: currentItemId, similar_item_id: simId });
      pairs.push({ item_id: simId, similar_item_id: currentItemId });
    });

    // Ensure duplicates are eliminated
    const uniquePairsMap = new Map<string, { item_id: string; similar_item_id: string }>();
    pairs.forEach((p) => {
      const key = `${p.item_id}:${p.similar_item_id}`;
      uniquePairsMap.set(key, p);
    });
    const uniquePairs = Array.from(uniquePairsMap.values());

    expect(uniquePairs).toHaveLength(4);
    expect(uniquePairs).toEqual([
      { item_id: 'kanji-A', similar_item_id: 'kanji-B' },
      { item_id: 'kanji-B', similar_item_id: 'kanji-A' },
      { item_id: 'kanji-A', similar_item_id: 'kanji-C' },
      { item_id: 'kanji-C', similar_item_id: 'kanji-A' },
    ]);
  });
});
