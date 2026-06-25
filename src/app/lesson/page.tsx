'use client';

import { useEffect, useState, useRef, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { useQuizStore } from '@/store/useQuizStore';
import { Item } from '@/lib/types';
import { useActiveTimer } from '@/hooks/useActiveTimer';
import CrabBackground from '@/components/CrabBackground';
import {
  ArrowLeft, ArrowRight, BookOpen, Award, Home, Edit2, Loader2, ChevronDown, ChevronRight, X
} from 'lucide-react';

// Import Shared Modular Quiz Components
import QuizHeader from '@/components/quiz/QuizHeader';
import QuizInput from '@/components/quiz/QuizInput';
import QuizFeedback from '@/components/quiz/QuizFeedback';
import QuizActionButtons from '@/components/quiz/QuizActionButtons';
import QuizInfoDrawer from '@/components/quiz/QuizInfoDrawer';
import ProgressionModal from '@/components/ProgressionModal';
import ItemEditorModal, { ItemInput } from '@/components/admin/ItemEditorModal';

export default function LessonPage() {
  const router = useRouter();
  const { getAndResetSeconds } = useActiveTimer();

  const [submittedItemIds, setSubmittedItemIds] = useState<string[]>([]);
  const [pendingProgression, setPendingProgression] = useState<{ type: 'level' | 'rank'; newRankName: string } | null>(null);
  const pendingProgressionRef = useRef<{ type: 'level' | 'rank'; newRankName: string } | null>(null);

  const [progressionInfo, setProgressionInfo] = useState<{
    isOpen: boolean;
    type: 'rank' | 'level';
    newRankName: string;
  }>({
    isOpen: false,
    type: 'rank',
    newRankName: ''
  });

  // Zustand Store
  const {
    queue,
    activeCard,
    userInput,
    isAnswerSubmitted,
    isCorrect,
    showFeedback,
    incorrectActive,
    isAlmostCorrect,
    closestAcceptedMeaning,
    warningMsg,
    showItemInfo,
    wrongCounts,
    setUserInput,
    submitAnswer,
    proceedNext,
    toggleItemInfo,
    initializeSession,
    resetStore,
    updateItemInSession
  } = useQuizStore();

  // Lesson states
  const [lessons, setLessons] = useState<Item[]>([]);
  const [loading, setLoading] = useState(true);
  const [phase, setPhase] = useState<'learn' | 'quiz' | 'summary'>('learn');
  const [currentBatch, setCurrentBatch] = useState<Item[]>([]);
  const [itemIndex, setItemIndex] = useState(0); // Index item in active batch
  const [activeTab, setActiveTab] = useState<'info' | 'mnemonic'>('info');

  const [devMode, setDevMode] = useState(false);
  const [globalDevMode, setGlobalDevMode] = useState(false);

  // Dev Mode Inline Editor States
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [formLoading, setFormLoading] = useState(false);
  const [ranks, setRanks] = useState<any[]>([]);
  const [formItem, setFormItem] = useState<ItemInput>({
    type: 'radical',
    character: '',
    slug: '',
    level: 1,
    rank_id: null,
    lesson_position: 0,
    meaning_mnemonic: '',
    reading_mnemonic: '',
    description: '',
    meanings: [{ meaning: '', primary_meaning: true, accepted_answer: true }],
    readings: [],
    context_sentences: [],
    prerequisites: []
  });

  // Read global dev mode setting & load ranks if active
  useEffect(() => {
    setTimeout(() => {
      const isDev = localStorage.getItem('kanigani-dev-mode') === 'true';
      setGlobalDevMode(isDev);
      if (isDev) {
        supabase.from('ranks').select('*').order('sort_order', { ascending: true })
          .then(({ data }) => setRanks(data || []));
      }
    }, 0);
  }, []);


  const handleItemEditedInLesson = (updatedItem: Item) => {
    // 1. Update Zustand store
    updateItemInSession(updatedItem);

    // 2. Update currentBatch state
    setCurrentBatch(prev => prev.map(item => item.id === updatedItem.id ? updatedItem : item));

    // 3. Update lessons state
    setLessons(prev => prev.map(item => item.id === updatedItem.id ? updatedItem : item));
  };

  const handleLearnEditClick = async (itemToEdit: Item) => {
    setFormLoading(true);
    try {
      const { data, error } = await supabase
        .from('items')
        .select(`
          *,
          item_meanings(*),
          item_readings(*),
          item_context_sentences(*),
          item_prerequisites!item_id(requires_item_id)
        `)
        .eq('id', itemToEdit.id)
        .single();

      if (error) throw error;

      if (data) {
        setFormItem({
          id: data.id,
          type: data.type,
          character: data.character,
          slug: data.slug || '',
          level: data.level || 1,
          rank_id: data.rank_id || null,
          lesson_position: data.lesson_position || 0,
          meaning_mnemonic: data.meaning_mnemonic || '',
          reading_mnemonic: data.reading_mnemonic || '',
          description: data.description || '',
          meanings: data.item_meanings && data.item_meanings.length > 0
            ? data.item_meanings.map((m: any) => ({
              id: m.id,
              meaning: m.meaning,
              primary_meaning: m.primary_meaning,
              accepted_answer: m.accepted_answer
            }))
            : [{ meaning: '', primary_meaning: true, accepted_answer: true }],
          readings: data.item_readings && data.item_readings.length > 0
            ? data.item_readings.map((r: any) => ({
              id: r.id,
              reading: r.reading,
              reading_type: r.reading_type,
              primary_reading: r.primary_reading,
              accepted_answer: r.accepted_answer
            }))
            : [],
          context_sentences: data.item_context_sentences && data.item_context_sentences.length > 0
            ? data.item_context_sentences.map((s: any) => ({
              id: s.id,
              japanese: s.japanese,
              indonesian: s.indonesian
            }))
            : [],
          prerequisites: data.item_prerequisites && data.item_prerequisites.length > 0
            ? data.item_prerequisites.map((p: any) => p.requires_item_id)
            : []
        });
        setIsModalOpen(true);
      }
    } catch (err: any) {
      console.error('Error fetching item details:', err);
      alert('Gagal mengambil detail item: ' + (err?.message || String(err)));
    } finally {
      setFormLoading(false);
    }
  };

  const handleSaveLearnItem = async () => {
    if (!formItem.character.trim()) {
      alert('Karakter tidak boleh kosong!');
      return;
    }
    if (!formItem.slug.trim()) {
      alert('Nama Slug/Arti Utama tidak boleh kosong!');
      return;
    }

    const filledMeanings = formItem.meanings.filter(m => m.meaning.trim() !== '');
    if (filledMeanings.length === 0) {
      alert('Harus mengisi minimal satu arti!');
      return;
    }
    const hasPrimaryMeaning = filledMeanings.some(m => m.primary_meaning);
    if (!hasPrimaryMeaning) {
      alert('Harus menetapkan satu arti sebagai arti utama (Primary Meaning)!');
      return;
    }

    if (formItem.type !== 'radical') {
      const filledReadings = formItem.readings.filter(r => r.reading.trim() !== '');
      if (filledReadings.length === 0) {
        alert('Kanji atau Kosakata harus memiliki minimal satu cara baca!');
        return;
      }
      const hasPrimaryReading = filledReadings.some(r => r.primary_reading);
      if (!hasPrimaryReading) {
        alert('Harus menetapkan satu cara baca sebagai utama (Primary Reading)!');
        return;
      }
    }

    setFormLoading(true);
    try {
      const itemId = formItem.id;
      if (!itemId) return;

      const itemData = {
        type: formItem.type,
        character: formItem.character.trim(),
        slug: formItem.slug.trim().toLowerCase(),
        level: Number(formItem.level),
        rank_id: formItem.rank_id || null,
        lesson_position: Number(formItem.lesson_position),
        meaning_mnemonic: formItem.meaning_mnemonic.trim() || null,
        reading_mnemonic: formItem.type !== 'radical' ? formItem.reading_mnemonic.trim() || null : null,
        description: formItem.description.trim() || null,
      };

      const { error: itemErr } = await supabase
        .from('items')
        .update(itemData)
        .eq('id', itemId);

      if (itemErr) throw itemErr;

      const [delM, delR, delS, delP] = await Promise.all([
        supabase.from('item_meanings').delete().eq('item_id', itemId),
        supabase.from('item_readings').delete().eq('item_id', itemId),
        supabase.from('item_context_sentences').delete().eq('item_id', itemId),
        supabase.from('item_prerequisites').delete().eq('item_id', itemId),
      ]);

      if (delM.error) throw delM.error;
      if (delR.error) throw delR.error;
      if (delS.error) throw delS.error;
      if (delP.error) throw delP.error;

      const meaningsToInsert = filledMeanings.map(m => ({
        item_id: itemId,
        meaning: m.meaning.trim(),
        primary_meaning: m.primary_meaning,
        accepted_answer: m.accepted_answer
      }));
      const { error: mErr } = await supabase.from('item_meanings').insert(meaningsToInsert);
      if (mErr) throw mErr;

      let readingsToInsert: any[] = [];
      if (formItem.type !== 'radical') {
        readingsToInsert = formItem.readings
          .filter(r => r.reading.trim() !== '')
          .map(r => ({
            item_id: itemId,
            reading: r.reading.trim(),
            reading_type: formItem.type === 'kanji' ? r.reading_type : null,
            primary_reading: r.primary_reading,
            accepted_answer: r.accepted_answer
          }));

        if (readingsToInsert.length > 0) {
          const { error: rErr } = await supabase.from('item_readings').insert(readingsToInsert);
          if (rErr) throw rErr;
        }
      }

      let sentencesToInsert: any[] = [];
      if (formItem.type === 'vocabulary') {
        sentencesToInsert = formItem.context_sentences
          .filter(s => s.japanese.trim() !== '' && s.indonesian.trim() !== '')
          .map(s => ({
            item_id: itemId,
            japanese: s.japanese.trim(),
            indonesian: s.indonesian.trim()
          }));

        if (sentencesToInsert.length > 0) {
          const { error: sErr } = await supabase.from('item_context_sentences').insert(sentencesToInsert);
          if (sErr) throw sErr;
        }
      }

      if (formItem.type !== 'radical' && formItem.prerequisites.length > 0) {
        const prereqsToInsert = formItem.prerequisites.map(reqId => ({
          item_id: itemId,
          requires_item_id: reqId
        }));
        const { error: pErr } = await supabase.from('item_prerequisites').insert(prereqsToInsert);
        if (pErr) throw pErr;
      }

      const activeBatchItem = currentBatch.find(i => i.id === itemId);
      const compiledItem: Item = {
        id: itemId,
        type: formItem.type,
        character: formItem.character.trim(),
        slug: formItem.slug.trim().toLowerCase(),
        level: Number(formItem.level),
        rank_id: formItem.rank_id || null,
        lesson_position: Number(formItem.lesson_position),
        meaning_mnemonic: formItem.meaning_mnemonic.trim() || undefined,
        reading_mnemonic: formItem.type !== 'radical' ? formItem.reading_mnemonic.trim() || undefined : undefined,
        description: formItem.description.trim() || undefined,
        srs_stage: activeBatchItem?.srs_stage || 0,
        meanings: meaningsToInsert.map((m, idx) => ({ id: String(idx), ...m })),
        readings: readingsToInsert.map((r, idx) => ({ id: String(idx), ...r })),
        context_sentences: sentencesToInsert.map((s, idx) => ({ id: String(idx), ...s })),
        primary_meaning: formItem.slug.trim().toLowerCase(),
        primary_reading: readingsToInsert.find(r => r.primary_reading)?.reading || null,
        accepted_meanings: meaningsToInsert.map(m => m.meaning.toLowerCase().trim()),
        accepted_readings: readingsToInsert.map(r => r.reading.toLowerCase().trim())
      };

      handleItemEditedInLesson(compiledItem);
      setIsModalOpen(false);
      alert('Info karakter berhasil diperbarui!');
    } catch (err: any) {
      console.error('Error saving item from lesson page:', err);
      alert('Gagal menyimpan perubahan: ' + (err?.message || String(err)));
    } finally {
      setFormLoading(false);
    }
  };

  const getDevModeAnswer = () => {
    if (!activeCard) return '';
    if (activeCard.cardType === 'meaning') {
      return activeCard.item.accepted_meanings?.[0] || activeCard.item.primary_meaning || '';
    }
    return activeCard.item.accepted_readings?.[0] || activeCard.item.primary_reading || '';
  };

  const inputRef = useRef<HTMLInputElement>(null);
  const currentItem = currentBatch[itemIndex];

  const [composition, setComposition] = useState<any[]>([]);
  const [vocabUsage, setVocabUsage] = useState<any[]>([]);
  const [kanjiUsage, setKanjiUsage] = useState<any[]>([]);
  const [isCompositionOpen, setIsCompositionOpen] = useState(false);
  const [isVocabUsageOpen, setIsVocabUsageOpen] = useState(false);
  const [isKanjiUsageOpen, setIsKanjiUsageOpen] = useState(false);
  const [activeDetailItem, setActiveDetailItem] = useState<any | null>(null);

  const [activeComposition, setActiveComposition] = useState<any[]>([]);
  const [activeVocabUsage, setActiveVocabUsage] = useState<any[]>([]);
  const [activeKanjiUsage, setActiveKanjiUsage] = useState<any[]>([]);
  const [isActiveCompositionOpen, setIsActiveCompositionOpen] = useState(false);
  const [isActiveVocabUsageOpen, setIsActiveVocabUsageOpen] = useState(false);
  const [isActiveKanjiUsageOpen, setIsActiveKanjiUsageOpen] = useState(false);
  const [loadingActiveDetails, setLoadingActiveDetails] = useState(false);

  useEffect(() => {
    setIsActiveCompositionOpen(false);
    setIsActiveVocabUsageOpen(false);
    setIsActiveKanjiUsageOpen(false);
    setActiveComposition([]);
    setActiveVocabUsage([]);
    setActiveKanjiUsage([]);

    if (!activeDetailItem) return;

    const detailId = activeDetailItem.id;
    const detailType = activeDetailItem.type;
    let active = true;

    async function loadActiveDetails() {
      setLoadingActiveDetails(true);
      try {
        if (detailType === 'kanji') {
          // Fetch composition (radicals)
          const { data: prereqData } = await supabase
            .from('item_prerequisites')
            .select('requires_item_id')
            .eq('item_id', detailId);

          let comps: any[] = [];
          if (prereqData && prereqData.length > 0) {
            const prereqIds = prereqData.map(r => r.requires_item_id);
            const { data: itemsData } = await supabase
              .from('items')
              .select('*, item_meanings(*)')
              .in('id', prereqIds);
            if (itemsData) comps = itemsData;
          }

          // Fetch vocabulary usage
          const { data: usageData } = await supabase
            .from('item_prerequisites')
            .select('item_id')
            .eq('requires_item_id', detailId);

          let usages: any[] = [];
          if (usageData && usageData.length > 0) {
            const usageIds = usageData.map(u => u.item_id);
            const { data: vocabsData } = await supabase
              .from('items')
              .select('*, item_meanings(*), item_readings(*)')
              .in('id', usageIds)
              .eq('type', 'vocabulary');
            if (vocabsData) usages = vocabsData;
          }

          if (active) {
            setActiveComposition(comps);
            setActiveVocabUsage(usages);
          }
        } else if (detailType === 'radical') {
          // Fetch kanjis containing this radical
          const { data: usageData } = await supabase
            .from('item_prerequisites')
            .select('item_id')
            .eq('requires_item_id', detailId);

          let usages: any[] = [];
          if (usageData && usageData.length > 0) {
            const usageIds = usageData.map(u => u.item_id);
            const { data: kanjisData } = await supabase
              .from('items')
              .select('*, item_meanings(*), item_readings(*)')
              .in('id', usageIds)
              .eq('type', 'kanji');
            if (kanjisData) usages = kanjisData;
          }

          if (active) {
            setActiveKanjiUsage(usages);
          }
        }
      } catch (err) {
        console.error('Error loading active detail item details in lesson:', err);
      } finally {
        if (active) setLoadingActiveDetails(false);
      }
    }

    loadActiveDetails();
    return () => {
      active = false;
    };
  }, [activeDetailItem?.id, activeDetailItem?.type]);

  const [detailsLoading, setDetailsLoading] = useState(false);

  useEffect(() => {
    let active = true;
    setIsCompositionOpen(false);
    setIsVocabUsageOpen(false);
    setIsKanjiUsageOpen(false);
    setActiveDetailItem(null);
    if (!currentItem || (currentItem.type !== 'kanji' && currentItem.type !== 'radical')) {
      setComposition([]);
      setVocabUsage([]);
      setKanjiUsage([]);
      return;
    }

    const itemId = currentItem.id;
    const itemType = currentItem.type;

    async function loadItemDetails() {
      setDetailsLoading(true);
      try {
        if (itemType === 'kanji') {
          // 1. Fetch composition (radicals)
          const { data: prereqData } = await supabase
            .from('item_prerequisites')
            .select('requires_item_id')
            .eq('item_id', itemId);

          let comps: any[] = [];
          if (prereqData && prereqData.length > 0) {
            const prereqIds = prereqData.map(r => r.requires_item_id);
            const { data: itemsData } = await supabase
              .from('items')
              .select('*, item_meanings(*)')
              .in('id', prereqIds);
            if (itemsData) {
              comps = itemsData;
            }
          }

          // 2. Fetch vocabulary usage
          const { data: usageData } = await supabase
            .from('item_prerequisites')
            .select('item_id')
            .eq('requires_item_id', itemId);

          let usages: any[] = [];
          if (usageData && usageData.length > 0) {
            const usageIds = usageData.map(u => u.item_id);
            const { data: vocabsData } = await supabase
              .from('items')
              .select('*, item_meanings(*), item_readings(*)')
              .in('id', usageIds)
              .eq('type', 'vocabulary');
            if (vocabsData) {
              usages = vocabsData;
            }
          }

          if (active) {
            setComposition(comps);
            setVocabUsage(usages);
            setKanjiUsage([]);
          }
        } else if (itemType === 'radical') {
          // Fetch kanjis containing this radical
          const { data: usageData } = await supabase
            .from('item_prerequisites')
            .select('item_id')
            .eq('requires_item_id', itemId);

          let usages: any[] = [];
          if (usageData && usageData.length > 0) {
            const usageIds = usageData.map(u => u.item_id);
            const { data: kanjisData } = await supabase
              .from('items')
              .select('*, item_meanings(*), item_readings(*)')
              .in('id', usageIds)
              .eq('type', 'kanji');
            if (kanjisData) {
              usages = kanjisData;
            }
          }

          if (active) {
            setComposition([]);
            setVocabUsage([]);
            setKanjiUsage(usages);
          }
        }
      } catch (err) {
        console.error('Error fetching item details in lesson:', err);
      } finally {
        if (active) {
          setDetailsLoading(false);
        }
      }
    }

    loadItemDetails();
    return () => {
      active = false;
    };
  }, [currentItem?.id, currentItem?.type, isModalOpen]);

  const startQuiz = useCallback(() => {
    if (currentBatch.length === 0) return;
    initializeSession(currentBatch, 'lesson');
    setPhase('quiz');
  }, [currentBatch, initializeSession]);

  // Fetch lessons available
  useEffect(() => {
    async function loadLessons() {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          router.push('/');
          return;
        }

        // Check custom lesson queue
        const customQueueStr = localStorage.getItem('custom-lesson-queue');
        const customInterleaveStr = localStorage.getItem('custom-lesson-interleave');
        
        let customQueueIds: string[] | null = null;
        if (customQueueStr) {
          try {
            customQueueIds = JSON.parse(customQueueStr);
          } catch (e) {
            console.error('Failed to parse custom-lesson-queue from localStorage:', e);
          }
        }

        // Fetch lesson items (srs_stage = 1 & next_review = null)
        let query = supabase
          .from('user_progress')
          .select('item_id, srs_stage, unlocked_at, items(*)')
          .eq('user_id', user.id)
          .eq('srs_stage', 1)
          .is('next_review', null);

        if (customQueueIds && customQueueIds.length > 0) {
          query = query.in('item_id', customQueueIds);
        }

        const { data, error } = await query;

        if (error) throw error;
        if (!data || data.length === 0) {
          setLessons([]);
          setLoading(false);
          return;
        }

        const rawItems = data.map((row: any) => row.items).filter(Boolean);
        const itemIds = rawItems.map((i: any) => i.id);

        // Fetch detail meanings, readings, sentences
        const [meaningsRes, readingsRes, sentencesRes] = await Promise.all([
          supabase.from('item_meanings').select('*').in('item_id', itemIds),
          supabase.from('item_readings').select('*').in('item_id', itemIds),
          supabase.from('item_context_sentences').select('*').in('item_id', itemIds),
        ]);

        const meanings = meaningsRes.data || [];
        const readings = readingsRes.data || [];
        const sentences = sentencesRes.data || [];

        // Combine details
        const itemsWithDetails: Item[] = rawItems.map((item: any) => {
          const mList = meanings.filter((m) => m.item_id === item.id);
          const rList = readings.filter((r) => r.item_id === item.id);
          const sList = sentences.filter((s) => s.item_id === item.id);

          const primaryMeaning = mList.find((m) => m.primary_meaning)?.meaning || '';
          const primaryReading = rList.find((r) => r.primary_reading)?.reading || null;

          const progressRow = data.find((row: any) => row.item_id === item.id);
          const srsStage = progressRow ? progressRow.srs_stage : 1;

          return {
            ...item,
            srs_stage: srsStage,
            meanings: mList,
            readings: rList,
            context_sentences: sList,
            primary_meaning: primaryMeaning,
            primary_reading: primaryReading,
            accepted_meanings: mList.filter(m => m.accepted_answer).map(m => m.meaning.toLowerCase().trim()),
            accepted_readings: rList.filter(r => r.accepted_answer).map(r => r.reading.toLowerCase().trim()),
          };
        });

        // Sort: level (ASC), type (radical→kanji→vocab), lesson_position
        const typePriority: Record<string, number> = { radical: 0, kanji: 1, vocabulary: 2 };
        itemsWithDetails.sort((a, b) => {
          const levelDiff = a.level - b.level;
          if (levelDiff !== 0) return levelDiff;
          const typeDiff = (typePriority[a.type] ?? 3) - (typePriority[b.type] ?? 3);
          if (typeDiff !== 0) return typeDiff;
          return a.lesson_position - b.lesson_position;
        });

        // Interleave lessons if requested
        let finalLessons = itemsWithDetails;
        if (customInterleaveStr === 'true') {
          const radicals = itemsWithDetails.filter(i => i.type === 'radical');
          const kanjis = itemsWithDetails.filter(i => i.type === 'kanji');
          const vocabs = itemsWithDetails.filter(i => i.type === 'vocabulary');
          
          const interleaved: Item[] = [];
          const maxLen = Math.max(radicals.length, kanjis.length, vocabs.length);
          for (let i = 0; i < maxLen; i++) {
            if (i < radicals.length) interleaved.push(radicals[i]);
            if (i < kanjis.length) interleaved.push(kanjis[i]);
            if (i < vocabs.length) interleaved.push(vocabs[i]);
          }
          finalLessons = interleaved;
        }

        setLessons(finalLessons);

        // Get first batch of 5 items
        const batch = finalLessons.slice(0, 5);
        setCurrentBatch(batch);
        setItemIndex(0);

      } catch (err) {
        console.error('Error fetching lessons:', err);
      } finally {
        setLoading(false);
      }
    }

    loadLessons();
    return () => resetStore();
  }, [router, resetStore, initializeSession]);

  const handleProceedNext = async () => {
    if (!activeCard) return;

    const itemId = activeCard.itemId;
    proceedNext();

    // Refocus input to ensure virtual keyboard stays open
    setTimeout(() => {
      inputRef.current?.focus();
    }, 20);

    // Check if item is fully completed (both meaning & reading correct)
    setTimeout(async () => {
      const state = useQuizStore.getState();
      const prog = state.itemProgress[itemId];

      if (prog && prog.meaningCorrect && prog.readingCorrect && !submittedItemIds.includes(itemId)) {
        setSubmittedItemIds(prev => [...prev, itemId]);

        const durationSeconds = getAndResetSeconds();

        try {
          const { data: { session } } = await supabase.auth.getSession();
          const token = session?.access_token;

          const res = await fetch('/api/lesson/complete', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
              'Authorization': `Bearer ${token}`
            },
            body: JSON.stringify({ itemIds: [itemId], durationSeconds })
          });

          if (res.ok) {
            const data = await res.json();
            if (data.levelUpOccurred || data.rankUpOccurred) {
              const progInfo = {
                type: (data.levelUpOccurred ? 'level' : 'rank') as 'level' | 'rank',
                newRankName: data.newRankName || 'Pangkat Baru'
              };
              pendingProgressionRef.current = progInfo;
              setPendingProgression(progInfo);
            }
          }
        } catch (err) {
          console.error('Error progressively submitting lesson item:', err);
        }
      }
    }, 50);
  };

  const handleQuizSubmitAction = () => {
    if (!isAnswerSubmitted) {
      if (userInput.trim() !== '') {
        submitAnswer();
      }
    } else {
      handleProceedNext();
    }
  };

  const handleKeyDown = (e: React.KeyboardEvent<HTMLInputElement>) => {
    if (e.key === 'Enter') {
      e.preventDefault();
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
        }
      } else {
        handleProceedNext();
        setTimeout(() => {
          inputRef.current?.focus();
        }, 20);
      }
    }
  };

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

  // Hotkey 'f' to toggle detail drawer
  useEffect(() => {
    const handleGlobalKeyDown = (e: KeyboardEvent) => {
      if ((e.key === 'f' || e.key === 'F') && isAnswerSubmitted && phase === 'quiz') {
        const isInputActive = document.activeElement?.tagName === 'INPUT';
        const isInputReadOnly = document.activeElement?.hasAttribute('readonly');
        if (!isInputActive || isInputReadOnly) {
          e.preventDefault();
          toggleItemInfo();
        }
      }
    };
    window.addEventListener('keydown', handleGlobalKeyDown);
    return () => window.removeEventListener('keydown', handleGlobalKeyDown);
  }, [isAnswerSubmitted, toggleItemInfo, phase]);

  // Keyboard controls for learn phase
  useEffect(() => {
    const handleLearnKeyDown = (e: KeyboardEvent) => {
      if (phase !== 'learn') return;

      const isInputActive = document.activeElement?.tagName === 'INPUT' || document.activeElement?.tagName === 'TEXTAREA';
      if (isInputActive) return;

      if (e.key === 'ArrowLeft') {
        e.preventDefault();
        const hasMnemonic = currentItem && currentItem.type !== 'radical';

        if (hasMnemonic && activeTab !== 'info') {
          setActiveTab('info');
        } else {
          if (itemIndex > 0) {
            const prevIdx = itemIndex - 1;
            setItemIndex(prevIdx);
            const prevItem = currentBatch[prevIdx];
            if (prevItem && prevItem.type !== 'radical') {
              setActiveTab('mnemonic');
            } else {
              setActiveTab('info');
            }
          }
        }
      } else if (e.key === 'ArrowRight') {
        e.preventDefault();
        const hasMnemonic = currentItem && currentItem.type !== 'radical';

        if (hasMnemonic && activeTab === 'info') {
          setActiveTab('mnemonic');
        } else {
          if (itemIndex < currentBatch.length - 1) {
            setItemIndex((prev) => prev + 1);
            setActiveTab('info');
          } else {
            startQuiz();
          }
        }
      }
    };

    window.addEventListener('keydown', handleLearnKeyDown);
    return () => window.removeEventListener('keydown', handleLearnKeyDown);
  }, [phase, itemIndex, currentItem, activeTab, currentBatch, startQuiz]);

  const completeBatch = async () => {
    setLoading(true);
    try {
      // Find any items in the current batch that were not yet submitted incrementally
      const unsubmittedIds = currentBatch.map(i => i.id).filter(id => !submittedItemIds.includes(id));

      if (unsubmittedIds.length > 0) {
        const { data: { session } } = await supabase.auth.getSession();
        const token = session?.access_token;
        const durationSeconds = getAndResetSeconds();

        const res = await fetch('/api/lesson/complete', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${token}`
          },
          body: JSON.stringify({ itemIds: unsubmittedIds, durationSeconds })
        });

        if (!res.ok) {
          throw new Error('Gagal menyimpan hasil lesson di server.');
        }

        const data = await res.json();
        if (data.levelUpOccurred || data.rankUpOccurred) {
          const progInfo = {
            type: (data.levelUpOccurred ? 'level' : 'rank') as 'level' | 'rank',
            newRankName: data.newRankName || 'Pangkat Baru'
          };
          pendingProgressionRef.current = progInfo;
          setPendingProgression(progInfo);
        }
      }

      // Remove learned items from custom queue
      const itemIds = currentBatch.map(i => i.id);
      const customQueueStr = localStorage.getItem('custom-lesson-queue');
      if (customQueueStr) {
        try {
          const customQueueIds = JSON.parse(customQueueStr) as string[];
          const remainingCustomIds = customQueueIds.filter(id => !itemIds.includes(id));
          if (remainingCustomIds.length === 0) {
            localStorage.removeItem('custom-lesson-queue');
            localStorage.removeItem('custom-lesson-interleave');
          } else {
            localStorage.setItem('custom-lesson-queue', JSON.stringify(remainingCustomIds));
          }
        } catch (e) {
          console.error('Error updating custom lesson queue:', e);
        }
      }

      // Check if we have pending progression to show in the modal
      const finalProgression = pendingProgressionRef.current;
      if (finalProgression) {
        setProgressionInfo({
          isOpen: true,
          type: finalProgression.type,
          newRankName: finalProgression.newRankName
        });
      }

      setPhase('summary');
    } catch (err) {
      console.error(err);
      alert('Terjadi kesalahan saat menyimpan data kuis.');
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    if (phase === 'quiz' && queue.length === 0 && currentBatch.length > 0) {
      setTimeout(() => {
        completeBatch();
      }, 0);
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [phase, queue, currentBatch]);

  const handleNextBatch = () => {
    const remainingLessons = lessons.slice(currentBatch.length);
    if (remainingLessons.length > 0) {
      const nextBatch = remainingLessons.slice(0, 5);
      setLessons(remainingLessons);
      setCurrentBatch(nextBatch);
      setItemIndex(0);
      setPhase('learn');
      setActiveTab('info');
      setSubmittedItemIds([]);
      setPendingProgression(null);
      pendingProgressionRef.current = null;
      resetStore();
    } else {
      router.push('/dashboard');
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center relative overflow-hidden bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100">
        <CrabBackground />
        <div className="flex flex-col items-center space-y-4 select-none">
          <div className="w-12 h-12 border-4 border-teal-500 border-t-transparent rounded-full animate-spin"></div>
          <p className="font-semibold text-sm">Menyiapkan materi pembelajaran...</p>
        </div>
      </div>
    );
  }

  if (lessons.length === 0 && phase !== 'summary') {
    return (
      <div className="min-h-screen flex flex-col items-center justify-center relative overflow-hidden bg-slate-50 dark:bg-slate-955 px-4">
        <CrabBackground />
        <div className="max-w-md w-full text-center bg-white dark:bg-slate-900 p-8 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl space-y-6">
          <BookOpen className="w-16 h-16 mx-auto text-teal-500 animate-bounce" />
          <h2 className="text-2xl font-black">Semua Bersih!</h2>
          <p className="text-sm text-slate-500 dark:text-slate-400">
            Hebat! Tidak ada item lesson baru yang tersedia saat ini. Silakan kembali ke dashboard atau periksa level up prasyarat Anda.
          </p>
          <button
            onClick={() => {
              localStorage.removeItem('custom-lesson-queue');
              localStorage.removeItem('custom-lesson-interleave');
              router.push('/dashboard');
            }}
            className="w-full py-3 bg-teal-500 text-white font-bold rounded-2xl shadow-md hover:bg-teal-600 transition-colors cursor-pointer animate-pulse"
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

  const getItemBadgeName = (type: string) => {
    if (type === 'radical') return 'Radikal';
    if (type === 'kanji') return 'Kanji';
    return 'Kosakata';
  };

  const renderKaniGaniPrompt = () => {
    if (!activeCard) return null;
    const isMeaning = activeCard.cardType === 'meaning';

    if (activeCard.type === 'radical') {
      return (
        <span className="select-text">Nama <span className="font-black text-slate-850 dark:text-slate-100">Radikal</span></span>
      );
    }

    if (activeCard.type === 'kanji') {
      if (isMeaning) {
        return (
          <span className="select-text">Arti <span className="font-black text-slate-850 dark:text-slate-100">Kanji</span></span>
        );
      }
      const readings = activeCard.item.readings || [];
      const primaryReadingObj = readings.find(r => r.primary_reading);
      const expectedType = primaryReadingObj?.reading_type;
      return expectedType === 'onyomi' ? (
        <span className="select-text">Bacaan Onyomi <span className="font-black text-slate-850 dark:text-slate-100">Kanji</span></span>
      ) : (
        <span className="select-text">Bacaan Kunyomi <span className="font-black text-slate-850 dark:text-slate-100">Kanji</span></span>
      );
    }

    if (isMeaning) {
      return (
        <span className="select-text">Arti <span className="font-black text-slate-850 dark:text-slate-100">Kosakata</span></span>
      );
    }
    return (
      <span className="select-text">Cara Baca <span className="font-black text-slate-850 dark:text-slate-100">Kosakata</span></span>
    );
  };

  return (
    <div className="min-h-screen flex flex-col relative overflow-hidden bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <CrabBackground />

      <main className="flex-1 max-w-4xl w-full mx-auto px-4 flex flex-col items-center justify-start pt-0 pb-6 sm:pb-12 transition-all duration-300">

        {/* PHASE 1: LEARN (INTRO STUDY SLIDES) */}
        {phase === 'learn' && currentItem && (
          <div className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden animate-fade-in flex flex-col min-h-[500px]">

            {/* Header Colorful Character Card */}
            <div className={`relative pt-16 pb-12 flex flex-col items-center justify-center text-white ${getItemColorClass(currentItem.type)}`}>

              {/* Integrated Header Bar Inside the Card */}
              <div className="absolute top-4 left-4 right-4 flex items-center justify-between text-white select-none w-[calc(100%-2rem)]">
                <button
                  type="button"
                  onClick={() => {
                    if (confirm('Apakah Anda yakin ingin keluar dari sesi pembelajaran? Progres batch ini belum disimpan.')) {
                      localStorage.removeItem('custom-lesson-queue');
                      localStorage.removeItem('custom-lesson-interleave');
                      router.push('/dashboard');
                    }
                  }}
                  title="Keluar Sesi"
                  className="flex items-center justify-center text-white/85 hover:text-white hover:scale-105 active:scale-95 transition-all w-8 h-8 rounded-lg hover:bg-white/10 cursor-pointer"
                >
                  <Home className="w-5 h-5" />
                </button>

                <div className="text-xs sm:text-sm font-bold text-white/90">
                  Lesson ({itemIndex + 1}/{currentBatch.length})
                </div>
              </div>

              <h1 className="text-7xl font-black tracking-tight select-text text-center mt-6">{currentItem.character}</h1>
              <p className="text-lg font-bold tracking-wide mt-4 uppercase opacity-90">{currentItem.slug}</p>
            </div>

            {/* Explanation Navigation Tabs */}
            <div className="flex border-b border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-900/50 select-none">
              <button
                onClick={() => setActiveTab('info')}
                className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors cursor-pointer ${activeTab === 'info'
                  ? 'border-teal-500 text-teal-500'
                  : 'border-transparent text-slate-500 hover:text-slate-700 dark:hover:text-slate-200'
                  }`}
              >
                Arti & Deskripsi
              </button>

              {currentItem.type !== 'radical' && (
                <button
                  onClick={() => setActiveTab('mnemonic')}
                  className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors cursor-pointer ${activeTab === 'mnemonic'
                    ? 'border-teal-500 text-teal-500'
                    : 'border-transparent text-slate-500 hover:text-slate-700 dark:hover:text-slate-200'
                    }`}
                >
                  Cara Baca
                </button>
              )}
            </div>

            {/* Tab Explanation Details */}
            <div className="p-6 sm:p-8 flex-1 space-y-6 text-sm leading-relaxed select-text">

              {/* TAB 1: MEANINGS & INFO */}
              {activeTab === 'info' && (
                <div className="space-y-4 animate-fade-in relative">
                  {globalDevMode && (
                    <button
                      type="button"
                      onClick={() => handleLearnEditClick(currentItem)}
                      disabled={formLoading}
                      className="absolute top-0 right-0 flex items-center space-x-1.5 px-3 py-1.5 bg-indigo-50 hover:bg-indigo-100 dark:bg-indigo-950/40 border border-indigo-200/50 dark:border-indigo-900/50 text-indigo-600 dark:text-indigo-400 text-xs font-extrabold rounded-xl transition-all cursor-pointer select-none z-10"
                    >
                      {formLoading ? (
                        <Loader2 className="w-3.5 h-3.5 animate-spin" />
                      ) : (
                        <Edit2 className="w-3.5 h-3.5" />
                      )}
                      <span>Edit Info</span>
                    </button>
                  )}

                  {/* Composition section */}
                  {currentItem.type === 'kanji' && composition.length > 0 && (
                    <div className="mb-4">
                      <button
                        type="button"
                        onClick={() => setIsCompositionOpen(!isCompositionOpen)}
                        className="flex items-center space-x-1.5 text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest hover:text-slate-600 dark:hover:text-slate-300 select-none cursor-pointer focus:outline-none"
                      >
                        <span>Komposisi Kanji</span>
                        {isCompositionOpen ? (
                          <ChevronDown className="w-3.5 h-3.5 text-slate-400 dark:text-slate-500" />
                        ) : (
                          <ChevronRight className="w-3.5 h-3.5 text-slate-400 dark:text-slate-500" />
                        )}
                      </button>
                      {isCompositionOpen && (
                        <div className="flex flex-wrap gap-2 mt-2">
                          {composition.map(compItem => {
                            const primaryMean = compItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || compItem.slug || '';
                            return (
                              <button
                                key={compItem.id}
                                type="button"
                                onClick={() => setActiveDetailItem(compItem)}
                                className="flex items-center space-x-2 px-3 py-1.5 bg-slate-55 hover:bg-slate-100 dark:bg-slate-900 dark:hover:bg-slate-800 border border-slate-200 dark:border-slate-800 rounded-xl animate-fade-in cursor-pointer transition-all duration-205 text-left"
                              >
                                <span className="text-base font-bold text-teal-600 dark:text-teal-400">{compItem.character}</span>
                                <span className="text-xs text-slate-500 dark:text-slate-405 capitalize">{primaryMean}</span>
                              </button>
                            );
                          })}
                        </div>
                      )}
                    </div>
                  )}

                  <div>
                    <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">Arti Karakter</h3>
                    <div className="flex flex-wrap items-baseline gap-2 mt-1 select-all">
                      <span className="text-xl font-bold text-teal-600 dark:text-teal-400 capitalize">
                        {currentItem.primary_meaning}
                      </span>
                      {(() => {
                        const other = currentItem.meanings
                          ?.filter((m: any) => m.meaning.toLowerCase().trim() !== currentItem.primary_meaning?.toLowerCase().trim())
                          .map((m: any) => m.meaning) || [];
                        if (other.length === 0) return null;
                        return (
                          <span className="text-sm font-medium text-slate-400 dark:text-slate-500 capitalize">
                            / {other.join(', ')}
                          </span>
                        );
                      })()}
                    </div>
                  </div>

                  {currentItem.description && (
                    <div>
                      <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">Deskripsi Detail</h3>
                      <p className="text-slate-600 dark:text-slate-350 mt-1">{currentItem.description}</p>
                    </div>
                  )}

                  {currentItem.meaning_mnemonic && (
                    <div className="p-4 bg-teal-50 dark:bg-teal-950/20 border border-teal-100 dark:border-teal-900/50 rounded-2xl">
                      <h3 className="text-xs font-bold text-teal-700 dark:text-teal-400 uppercase tracking-widest block select-none">Mnemonic Jembatan Keledai (Arti)</h3>
                      <p className="text-teal-900 dark:text-teal-300 mt-1.5">{currentItem.meaning_mnemonic}</p>
                    </div>
                  )}

                  {/* Kanji usage for radical section */}
                  {currentItem.type === 'radical' && kanjiUsage.length > 0 && (
                    <div className="mt-4 animate-fade-in">
                      <button
                        type="button"
                        onClick={() => setIsKanjiUsageOpen(!isKanjiUsageOpen)}
                        className="flex items-center space-x-1.5 text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest hover:text-slate-600 dark:hover:text-slate-300 select-none cursor-pointer focus:outline-none"
                      >
                        <span>Kanji yang Menggunakan Radikal Ini</span>
                        {isKanjiUsageOpen ? (
                          <ChevronDown className="w-3.5 h-3.5 text-slate-400 dark:text-slate-500" />
                        ) : (
                          <ChevronRight className="w-3.5 h-3.5 text-slate-400 dark:text-slate-500" />
                        )}
                      </button>
                      {isKanjiUsageOpen && (
                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-2 mt-2 animate-fade-in">
                          {kanjiUsage.map(kanjiItem => {
                            const primaryMean = kanjiItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || kanjiItem.slug || '';
                            const primaryRead = kanjiItem.item_readings?.find((r: any) => r.primary_reading)?.reading || '';
                            return (
                              <button
                                key={kanjiItem.id}
                                type="button"
                                onClick={() => setActiveDetailItem(kanjiItem)}
                                className="flex items-center justify-between p-3 bg-slate-55 hover:bg-slate-105 dark:bg-slate-900 dark:hover:bg-slate-800 border border-slate-200 dark:border-slate-800 rounded-xl cursor-pointer transition-all duration-205 text-left"
                              >
                                <div className="flex flex-col">
                                  <span className="text-base font-bold text-slate-850 dark:text-slate-100">{kanjiItem.character}</span>
                                  <span className="text-xs text-slate-400 dark:text-slate-500">{primaryRead}</span>
                                </div>
                                <span className="text-xs font-medium text-slate-605 dark:text-slate-355 capitalize text-right max-w-[150px] truncate">{primaryMean}</span>
                              </button>
                            );
                          })}
                        </div>
                      )}
                    </div>
                  )}
                </div>
              )}

              {/* TAB 2: READINGS & MNEMONICS */}
              {activeTab === 'mnemonic' && currentItem.type !== 'radical' && (
                <div className="space-y-4 animate-fade-in">
                  <div>
                    <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">
                      {currentItem.type === 'kanji'
                        ? `Bacaan Jepang Utama (${currentItem.readings?.find((r: any) => r.primary_reading)?.reading_type === 'onyomi'
                          ? 'Onyomi'
                          : 'Kunyomi'
                        })`
                        : 'Bacaan Jepang Utama (Kana)'}
                    </h3>
                    <p className="text-2xl font-black text-indigo-600 dark:text-indigo-400 mt-1">
                      {currentItem.primary_reading}
                    </p>
                  </div>

                  {currentItem.readings && currentItem.readings.length > 1 && (
                    <div>
                      <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block mb-1 select-none">Variasi Bacaan Lainnya</h3>
                      <div className="flex flex-wrap gap-2 select-none">
                        {currentItem.readings.map((r, idx) => (
                          <span key={idx} className="px-3 py-1 bg-slate-105 dark:bg-slate-800 text-xs font-semibold rounded-lg">
                            {r.reading} {r.reading_type && `(${r.reading_type})`}
                          </span>
                        ))}
                      </div>
                    </div>
                  )}

                  {currentItem.reading_mnemonic && (
                    <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl">
                      <h3 className="text-xs font-bold text-indigo-700 dark:text-indigo-400 uppercase tracking-widest block select-none">Mnemonic Jembatan Keledai (Bacaan)</h3>
                      <p className="text-indigo-900 dark:text-indigo-300 mt-1.5">{currentItem.reading_mnemonic}</p>
                    </div>
                  )}

                  {/* Vocabulary usage section */}
                  {currentItem.type === 'kanji' && vocabUsage.length > 0 && (
                    <div className="mt-4 animate-fade-in">
                      <button
                        type="button"
                        onClick={() => setIsVocabUsageOpen(!isVocabUsageOpen)}
                        className="flex items-center space-x-1.5 text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest hover:text-slate-600 dark:hover:text-slate-300 select-none cursor-pointer focus:outline-none"
                      >
                        <span>Kosakata yang Menggunakan Kanji Ini</span>
                        {isVocabUsageOpen ? (
                          <ChevronDown className="w-3.5 h-3.5 text-slate-400 dark:text-slate-500" />
                        ) : (
                          <ChevronRight className="w-3.5 h-3.5 text-slate-400 dark:text-slate-500" />
                        )}
                      </button>
                      {isVocabUsageOpen && (
                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-2 mt-2 animate-fade-in">
                          {vocabUsage.map(vocabItem => {
                            const primaryMean = vocabItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || vocabItem.slug || '';
                            const primaryRead = vocabItem.item_readings?.find((r: any) => r.primary_reading)?.reading || '';
                            return (
                              <button
                                key={vocabItem.id}
                                type="button"
                                onClick={() => setActiveDetailItem(vocabItem)}
                                className="flex items-center justify-between p-3 bg-slate-55 hover:bg-slate-105 dark:bg-slate-900 dark:hover:bg-slate-800 border border-slate-200 dark:border-slate-800 rounded-xl cursor-pointer transition-all duration-205 text-left"
                              >
                                <div className="flex flex-col">
                                  <span className="text-base font-bold text-slate-800 dark:text-slate-100">{vocabItem.character}</span>
                                  <span className="text-xs text-slate-400 dark:text-slate-500">{primaryRead}</span>
                                </div>
                                <span className="text-xs font-medium text-slate-600 dark:text-slate-355 capitalize text-right max-w-[150px] truncate">{primaryMean}</span>
                              </button>
                            );
                          })}
                        </div>
                      )}
                    </div>
                  )}

                  {/* Context sentence - Vocab only */}
                  {currentItem.type === 'vocabulary' && (
                    <div className="border-t border-slate-200 dark:border-slate-800 pt-6 mt-6 space-y-4">
                      <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">Contoh Kalimat Kontekstual</h3>

                      {currentItem.context_sentences && currentItem.context_sentences.length > 0 ? (
                        <div className="space-y-4">
                          {currentItem.context_sentences.map((s, idx) => (
                            <div key={idx} className="p-4 bg-slate-50 dark:bg-slate-950/40 rounded-2xl border border-slate-200/60 dark:border-slate-800/80 space-y-2">
                              <p className="text-lg font-bold text-indigo-600 dark:text-indigo-400 select-all">{s.japanese}</p>
                              <p className="text-xs text-slate-505 dark:text-slate-400">{s.indonesian}</p>
                            </div>
                          ))}
                        </div>
                      ) : (
                        <p className="text-slate-400 text-xs italic select-none">Belum ada contoh kalimat untuk kosakata ini.</p>
                      )}
                    </div>
                  )}
                </div>
              )}

            </div>

            {/* Slide Navigation Buttons */}
            <div className="p-4 border-t border-slate-200 dark:border-slate-800 bg-slate-55 dark:bg-slate-900 flex flex-col items-center gap-3 sm:gap-0 select-none">

              {/* Progress dots - Mobile Only */}
              <div className="flex space-x-1.5 sm:hidden">
                {currentBatch.map((_, idx) => (
                  <div
                    key={idx}
                    className={`w-2.5 h-2.5 rounded-full transition-all duration-300 ${idx === itemIndex
                      ? 'bg-teal-500 scale-125'
                      : idx < itemIndex
                        ? 'bg-teal-300 dark:bg-teal-800'
                        : 'bg-slate-200 dark:bg-slate-850'
                      }`}
                  ></div>
                ))}
              </div>

              {/* Navigation Controls Row */}
              <div className="flex items-center justify-between w-full">
                <button
                  disabled={itemIndex === 0}
                  onClick={() => {
                    const prevIdx = itemIndex - 1;
                    setItemIndex(prevIdx);
                    const prevItem = currentBatch[prevIdx];
                    if (prevItem && prevItem.type !== 'radical') {
                      setActiveTab('mnemonic');
                    } else {
                      setActiveTab('info');
                    }
                  }}
                  className="px-4 py-2 bg-slate-100 dark:bg-slate-700 hover:bg-slate-200 dark:hover:bg-slate-600 text-slate-700 dark:text-slate-200 disabled:opacity-30 disabled:cursor-not-allowed font-bold rounded-xl text-xs flex items-center space-x-1.5 transition-colors shrink-0 cursor-pointer"
                >
                  <ArrowLeft className="w-4 h-4" />
                  <span>Sebelumnya</span>
                </button>

                {/* Progress dots - Desktop Only */}
                <div className="hidden sm:flex space-x-1.5">
                  {currentBatch.map((_, idx) => (
                    <div
                      key={idx}
                      className={`w-2.5 h-2.5 rounded-full transition-all duration-300 ${idx === itemIndex
                        ? 'bg-teal-500 scale-125'
                        : idx < itemIndex
                          ? 'bg-teal-300 dark:bg-teal-800'
                          : 'bg-slate-200 dark:bg-slate-850'
                        }`}
                    ></div>
                  ))}
                </div>

                {itemIndex < currentBatch.length - 1 ? (
                  <button
                    onClick={() => {
                      setItemIndex(itemIndex + 1);
                      setActiveTab('info');
                    }}
                    className="px-5 py-2 bg-teal-500 hover:bg-teal-600 text-white font-bold rounded-xl text-xs flex items-center space-x-1.5 transition-all duration-200 shrink-0 cursor-pointer"
                  >
                    <span>Berikutnya</span>
                    <ArrowRight className="w-4 h-4" />
                  </button>
                ) : (
                  <button
                    onClick={startQuiz}
                    className="px-5 py-2 bg-teal-500 hover:bg-teal-600 text-white font-bold rounded-xl text-xs flex items-center space-x-1.5 transition-all duration-200 shrink-0 cursor-pointer"
                  >
                    <span>Mulai Kuis</span>
                    <Award className="w-4 h-4" />
                  </button>
                )}
              </div>
            </div>

          </div>
        )}

        {/* PHASE 2: BATCH QUIZ (ZUSTAND SESSION) */}
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

          return (
            <div className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden animate-fade-in min-h-[400px] flex flex-col justify-start">

              {/* Header quiz card with colors */}
              <div className={`relative pt-16 pb-12 flex flex-col items-center justify-center text-white ${getItemColorClass(activeCard.type)}`}>
                <QuizHeader
                  onExit={() => {
                    if (confirm('Keluar dari sesi kuis pembelajaran?')) {
                      localStorage.removeItem('custom-lesson-queue');
                      localStorage.removeItem('custom-lesson-interleave');
                      router.push('/dashboard');
                    }
                  }}
                  title={`Lesson Quiz (${queue.length} sisa)`}
                  globalDevMode={globalDevMode}
                  devMode={devMode}
                  setDevMode={setDevMode}
                />
                <h1 className="text-7xl font-black tracking-tight select-text text-center mt-6">{activeCard.character}</h1>
              </div>

              {/* Prompt Label KaniGani style */}
              <div className="w-full py-2.5 bg-slate-100 dark:bg-slate-800 border-y border-slate-200 dark:border-slate-700 flex items-center justify-center text-xs font-semibold text-slate-500 dark:text-slate-350 tracking-wider uppercase select-none">
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

              {/* Action buttons (Undo, Info) */}
              <QuizActionButtons
                onUndo={handleProceedNext} // for lessons wrong correction, proceedNext acts as the main trigger
                isUndoDisabled={!isAnswerSubmitted}
                onToggleInfo={toggleItemInfo}
                infoActive={showItemInfo}
                isInfoDisabled={!isAnswerSubmitted}
                showUndo={false}
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
                showSrs={false}
              />
 
              {/* Collapsible Info Drawer */}
              {showItemInfo && (
                <QuizInfoDrawer
                  item={activeCard.item}
                  cardType={activeCard.cardType}
                  onItemEdited={handleItemEditedInLesson}
                />
              )}
 
            </div>
          );
        })()}

        {/* PHASE 3: BATCH COMPLETED SUMMARY */}
        {phase === 'summary' && (
          <div className="w-full max-w-md bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl p-8 text-center space-y-6 animate-fade-in my-12 select-none">
            <Award className="w-16 h-16 mx-auto text-teal-500 animate-bounce" />
            <h2 className="text-2xl font-black">Batch Selesai! 🎉</h2>
            <p className="text-sm text-slate-550 dark:text-slate-400">
              Selamat! Anda telah menyelesaikan pelajaran baru untuk batch ini. Semua item ini telah terdaftar di SRS dan siap diulas pada jadwal berikutnya.
            </p>

            <div className="bg-slate-50 dark:bg-slate-950 p-5 rounded-2xl border border-slate-150 dark:border-slate-850">
              <span className="text-3xs uppercase tracking-widest text-slate-400 block font-bold">Item yang Baru Dipelajari</span>
              <div className="flex flex-wrap gap-2 justify-center mt-3">
                {currentBatch.map((item, idx) => (
                  <span
                    key={idx}
                    className={`min-w-10 h-10 px-3 flex items-center justify-center rounded-xl font-black text-lg text-white whitespace-nowrap ${getItemColorClass(item.type)}`}
                  >
                    {item.character}
                  </span>
                ))}
              </div>
            </div>

            <div className="flex flex-col gap-3">
              {lessons.length > currentBatch.length ? (
                <button
                  onClick={handleNextBatch}
                  className="w-full py-3 bg-teal-500 hover:bg-teal-600 text-white font-extrabold rounded-2xl shadow-md transition-colors cursor-pointer"
                >
                  Lanjut Batch Berikutnya ({lessons.length - currentBatch.length} item sisa)
                </button>
              ) : null}

              <button
                onClick={() => {
                  localStorage.removeItem('custom-lesson-queue');
                  localStorage.removeItem('custom-lesson-interleave');
                  router.push('/dashboard');
                }}
                className="w-full py-3 bg-slate-105 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-200 font-extrabold rounded-2xl transition-colors cursor-pointer"
              >
                Selesai & Ke Dashboard
              </button>
            </div>
          </div>
        )}

      </main>

      <ProgressionModal
        isOpen={progressionInfo.isOpen}
        type={progressionInfo.type}
        newRankName={progressionInfo.newRankName}
        onClose={() => setProgressionInfo(prev => ({ ...prev, isOpen: false }))}
      />

      {globalDevMode && isModalOpen && (
        <ItemEditorModal
          isOpen={isModalOpen}
          setIsOpen={setIsModalOpen}
          formItem={formItem}
          setFormItem={setFormItem}
          handleSaveItem={handleSaveLearnItem}
          formLoading={formLoading}
          ranks={ranks}
        />
      )}

      {/* Active Detail Modal popup */}
      {activeDetailItem && (
        <div className="fixed inset-0 z-[100] flex items-center justify-center p-4 bg-slate-950/70 backdrop-blur-md animate-fade-in">
          <div 
            onClick={() => setActiveDetailItem(null)}
            className="absolute inset-0"
          />
          <div className="relative max-w-md w-full bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 p-6 sm:p-8 rounded-3xl shadow-2xl flex flex-col space-y-4 max-h-[85vh] overflow-y-auto text-left select-text">
            {/* Header Banner */}
            <div className={`p-6 -mx-6 sm:-mx-8 -mt-6 sm:-mt-8 text-white text-center flex flex-col items-center justify-center relative rounded-t-3xl ${
              activeDetailItem.type === 'radical' 
                ? 'bg-radical glow-radical' 
                : activeDetailItem.type === 'kanji'
                  ? 'bg-kanji glow-kanji'
                  : 'bg-vocab glow-vocab'
            }`}>
              <button
                onClick={() => setActiveDetailItem(null)}
                className="absolute top-4 right-4 p-1.5 hover:bg-white/20 rounded-lg text-white transition-colors cursor-pointer"
              >
                <X className="w-5 h-5" />
              </button>
              <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10 mb-2 block">
                Detail {
                  activeDetailItem.type === 'radical' 
                    ? 'Radikal' 
                    : activeDetailItem.type === 'kanji'
                      ? 'Kanji'
                      : 'Kosakata'
                }
              </span>
              <h3 className="text-5xl font-black">{activeDetailItem.character}</h3>
              <p className="text-sm font-bold uppercase tracking-wider opacity-90 mt-1">{activeDetailItem.slug}</p>
            </div>

            {/* Meanings */}
            <div className="space-y-1">
              <h4 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Arti Karakter</h4>
              <div className="flex flex-wrap items-baseline gap-2 mt-1">
                <span className="text-lg font-bold text-teal-600 dark:text-teal-400 capitalize">
                  {activeDetailItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || activeDetailItem.slug}
                </span>
                {(() => {
                  const primaryMean = activeDetailItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || activeDetailItem.slug;
                  const other = activeDetailItem.item_meanings
                    ?.filter((m: any) => m.meaning.toLowerCase().trim() !== primaryMean.toLowerCase().trim())
                    .map((m: any) => m.meaning) || [];
                  if (other.length === 0) return null;
                  return (
                    <span className="text-xs font-semibold text-slate-400 dark:text-slate-500 capitalize">
                      / {other.join(', ')}
                    </span>
                  );
                })()}
              </div>
            </div>

            {/* Readings (Vocab / Kanji only) */}
            {activeDetailItem.type !== 'radical' && (
              <div className="space-y-1">
                <h4 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Cara Baca</h4>
                <div className="flex flex-wrap gap-1.5 mt-1.5">
                  {activeDetailItem.item_readings?.map((r: any, idx: number) => (
                    <span
                      key={idx}
                      className={`px-2 py-0.5 text-xs font-black rounded-lg ${r.primary_reading
                        ? 'bg-indigo-600 text-white shadow-sm'
                        : 'bg-slate-200 dark:bg-slate-800 text-slate-700 dark:text-slate-355'
                      }`}
                    >
                      {r.reading} {r.reading_type && `(${r.reading_type})`}
                    </span>
                  ))}
                </div>
              </div>
            )}

            {/* Meaning Mnemonic */}
            {activeDetailItem.meaning_mnemonic && (
              <div className="p-4 bg-teal-50 dark:bg-teal-950/20 border border-teal-100 dark:border-teal-900/50 rounded-2xl">
                <h4 className="text-xxs font-bold text-teal-700 dark:text-teal-405 uppercase tracking-widest block select-none">Mnemonic (Arti)</h4>
                <p className="text-teal-900 dark:text-teal-100 text-xs mt-1.5 leading-relaxed">{activeDetailItem.meaning_mnemonic}</p>
              </div>
            )}

            {/* Reading Mnemonic (Vocab / Kanji only) */}
            {activeDetailItem.type !== 'radical' && activeDetailItem.reading_mnemonic && (
              <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl">
                <h4 className="text-xxs font-bold text-indigo-700 dark:text-indigo-405 uppercase tracking-widest block select-none">Mnemonic (Cara Baca)</h4>
                <p className="text-indigo-900 dark:text-indigo-300 text-xs mt-1.5 leading-relaxed">{activeDetailItem.reading_mnemonic}</p>
              </div>
            )}

            {/* Description */}
            {activeDetailItem.description && (
              <div className="space-y-1">
                <h4 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">Deskripsi Tambahan</h4>
                <p className="text-slate-655 dark:text-slate-350 text-xs leading-relaxed">{activeDetailItem.description}</p>
              </div>
            )}

            {/* Kanji usage for radical section in active detail */}
            {activeDetailItem.type === 'radical' && (
              <div className="animate-fade-in space-y-1.5">
                <button
                  type="button"
                  onClick={() => setIsActiveKanjiUsageOpen(!isActiveKanjiUsageOpen)}
                  className="flex items-center space-x-1.5 text-xxs font-bold text-slate-405 dark:text-slate-500 uppercase tracking-widest hover:text-slate-600 dark:hover:text-slate-300 select-none cursor-pointer focus:outline-none"
                >
                  <span>Kanji yang Menggunakan Radikal Ini</span>
                  {isActiveKanjiUsageOpen ? (
                    <ChevronDown className="w-3 h-3 text-slate-400" />
                  ) : (
                    <ChevronRight className="w-3 h-3 text-slate-400" />
                  )}
                </button>
                {isActiveKanjiUsageOpen && (
                  <div className="mt-1.5">
                    {loadingActiveDetails ? (
                      <div className="flex items-center space-x-2 text-xs text-slate-400 select-none py-2">
                        <Loader2 className="w-3.5 h-3.5 animate-spin text-slate-400" />
                        <span>Memuat kanji terkait...</span>
                      </div>
                    ) : activeKanjiUsage.length > 0 ? (
                      <div className="grid grid-cols-1 sm:grid-cols-2 gap-1.5 mt-1.5 animate-fade-in max-h-[160px] overflow-y-auto pr-1">
                        {activeKanjiUsage.map(kanjiItem => {
                          const primaryMean = kanjiItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || kanjiItem.slug || '';
                          const primaryRead = kanjiItem.item_readings?.find((r: any) => r.primary_reading)?.reading || '';
                          return (
                            <button
                              key={kanjiItem.id}
                              type="button"
                              onClick={() => setActiveDetailItem(kanjiItem)}
                              className="flex items-center justify-between p-2 bg-slate-50 hover:bg-slate-100 dark:bg-slate-800/40 dark:hover:bg-slate-700/50 border border-slate-200/50 dark:border-slate-800 rounded-xl cursor-pointer transition-all duration-205 text-left text-xs"
                            >
                              <div className="flex flex-col">
                                <span className="text-sm font-bold text-slate-800 dark:text-slate-100 leading-tight">{kanjiItem.character}</span>
                                <span className="text-[10px] text-slate-400 dark:text-slate-500 leading-none">{primaryRead}</span>
                              </div>
                              <span className="text-[10px] font-medium text-slate-600 dark:text-slate-355 capitalize text-right max-w-[100px] truncate">{primaryMean}</span>
                            </button>
                          );
                        })}
                      </div>
                    ) : (
                      <p className="text-xs text-slate-400 italic py-1">Tidak ada kanji terkait.</p>
                    )}
                  </div>
                )}
              </div>
            )}

            {/* Composition section in active detail */}
            {activeDetailItem.type === 'kanji' && (
              <div className="space-y-1.5">
                <button
                  type="button"
                  onClick={() => setIsActiveCompositionOpen(!isActiveCompositionOpen)}
                  className="flex items-center space-x-1.5 text-xxs font-bold text-slate-405 dark:text-slate-500 uppercase tracking-widest hover:text-slate-600 dark:hover:text-slate-300 select-none cursor-pointer focus:outline-none"
                >
                  <span>Komposisi Kanji</span>
                  {isActiveCompositionOpen ? (
                    <ChevronDown className="w-3 h-3 text-slate-400" />
                  ) : (
                    <ChevronRight className="w-3 h-3 text-slate-400" />
                  )}
                </button>
                {isActiveCompositionOpen && (
                  <div className="mt-1.5">
                    {loadingActiveDetails ? (
                      <div className="flex items-center space-x-2 text-xs text-slate-400 select-none py-2">
                        <Loader2 className="w-3.5 h-3.5 animate-spin text-slate-400" />
                        <span>Memuat komposisi...</span>
                      </div>
                    ) : activeComposition.length > 0 ? (
                      <div className="flex flex-wrap gap-1.5 animate-fade-in max-h-[160px] overflow-y-auto pr-1">
                        {activeComposition.map(compItem => {
                          const primaryMean = compItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || compItem.slug || '';
                          return (
                            <button
                              key={compItem.id}
                              type="button"
                              onClick={() => setActiveDetailItem(compItem)}
                              className="flex items-center space-x-1.5 px-2.5 py-1 bg-slate-50 hover:bg-slate-105 dark:bg-slate-800/40 dark:hover:bg-slate-700/50 border border-slate-200/50 dark:border-slate-800 rounded-xl cursor-pointer transition-all duration-205 text-left text-xs"
                            >
                              <span className="text-sm font-bold text-teal-600 dark:text-teal-400 leading-tight">{compItem.character}</span>
                              <span className="text-[10px] text-slate-500 dark:text-slate-400 capitalize">{primaryMean}</span>
                            </button>
                          );
                        })}
                      </div>
                    ) : (
                      <p className="text-xs text-slate-400 italic py-1">Tidak ada data komposisi.</p>
                    )}
                  </div>
                )}
              </div>
            )}

            {/* Vocabulary usage section in active detail */}
            {activeDetailItem.type === 'kanji' && (
              <div className="animate-fade-in space-y-1.5">
                <button
                  type="button"
                  onClick={() => setIsActiveVocabUsageOpen(!isActiveVocabUsageOpen)}
                  className="flex items-center space-x-1.5 text-xxs font-bold text-slate-405 dark:text-slate-500 uppercase tracking-widest hover:text-slate-600 dark:hover:text-slate-300 select-none cursor-pointer focus:outline-none"
                >
                  <span>Kosakata yang Menggunakan Kanji Ini</span>
                  {isActiveVocabUsageOpen ? (
                    <ChevronDown className="w-3 h-3 text-slate-400" />
                  ) : (
                    <ChevronRight className="w-3 h-3 text-slate-400" />
                  )}
                </button>
                {isActiveVocabUsageOpen && (
                  <div className="mt-1.5">
                    {loadingActiveDetails ? (
                      <div className="flex items-center space-x-2 text-xs text-slate-400 select-none py-2">
                        <Loader2 className="w-3.5 h-3.5 animate-spin text-slate-400" />
                        <span>Memuat kosakata...</span>
                      </div>
                    ) : activeVocabUsage.length > 0 ? (
                      <div className="grid grid-cols-1 sm:grid-cols-2 gap-1.5 mt-1.5 animate-fade-in max-h-[160px] overflow-y-auto pr-1">
                        {activeVocabUsage.map(vocabItem => {
                          const primaryMean = vocabItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || vocabItem.slug || '';
                          const primaryRead = vocabItem.item_readings?.find((r: any) => r.primary_reading)?.reading || '';
                          return (
                            <button
                              key={vocabItem.id}
                              type="button"
                              onClick={() => setActiveDetailItem(vocabItem)}
                              className="flex items-center justify-between p-2 bg-slate-55 hover:bg-slate-100 dark:bg-slate-800/40 dark:hover:bg-slate-700/50 border border-slate-200/50 dark:border-slate-800 rounded-xl cursor-pointer transition-all duration-205 text-left text-xs"
                            >
                              <div className="flex flex-col">
                                <span className="text-sm font-bold text-slate-800 dark:text-slate-100 leading-tight">{vocabItem.character}</span>
                                <span className="text-[10px] text-slate-400 dark:text-slate-500 leading-none">{primaryRead}</span>
                              </div>
                              <span className="text-[10px] font-medium text-slate-600 dark:text-slate-355 capitalize text-right max-w-[100px] truncate">{primaryMean}</span>
                            </button>
                          );
                        })}
                      </div>
                    ) : (
                      <p className="text-xs text-slate-400 italic py-1">Tidak ada kosakata terkait.</p>
                    )}
                  </div>
                )}
              </div>
            )}

            {/* Close button */}
            <div className="pt-2">
              <button
                type="button"
                onClick={() => setActiveDetailItem(null)}
                className="w-full py-2.5 bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-200 font-extrabold rounded-xl text-xs transition-colors cursor-pointer"
              >
                Tutup Detail
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
