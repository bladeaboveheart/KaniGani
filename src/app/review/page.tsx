'use client';

import { useEffect, useState, useRef } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { useQuizStore } from '@/store/useQuizStore';
import { Item } from '@/lib/types';
import * as wanakana from 'wanakana';
import CrabBackground from '@/components/CrabBackground';
import {
  ArrowLeft, ArrowRight, Flame, CheckCircle,
  HelpCircle, Eye, RefreshCw, XCircle, Award, Hourglass, AlertCircle
} from 'lucide-react';

export default function ReviewPage() {
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
    wrongCounts,
    itemProgress,
    wrapUpActive,
    isAlmostCorrect,
    closestAcceptedMeaning,
    warningMsg,
    showItemInfo,
    sessionTotalCards,
    setUserInput,
    submitAnswer,
    proceedNext,
    toggleItemInfo,
    toggleWrapUp,
    initializeSession,
    resetStore
  } = useQuizStore();

  const [loading, setLoading] = useState(true);
  const [phase, setPhase] = useState<'quiz' | 'summary'>('quiz');
  const [totalItemsCount, setTotalItemsCount] = useState(0);

  // Melacak item yang sudah berhasil disubmit ke server
  const [submittedItemIds, setSubmittedItemIds] = useState<string[]>([]);
  const [accuracyStats, setAccuracyStats] = useState({ correct: 0, wrong: 0 });

  const inputRef = useRef<HTMLInputElement>(null);

  // Fetch reviews due
  useEffect(() => {
    async function loadReviews() {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          router.push('/');
          return;
        }

        const now = new Date().toISOString();

        // Ambil item review jatuh tempo (srs_stage >= 1 dan <= 8 dan next_review <= now)
        const { data, error } = await supabase
          .from('user_progress')
          .select('item_id, srs_stage, next_review, items(*)')
          .eq('user_id', user.id)
          .gte('srs_stage', 1)
          .lte('srs_stage', 8)
          .lte('next_review', now);

        if (error) throw error;
        if (!data || data.length === 0) {
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

        setTotalItemsCount(itemsWithDetails.length);
        initializeSession(itemsWithDetails, 'review');

      } catch (err) {
        console.error('Error loading reviews:', err);
      } finally {
        setLoading(false);
      }
    }

    loadReviews();
    return () => resetStore();
  }, [router, resetStore]);

  // Handle WanaKana conversion
  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    let value = e.target.value;
    if (activeCard && activeCard.cardType === 'reading') {
      value = wanakana.toKana(value, { IMEMode: true });
    }
    setUserInput(value);
  };

  // Submit on Enter
  const handleKeyDown = (e: React.KeyboardEvent<HTMLInputElement>) => {
    if (e.key === 'Enter') {
      e.preventDefault();
      if (!isAnswerSubmitted) {
        if (userInput.trim() !== '') {
          submitAnswer();
        }
      } else {
        handleProceedNext();
      }
    }
  };

  // Proceed and securely submit completed items progressively on-the-fly
  const handleProceedNext = async () => {
    if (!activeCard) return;

    const itemId = activeCard.itemId;
    const isCorrectCurrent = isCorrect;

    // Panggil store proceedNext
    proceedNext();

    // Cek di store setelah state berubah apakah item sudah selesai (Meaning & Reading terjawab benar)
    setTimeout(async () => {
      const state = useQuizStore.getState();
      const prog = state.itemProgress[itemId];

      if (prog && prog.meaningCorrect && prog.readingCorrect && !submittedItemIds.includes(itemId)) {
        // Tandai sebagai disubmit
        setSubmittedItemIds(prev => [...prev, itemId]);

        // Kirim progres ke server secara on-the-fly
        try {
          const { data: { session } } = await supabase.auth.getSession();
          const token = session?.access_token;

          const wrongCount = state.wrongCounts[itemId] || 0;

          // Track accuracy stats
          setAccuracyStats(prev => ({
            correct: prev.correct + (wrongCount === 0 ? 1 : 0),
            wrong: prev.wrong + (wrongCount > 0 ? 1 : 0)
          }));

          await fetch('/api/quiz/submit', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
              'Authorization': `Bearer ${token}`
            },
            body: JSON.stringify({ itemId, wrongCount })
          });

        } catch (err) {
          console.error('Error progressively submitting review item:', err);
        }
      }
    }, 50);
  };

  // Auto focus input (skip on mobile to avoid keyboard popups and scroll jumping)
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
      if ((e.key === 'f' || e.key === 'F') && isAnswerSubmitted) {
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
  }, [isAnswerSubmitted, toggleItemInfo]);

  // Selesai sesi review jika queue kosong
  useEffect(() => {
    if (!loading && phase === 'quiz' && queue.length === 0 && totalItemsCount > 0) {
      setPhase('summary');
    }
  }, [queue, phase, loading, totalItemsCount]);

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center relative overflow-hidden bg-slate-55 text-slate-900 dark:bg-slate-100">
        <CrabBackground />
        <div className="flex flex-col items-center space-y-4">
          <div className="w-12 h-12 border-4 border-pink-500 border-t-transparent rounded-full animate-spin"></div>
          <p className="font-semibold text-sm">Menyiapkan berkas review kuis Anda...</p>
        </div>
      </div>
    );
  }

  // Jika review kosong
  if (totalItemsCount === 0 && phase !== 'summary') {
    return (
      <div className="min-h-screen flex flex-col items-center justify-center relative overflow-hidden bg-slate-55 dark:bg-slate-950 px-4">
        <CrabBackground />
        <div className="max-w-md w-full text-center bg-white dark:bg-slate-900 p-8 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl space-y-6">
          <Flame className="w-16 h-16 mx-auto text-pink-500 animate-bounce" />
          <h2 className="text-2xl font-black">Semua Bersih! 🔥</h2>
          <p className="text-sm text-slate-500 dark:text-slate-400">
            Hebat! Tidak ada item review yang jatuh tempo saat ini. Silakan kembali ke dashboard atau pelajari lesson baru Anda.
          </p>
          <button
            onClick={() => router.push('/dashboard')}
            className="w-full py-3 bg-pink-500 text-white font-bold rounded-2xl shadow-md hover:bg-pink-650 transition-colors"
          >
            Kembali ke Dashboard
          </button>
        </div>
      </div>
    );
  }

  const getItemColorClass = (type: string) => {
    if (type === 'radical') return 'bg-radical-gradient border-radical/20 glow-radical';
    if (type === 'kanji') return 'bg-kanji-gradient border-kanji/20 glow-kanji';
    return 'bg-vocab-gradient border-vocab/20 glow-vocab';
  };

  const getItemBadgeName = (type: string) => {
    if (type === 'radical') return 'Radikal';
    if (type === 'kanji') return 'Kanji';
    return 'Kosakata';
  };

  const getReadingPrompt = () => {
    if (!activeCard) return '';
    if (activeCard.type === 'vocabulary') {
      return 'Apa bacaan karakter ini?';
    }
    if (activeCard.type === 'kanji') {
      const readings = activeCard.item.readings || [];
      const primaryReadingObj = readings.find(r => r.primary_reading);
      const expectedType = primaryReadingObj?.reading_type; // 'onyomi' | 'kunyomi'
      if (expectedType === 'onyomi') {
        return 'Apa bacaan Onyomi karakter ini?';
      }
      if (expectedType === 'kunyomi') {
        return 'Apa bacaan Kunyomi karakter ini?';
      }
    }
    return 'Apa bacaan karakter Jepang ini?';
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

  // Hitung persentase progres sesi kuis
  const remainingCards = queue.length;
  const progressPct = sessionTotalCards > 0 ? Math.min(100, Math.max(0, Math.round(((sessionTotalCards - remainingCards) / sessionTotalCards) * 100))) : 0;

  return (
    <div className="min-h-screen flex flex-col relative overflow-hidden bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <CrabBackground />

      {/* Header bar */}
      <div className="w-full bg-slate-900 border-b border-slate-800 text-white py-4 px-4 sm:px-6">
        <div className="max-w-4xl mx-auto flex items-center justify-between">
          <button
            onClick={() => {
              if (confirm('Apakah Anda yakin ingin keluar? Semua item yang telah selesai dijawab BENAR KEDUA KARTUNYA sudah otomatis tersimpan progresnya secara aman di server.')) {
                router.push('/dashboard');
              }
            }}
            className="flex items-center space-x-1 text-slate-400 hover:text-white transition-colors text-sm font-semibold"
          >
            <ArrowLeft className="w-4 h-4" />
            <span>Simpan & Keluar</span>
          </button>

          <div className="text-center">
            <span className="text-xs font-bold text-pink-400 tracking-widest uppercase">Sesi Review</span>
            <h2 className="text-sm font-black">
              {phase === 'quiz'
                ? `Kuis Review (${remainingCards} kartu sisa)`
                : 'Review Selesai'}
            </h2>
          </div>

          {/* Wrap Up button */}
          {phase === 'quiz' && (remainingCards > 10 || wrapUpActive) ? (
            <button
              onClick={() => {
                toggleWrapUp();
              }}
              className={`flex items-center space-x-1.5 px-3 py-1.5 text-xs font-bold rounded-xl border transition-all ${wrapUpActive
                  ? 'bg-amber-500 hover:bg-amber-600 border-amber-500 text-white shadow-sm'
                  : 'bg-indigo-600 hover:bg-indigo-500 border-indigo-500 text-indigo-50 shadow-sm animate-pulse'
                }`}
            >
              <Hourglass className="w-3.5 h-3.5" />
              <span>{wrapUpActive ? 'Batal Wrap-Up' : 'Wrap Up (10)'}</span>
            </button>
          ) : (
            <div className="w-20"></div>
          )}
        </div>
      </div>

      {/* Main Core Review */}
      <main className="flex-1 max-w-4xl w-full mx-auto px-4 flex flex-col items-center justify-start pt-0 pb-8 transition-all duration-300">

        {/* PHASE 1: QUIZ REVIEW SESSION */}
        {phase === 'quiz' && activeCard && (
          <div className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden animate-fade-in min-h-[420px] flex flex-col justify-between">

            {/* Header Colorful Character */}
            <div className={`py-12 flex flex-col items-center justify-center text-white ${getItemColorClass(activeCard.type)}`}>
              <span className="text-xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-md px-3 py-1 rounded-full border border-white/10 mb-4">
                {getItemBadgeName(activeCard.type)}
              </span>
              <h1 className="text-7xl font-black tracking-tight">{activeCard.character}</h1>
            </div>

            {/* Prompt & Inputs */}
            <div className="p-6 sm:p-8 flex-1 flex flex-col justify-center items-center space-y-6">

              <div className="text-center">
                <span className="text-xxs font-extrabold uppercase tracking-widest text-slate-400 dark:text-slate-500">Kuis Review</span>
                <h3 className="text-lg font-extrabold text-slate-700 dark:text-slate-350 mt-1">
                  {activeCard.cardType === 'meaning'
                    ? 'Apa arti karakter ini?'
                    : getReadingPrompt()}
                </h3>
              </div>

              <div className="w-full max-w-sm relative">
                <input
                  ref={inputRef}
                  type="text"
                  placeholder={
                    activeCard.cardType === 'meaning'
                      ? 'Ketik arti di sini...'
                      : 'Ketik bacaan (Romaji/Kana)...'
                  }
                  value={userInput}
                  onChange={handleInputChange}
                  onKeyDown={handleKeyDown}
                  readOnly={isAnswerSubmitted && !incorrectActive}
                  className={`w-full py-3.5 px-5 rounded-2xl text-center text-lg font-bold border transition-all ${warningMsg
                      ? 'bg-amber-50 dark:bg-amber-950/20 border-amber-500 text-amber-700 dark:text-amber-400 animate-shake focus:ring-amber-500'
                      : isAnswerSubmitted
                        ? isCorrect
                          ? 'bg-emerald-50 dark:bg-emerald-950/20 border-emerald-500 text-emerald-600 dark:text-emerald-400'
                          : 'bg-rose-50 dark:bg-rose-950/20 border-rose-500 text-rose-600 dark:text-rose-400 animate-shake'
                        : 'bg-slate-50 dark:bg-slate-950 border-slate-200 dark:border-slate-850 text-slate-800 dark:text-slate-100 focus:ring-2 focus:ring-indigo-500 focus:border-transparent focus:outline-none'
                    }`}
                  autoComplete="off"
                  autoCorrect="off"
                  autoCapitalize="off"
                  spellCheck="false"
                />

                {activeCard.cardType === 'reading' && (
                  <span className="absolute right-4 top-1/2 -translate-y-1/2 text-4xs font-bold px-2 py-0.5 bg-indigo-500 text-white rounded-md tracking-wider">
                    Kana
                  </span>
                )}
              </div>

              {warningMsg && (
                <div className="w-full max-w-sm p-4 bg-amber-50 dark:bg-amber-950/30 border border-amber-250 dark:border-amber-900/50 text-xs font-bold text-amber-700 dark:text-amber-400 rounded-2xl animate-fade-in flex items-center space-x-2">
                  <AlertCircle className="w-4 h-4 shrink-0 animate-bounce text-amber-500" />
                  <span>{warningMsg}</span>
                </div>
              )}

              <div className="flex space-x-3 w-full max-w-sm">
                {!isAnswerSubmitted ? (
                  <button
                    disabled={userInput.trim() === ''}
                    onClick={submitAnswer}
                    className="w-full py-3.5 bg-slate-900 dark:bg-white text-white dark:text-slate-900 font-bold rounded-2xl text-sm shadow-md hover:opacity-90 transition-opacity disabled:opacity-30 disabled:cursor-not-allowed"
                  >
                    Kirim Jawaban (Enter)
                  </button>
                ) : (
                  <button
                    onClick={handleProceedNext}
                    className={`w-full py-3.5 font-bold rounded-2xl text-sm shadow-md transition-opacity flex items-center justify-center space-x-2 ${isCorrect
                        ? 'bg-emerald-500 hover:bg-emerald-600 text-white'
                        : 'bg-rose-500 hover:bg-rose-600 text-white'
                      }`}
                  >
                    <span>
                      {incorrectActive ? 'Ketik ulang sampai betul baru lanjut!' : 'Kartu Berikutnya (Enter)'}
                    </span>
                    <ArrowRight className="w-4 h-4" />
                  </button>
                )}
              </div>

              {isAnswerSubmitted && (
                <button
                  onClick={() => toggleItemInfo()}
                  className="px-4 py-2 bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 text-slate-750 dark:text-slate-300 font-bold rounded-xl text-xs flex items-center space-x-1.5 transition-colors border border-slate-200 dark:border-slate-700 shadow-sm"
                >
                  <Eye className="w-4 h-4" />
                  <span>{showItemInfo ? 'Sembunyikan Info (F)' : 'Tampilkan Info Detail (F)'}</span>
                </button>
              )}

            </div>

            {/* Answer Feedbacks */}
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
              <div className="border-t border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-900/50 p-6 sm:p-8 animate-fade-in space-y-6 text-sm leading-relaxed text-left">

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

            {/* Progress bar inside session */}
            <div className="w-full bg-slate-100 dark:bg-slate-850 h-2">
              <div
                className="bg-indigo-500 h-full transition-all duration-300"
                style={{ width: `${progressPct}%` }}
              ></div>
            </div>

          </div>
        )}

        {/* PHASE 2: SUMMARY SCREEN */}
        {phase === 'summary' && (
          <div className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden animate-fade-in p-8 sm:p-10 space-y-8 text-center max-w-md">

            <div className="space-y-3">
              <Flame className="w-16 h-16 mx-auto text-pink-500 animate-bounce" />
              <h2 className="text-3xl font-black">Review Selesai! 🔥</h2>
              <p className="text-sm text-slate-500 dark:text-slate-400">
                Hebat! Anda telah menyelesaikan seluruh antrean kuis review jatuh tempo Anda dengan sukses.
              </p>
            </div>

            {/* Accuracy & Stats */}
            <div className="grid grid-cols-2 gap-4">
              <div className="p-4 bg-slate-50 dark:bg-slate-950 border border-slate-100 dark:border-slate-850 rounded-2xl text-center">
                <span className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Akurasi Sesi</span>
                <span className="text-2xl font-black text-indigo-500">
                  {accuracyStats.correct + accuracyStats.wrong > 0
                    ? Math.round((accuracyStats.correct / (accuracyStats.correct + accuracyStats.wrong)) * 100)
                    : 100}%
                </span>
              </div>
              <div className="p-4 bg-slate-50 dark:bg-slate-950 border border-slate-100 dark:border-slate-850 rounded-2xl text-center">
                <span className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Item Selesai</span>
                <span className="text-2xl font-black text-indigo-500">
                  {submittedItemIds.length} / {totalItemsCount}
                </span>
              </div>
            </div>

            <div className="p-4 bg-emerald-50 dark:bg-emerald-950/20 border border-emerald-100 dark:border-emerald-900/50 rounded-2xl text-xs text-emerald-600 dark:text-emerald-400">
              <CheckCircle className="w-5 h-5 text-emerald-500 mx-auto mb-2" />
              <span>Semua progres kuis Anda telah disinkronkan dan disimpan dengan aman secara server-side di database Supabase!</span>
            </div>

            <button
              onClick={() => router.push('/dashboard')}
              className="w-full py-3.5 bg-pink-500 hover:bg-pink-600 text-white font-bold rounded-2xl text-sm shadow-md transition-colors"
            >
              Kembali ke Dashboard
            </button>

          </div>
        )}

      </main>
    </div>
  );
}
