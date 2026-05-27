import { create } from 'zustand';
import { Item, ItemType } from '../lib/types';
import { supabase } from '../lib/supabase';
import * as wanakana from 'wanakana';

export interface QuizCard {
  itemId: string;
  type: ItemType;
  character: string;
  cardType: 'meaning' | 'reading';
  item: Item;
  attempts: number;
}

// Levenshtein Distance Helper
function getLevenshteinDistance(a: string, b: string): number {
  const matrix = [];
  for (let i = 0; i <= b.length; i++) matrix[i] = [i];
  for (let j = 0; j <= a.length; j++) matrix[0][j] = j;

  for (let i = 1; i <= b.length; i++) {
    for (let j = 1; j <= a.length; j++) {
      if (b.charAt(i - 1) === a.charAt(j - 1)) {
        matrix[i][j] = matrix[i - 1][j - 1];
      } else {
        matrix[i][j] = Math.min(
          matrix[i - 1][j - 1] + 1, // substitution
          Math.min(
            matrix[i][j - 1] + 1, // insertion
            matrix[i - 1][j] + 1 // deletion
          )
        );
      }
    }
  }
  return matrix[b.length][a.length];
}

// Typo tolerance: Levenshtein distance <= 1 for short words, <= 2 for longer ones
function isAlmostCorrect(input: string, accepted: string): boolean {
  const dist = getLevenshteinDistance(input, accepted);
  if (dist === 0) return false;
  const len = accepted.length;
  if (len <= 3) return dist === 1;
  if (len <= 5) return dist <= 1;
  return dist <= 2;
}

interface QuizStore {
  // Session States
  mode: 'lesson' | 'review';
  originalItems: Item[];
  queue: QuizCard[];
  untrimmedQueue: QuizCard[] | null; // Keep track of untrimmed queue during Wrap-Up toggle
  sessionTotalCards: number; // Keep track of total cards in current active session for dynamic progress bar
  wrongCounts: Record<string, number>;
  itemProgress: Record<string, { meaningCorrect: boolean; readingCorrect: boolean }>;
  activeCard: QuizCard | null;

  // Input & Feedback States
  userInput: string;
  isAnswerSubmitted: boolean;
  isCorrect: boolean;
  showFeedback: boolean;
  incorrectActive: boolean;

  // Typo & Warning States
  isAlmostCorrect: boolean;
  closestAcceptedMeaning: string;
  warningMsg: string; // Onyomi vs Kunyomi warnings
  showItemInfo: boolean; // Dynamic sliding detail drawer

  // Wrap-up states
  wrapUpActive: boolean;

  // Actions
  initializeSession: (items: Item[], mode: 'lesson' | 'review') => void;
  setUserInput: (input: string) => void;
  submitAnswer: () => void | Promise<void>;
  proceedNext: () => void;
  toggleItemInfo: (force?: boolean) => void;
  toggleWrapUp: () => void;
  resetStore: () => void;
  undoActiveCard: () => void;
}

