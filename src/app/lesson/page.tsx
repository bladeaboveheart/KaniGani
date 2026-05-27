'use client';

import { useEffect, useState, useRef, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { useQuizStore } from '@/store/useQuizStore';
import { Item, ItemMeaning, ItemReading, ItemContextSentence } from '@/lib/types';
import * as wanakana from 'wanakana';
import CrabBackground from '@/components/CrabBackground';
import {
  ArrowLeft, ArrowRight, BookOpen, CheckCircle,
  HelpCircle, Eye, RefreshCw, XCircle, Award, AlertCircle,
  Home, Check, Inbox, Clock, RotateCcw
} from 'lucide-react';

export default function LessonPage() {
  const router = useRouter();

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
    setUserInput,
    submitAnswer,
    proceedNext,
    toggleItemInfo,
    initializeSession,
    resetStore
  } = useQuizStore();

  // Lesson states
  const [lessons, setLessons] = useState<Item[]>([]);
  const [loading, setLoading] = useState(true);
  const [phase, setPhase] = useState<'learn' | 'quiz' | 'summary'>('learn');
  const [currentBatch, setCurrentBatch] = useState<Item[]>([]);
  const [itemIndex, setItemIndex] = useState(0); // Index item di batch aktif
  const [activeTab, setActiveTab] = useState<'info' | 'mnemonic' | 'sentences'>('info');

  const inputRef = useRef<HTMLInputElement>(null);

  const currentItem = currentBatch[itemIndex];

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

        // Ambil item dengan srs_stage = 1 & next_review = null
        const { data, error } = await supabase
          .from('user_progress')
          .select('item_id, srs_stage, unlocked_at, items(*)')
          .eq('user_id', user.id)
          .eq('srs_stage', 1)
          .is('next_review', null);

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

        // Gabungkan detail
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

        // Urutkan berdasarkan level & lesson_position
        itemsWithDetails.sort((a, b) => a.lesson_position - b.lesson_position);

        setLessons(itemsWithDetails);

        // Ambil batch 5 item pertama
        const batch = itemsWithDetails.slice(0, 5);
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
  }, [router, resetStore]);

  // Handle WanaKana conversion on input change
  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    let value = e.target.value;
    if (activeCard && activeCard.cardType === 'reading') {
      // Ubah ketikan Romaji ke Hiragana secara real-time
      value = wanakana.toKana(value, { IMEMode: true });
    }
    setUserInput(value);
  };

  // Keyboard controls
  const handleKeyDown = (e: React.KeyboardEvent<HTMLInputElement>) => {
    if (e.key === 'Enter') {
      e.preventDefault();
      if (!isAnswerSubmitted) {
        // Enter 1: Submit jawaban
        if (userInput.trim() !== '') {
          submitAnswer();
        }
      } else {
        // Enter 2: Lanjut ke kartu berikutnya
        proceedNext();
      }
    }
  };

  // Focus input automatically (skip on mobile to avoid keyboard popups and scroll jumping)
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

  // Hotkey 'f' untuk toggle detail info item setelah submit jawaban
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

  // Keyboard controls for learning phase (ArrowLeft and ArrowRight)
  useEffect(() => {
    const handleLearnKeyDown = (e: KeyboardEvent) => {
      if (phase !== 'learn') return;

      // Skip keydown actions if user is typing in an input/textarea element
      const isInputActive = document.activeElement?.tagName === 'INPUT' || document.activeElement?.tagName === 'TEXTAREA';
      if (isInputActive) return;

      if (e.key === 'ArrowLeft') {
        e.preventDefault();
        const hasMnemonic = currentItem && currentItem.type !== 'radical';
        
        if (hasMnemonic && activeTab !== 'info') {
          // Switch back to 'info' tab first if not already there
          setActiveTab('info');
        } else {
          // Go to previous card if already on 'info' tab
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
          // 1st press opens 'Cara Baca' tab
          setActiveTab('mnemonic');
        } else {
          // 2nd press (or if radical / already on cara baca) goes to next card or starts quiz
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



  // Selesaikan kuis batch lesson
  const completeBatch = async () => {
    setLoading(true);
    try {
      const { data: { session } } = await supabase.auth.getSession();
      const token = session?.access_token;

      const itemIds = currentBatch.map(i => i.id);

      const res = await fetch('/api/lesson/complete', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify({ itemIds })
      });

      if (!res.ok) {
        throw new Error('Gagal menyimpan hasil lesson di server.');
      }

      setPhase('summary');
    } catch (err) {
      console.error(err);
      alert('Terjadi kesalahan saat menyimpan data kuis.');
    } finally {
      setLoading(false);
    }
  };

  // Pemicu perpindahan kuis setelah selesai kuis batch
  useEffect(() => {
    if (phase === 'quiz' && queue.length === 0 && currentBatch.length > 0) {
      completeBatch();
    }
  }, [phase, queue, currentBatch]);

  // Lanjut ke batch berikutnya
  const handleNextBatch = () => {
    const remainingLessons = lessons.slice(currentBatch.length);
    if (remainingLessons.length > 0) {
      const nextBatch = remainingLessons.slice(0, 5);
      // Update lessons list
      setLessons(remainingLessons);
      setCurrentBatch(nextBatch);
      setItemIndex(0);
      setPhase('learn');
      setActiveTab('info');
      resetStore();
    } else {
      router.push('/dashboard');
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center relative overflow-hidden bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100">
        <CrabBackground />
        <div className="flex flex-col items-center space-y-4">
          <div className="w-12 h-12 border-4 border-teal-500 border-t-transparent rounded-full animate-spin"></div>
          <p className="font-semibold text-sm">Menyiapkan materi pembelajaran...</p>
        </div>
      </div>
    );
  }

  // Jika lesson kosong
  if (lessons.length === 0 && phase !== 'summary') {
    return (
      <div className="min-h-screen flex flex-col items-center justify-center relative overflow-hidden bg-slate-55 dark:bg-slate-950 px-4">
        <CrabBackground />
        <div className="max-w-md w-full text-center bg-white dark:bg-slate-900 p-8 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl space-y-6">
          <BookOpen className="w-16 h-16 mx-auto text-teal-500 animate-bounce" />
          <h2 className="text-2xl font-black">Semua Bersih!</h2>
          <p className="text-sm text-slate-500 dark:text-slate-400">
            Hebat! Tidak ada item lesson baru yang tersedia saat ini. Silakan kembali ke dashboard atau periksa level up prasyarat Anda.
          </p>
          <button
            onClick={() => router.push('/dashboard')}
            className="w-full py-3 bg-teal-500 text-white font-bold rounded-2xl shadow-md hover:bg-teal-600 transition-colors"
          >
            Kembali ke Dashboard
          </button>
        </div>
      </div>
    );
  }



  // Helper styles berdasarkan kategori item
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

  const renderPrompt = () => {
    if (!activeCard) return null;

    if (activeCard.cardType === 'meaning') {
      return (
        <span>
          Apa <span className="px-2 py-0.5 mx-1 rounded-lg bg-teal-100 text-teal-855 dark:bg-teal-950/60 dark:text-teal-350 font-black border border-teal-200/50 dark:border-teal-900/50 shadow-xxs">arti</span> karakter ini?
        </span>
      );
    }

    if (activeCard.type === 'vocabulary') {
      return (
        <span>
          Apa <span className="px-2 py-0.5 mx-1 rounded-lg bg-violet-100 text-violet-855 dark:bg-violet-950/60 dark:text-violet-350 font-black border border-violet-200/50 dark:border-violet-900/50 shadow-xxs">bacaan</span> karakter ini?
        </span>
      );
    }

    if (activeCard.type === 'kanji') {
      const readings = activeCard.item.readings || [];
      const primaryReadingObj = readings.find(r => r.primary_reading);
      const expectedType = primaryReadingObj?.reading_type; // 'onyomi' | 'kunyomi'
      
      if (expectedType === 'onyomi') {
        return (
          <span>
            Apa <span className="px-2 py-0.5 mx-1 rounded-lg bg-indigo-100 text-indigo-855 dark:bg-indigo-950/60 dark:text-indigo-350 font-black border border-indigo-200/50 dark:border-indigo-900/50 shadow-xxs">bacaan Onyomi</span> karakter ini?
          </span>
        );
      }
      if (expectedType === 'kunyomi') {
        return (
          <span>
            Apa <span className="px-2 py-0.5 mx-1 rounded-lg bg-purple-100 text-purple-855 dark:bg-purple-950/60 dark:text-purple-350 font-black border border-purple-200/50 dark:border-purple-900/50 shadow-xxs">bacaan Kunyomi</span> karakter ini?
          </span>
        );
      }
    }

    return (
      <span>
        Apa <span className="px-2 py-0.5 mx-1 rounded-lg bg-violet-100 text-violet-855 dark:bg-violet-950/60 dark:text-violet-350 font-black border border-violet-200/50 dark:border-violet-900/50 shadow-xxs">bacaan</span> karakter Jepang ini?
      </span>
    );
  };

  const renderWaniKaniPrompt = () => {
    if (!activeCard) return null;
    const isMeaning = activeCard.cardType === 'meaning';

    if (activeCard.type === 'radical') {
      return (
        <span className="select-text">Nama <span className="font-black text-slate-800 dark:text-slate-100">Radikal</span></span>
      );
    }

    if (activeCard.type === 'kanji') {
      if (isMeaning) {
        return (
          <span className="select-text">Arti <span className="font-black text-slate-800 dark:text-slate-100">Kanji</span></span>
        );
      }
      const readings = activeCard.item.readings || [];
      const primaryReadingObj = readings.find(r => r.primary_reading);
      const expectedType = primaryReadingObj?.reading_type; // 'onyomi' | 'kunyomi'
      return expectedType === 'onyomi' ? (
        <span className="select-text">Bacaan Onyomi <span className="font-black text-slate-800 dark:text-slate-100">Kanji</span></span>
      ) : (
        <span className="select-text">Bacaan Kunyomi <span className="font-black text-slate-800 dark:text-slate-100">Kanji</span></span>
      );
    }

    // Vocabulary
    if (isMeaning) {
      return (
        <span className="select-text">Arti <span className="font-black text-slate-800 dark:text-slate-100">Kosakata</span></span>
      );
    }
    return (
      <span className="select-text">Cara Baca <span className="font-black text-slate-800 dark:text-slate-100">Kosakata</span></span>
    );
  };

  const getSrsStageName = (stage: number) => {
    if (stage === 1) return 'Apprentice 1';
    if (stage === 2) return 'Apprentice 2';
    if (stage === 3) return 'Apprentice 3';
    if (stage === 4) return 'Apprentice 4';
    if (stage === 5) return 'Guru 1';
    if (stage === 6) return 'Guru 2';
    if (stage === 7) return 'Master';
    if (stage === 8) return 'Enlightened';
    if (stage === 9) return 'Burned';
    return 'Apprentice 1';
  };

  return (
    <div className="min-h-screen flex flex-col relative overflow-hidden bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <CrabBackground />

      {/* Main Container */}
      <main className="flex-1 max-w-4xl w-full mx-auto px-4 flex flex-col items-center justify-start pt-0 pb-6 sm:pb-12 transition-all duration-300">

        {/* PHASE 1: LEARN (PENGENALAN ITEM SLIDES) */}
        {phase === 'learn' && currentItem && (
          <div className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden animate-fade-in flex flex-col min-h-[500px]">

            {/* Header Colorful Character Card */}
            <div className={`relative pt-16 pb-12 flex flex-col items-center justify-center text-white ${getItemColorClass(currentItem.type)}`}>
              
              {/* Integrated Header Bar Inside the Card (Learn phase) */}
              <div className="absolute top-4 left-4 right-4 flex items-center justify-between text-white select-none w-[calc(100%-2rem)]">
                <button
                  type="button"
                  onClick={() => {
                    if (confirm('Apakah Anda yakin ingin keluar dari sesi pembelajaran? Progres batch ini belum disimpan.')) {
                      router.push('/dashboard');
                    }
                  }}
                  title="Keluar Sesi"
                  className="flex items-center justify-center text-white/80 hover:text-white hover:scale-105 active:scale-95 transition-all w-8 h-8 rounded-lg hover:bg-white/10"
                >
                  <Home className="w-5 h-5" />
                </button>
                
                <div className="text-xs sm:text-sm font-bold text-white/90">
                  Mempelajari batch ({itemIndex + 1}/{currentBatch.length})
                </div>
              </div>

              <span className="text-xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-md px-3 py-1 rounded-full border border-white/10 mb-4 mt-2 select-none">
                {getItemBadgeName(currentItem.type)}
              </span>
              <h1 className="text-7xl font-black tracking-tight select-text text-center">{currentItem.character}</h1>
              <p className="text-lg font-bold tracking-wide mt-4 uppercase opacity-90">{currentItem.slug}</p>
            </div>

            {/* Explanation Navigation Tabs */}
            <div className="flex border-b border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-900/50">
              <button
                onClick={() => setActiveTab('info')}
                className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors ${activeTab === 'info'
                  ? 'border-teal-500 text-teal-500'
                  : 'border-transparent text-slate-500 hover:text-slate-700 dark:hover:text-slate-200'
                  }`}
              >
                Arti & Deskripsi
              </button>

              {currentItem.type !== 'radical' && (
                <button
                  onClick={() => setActiveTab('mnemonic')}
                  className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors ${activeTab === 'mnemonic'
                    ? 'border-teal-500 text-teal-500'
                    : 'border-transparent text-slate-500 hover:text-slate-700 dark:hover:text-slate-200'
                    }`}
                >
                  Cara Baca
                </button>
              )}

              {currentItem.type === 'vocabulary' && (
                <button
                  onClick={() => setActiveTab('sentences')}
                  className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors ${activeTab === 'sentences'
                    ? 'border-teal-500 text-teal-500'
                    : 'border-transparent text-slate-500 hover:text-slate-700 dark:hover:text-slate-200'
                    }`}
                >
                  Contoh Kalimat
                </button>
              )}
            </div>

            {/* Tab Explanation Details */}
            <div className="p-6 sm:p-8 flex-1 space-y-6 text-sm leading-relaxed">

              {/* TAB 1: MEANINGS & INFO */}
              {activeTab === 'info' && (
                <div className="space-y-4 animate-fade-in">
                  <div>
                    <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Arti Karakter</h3>
                    <p className="text-xl font-bold text-teal-600 dark:text-teal-400 mt-1 capitalize">
                      {currentItem.primary_meaning}
                    </p>
                  </div>

                  {currentItem.description && (
                    <div>
                      <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Deskripsi Detail</h3>
                      <p className="text-slate-600 dark:text-slate-350 mt-1">{currentItem.description}</p>
                    </div>
                  )}

                  {currentItem.meaning_mnemonic && (
                    <div className="p-4 bg-teal-50 dark:bg-teal-950/20 border border-teal-100 dark:border-teal-900/50 rounded-2xl">
                      <h3 className="text-xs font-bold text-teal-700 dark:text-teal-400 uppercase tracking-widest block">Mnemonic Jembatan Keledai (Arti)</h3>
                      <p className="text-teal-900 dark:text-teal-300 mt-1.5">{currentItem.meaning_mnemonic}</p>
                    </div>
                  )}
                </div>
              )}

              {/* TAB 2: READINGS (KANJI & VOCABULARY ONLY) */}
              {activeTab === 'mnemonic' && currentItem.type !== 'radical' && (
                <div className="space-y-4 animate-fade-in">
                  <div>
                    <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">
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
                      <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block mb-1">Variasi Bacaan Lainnya</h3>
                      <div className="flex flex-wrap gap-2">
                        {currentItem.readings.map((r, idx) => (
                          <span key={idx} className="px-3 py-1 bg-slate-100 dark:bg-slate-800 text-xs font-semibold rounded-lg">
                            {r.reading} {r.reading_type && `(${r.reading_type})`}
                          </span>
                        ))}
                      </div>
                    </div>
                  )}

                  {currentItem.reading_mnemonic && (
                    <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl">
                      <h3 className="text-xs font-bold text-indigo-700 dark:text-indigo-400 uppercase tracking-widest block">Mnemonic Jembatan Keledai (Bacaan)</h3>
                      <p className="text-indigo-900 dark:text-indigo-300 mt-1.5">{currentItem.reading_mnemonic}</p>
                    </div>
                  )}
                </div>
              )}

              {/* TAB 3: CONTEXT SENTENCES (VOCABULARY ONLY) */}
              {activeTab === 'sentences' && currentItem.type === 'vocabulary' && (
                <div className="space-y-6 animate-fade-in">
                  <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Contoh Kalimat Kontekstual</h3>

                  {currentItem.context_sentences && currentItem.context_sentences.length > 0 ? (
                    <div className="space-y-6">
                      {currentItem.context_sentences.map((s, idx) => (
                        <div key={idx} className="p-4 bg-slate-50 dark:bg-slate-950 rounded-2xl border border-slate-100 dark:border-slate-850 space-y-2">
                          <p className="text-lg font-bold text-indigo-500 select-all">{s.japanese}</p>
                          <p className="text-xs text-slate-500 dark:text-slate-400">{s.indonesian}</p>
                        </div>
                      ))}
                    </div>
                  ) : (
                    <p className="text-slate-400">Tidak ada contoh kalimat untuk kosakata ini.</p>
                  )}
                </div>
              )}

            </div>

            {/* Slide Navigation Buttons */}
            <div className="p-4 border-t border-slate-200 dark:border-slate-800 bg-slate-55 dark:bg-slate-900 flex flex-col items-center gap-3 sm:gap-0">

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
                  className="px-4 py-2 bg-slate-100 dark:bg-slate-800 hover:bg-slate-200 text-slate-700 dark:text-slate-350 disabled:opacity-30 disabled:cursor-not-allowed font-bold rounded-xl text-xs flex items-center space-x-1.5 transition-colors shrink-0"
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
                    className="px-5 py-2 bg-teal-500 hover:bg-teal-600 text-white font-bold rounded-xl text-xs flex items-center space-x-1.5 transition-all duration-200 shrink-0"
                  >
                    <span>Berikutnya</span>
                    <ArrowRight className="w-4 h-4" />
                  </button>
                ) : (
                  <button
                    onClick={startQuiz}
                    className="px-5 py-2 bg-teal-500 hover:bg-teal-600 text-white font-bold rounded-xl text-xs flex items-center space-x-1.5 transition-all duration-200 shrink-0"
                  >
                    <span>Mulai Kuis Batch</span>
                    <Award className="w-4 h-4" />
                  </button>
                )}
              </div>
            </div>

          </div>
        )}

        {/* PHASE 2: BATCH QUIZ (ZUSTAND SESSION) */}
        {phase === 'quiz' && activeCard && (
          <div className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden animate-fade-in min-h-[400px] flex flex-col justify-between">

            {/* Header quiz card with colors */}
            <div className={`relative pt-16 pb-12 flex flex-col items-center justify-center text-white ${getItemColorClass(activeCard.type)}`}>
              
              {/* Integrated Header Bar Inside the Card (Quiz phase) */}
              <div className="absolute top-4 left-4 right-4 flex items-center justify-between text-white select-none w-[calc(100%-2rem)]">
                <button
                  type="button"
                  onClick={() => {
                    if (confirm('Keluar dari sesi kuis pembelajaran?')) {
                      router.push('/dashboard');
                    }
                  }}
                  title="Keluar dari Kuis"
                  className="flex items-center justify-center text-white/80 hover:text-white hover:scale-105 active:scale-95 transition-all w-8 h-8 rounded-lg hover:bg-white/10"
                >
                  <Home className="w-5 h-5" />
                </button>
                
                <div className="flex items-center space-x-4 text-xs sm:text-sm font-bold text-white/90 select-none">
                  {/* Completed count */}
                  <div className="flex items-center space-x-1" title="Item Selesai">
                    <Check className="w-4 h-4 text-white/85" />
                    <span>{10 - queue.length}</span>
                  </div>
                  {/* Remaining count */}
                  <div className="flex items-center space-x-1" title="Kartu Tersisa">
                    <Inbox className="w-4 h-4 text-white/85" />
                    <span>{queue.length}</span>
                  </div>
                </div>
              </div>

              <h1 className="text-7xl font-black tracking-tight select-text text-center">{activeCard.character}</h1>
            </div>
     
            {/* Prompt Label (WaniKani style bar right below character) */}
            <div className="w-full py-2.5 bg-slate-100 dark:bg-slate-800 border-y border-slate-200 dark:border-slate-700 flex items-center justify-center text-xs font-semibold text-slate-500 dark:text-slate-300 tracking-wider uppercase select-text">
              {renderWaniKaniPrompt()}
            </div>
     
            {/* Prompt & Input Section */}
            <div className="p-6 sm:p-8 flex-1 flex flex-col justify-center items-center space-y-6">
     
              {/* Input Field with focus and submit events */}
              <div className="w-full max-w-md relative select-none mx-auto">
                <input
                  ref={inputRef}
                  type="text"
                  placeholder={
                    activeCard.cardType === 'meaning'
                      ? 'Ketik arti (bahasa Inggris)...'
                      : 'Ketik bacaan (Romaji/Kana)...'
                  }
                  value={userInput}
                  onChange={handleInputChange}
                  onKeyDown={handleKeyDown}
                  readOnly={isAnswerSubmitted && !incorrectActive}
                  className={`w-full py-3.5 px-14 rounded-2xl text-center text-lg font-bold border shadow-xs transition-all focus:outline-none focus:ring-2 focus:ring-indigo-500/50 focus:border-transparent ${warningMsg
                    ? 'bg-amber-55 dark:bg-amber-950/20 border-amber-500 text-amber-700 dark:text-amber-400 animate-shake'
                    : isAnswerSubmitted
                      ? isCorrect
                        ? 'bg-emerald-50 dark:bg-emerald-950/20 border-emerald-500 text-emerald-600 dark:text-emerald-400'
                        : 'bg-rose-50 dark:bg-rose-950/20 border-rose-500 text-rose-600 dark:text-rose-400 animate-shake'
                      : 'bg-slate-50 dark:bg-slate-950 border-slate-200 dark:border-slate-850 text-slate-800 dark:text-slate-100'
                    }`}
                  autoComplete="off"
                  autoCorrect="off"
                  autoCapitalize="off"
                  spellCheck="false"
                />
     
                {/* Integrated Chevron-Right/Submit Action Button inside the input box */}
                <button
                  type="button"
                  disabled={!isAnswerSubmitted && userInput.trim() === ''}
                  onClick={() => {
                    if (!isAnswerSubmitted) {
                      submitAnswer();
                    } else {
                      proceedNext();
                    }
                    setTimeout(() => {
                      inputRef.current?.focus();
                    }, 20);
                  }}
                  className={`absolute right-2 top-1/2 -translate-y-1/2 w-10 h-10 flex items-center justify-center rounded-xl shadow-xs transition-all duration-250 active:scale-95 disabled:opacity-20 disabled:cursor-not-allowed ${
                    isAnswerSubmitted
                      ? isCorrect
                        ? 'bg-emerald-500 hover:bg-emerald-600 text-white'
                        : 'bg-rose-500 hover:bg-rose-600 text-white'
                      : 'bg-indigo-600 hover:bg-indigo-700 text-white shadow-md shadow-indigo-500/10'
                  }`}
                >
                  <ArrowRight className="w-5 h-5" />
                </button>
              </div>
     
              {warningMsg && (
                <div className="w-full max-w-md p-4 bg-amber-50 dark:bg-amber-950/30 border border-amber-250 dark:border-amber-900/50 text-xs font-bold text-amber-700 dark:text-amber-400 rounded-2xl animate-fade-in flex items-center space-x-2">
                  <AlertCircle className="w-4 h-4 shrink-0 animate-bounce text-amber-500" />
                  <span>{warningMsg}</span>
                </div>
              )}
     
              {/* WaniKani Mobile Style Action Buttons Bar for Lessons */}
              <div className="flex justify-center items-center gap-3.5 w-full max-w-md pt-2 select-none">
                {/* 1. Skip / Exit Session (Home) */}
                <button
                  type="button"
                  onClick={() => {
                    if (confirm('Keluar dari sesi kuis pembelajaran?')) {
                      router.push('/dashboard');
                    }
                  }}
                  title="Keluar dari Kuis"
                  className="w-12 h-12 flex items-center justify-center rounded-2xl border border-slate-200 dark:border-slate-855 bg-white dark:bg-slate-955 text-slate-505 dark:text-slate-400 hover:bg-slate-50 dark:hover:bg-slate-900 shadow-xxs transition-all duration-200 active:scale-90"
                >
                  <Home className="w-5 h-5" />
                </button>
      
                {/* 2. Eye Button (Toggle Info Drawer) */}
                <button
                  type="button"
                  disabled={!isAnswerSubmitted}
                  onClick={() => {
                    toggleItemInfo();
                    setTimeout(() => inputRef.current?.focus(), 20);
                  }}
                  title="Tampilkan Info Detail (F)"
                  className={`w-12 h-12 flex items-center justify-center rounded-2xl border shadow-xxs transition-all duration-200 active:scale-90 ${
                    showItemInfo
                      ? 'bg-indigo-600 border-indigo-600 text-white shadow-md shadow-indigo-500/10'
                      : 'bg-white dark:bg-slate-955 border-slate-200 dark:border-slate-855 text-slate-500 dark:text-slate-400 hover:bg-slate-50 dark:hover:bg-slate-900'
                  } disabled:opacity-30 disabled:cursor-not-allowed`}
                >
                  <Eye className="w-5 h-5" />
                </button>
              </div>

            </div>

            {/* Answer Feedbacks Panel */}
            {showFeedback && (
              <div className={`p-5 text-center text-sm border-t font-semibold ${isCorrect
                ? isAlmostCorrect
                  ? 'bg-amber-500/10 border-amber-500/20 text-amber-700 dark:text-amber-400'
                  : 'bg-emerald-500/10 border-emerald-500/20 text-emerald-600 dark:text-emerald-400'
                : 'bg-rose-500/10 border-rose-500/20 text-rose-600 dark:text-rose-400'
                }`}>
                <div className="max-w-md mx-auto flex items-center justify-center space-x-2">
                  {isCorrect ? (
                    isAlmostCorrect ? (
                      <div className="flex flex-col items-center space-y-1">
                        <div className="flex items-center space-x-2 text-amber-600 dark:text-amber-400">
                          <AlertCircle className="w-5 h-5 shrink-0" />
                          <span className="font-extrabold text-sm">Hampir Benar (Diterima dengan syarat)!</span>
                        </div>
                        <span className="text-xs text-slate-500">
                          Apakah maksud Anda: <span className="font-black text-amber-600 dark:text-amber-400 underline">{closestAcceptedMeaning}</span>?
                        </span>
                      </div>
                    ) : (
                      <>
                        <CheckCircle className="w-5 h-5 text-emerald-500 shrink-0" />
                        <span>Sangat Bagus! Jawaban Anda Benar. <span className="text-xs font-normal opacity-85 ml-1">({getSrsStageName(activeCard.item.srs_stage || 1)})</span></span>
                      </>
                    )
                  ) : (
                    <>
                      <XCircle className="w-5 h-5 text-rose-500 shrink-0" />
                      <div>
                        <span>Jawaban Salah! <span className="text-xs font-normal opacity-85 ml-1">({getSrsStageName(activeCard.item.srs_stage || 1)})</span></span>
                        <span className="font-extrabold block text-sm mt-1 uppercase tracking-wide">
                          Jawaban benar: {
                            activeCard.cardType === 'meaning'
                              ? activeCard.item.accepted_meanings?.join(', ')
                              : activeCard.item.accepted_readings?.join(', ')
                          }
                        </span>
                      </div>
                    </>
                  )}
                </div>
              </div>
            )}

            {/* Sliding Detail Drawer Panel */}
            {showItemInfo && activeCard && (
              <div className="border-t border-slate-200 dark:border-slate-800 bg-slate-55 dark:bg-slate-900/50 p-6 sm:p-8 animate-fade-in space-y-6 text-sm leading-relaxed text-left">

                {/* 1. Meaning Info */}
                <div>
                  <h4 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Arti Karakter</h4>
                  <p className="text-xl font-bold text-teal-600 dark:text-teal-400 mt-1 capitalize">
                    {activeCard.item.primary_meaning}
                  </p>

                  {activeCard.item.meaning_mnemonic && (
                    <div className="p-4 bg-teal-50 dark:bg-teal-950/20 border border-teal-100 dark:border-teal-900/50 rounded-2xl mt-3">
                      <h5 className="text-xs font-bold text-teal-700 dark:text-teal-400 uppercase tracking-widest block">Mnemonic (Arti)</h5>
                      <p className="text-teal-900 dark:text-teal-350 mt-1.5">{activeCard.item.meaning_mnemonic}</p>
                    </div>
                  )}

                  {activeCard.item.description && (
                    <div className="p-4 bg-slate-50 dark:bg-slate-800/40 border border-slate-200/50 dark:border-slate-800 rounded-2xl mt-3">
                      <h5 className="text-xs font-bold text-slate-500 dark:text-slate-400 uppercase tracking-widest block">Deskripsi Detail</h5>
                      <p className="text-slate-700 dark:text-slate-350 mt-1.5">{activeCard.item.description}</p>
                    </div>
                  )}
                </div>

                {/* 2. Reading Info */}
                {activeCard.type !== 'radical' && (() => {
                  const readings = activeCard.item.readings || [];
                  const onyomiList = readings.filter(r => r.reading_type === 'onyomi');
                  const kunyomiList = readings.filter(r => r.reading_type === 'kunyomi');
                  const nanoriList = readings.filter(r => r.reading_type === 'nanori');

                  return (
                    <div className="border-t border-slate-200/50 dark:border-slate-800/50 pt-6 space-y-4">
                      <h4 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">
                        {activeCard.type === 'kanji'
                          ? `Cara Baca Jepang (${activeCard.item.readings?.find((r: any) => r.primary_reading)?.reading_type === 'onyomi'
                            ? 'Onyomi'
                            : 'Kunyomi'
                          })`
                          : 'Cara Baca Jepang (Kana)'}
                      </h4>

                      {activeCard.type === 'kanji' ? (
                        <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 bg-slate-100/55 dark:bg-slate-800/20 p-4 rounded-2xl border border-slate-200/40 dark:border-slate-800/40">
                          <div>
                            <span className="text-xxs font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Onyomi</span>
                            {onyomiList.length > 0 ? (
                              <div className="flex flex-wrap gap-1.5 mt-1.5">
                                {onyomiList.map((r, idx) => (
                                  <span
                                    key={idx}
                                    className={`px-2 py-0.5 text-sm font-black rounded-lg ${r.primary_reading
                                      ? 'bg-indigo-600 text-white shadow-sm'
                                      : 'bg-slate-250 dark:bg-slate-800 text-slate-700 dark:text-slate-350'
                                      }`}
                                  >
                                    {r.reading}
                                  </span>
                                ))}
                              </div>
                            ) : (
                              <span className="text-sm text-slate-400 dark:text-slate-600 italic mt-1.5 block">n/a</span>
                            )}
                          </div>
                          <div>
                            <span className="text-xxs font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Kunyomi</span>
                            {kunyomiList.length > 0 ? (
                              <div className="flex flex-wrap gap-1.5 mt-1.5">
                                {kunyomiList.map((r, idx) => (
                                  <span
                                    key={idx}
                                    className={`px-2 py-0.5 text-sm font-black rounded-lg ${r.primary_reading
                                      ? 'bg-indigo-600 text-white shadow-sm'
                                      : 'bg-slate-250 dark:bg-slate-800 text-slate-700 dark:text-slate-350'
                                      }`}
                                  >
                                    {r.reading}
                                  </span>
                                ))}
                              </div>
                            ) : (
                              <span className="text-sm text-slate-400 dark:text-slate-600 italic mt-1.5 block">n/a</span>
                            )}
                          </div>
                          <div>
                            <span className="text-xxs font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Nanori</span>
                            {nanoriList.length > 0 ? (
                              <div className="flex flex-wrap gap-1.5 mt-1.5">
                                {nanoriList.map((r, idx) => (
                                  <span
                                    key={idx}
                                    className={`px-2 py-0.5 text-sm font-black rounded-lg ${r.primary_reading
                                      ? 'bg-indigo-600 text-white shadow-sm'
                                      : 'bg-slate-250 dark:bg-slate-800 text-slate-700 dark:text-slate-350'
                                      }`}
                                  >
                                    {r.reading}
                                  </span>
                                ))}
                              </div>
                            ) : (
                              <span className="text-sm text-slate-400 dark:text-slate-600 italic mt-1.5 block">n/a</span>
                            )}
                          </div>
                        </div>
                      ) : (
                        <p className="text-2xl font-black text-indigo-600 dark:text-indigo-400 mt-1">
                          {activeCard.item.primary_reading}
                        </p>
                      )}

                      {activeCard.item.reading_mnemonic && (
                        <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl mt-3">
                          <h5 className="text-xs font-bold text-indigo-700 dark:text-indigo-400 uppercase tracking-widest block">Mnemonic (Bacaan)</h5>
                          <p className="text-indigo-900 dark:text-indigo-350 mt-1.5">{activeCard.item.reading_mnemonic}</p>
                        </div>
                      )}
                    </div>
                  )
                })()}

                {/* 3. Sentences Info (Vocabulary only) */}
                {activeCard.type === 'vocabulary' && activeCard.item.context_sentences && activeCard.item.context_sentences.length > 0 && (
                  <div className="border-t border-slate-200/50 dark:border-slate-800/50 pt-6 space-y-4">
                    <h4 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Contoh Kalimat Kontekstual</h4>
                    <div className="space-y-4">
                      {activeCard.item.context_sentences.map((s: any, idx: number) => (
                        <div key={idx} className="p-4 bg-slate-50 dark:bg-slate-950 rounded-2xl border border-slate-100 dark:border-slate-850 space-y-1.5">
                          <p className="text-base font-bold text-indigo-500 select-all">{s.japanese}</p>
                          <p className="text-xs text-slate-500 dark:text-slate-405">{s.indonesian}</p>
                        </div>
                      ))}
                    </div>
                  </div>
                )}

              </div>
            )}

          </div>
        )}

        {/* PHASE 3: SUMMARY (SELESAI BATCH) */}
        {phase === 'summary' && (
          <div className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden animate-fade-in p-8 sm:p-10 space-y-8 text-center max-w-md">

            <div className="space-y-3">
              <Award className="w-16 h-16 mx-auto text-yellow-500 animate-bounce" />
              <h2 className="text-3xl font-black">Batch Selesai! 🦀</h2>
              <p className="text-sm text-slate-500 dark:text-slate-400">
                Luar biasa! Anda telah berhasil mempelajari dan menyelesaikan kuis untuk {currentBatch.length} item baru.
              </p>
            </div>

            {/* SRS Stage changes Info */}
            <div className="p-4 bg-teal-50 dark:bg-teal-950/20 border border-teal-100 dark:border-teal-900/50 rounded-2xl text-xs text-teal-700 dark:text-teal-350">
              <CheckCircle className="w-5 h-5 text-teal-500 mx-auto mb-2" />
              <span>Semua item ini telah terdaftar ke antrean SRS dan akan dijadwalkan untuk review pertama dalam 4 jam dari sekarang.</span>
            </div>

            {/* Decision options: Continue or Quit */}
            <div className="space-y-3 pt-4 border-t border-slate-200 dark:border-slate-800">
              {lessons.length > currentBatch.length ? (
                <button
                  onClick={handleNextBatch}
                  className="w-full py-3.5 bg-teal-500 hover:bg-teal-600 text-white font-bold rounded-2xl text-sm shadow-md hover:shadow-lg flex items-center justify-center space-x-1.5 transition-all duration-200"
                >
                  <RefreshCw className="w-4 h-4 animate-spin" style={{ animationDuration: '4s' }} />
                  <span>Pelajari Batch Berikutnya ({lessons.length - currentBatch.length} sisa)</span>
                </button>
              ) : (
                <div className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest pb-2">
                  🎉 Semua Lesson Tersedia Telah Selesai!
                </div>
              )}

              <button
                onClick={() => router.push('/dashboard')}
                className="w-full py-3.5 bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 text-slate-750 dark:text-slate-300 font-bold rounded-2xl text-sm transition-colors"
              >
                Kembali ke Dashboard
              </button>
            </div>

          </div>
        )}

      </main>
    </div>
  );
}
