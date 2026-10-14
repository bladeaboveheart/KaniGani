import { describe, it, expect, beforeEach, vi } from 'vitest';
import { useGanikaniQuizStore } from '@/store/useGanikaniQuizStore';
import { Item } from '@/lib/types';

vi.mock('@/services/ganikaniService', () => ({
  submitGanikaniReview: vi.fn().mockResolvedValue({ newStage: 2, nextReviewAt: '2026-10-15T00:00:00Z' }),
  addGanikaniReadingSynonym: vi.fn().mockResolvedValue(['たべる', 'くう']),
}));

const mockItems: Item[] = [
  {
    id: 'item-1',
    character: '食べる',
    slug: 'taberu',
    level: 1,
    type: 'vocabulary',
    lesson_position: 1,
    meaning_mnemonic: 'Makan dengan mulut',
    reading_mnemonic: 'Bacaannya ta-be-ru',
    primary_meaning: 'Makan',
    primary_reading: 'たべる',
    accepted_meanings: ['Makan', 'Eat'],
    accepted_readings: ['たべる'],
    meanings: [{ id: 'm1', meaning: 'Makan', primary_meaning: true, accepted_answer: true }],
    readings: [{ id: 'r1', reading: 'たべる', reading_type: 'kunyomi', primary_reading: true, accepted_answer: true }],
    parts_of_speech: ['ichidan verb', 'transitive verb'],
  },
  {
    id: 'item-2',
    character: '飲む',
    slug: 'nomu',
    level: 1,
    type: 'vocabulary',
    lesson_position: 2,
    meaning_mnemonic: 'Minum air',
    reading_mnemonic: 'Bacaannya no-mu',
    primary_meaning: 'Minum',
    primary_reading: 'のむ',
    accepted_meanings: ['Minum', 'Drink'],
    accepted_readings: ['のむ'],
    meanings: [{ id: 'm2', meaning: 'Minum', primary_meaning: true, accepted_answer: true }],
    readings: [{ id: 'r2', reading: 'のむ', reading_type: 'godan verb', primary_reading: true, accepted_answer: true }],
    parts_of_speech: ['godan verb', 'transitive verb'],
  },
];

describe('useGanikaniQuizStore', () => {
  beforeEach(() => {
    useGanikaniQuizStore.getState().resetStore();
  });

  it('initializes session correctly with 1 card per item', () => {
    const store = useGanikaniQuizStore.getState();
    store.initializeSession(mockItems, 'review');

    const state = useGanikaniQuizStore.getState();
    expect(state.originalItems.length).toBe(2);
    expect(state.activeItem).not.toBeNull();
    expect(state.queue.length).toBe(1);
    expect(state.initialCount).toBe(2);
    expect(state.isAnswerSubmitted).toBe(false);
  });

  it('validates Romaji auto-conversion to Kana on submit', async () => {
    const store = useGanikaniQuizStore.getState();
    store.initializeSession(mockItems, 'review');

    // Type in Romaji for active item
    const active = useGanikaniQuizStore.getState().activeItem!;
    const expectedRomaji = active.slug; // 'taberu' or 'nomu'

    store.setUserInput(expectedRomaji);
    await store.submitAnswer('user-123');

    const stateAfter = useGanikaniQuizStore.getState();
    expect(stateAfter.isAnswerSubmitted).toBe(true);
    expect(stateAfter.isCorrect).toBe(true);
  });

  it('handles incorrect answer and increments wrong count', async () => {
    const store = useGanikaniQuizStore.getState();
    store.initializeSession(mockItems, 'review');

    const active = useGanikaniQuizStore.getState().activeItem!;
    store.setUserInput('salah');
    await store.submitAnswer('user-123');

    const stateAfter = useGanikaniQuizStore.getState();
    expect(stateAfter.isAnswerSubmitted).toBe(true);
    expect(stateAfter.isCorrect).toBe(false);
    expect(stateAfter.wrongCounts[active.id]).toBe(1);
  });

  it('supports undoActiveCard (Redo) without penalty', async () => {
    const store = useGanikaniQuizStore.getState();
    store.initializeSession(mockItems, 'review');

    const active = useGanikaniQuizStore.getState().activeItem!;
    store.setUserInput('salah');
    await store.submitAnswer('user-123');

    expect(useGanikaniQuizStore.getState().wrongCounts[active.id]).toBe(1);

    // Call Redo
    store.undoActiveCard();

    const stateAfter = useGanikaniQuizStore.getState();
    expect(stateAfter.isAnswerSubmitted).toBe(false);
    expect(stateAfter.isCorrect).toBe(false);
    expect(stateAfter.wrongCounts[active.id] || 0).toBe(0);
    expect(stateAfter.userInput).toBe('');
  });

  it('supports adding reading synonym and retroactively flips verdict to correct', async () => {
    const store = useGanikaniQuizStore.getState();
    store.initializeSession([mockItems[0]], 'review');

    // User submits alternative reading 'くう'
    store.setUserInput('くう');
    await store.submitAnswer('user-123');

    expect(useGanikaniQuizStore.getState().isCorrect).toBe(false);

    // User adds 'くう' as synonym via info drawer
    await store.addReadingSynonymAndValidate('user-123', 'くう');

    const stateAfter = useGanikaniQuizStore.getState();
    expect(stateAfter.isCorrect).toBe(true);
    expect(stateAfter.activeItem?.accepted_readings).toContain('くう');
  });

  it('toggles Wrap Up mode', () => {
    const store = useGanikaniQuizStore.getState();
    store.initializeSession(mockItems, 'review');

    expect(useGanikaniQuizStore.getState().wrapUpActive).toBe(false);

    store.toggleWrapUp();
    expect(useGanikaniQuizStore.getState().wrapUpActive).toBe(true);
    expect(useGanikaniQuizStore.getState().queue.length).toBe(0);

    store.toggleWrapUp();
    expect(useGanikaniQuizStore.getState().wrapUpActive).toBe(false);
    expect(useGanikaniQuizStore.getState().queue.length).toBe(1);
  });

  it('correctly converts incremental romaji "nanatsu" to "ななつ" using IMEMode', async () => {
    const wanakana = await import('wanakana');
    let buffer = '';
    const word = 'nanatsu';
    for (const char of word) {
      buffer = wanakana.toKana(buffer + char, { IMEMode: true });
    }
    expect(buffer).toBe('ななつ');
    expect(buffer).not.toContain('んあ');
  });
});