export const useQuizStore = create<QuizStore>((set, get) => ({
  mode: 'review',
  originalItems: [],
  queue: [],
  untrimmedQueue: null,
  sessionTotalCards: 0,
  wrongCounts: {},
  itemProgress: {},
  activeCard: null,
  userInput: '',
  isAnswerSubmitted: false,
  isCorrect: false,
  showFeedback: false,
  incorrectActive: false,
  isAlmostCorrect: false,
  closestAcceptedMeaning: '',
  warningMsg: '',
  showItemInfo: false,
  wrapUpActive: false,

  resetStore: () => {
    set({
      originalItems: [],
      queue: [],
      untrimmedQueue: null,
      sessionTotalCards: 0,
      wrongCounts: {},
      itemProgress: {},
      activeCard: null,
      userInput: '',
      isAnswerSubmitted: false,
      isCorrect: false,
      showFeedback: false,
      incorrectActive: false,
      isAlmostCorrect: false,
      closestAcceptedMeaning: '',
      warningMsg: '',
      showItemInfo: false,
      wrapUpActive: false,
    });
  },

  undoActiveCard: () => {
    const { queue, activeCard, wrongCounts } = get();
    if (!activeCard) return;

    const itemId = activeCard.itemId;
    const updatedWrongCounts = { ...wrongCounts };

    // Revert wrong penalty for this item if it was added
    if (updatedWrongCounts[itemId] && updatedWrongCounts[itemId] > 0) {
      updatedWrongCounts[itemId]--;
      if (updatedWrongCounts[itemId] === 0) {
        delete updatedWrongCounts[itemId];
      }
    }

    // Push activeCard to the end of the queue
    const updatedQueue = [...queue];
    const current = updatedQueue.shift();
    if (current) {
      updatedQueue.push(current);
    }

    set({
      queue: updatedQueue,
      activeCard: updatedQueue[0] || null,
      userInput: '',
      isAnswerSubmitted: false,
      isCorrect: false,
      showFeedback: false,
      incorrectActive: false,
      isAlmostCorrect: false,
      closestAcceptedMeaning: '',
      warningMsg: '',
      showItemInfo: false,
      wrongCounts: updatedWrongCounts,
    });
  },

  initializeSession: (items: Item[], mode: 'lesson' | 'review') => {
    const cards: QuizCard[] = [];
    const progress: Record<string, { meaningCorrect: boolean; readingCorrect: boolean }> = {};

    items.forEach((item) => {
      progress[item.id] = {
        meaningCorrect: false,
        readingCorrect: item.type === 'radical' ? true : false,
      };

      if (item.type === 'radical') {
        cards.push({
          itemId: item.id,
          type: 'radical',
          character: item.character,
          cardType: 'meaning',
          item,
          attempts: 0,
        });
      } else {
        cards.push({
          itemId: item.id,
          type: item.type,
          character: item.character,
          cardType: 'meaning',
          item,
          attempts: 0,
        });
        cards.push({
          itemId: item.id,
          type: item.type,
          character: item.character,
          cardType: 'reading',
          item,
          attempts: 0,
        });
      }
    });

    const shuffledCards = cards.sort(() => Math.random() - 0.5);

    set({
      mode,
      originalItems: items,
      queue: shuffledCards,
      untrimmedQueue: null,
      sessionTotalCards: shuffledCards.length,
      itemProgress: progress,
      wrongCounts: {},
      activeCard: shuffledCards[0] || null,
      userInput: '',
      isAnswerSubmitted: false,
      isCorrect: false,
      showFeedback: false,
      incorrectActive: false,
      isAlmostCorrect: false,
      closestAcceptedMeaning: '',
      warningMsg: '',
      showItemInfo: false,
      wrapUpActive: false,
    });
  },

  setUserInput: (input: string) => {
    set({ userInput: input });
  },

  toggleItemInfo: (force?: boolean) => {
    set((state) => ({ showItemInfo: force !== undefined ? force : !state.showItemInfo }));
  },

  submitAnswer: async () => {
    const { activeCard, userInput, wrongCounts } = get();
    if (!activeCard) return;

    const trimmedInput = userInput.trim().toLowerCase();

    // Clear warning state first
    set({ warningMsg: '' });

    // Pre-determine correctness of the meaning to bypass warnings if correct
    let isCorrectMeaning = false;
    if (activeCard.cardType === 'meaning') {
      const acceptedMeanings = activeCard.item.accepted_meanings || [];
      const isExactlyCorrect = acceptedMeanings.some(m => m.toLowerCase().trim() === trimmedInput);
      const isTypoCorrect = !isExactlyCorrect && acceptedMeanings.some(m => isAlmostCorrect(trimmedInput, m.toLowerCase().trim()));
      isCorrectMeaning = isExactlyCorrect || isTypoCorrect;
    }

    // 0. JAPANESE READING INPUT WARNING (When they input Romaji/Kana for Meaning)
    if (activeCard.cardType === 'meaning' && !isCorrectMeaning) {
      const acceptedReadings = activeCard.item.accepted_readings || [];
      const kanaInput = wanakana.toKana(trimmedInput);

      const isReadingInput = acceptedReadings.some(
        r => r.toLowerCase().trim() === trimmedInput || r.toLowerCase().trim() === kanaInput
      );

      if (isReadingInput) {
        set({
          warningMsg: "Itu adalah cara baca karakter ini. Yang kami minta adalah arti!",
        });
        return;
      }
    }

    // 0.5. RADICAL VS KANJI MEANING CONFUSION WARNINGS (Only if NOT already correct!)
    if (activeCard.cardType === 'meaning' && !isCorrectMeaning) {
      try {
        if (activeCard.type === 'kanji') {
          // Check if there is a radical with the same character
          const { data: radicalItems } = await supabase
            .from('items')
            .select('id')
            .eq('character', activeCard.character)
            .eq('type', 'radical');

          if (radicalItems && radicalItems.length > 0) {
            const radicalId = radicalItems[0].id;
            const { data: radicalMeanings } = await supabase
              .from('item_meanings')
              .select('meaning')
              .eq('item_id', radicalId)
              .eq('accepted_answer', true);

            const acceptedRadicalMeanings = radicalMeanings?.map(m => m.meaning.toLowerCase().trim()) || [];
            if (acceptedRadicalMeanings.includes(trimmedInput)) {
              set({
                warningMsg: "Itu adalah arti Radikal. Yang kami minta adalah arti dari Kanjinya!",
              });
              return;
            }
          }
        } else if (activeCard.type === 'radical') {
          // Check if there is a kanji with the same character
          const { data: kanjiItems } = await supabase
            .from('items')
            .select('id')
            .eq('character', activeCard.character)
            .eq('type', 'kanji');

          if (kanjiItems && kanjiItems.length > 0) {
            const kanjiId = kanjiItems[0].id;
            const { data: kanjiMeanings } = await supabase
              .from('item_meanings')
              .select('meaning')
              .eq('item_id', kanjiId)
              .eq('accepted_answer', true);

            const acceptedKanjiMeanings = kanjiMeanings?.map(m => m.meaning.toLowerCase().trim()) || [];
            if (acceptedKanjiMeanings.includes(trimmedInput)) {
              set({
                warningMsg: "Itu adalah arti Kanji. Yang kami minta adalah arti dari Radikalnya!",
              });
              return;
            }
          }
        }
      } catch (err) {
        console.error('Error checking radical/kanji meaning confusion:', err);
      }
    }

    // 1. KANJI READING TYPE DIFFERENTIATION (ONYOMI VS KUNYOMI WARNING)
    if (activeCard.type === 'kanji' && activeCard.cardType === 'reading') {
      const readings = activeCard.item.readings || [];
      const primaryReadingObj = readings.find(r => r.primary_reading);
      const expectedType = primaryReadingObj?.reading_type; // 'onyomi' | 'kunyomi'

      const matchedReadingObj = readings.find(r => r.reading.toLowerCase().trim() === trimmedInput);

      if (matchedReadingObj) {
        const matchedType = matchedReadingObj.reading_type;

        // Jika input mencocokkan bacaan bertipe OPPOSITE (misal Onyomi padahal diminta Kunyomi)
        if (expectedType && matchedType && expectedType !== matchedType) {
          const expectedName = expectedType === 'onyomi' ? 'Onyomi' : 'Kunyomi';
          const matchedName = matchedType === 'onyomi' ? 'Onyomi' : 'Kunyomi';

          set({
            warningMsg: `Itu adalah bacaan ${matchedName}. Yang kami minta adalah bacaan ${expectedName}!`,
          });
          return; // Batalkan submisi kuis agar user bisa memperbaiki
        }
      }
    }

    // 2. VALIDASI UTAMA
    let isCorrectAns = false;
    let isAlmost = false;
    let closestMeaning = '';

    if (activeCard.cardType === 'meaning') {
      const acceptedMeanings = activeCard.item.accepted_meanings || [];

      // Cek kecocokan persis
      isCorrectAns = acceptedMeanings.some(m => m.toLowerCase().trim() === trimmedInput);

      // Cek kecocokan typo jika belum benar
      if (!isCorrectAns) {
        const almostMatch = acceptedMeanings.find(m => isAlmostCorrect(trimmedInput, m.toLowerCase().trim()));
        if (almostMatch) {
          isCorrectAns = true;
          isAlmost = true;
          closestMeaning = almostMatch;
        }
      }
    } else {
      const acceptedReadings = activeCard.item.accepted_readings || [];
      isCorrectAns = acceptedReadings.some(r => r.toLowerCase().trim() === trimmedInput);
    }

    if (isCorrectAns) {
      set({
        isAnswerSubmitted: true,
        isCorrect: true,
        showFeedback: true,
        incorrectActive: false,
        isAlmostCorrect: isAlmost,
        closestAcceptedMeaning: closestMeaning,
      });
    } else {
      // Catat kesalahan untuk item ini
      const itemId = activeCard.itemId;
      const updatedWrongCounts = { ...wrongCounts };
      updatedWrongCounts[itemId] = (updatedWrongCounts[itemId] || 0) + 1;

      set({
        isAnswerSubmitted: true,
        isCorrect: false,
        showFeedback: true,
        incorrectActive: true,
        isAlmostCorrect: false,
        closestAcceptedMeaning: '',
        wrongCounts: updatedWrongCounts,
      });
    }
  },

  proceedNext: () => {
    const {
      queue,
      activeCard,
      userInput,
      incorrectActive,
      itemProgress,
      wrapUpActive
    } = get();

    if (!activeCard) return;

    // Jika koreksi salah aktif, paksa ketikan sampai benar
    if (incorrectActive) {
      const trimmedInput = userInput.trim().toLowerCase();
      let nowCorrect = false;

      if (activeCard.cardType === 'meaning') {
        const acceptedMeanings = activeCard.item.accepted_meanings || [];
        nowCorrect = acceptedMeanings.some(m => m.toLowerCase().trim() === trimmedInput);
      } else {
        const acceptedReadings = activeCard.item.accepted_readings || [];
        nowCorrect = acceptedReadings.some(r => r.toLowerCase().trim() === trimmedInput);
      }

      if (!nowCorrect) {
        return; // Jangan lanjutkan jika ketikan koreksi masih salah
      }

      // Jika sudah diketik benar, taruh kembali kartu di akhir antrean
      const updatedQueue = [...queue];
      const current = updatedQueue.shift();
      if (current) {
        current.attempts++;
        updatedQueue.push(current);
      }

      set({
        queue: updatedQueue,
        activeCard: updatedQueue[0] || null,
        userInput: '',
        isAnswerSubmitted: false,
        isCorrect: false,
        showFeedback: false,
        incorrectActive: false,
        isAlmostCorrect: false,
        closestAcceptedMeaning: '',
        warningMsg: '',
        showItemInfo: false, // Tutup info detail
      });
      return;
    }

    // Jika benar, tandai progres
    const itemId = activeCard.itemId;
    const progress = { ...itemProgress };

    if (activeCard.cardType === 'meaning') {
      progress[itemId] = { ...progress[itemId], meaningCorrect: true };
    } else {
      progress[itemId] = { ...progress[itemId], readingCorrect: true };
    }

    let updatedQueue = queue.filter((_, idx) => idx !== 0);

    if (wrapUpActive) {
      const remainingUniqueIds = Array.from(new Set(updatedQueue.map(c => c.itemId)));
      if (remainingUniqueIds.length > 10) {
        const allowedIds = remainingUniqueIds.slice(0, 10);
        updatedQueue = updatedQueue.filter(c => allowedIds.includes(c.itemId));
      }
    }

    set({
      queue: updatedQueue,
      activeCard: updatedQueue[0] || null,
      userInput: '',
      isAnswerSubmitted: false,
      isCorrect: false,
      showFeedback: false,
      itemProgress: progress,
      isAlmostCorrect: false,
      closestAcceptedMeaning: '',
      warningMsg: '',
      showItemInfo: false, // Tutup info detail
    });
  },

  toggleWrapUp: () => {
    const { queue, wrapUpActive, untrimmedQueue } = get();
    if (wrapUpActive) {
      if (untrimmedQueue) {
        // Appending restored cards back to the end of the current queue
        const currentIds = queue.map(c => c.itemId);
        const restoredCards = untrimmedQueue.filter(c => !currentIds.includes(c.itemId));
        const restoredQueue = [...queue, ...restoredCards];

        set({
          queue: restoredQueue,
          wrapUpActive: false,
          untrimmedQueue: null,
          sessionTotalCards: restoredQueue.length
        });
      } else {
        set({ wrapUpActive: false });
      }
    } else {
      const uniqueItemIds = Array.from(new Set(queue.map(c => c.itemId)));
      if (uniqueItemIds.length <= 10) {
        set({
          wrapUpActive: true,
          untrimmedQueue: queue,
          sessionTotalCards: queue.length
        });
        return;
      }

      const first10Ids = uniqueItemIds.slice(0, 10);
      const trimmedQueue = queue.filter(c => first10Ids.includes(c.itemId));

      set({
        untrimmedQueue: queue,
        queue: trimmedQueue,
        activeCard: trimmedQueue[0] || null,
        wrapUpActive: true,
        sessionTotalCards: trimmedQueue.length
      });
    }
  },
}));
