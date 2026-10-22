import { create } from 'zustand';
import { Item } from '@/lib/types';
import * as wanakana from 'wanakana';
import { submitGanikaniReview, addGanikaniReadingSynonym } from '@/services/ganikaniService';
import { isAnyReadingMatch, expandAcceptedReadings } from '@/lib/kanaHelper';

interface GanikaniQuizState {
  // Session Configuration & Items
  mode: 'lesson' | 'review';
  originalItems: Item[];
  queue: Item[];
  requeuedItems: Item[];
  untrimmedQueue: Item[] | null;
  activeItem: Item | null;
  completedItemIds: string[];

  // Stats & Scoring
  wrongCounts: Record<string, number>;
  initialCount: number;
  isSubmitting: boolean;

  // Input & Interactive States
  userInput: string;
  isAnswerSubmitted: boolean;
  isCorrect: boolean;
  showFeedback: boolean;
  incorrectActive: boolean;
  showItemInfo: boolean;
  wrapUpActive: boolean;

  // Actions
  initializeSession: (items: Item[], mode: 'lesson' | 'review') => void;
  setUserInput: (input: string) => void;
  submitAnswer: (userId?: string) => Promise<void> | void;
  proceedNext: (userId?: string) => Promise<void> | void;
  toggleItemInfo: (force?: boolean) => void;
  toggleWrapUp: () => void;
  undoActiveCard: () => void;
  addReadingSynonymAndValidate: (userId: string, synonym: string) => Promise<void>;
  resetStore: () => void;
}

