'use client';

import { useEffect, useState, useRef, useCallback, Suspense } from 'react';
import { useRouter, useSearchParams } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import CharacterDisplay from '@/components/CharacterDisplay';
import { useQuizStore } from '@/store/useQuizStore';
import { Item, SimilarKanji } from '@/lib/types';
import { expandAcceptedReadings } from '@/lib/kanaHelper';
import { useActiveTimer } from '@/hooks/useActiveTimer';
import { useQuizShortcuts } from '@/hooks/useQuizShortcuts';
import CrabBackground from '@/components/CrabBackground';
import { Flame, ShieldAlert, AlertTriangle, RotateCcw, ArrowLeft, SlidersHorizontal } from 'lucide-react';

// Modular Quiz Components
import QuizHeader from '@/components/quiz/QuizHeader';
import QuizInput from '@/components/quiz/QuizInput';
import QuizFeedback from '@/components/quiz/QuizFeedback';
import QuizActionButtons from '@/components/quiz/QuizActionButtons';
import QuizInfoDrawer from '@/components/quiz/QuizInfoDrawer';
import QuizSummaryView from '@/components/quiz/QuizSummaryView';
import LevelUpModal from '@/components/quiz/LevelUpModal';
import QuickItemEditorModal from '@/components/admin/QuickItemEditorModal';
import { getUserItemDataBatch } from '@/services/userItemDataService';