export const useGanikaniQuizStore = create<GanikaniQuizState>((set, get) => ({
  mode: 'review',
  originalItems: [],
  queue: [],
  requeuedItems: [],
  untrimmedQueue: null,
  activeItem: null,
  completedItemIds: [],

  wrongCounts: {},
  initialCount: 0,
  isSubmitting: false,

  userInput: '',
  isAnswerSubmitted: false,
  isCorrect: false,
  showFeedback: false,
  incorrectActive: false,
  showItemInfo: false,
  wrapUpActive: false,

  initializeSession: (items: Item[], mode: 'lesson' | 'review') => {
    // Shuffle items for variety
    const shuffled = [...items].sort(() => Math.random() - 0.5);
    const active = shuffled.length > 0 ? shuffled[0] : null;

    set({
      mode,
      originalItems: [...items],
      queue: shuffled.slice(1),
      requeuedItems: [],
      untrimmedQueue: null,
      activeItem: active,
      completedItemIds: [],
      wrongCounts: {},
      initialCount: items.length,
      isSubmitting: false,

      userInput: '',
      isAnswerSubmitted: false,
      isCorrect: false,
      showFeedback: false,
      incorrectActive: false,
      showItemInfo: false,
      wrapUpActive: false,
    });
  },

  setUserInput: (input: string) => {
    set({ userInput: input });
  },

  submitAnswer: async (userId?: string) => {
    const state = get();
    const { activeItem, userInput, isAnswerSubmitted, wrongCounts, mode } = state;

    if (!activeItem || isAnswerSubmitted) return;

    const trimmed = userInput.trim();
    if (!trimmed) return;

    // Convert Romaji to Hiragana using wanakana
    const kanaInput = wanakana.toHiragana(trimmed).trim();

    // Check against accepted readings (including custom reading synonyms)
    const accepted = (activeItem.accepted_readings || []).map((r) => r.trim());
    const isCorrect = isAnyReadingMatch(trimmed, accepted) || isAnyReadingMatch(kanaInput, accepted);

    if (isCorrect) {
      set({
        isAnswerSubmitted: true,
        isCorrect: true,
        showFeedback: true,
        incorrectActive: false,
      });

      // If in review mode and userId is provided, submit SRS progress immediately on first correct completion
      if (mode === 'review' && userId) {
        const itemWrongCount = wrongCounts[activeItem.id] || 0;
        try {
          await submitGanikaniReview(userId, activeItem.id, itemWrongCount);
        } catch (err) {
          console.error('Failed to submit ganikani review:', err);
        }
      }
    } else {
      const currentWrongs = (wrongCounts[activeItem.id] || 0) + 1;
      set({
        isAnswerSubmitted: true,
        isCorrect: false,
        showFeedback: true,
        incorrectActive: true,
        wrongCounts: {
          ...wrongCounts,
          [activeItem.id]: currentWrongs,
        },
      });
    }
  },

  proceedNext: async (userId?: string) => {
    const state = get();
    const {
      activeItem,
      queue,
      requeuedItems,
      isCorrect,
      completedItemIds,
      wrapUpActive,
    } = state;

    if (!activeItem) return;

    let nextQueue = [...queue];
    let nextRequeued = [...requeuedItems];
    const nextCompleted = isCorrect
      ? [...completedItemIds, activeItem.id]
      : [...completedItemIds];

    // If answer was wrong, requeue the item to appear again later
    if (!isCorrect && !wrapUpActive) {
      nextRequeued.push(activeItem);
    }

    // Determine the next active item
    let nextActive: Item | null = null;
    if (nextQueue.length > 0) {
      nextActive = nextQueue[0];
      nextQueue = nextQueue.slice(1);
    } else if (nextRequeued.length > 0) {
      // Re-shuffle requeued items into the active queue
      const reshuffled = [...nextRequeued].sort(() => Math.random() - 0.5);
      nextActive = reshuffled[0];
      nextQueue = reshuffled.slice(1);
      nextRequeued = [];
    }

    set({
      activeItem: nextActive,
      queue: nextQueue,
      requeuedItems: nextRequeued,
      completedItemIds: nextCompleted,
      userInput: '',
      isAnswerSubmitted: false,
      isCorrect: false,
      showFeedback: false,
      incorrectActive: false,
      showItemInfo: false,
    });
  },

  toggleItemInfo: (force?: boolean) => {
    set((state) => ({
      showItemInfo: force !== undefined ? force : !state.showItemInfo,
    }));
  },

  toggleWrapUp: () => {
    set((state) => {
      const newWrapUp = !state.wrapUpActive;
      if (newWrapUp) {
        // Wrap up turned ON: prune reserve queue to only items currently in flight
        return {
          wrapUpActive: true,
          untrimmedQueue: state.queue,
          queue: [], // Only finish active item
        };
      } else {
        // Wrap up turned OFF: restore previous queue
        return {
          wrapUpActive: false,
          queue: state.untrimmedQueue || state.queue,
          untrimmedQueue: null,
        };
      }
    });
  },

  undoActiveCard: () => {
    const { activeItem, wrongCounts } = get();
    if (!activeItem) return;

    // Reset mistake counter for current attempt if recorded
    const updatedWrongs = { ...wrongCounts };
    if (updatedWrongs[activeItem.id] && updatedWrongs[activeItem.id] > 0) {
      updatedWrongs[activeItem.id] -= 1;
    }

    set({
      userInput: '',
      isAnswerSubmitted: false,
      isCorrect: false,
      showFeedback: false,
      incorrectActive: false,
      showItemInfo: false,
      wrongCounts: updatedWrongs,
    });
  },

  addReadingSynonymAndValidate: async (userId: string, rawSynonym: string) => {
    const state = get();
    const { activeItem, userInput, wrongCounts, mode } = state;
    if (!activeItem) return;

    const trimmed = rawSynonym.trim();
    if (!trimmed) return;

    // Convert Romaji to Hiragana if needed
    const kanaSynonym = wanakana.toHiragana(trimmed);

    // 1. Save to Supabase user_item_data.reading_synonyms
    await addGanikaniReadingSynonym(userId, activeItem.id, kanaSynonym);

    // 2. Update activeItem.accepted_readings
    const updatedReadings = expandAcceptedReadings([...(activeItem.accepted_readings || []), kanaSynonym, trimmed]);
    const updatedItem = {
      ...activeItem,
      accepted_readings: updatedReadings,
    };

    // 3. Check if user's input now matches
    const currentInputKana = wanakana.toHiragana(userInput.trim());
    const isNowMatch =
      isAnyReadingMatch(userInput.trim(), updatedReadings) ||
      isAnyReadingMatch(currentInputKana, updatedReadings);

    if (isNowMatch) {
      // Revert penalty count
      const updatedWrongs = { ...wrongCounts };
      if (updatedWrongs[activeItem.id] && updatedWrongs[activeItem.id] > 0) {
        updatedWrongs[activeItem.id] -= 1;
      }

      set({
        activeItem: updatedItem,
        isAnswerSubmitted: true,
        isCorrect: true,
        showFeedback: true,
        incorrectActive: false,
        wrongCounts: updatedWrongs,
      });

      // Submit correct review if in review mode
      if (mode === 'review') {
        const itemWrongCount = updatedWrongs[activeItem.id] || 0;
        try {
          await submitGanikaniReview(userId, activeItem.id, itemWrongCount);
        } catch (err) {
          console.error('Failed to submit ganikani review with synonym:', err);
        }
      }
    } else {
      set({
        activeItem: updatedItem,
      });
    }
  },

  resetStore: () => {
    set({
      originalItems: [],
      queue: [],
      requeuedItems: [],
      untrimmedQueue: null,
      activeItem: null,
      completedItemIds: [],
      wrongCounts: {},
      initialCount: 0,
      isSubmitting: false,
      userInput: '',
      isAnswerSubmitted: false,
      isCorrect: false,
      showFeedback: false,
      incorrectActive: false,
      showItemInfo: false,
      wrapUpActive: false,
    });
  },
}));