function ReviewPageContent() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const isLeechMode = searchParams.get('mode') === 'leech';

  // Advanced Review Filters (Dev Mode)
  const minLevelParam = searchParams.get('minLevel');
  const maxLevelParam = searchParams.get('maxLevel');
  const typesParam = searchParams.get('types');
  const minLevel = minLevelParam ? parseInt(minLevelParam, 10) : null;
  const maxLevel = maxLevelParam ? parseInt(maxLevelParam, 10) : null;
  const filterTypes = typesParam ? typesParam.split(',').map((s) => s.trim()).filter(Boolean) : null;
  const isAdvancedFilter = (minLevel !== null && !isNaN(minLevel)) ||
                           (maxLevel !== null && !isNaN(maxLevel)) ||
                           (filterTypes !== null && filterTypes.length > 0 && filterTypes.length < 3);

  const { getAndResetSeconds } = useActiveTimer();

  // Zustand Store
  const {
    queue,
    activeCard,
    userInput,
    isAnswerSubmitted,
    isCorrect,
    showFeedback,
    incorrectActive,
    wrongCounts,
    wrapUpActive,
    itemProgress,
    isAlmostCorrect,
    closestAcceptedMeaning,
    warningMsg,
    showItemInfo,
    setUserInput,
    submitAnswer,
    proceedNext,
    toggleItemInfo,
    toggleWrapUp,
    initializeSession,
    resetStore,
    undoActiveCard,
    addCustomSynonymAndValidate,
  } = useQuizStore();

  const [loading, setLoading] = useState(true);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [phase, setPhase] = useState<'quiz' | 'summary'>('quiz');
  const [totalItemsCount, setTotalItemsCount] = useState(0);
  const [totalDueCount, setTotalDueCount] = useState(0);
  const [batchSize, setBatchSize] = useState(100);
  const [devMode, setDevMode] = useState(false);
  const [globalDevMode, setGlobalDevMode] = useState(false);

  // Track on-the-fly review submissions
  const [submittedItemIds, setSubmittedItemIds] = useState<string[]>([]);
  const submittedIdsRef = useRef<Set<string>>(new Set());
  const [accuracyStats, setAccuracyStats] = useState({ correct: 0, wrong: 0 });
  const [levelUpData, setLevelUpData] = useState<{ newLevel: number } | null>(null);
  const [showLevelUpModal, setShowLevelUpModal] = useState(false);
  const [editModalOpen, setEditModalOpen] = useState(false);

  const handleItemUpdated = (updatedItem: Item) => {
    const state = useQuizStore.getState();
    if (state.activeCard && state.activeCard.itemId === updatedItem.id) {
      useQuizStore.setState({
        activeCard: {
          ...state.activeCard,
          item: updatedItem,
          character: updatedItem.character,
        }
      });
    }

    const updatedQueue = state.queue.map(c => {
      if (c.itemId === updatedItem.id) {
        return {
          ...c,
          item: updatedItem,
          character: updatedItem.character,
        };
      }
      return c;
    });

    const updatedOriginal = state.originalItems.map(it => it.id === updatedItem.id ? updatedItem : it);
    const updatedReserve = state.reserveItems.map(it => it.id === updatedItem.id ? updatedItem : it);

    useQuizStore.setState({
      queue: updatedQueue,
      originalItems: updatedOriginal,
      reserveItems: updatedReserve,
    });
  };

  const inputRef = useRef<HTMLInputElement>(null);
  const audioPlayerRef = useRef<HTMLAudioElement | null>(null);
  const infoDrawerRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (showItemInfo && infoDrawerRef.current) {
      infoDrawerRef.current.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
    }
  }, [showItemInfo]);

  const playCurrentAudio = useCallback(() => {
    if (!activeCard || activeCard.item.type !== 'vocabulary') return;
    const audios = activeCard.item.audios || (activeCard.item as any).item_audios || [];
    if (!audios.length) return;

    const preferred = typeof window !== 'undefined'
      ? (localStorage.getItem('kanigani-preferred-voice') || 'Kyoko')
      : 'Kyoko';

    const kyoko = audios.find((a: any) => a.voice_actor_name?.toLowerCase() === 'kyoko' || a.gender === 'female');
    const kenichi = audios.find((a: any) => a.voice_actor_name?.toLowerCase() === 'kenichi' || a.gender === 'male');
    const target = preferred === 'Kyoko' ? (kyoko || kenichi) : (kenichi || kyoko);

    if (target?.url) {
      if (!audioPlayerRef.current) {
        audioPlayerRef.current = new Audio();
      }
      audioPlayerRef.current.src = target.url;
      audioPlayerRef.current.play().catch((err) => console.error('Audio play error:', err));
    }
  }, [activeCard]);

  // Fetch reviews due using PostgREST nested relational query
  const loadReviews = useCallback(async () => {
    try {
      setLoading(true);
      setErrorMessage(null);
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) {
        router.push('/');
        return;
      }

      let rawItems: any[] = [];
      const progressMap = new Map<string, number>();

      if (isLeechMode) {
        const { data: { session } } = await supabase.auth.getSession();
        if (!session) {
          router.push('/');
          return;
        }
        const res = await fetch('/api/leeches', {
          headers: { Authorization: `Bearer ${session.access_token}` },
        });
        const json = await res.json();
        const leeches = json.leeches || [];
        if (leeches.length === 0) {
          setTotalItemsCount(0);
          setLoading(false);
          return;
        }

        const itemIds = leeches.map((l: any) => l.item_id);
        const { data: itemsData, error: itemsError } = await supabase
          .from('items')
          .select(`
            id, character, slug, level, type, lesson_position,
            description, parts_of_speech, meaning_mnemonic, reading_mnemonic,
            item_meanings (*),
            item_readings (*),
            item_audios (*),
            item_context_sentences (*)
          `)
          .in('id', itemIds);

        if (itemsError) throw itemsError;
        rawItems = itemsData || [];
        leeches.forEach((l: any) => progressMap.set(l.item_id, l.srs_stage));
        setTotalDueCount(rawItems.length);
      } else {
        const now = new Date().toISOString();

        // 1. Hitung total review yang jatuh tempo di server
        const effectiveMin = minLevel !== null && !isNaN(minLevel) ? minLevel : null;
        const effectiveMax = maxLevel !== null && !isNaN(maxLevel) ? maxLevel : null;

        let countQuery = supabase
          .from('user_progress')
          .select(isAdvancedFilter ? 'item_id, items!inner(level, type)' : '*', { count: 'exact', head: true })
          .eq('user_id', user.id)
          .gte('srs_stage', 1)
          .lte('srs_stage', 8)
          .lte('next_review', now);

        if (isAdvancedFilter) {
          if (effectiveMin !== null) countQuery = countQuery.gte('items.level', effectiveMin);
          if (effectiveMax !== null) countQuery = countQuery.lte('items.level', effectiveMax);
          if (filterTypes && filterTypes.length > 0) countQuery = countQuery.in('items.type', filterTypes);
        }

        const { count: dueCount, error: countError } = await countQuery;

        if (countError) throw countError;
        const totalDue = dueCount || 0;
        setTotalDueCount(totalDue);

        if (totalDue === 0) {
          setTotalItemsCount(0);
          setLoading(false);
          return;
        }

        // Tentukan batas ukuran batch review (default 100)
        const storedBatchSize = typeof window !== 'undefined'
          ? localStorage.getItem('kanigani-review-batch-size')
          : null;
        const currentBatchLimit = storedBatchSize === 'all'
          ? 2500
          : storedBatchSize && !isNaN(Number(storedBatchSize))
          ? Number(storedBatchSize)
          : 100;

        setBatchSize(currentBatchLimit);

        // 2. Ambil data batch menggunakan PostgREST nested relational query
        // Mengambil semua relasi meanings, readings, audios, dan sentences dalam 1 query terpadu tanpa URL query panjang
        const itemsRelation = isAdvancedFilter ? 'items!inner' : 'items';
        let batchQuery = supabase
          .from('user_progress')
          .select(`
            item_id, srs_stage, next_review,
            ${itemsRelation} (
              id, character, slug, level, type, lesson_position,
              description, parts_of_speech, meaning_mnemonic, reading_mnemonic,
              item_meanings (*),
              item_readings (*),
              item_audios (*),
              item_context_sentences (*)
            )
          `)
          .eq('user_id', user.id)
          .gte('srs_stage', 1)
          .lte('srs_stage', 8)
          .lte('next_review', now)
          .order('next_review', { ascending: true })
          .limit(currentBatchLimit);

        if (isAdvancedFilter) {
          if (effectiveMin !== null) batchQuery = batchQuery.gte('items.level', effectiveMin);
          if (effectiveMax !== null) batchQuery = batchQuery.lte('items.level', effectiveMax);
          if (filterTypes && filterTypes.length > 0) batchQuery = batchQuery.in('items.type', filterTypes);
        }

        const { data, error } = await batchQuery;

        if (error) throw error;
        if (!data || data.length === 0) {
          setTotalItemsCount(0);
          setLoading(false);
          return;
        }

        rawItems = data.map((row: any) => row.items).filter(Boolean);
        data.forEach((row: any) => progressMap.set(row.item_id, row.srs_stage));
      }

      // Load custom user annotations (synonyms and personal notes)
      const itemIds = rawItems.map((item: any) => item.id);
      const userAnnotationsMap = await getUserItemDataBatch(itemIds);

      const initialItemsWithDetails: Item[] = rawItems.map((item: any) => {
        const mList = item.item_meanings || [];
        const rList = item.item_readings || [];
        const aList = item.item_audios || [];
        const sList = item.item_context_sentences || [];
        const primaryMeaning = mList.find((m: any) => m.primary_meaning)?.meaning || mList[0]?.meaning || '';
        const primaryReading = rList.find((r: any) => r.primary_reading)?.reading || rList[0]?.reading || null;
        const srsStage = progressMap.get(item.id) ?? 1;

        const acceptedMeanings = mList
          .filter((m: any) => m.accepted_answer)
          .map((m: any) => m.meaning.toLowerCase().trim());
        if (acceptedMeanings.length === 0 && primaryMeaning) {
          acceptedMeanings.push(primaryMeaning.toLowerCase().trim());
        }

        // Merge user custom synonyms into accepted meanings
        const userAnnotation = userAnnotationsMap[item.id];
        const userSynonyms: string[] = userAnnotation?.meaning_synonyms || [];
        userSynonyms.forEach((syn) => {
          const clean = syn.toLowerCase().trim();
          if (clean && !acceptedMeanings.includes(clean)) {
            acceptedMeanings.push(clean);
          }
        });

        const rawAcceptedReadings = rList
          .filter((r: any) => r.accepted_answer)
          .map((r: any) => r.reading.toLowerCase().trim());
        if (rawAcceptedReadings.length === 0 && primaryReading) {
          rawAcceptedReadings.push(primaryReading.toLowerCase().trim());
        }
        const acceptedReadings = expandAcceptedReadings(rawAcceptedReadings);

        return {
          ...item,
          srs_stage: srsStage,
          meanings: mList,
          readings: rList,
          context_sentences: sList,
          primary_meaning: primaryMeaning,
          primary_reading: primaryReading,
          accepted_meanings: acceptedMeanings,
          accepted_readings: acceptedReadings,
          audios: aList,
          user_synonyms: userSynonyms,
          user_meaning_note: userAnnotation?.meaning_note ?? null,
          user_reading_note: userAnnotation?.reading_note ?? null,
        };
      });

      setTotalItemsCount(initialItemsWithDetails.length);
      initializeSession(initialItemsWithDetails, 'review');
      setLoading(false);
      setPhase('quiz');
      setSubmittedItemIds([]);
      submittedIdsRef.current = new Set();
      setAccuracyStats({ correct: 0, wrong: 0 });

      // Background prefetch: Prerequisites & Similar Kanji untuk drawer (batching kecil < 100 item)
      const radicalIds = rawItems.filter((i: any) => i.type === 'radical').map((i: any) => i.id);
      const kanjiIds = rawItems.filter((i: any) => i.type === 'kanji').map((i: any) => i.id);

      if (radicalIds.length > 0 || kanjiIds.length > 0) {
        setTimeout(async () => {
          try {
            const [prereqsRes, similarRes] = await Promise.all([
              radicalIds.length > 0
                ? supabase
                    .from('item_prerequisites')
                    .select('requires_item_id, items!item_id(id, character, slug, level, type)')
                    .in('requires_item_id', radicalIds)
                : Promise.resolve({ data: [] }),
              kanjiIds.length > 0
                ? supabase
                    .from('item_similar_kanji')
                    .select(`
                      item_id,
                      similar_item_id,
                      items!similar_item_id(
                        id, character, slug, level, type,
                        item_meanings(meaning, primary_meaning),
                        item_readings(reading, primary_reading)
                      )
                    `)
                    .in('item_id', kanjiIds)
                : Promise.resolve({ data: [] }),
            ]);

            const prereqs = prereqsRes.data || [];
            const kanjisMap = new Map<string, any[]>();
            prereqs.forEach((row: any) => {
              const reqId = row.requires_item_id;
              const kanjiItem = row.items;
              if (kanjiItem && kanjiItem.type === 'kanji') {
                if (!kanjisMap.has(reqId)) kanjisMap.set(reqId, []);
                kanjisMap.get(reqId)!.push(kanjiItem);
              }
            });

            const similarKanjiMap = new Map<string, SimilarKanji[]>();
            similarRes.data?.forEach((row: any) => {
              const it = (row as any).items;
              if (!it) return;
              const pM = it.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || it.item_meanings?.[0]?.meaning || it.slug;
              const pR = it.item_readings?.find((r: any) => r.primary_reading)?.reading || it.item_readings?.[0]?.reading || null;
              if (!similarKanjiMap.has(row.item_id)) similarKanjiMap.set(row.item_id, []);
              similarKanjiMap.get(row.item_id)!.push({
                id: it.id,
                character: it.character,
                slug: it.slug,
                level: it.level,
                type: it.type,
                primary_meaning: pM,
                primary_reading: pR,
              });
            });

            initialItemsWithDetails.forEach(item => {
              if (item.type === 'radical') item.kanjis = kanjisMap.get(item.id) || [];
              if (item.type === 'kanji') item.similar_kanjis = similarKanjiMap.get(item.id) || [];
            });
          } catch (bgErr) {
            console.warn('Background drawer enrich deferred:', bgErr);
          }
        }, 50);
      }
    } catch (err: any) {
      const msg = err?.message || err?.error_description || (typeof err === 'object' && Object.keys(err).length > 0 ? JSON.stringify(err) : String(err));
      console.error('Error fetching reviews:', msg, err);
      setErrorMessage(msg || 'Gagal memuat sesi review. Silakan periksa koneksi Anda dan coba lagi.');
    } finally {
      setLoading(false);
    }
  }, [isLeechMode, router, initializeSession, minLevel, maxLevel, typesParam, isAdvancedFilter]);

  useEffect(() => {
    loadReviews();
    return () => resetStore();
  }, [loadReviews, resetStore]);

  // Read global dev mode setting
  useEffect(() => {
    setTimeout(() => {
      setGlobalDevMode(localStorage.getItem('kanigani-dev-mode') === 'true');
    }, 0);
  }, []);

  const getDevModeAnswer = () => {
    if (!activeCard) return '';
    if (activeCard.cardType === 'meaning') {
      return activeCard.item.accepted_meanings?.[0] || activeCard.item.primary_meaning || '';
    }
    return activeCard.item.accepted_readings?.[0] || activeCard.item.primary_reading || '';
  };

  const handleQuizSubmitAction = () => {
    handleEnterAction();
  };

  const handleProceedNext = async () => {
    if (!activeCard) return;

    const itemId = activeCard.itemId;
    proceedNext();

    // Refocus input
    setTimeout(() => {
      inputRef.current?.focus();
    }, 20);

    // Check if item is fully completed (both meaning & reading correct)
    setTimeout(async () => {
      const state = useQuizStore.getState();
      const prog = state.itemProgress[itemId];

      if (prog && prog.meaningCorrect && prog.readingCorrect && !submittedIdsRef.current.has(itemId)) {
        submittedIdsRef.current.add(itemId);
        setSubmittedItemIds(prev => [...prev, itemId]);

        const durationSeconds = getAndResetSeconds();

        try {
          const { data: { session } } = await supabase.auth.getSession();
          const token = session?.access_token;
          const wrongCount = state.wrongCounts[itemId] || 0;
          const meaningWrongCount = state.meaningWrongCounts[itemId] || 0;
          const readingWrongCount = state.readingWrongCounts[itemId] || 0;

          setAccuracyStats(prev => ({
            correct: prev.correct + (wrongCount === 0 ? 1 : 0),
            wrong: prev.wrong + (wrongCount > 0 ? 1 : 0)
          }));

          const res = await fetch('/api/quiz/submit', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
              'Authorization': `Bearer ${token}`
            },
            body: JSON.stringify({
              itemId,
              wrongCount,
              meaningWrongCount,
              readingWrongCount,
              durationSeconds,
              mode: isLeechMode ? 'leech' : 'normal',
            })
          });

          if (res.ok) {
            const resData = await res.json();
            if (resData.levelUpOccurred && resData.newLevel) {
              setLevelUpData({ newLevel: resData.newLevel });
              setShowLevelUpModal(true);
            }
          }

        } catch (err) {
          console.error('Error progressively submitting review item:', err);
        }
      }
    }, 50);
  };

  const handleEnterAction = () => {
    if (!isAnswerSubmitted) {
      if (devMode && userInput.trim() === '') {
        setUserInput(getDevModeAnswer());
        setTimeout(() => {
          submitAnswer();
          inputRef.current?.focus();
        }, 20);
      } else if (userInput.trim() !== '') {
        submitAnswer();
        setTimeout(() => {
          inputRef.current?.focus();
        }, 20);
      } else {
        // Kotak input masih kosong: kembalikan fokus ke kotak jawaban
        inputRef.current?.focus();
      }
    } else {
      handleProceedNext();
      setTimeout(() => {
        inputRef.current?.focus();
      }, 20);
    }
  };

  const handleKeyDown = (e: React.KeyboardEvent<HTMLInputElement>) => {
    if (e.key === 'Enter') {
      e.preventDefault();
      handleEnterAction();
    } else if (isAnswerSubmitted && (e.key === 'f' || e.key === 'F')) {
      e.preventDefault();
      toggleItemInfo();
    }
  };

  // Keyboard shortcut handler
  useQuizShortcuts({
    onToggleInfo: toggleItemInfo,
    onAdvance: () => handleProceedNext(),
    onEnter: handleEnterAction,
    onPlayAudio: playCurrentAudio,
    isAnswerSubmitted,
  });

  // Focus input automatically (skip on mobile)
  useEffect(() => {
    if (phase === 'quiz' && activeCard && inputRef.current) {
      const isMobile = typeof window !== 'undefined' && (
        window.matchMedia('(pointer: coarse)').matches ||
        window.innerWidth < 768
      );
      if (!isMobile) {
        inputRef.current.focus({ preventScroll: true });
      }
    }
  }, [phase, activeCard, isAnswerSubmitted, incorrectActive]);

  // Finish review session
  useEffect(() => {
    if (!loading && phase === 'quiz' && queue.length === 0 && totalItemsCount > 0) {
      setTimeout(() => {
        setPhase('summary');
      }, 0);
    }
  }, [queue, phase, loading, totalItemsCount]);

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center relative bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100">
        <CrabBackground />
        <div className="flex flex-col items-center space-y-4 select-none">
          <div className="w-12 h-12 border-4 border-pink-500 border-t-transparent rounded-full animate-spin"></div>
          <p className="font-semibold text-sm">Menyiapkan berkas review kuis Anda...</p>
        </div>
      </div>
    );
  }

  if (totalItemsCount === 0 && phase !== 'summary') {
    return (
      <div className="min-h-screen flex flex-col items-center justify-center relative bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100 px-4">
        <CrabBackground />
        <div className="max-w-md w-full text-center bg-white dark:bg-slate-900 p-8 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl space-y-6">
          <Flame className="w-16 h-16 mx-auto text-pink-500 animate-bounce" />
          <h2 className="text-2xl font-black">
            {isLeechMode ? 'Hebat! Tidak Ada Leech 🔥' : 'Semua Bersih! 🔥'}
          </h2>
          <p className="text-sm text-slate-500 dark:text-slate-400">
            {isLeechMode
              ? 'Tidak ada item leech yang perlu dilatih saat ini. Seluruh materimu telah dikuasai dengan baik!'
              : 'Hebat! Tidak ada item review yang jatuh tempo saat ini. Silakan kembali ke dashboard atau pelajari lesson baru Anda.'}
          </p>
          <button
            onClick={() => router.push('/dashboard')}
            className="w-full py-3 bg-pink-500 text-white font-bold rounded-2xl shadow-md hover:bg-pink-600 transition-colors cursor-pointer"
          >
            Kembali ke Dashboard
          </button>
        </div>
      </div>
    );
  }

  const getItemColorClass = (type: string) => {
    if (type === 'radical') return 'bg-radical border-radical/20 glow-radical';
    if (type === 'kanji') return 'bg-kanji border-kanji/20 glow-kanji';
    return 'bg-vocab border-vocab/20 glow-vocab';
  };

  const renderKaniGaniPrompt = () => {
    if (!activeCard) return null;
    const isMeaning = activeCard.cardType === 'meaning';
    const keywordClass = isMeaning
      ? 'font-black text-slate-900 dark:text-white'
      : 'font-black text-white dark:text-slate-100';

    if (activeCard.type === 'radical') {
      return (
        <span className="select-text">Nama <span className={keywordClass}>Radikal</span></span>
      );
    }

    if (activeCard.type === 'kanji') {
      if (isMeaning) {
        return (
          <span className="select-text">Arti <span className={keywordClass}>Kanji</span></span>
        );
      }
      const readings = activeCard.item.readings || [];
      const primaryReadingObj = readings.find(r => r.primary_reading);
      const expectedType = primaryReadingObj?.reading_type;
      return expectedType === 'onyomi' ? (
        <span className="select-text">Bacaan Onyomi <span className={keywordClass}>Kanji</span></span>
      ) : (
        <span className="select-text">Bacaan Kunyomi <span className={keywordClass}>Kanji</span></span>
      );
    }

    if (isMeaning) {
      return (
        <span className="select-text">Arti <span className={keywordClass}>Kosakata</span></span>
      );
    }
    return (
      <span className="select-text">Cara Baca <span className={keywordClass}>Kosakata</span></span>
    );
  };

  const displayRemainingReviews = Math.max(0, totalDueCount - submittedItemIds.length);
  const accuracyPct = accuracyStats.correct + accuracyStats.wrong > 0
    ? Math.round((accuracyStats.correct / (accuracyStats.correct + accuracyStats.wrong)) * 100)
    : 100;

  if (loading) {
    return (
      <div className="min-h-screen flex flex-col items-center justify-center bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100">
        <CrabBackground />
        <div className="relative z-10 flex flex-col items-center gap-4">
          <div className="w-12 h-12 border-4 border-pink-500 border-t-transparent rounded-full animate-spin"></div>
          <p className="text-sm font-semibold text-slate-500 dark:text-slate-400 animate-pulse">
            Memuat sesi review...
          </p>
        </div>
      </div>
    );
  }

  if (errorMessage) {
    return (
      <div className="min-h-screen flex flex-col items-center justify-center bg-slate-50 text-slate-900 dark:bg-slate-950 p-4">
        <CrabBackground />
        <div className="relative z-10 max-w-md w-full bg-white dark:bg-slate-900 p-6 rounded-3xl border border-rose-200 dark:border-rose-900/50 shadow-xl text-center space-y-4">
          <div className="w-14 h-14 bg-rose-100 dark:bg-rose-950/60 text-rose-500 rounded-2xl flex items-center justify-center mx-auto">
            <AlertTriangle className="w-7 h-7" />
          </div>
          <h2 className="text-xl font-black text-slate-900 dark:text-slate-100">Gagal Memuat Review</h2>
          <p className="text-sm text-slate-600 dark:text-slate-400 break-words">{errorMessage}</p>
          <div className="flex gap-3 pt-2">
            <button
              onClick={() => router.push('/dashboard')}
              className="flex-1 py-2.5 px-4 rounded-xl border border-slate-200 dark:border-slate-800 text-sm font-bold text-slate-700 dark:text-slate-300 hover:bg-slate-100 dark:hover:bg-slate-800 transition-colors flex items-center justify-center gap-2 cursor-pointer"
            >
              <ArrowLeft className="w-4 h-4" /> Dashboard
            </button>
            <button
              onClick={() => loadReviews()}
              className="flex-1 py-2.5 px-4 rounded-xl bg-pink-500 hover:bg-pink-600 text-white text-sm font-bold shadow-md hover:shadow-lg transition-all flex items-center justify-center gap-2 cursor-pointer"
            >
              <RotateCcw className="w-4 h-4" /> Coba Lagi
            </button>
          </div>
        </div>
      </div>
    );
  }

  if (phase === 'quiz' && !activeCard && totalDueCount === 0) {
    return (
      <div className="min-h-screen flex flex-col items-center justify-center bg-slate-50 text-slate-900 dark:bg-slate-950 p-4">
        <CrabBackground />
        <div className="relative z-10 max-w-md w-full bg-white dark:bg-slate-900 p-6 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl text-center space-y-4">
          <div className="w-14 h-14 bg-emerald-100 dark:bg-emerald-950/60 text-emerald-500 rounded-2xl flex items-center justify-center mx-auto">
            <Flame className="w-7 h-7" />
          </div>
          <h2 className="text-xl font-black text-slate-900 dark:text-slate-100">
            {isAdvancedFilter ? 'Tidak Ada Review Sesuai Filter' : 'Semua Review Selesai!'}
          </h2>
          <p className="text-sm text-slate-600 dark:text-slate-400">
            {isAdvancedFilter
              ? `Tidak ada item jatuh tempo untuk filter Level ${minLevel || 1}–${maxLevel || 60} (${filterTypes ? filterTypes.join(', ') : 'semua tipe'}).`
              : 'Tidak ada item review yang jatuh tempo saat ini. Kerja bagus!'}
          </p>
          <button
            onClick={() => router.push('/dashboard')}
            className="w-full py-2.5 px-4 rounded-xl bg-pink-500 hover:bg-pink-600 text-white text-sm font-bold shadow-md hover:shadow-lg transition-all cursor-pointer"
          >
            Kembali ke Dashboard
          </button>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col relative bg-slate-50 text-slate-900 dark:bg-slate-950 transition-colors duration-300">
      <CrabBackground />
      <main className="flex-1 max-w-4xl w-full mx-auto px-4 flex flex-col items-center justify-start pt-0 pb-6 sm:pb-12">
        {/* PHASE 1: QUIZ REVIEW SESSION */}
        {phase === 'quiz' && activeCard && (() => {
          const currentStage = activeCard.item.srs_stage || 1;
          const wrongCount = wrongCounts[activeCard.itemId] || 0;
          const getNewStage = () => {
            if (isCorrect) {
              if (wrongCount <= 0) {
                return Math.min(9, currentStage + 1);
              }
              const penaltyFactor = currentStage >= 5 ? 2 : 1;
              const penalty = Math.ceil(wrongCount / 2) * penaltyFactor;
              return Math.max(1, currentStage - penalty);
            } else {
              const penaltyFactor = currentStage >= 5 ? 2 : 1;
              const penalty = Math.ceil(wrongCount / 2) * penaltyFactor;
              return Math.max(1, currentStage - penalty);
            }
          };
          const displayedSrsStage = getNewStage();

          const prog = itemProgress[activeCard.itemId];
          const isClosingCard = activeCard.type === 'radical'
            ? true
            : activeCard.cardType === 'meaning'
              ? Boolean(prog?.readingCorrect)
              : Boolean(prog?.meaningCorrect);

          return (
            <div className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden animate-fade-in min-h-[420px] flex flex-col justify-start">
              
              {/* Header Colorful Character with Integrated Navbar */}
              <div className={`relative pt-16 pb-12 flex flex-col items-center justify-center text-white ${getItemColorClass(activeCard.type)}`}>
                <QuizHeader
                  onExit={() => {
                    if (confirm('Apakah Anda yakin ingin keluar? Semua item yang telah selesai dijawab BENAR KEDUA KARTUNYA sudah otomatis tersimpan progresnya secara aman di server.')) {
                      router.push('/dashboard');
                    }
                  }}
                  title={
                    isLeechMode
                      ? 'Latihan Leech'
                      : isAdvancedFilter
                      ? totalDueCount > totalItemsCount
                        ? `Batch ${totalItemsCount} (Filter ${totalDueCount})`
                        : `Advanced Review (${totalDueCount} Item)`
                      : totalDueCount > totalItemsCount
                      ? `Batch ${totalItemsCount} Item`
                      : 'Review'
                  }
                  accuracyPct={accuracyPct}
                  completedCount={submittedItemIds.length}
                  remainingCount={displayRemainingReviews}
                  globalDevMode={globalDevMode}
                  devMode={devMode}
                  setDevMode={setDevMode}
                />
                <h1 className="text-7xl font-black tracking-tight select-text text-center mt-6 flex items-center justify-center">
                  <CharacterDisplay character={activeCard.character} slug={activeCard.item.slug} imgClassName="w-20 h-20" />
                </h1>
              </div>

              {/* Prompt Label */}
              <div
                className={`w-full py-2.5 border-y flex items-center justify-center text-xs font-semibold tracking-wider uppercase select-none transition-colors duration-200 ${
                  activeCard.cardType === 'meaning'
                    ? 'bg-white dark:bg-slate-700/70 border-slate-200 dark:border-slate-650 text-slate-600 dark:text-slate-200 shadow-2xs'
                    : 'bg-slate-800 dark:bg-slate-950 border-slate-700 dark:border-slate-850 text-slate-300 dark:text-slate-400'
                }`}
              >
                {renderKaniGaniPrompt()}
              </div>

              <QuizInput
                inputRef={inputRef}
                userInput={userInput}
                setUserInput={setUserInput}
                cardType={activeCard.cardType}
                isAnswerSubmitted={isAnswerSubmitted}
                incorrectActive={incorrectActive}
                warningMsg={warningMsg}
                onSubmit={handleQuizSubmitAction}
                devMode={devMode}
                getDevModeAnswer={getDevModeAnswer}
                onKeyDown={handleKeyDown}
              />

              <QuizActionButtons
                onWrapUp={() => toggleWrapUp()}
                wrapUpActive={wrapUpActive}
                onUndo={undoActiveCard}
                isUndoDisabled={!isAnswerSubmitted}
                onToggleInfo={toggleItemInfo}
                infoActive={showItemInfo}
                isInfoDisabled={!isAnswerSubmitted}
              />

              {/* Answer Feedbacks */}
              <QuizFeedback
                showFeedback={showFeedback}
                isCorrect={isCorrect}
                isAlmostCorrect={isAlmostCorrect}
                closestAcceptedMeaning={closestAcceptedMeaning}
                srsStage={displayedSrsStage}
                acceptedMeanings={activeCard.item.accepted_meanings}
                acceptedReadings={activeCard.item.accepted_readings}
                cardType={activeCard.cardType}
                showSrs={isClosingCard}
              />

              {/* Sliding Detail Drawer Panel */}
              {showItemInfo && (
                <div ref={infoDrawerRef}>
                  <QuizInfoDrawer
                    item={activeCard.item}
                    cardType={activeCard.cardType}
                    devMode={globalDevMode}
                    onEditItem={() => setEditModalOpen(true)}
                    onSynonymAdded={(synonym) => addCustomSynonymAndValidate(activeCard.itemId, synonym)}
                  />
                </div>
              )}
            </div>
          );
        })()}

        {/* QUICK ITEM EDITOR MODAL (DEV MODE) */}
        <QuickItemEditorModal
          isOpen={editModalOpen}
          setIsOpen={setEditModalOpen}
          item={activeCard?.item || null}
          onItemUpdated={handleItemUpdated}
        />

        {/* PHASE 2: SUMMARY REVIEW COMPLETED */}
        {phase === 'summary' && (
          <QuizSummaryView
            type="review"
            items={[]}
            totalCompleted={submittedItemIds.length}
            accuracyPct={accuracyPct}
            hasNextBatch={totalDueCount > submittedItemIds.length}
            remainingLessonsCount={Math.max(0, totalDueCount - submittedItemIds.length)}
            onNextBatch={() => {
              loadReviews();
            }}
            levelUpLevel={levelUpData?.newLevel}
            onFinish={() => router.push('/dashboard')}
          />
        )}

        {/* LEVEL UP CELEBRATION MODAL */}
        {levelUpData && (
          <LevelUpModal
            newLevel={levelUpData.newLevel}
            isOpen={showLevelUpModal}
            onClose={() => setShowLevelUpModal(false)}
          />
        )}
      </main>
    </div>
  );
}

export default function ReviewPage() {
  return (
    <Suspense
      fallback={
        <div className="min-h-screen flex items-center justify-center bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100">
          <div className="w-12 h-12 border-4 border-pink-500 border-t-transparent rounded-full animate-spin"></div>
        </div>
      }
    >
      <ReviewPageContent />
    </Suspense>
  );
}
