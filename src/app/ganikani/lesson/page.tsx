'use client';

import React, { useState, useEffect, useRef } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import * as wanakana from 'wanakana';
import { supabase } from '@/lib/supabase';
import { Item } from '@/lib/types';
import {
  getGanikaniLessonQueue,
  completeGanikaniLesson,
} from '@/services/ganikaniService';
import { formatMoraLabel } from '@/lib/moraCounter';
import { PartOfSpeechBadge, PartOfSpeechList } from '@/components/ui/PartOfSpeechBadge';
import AudioPlayerButton from '@/components/audio/AudioPlayerButton';
import FormattedText from '@/components/FormattedText';
import GanikaniFrontCard from '@/components/ganikani/GanikaniFrontCard';
import GanikaniInfoDrawer from '@/components/ganikani/GanikaniInfoDrawer';
import CrabBackground from '@/components/CrabBackground';
import { useSwipeGesture } from '@/hooks/useSwipeGesture';
import {
  ArrowLeft,
  ArrowRight,
  BookOpen,
  CheckCircle2,
  HelpCircle,
  RotateCcw,
  Sparkles,
  Loader2,
  Eye,
  Home,
  Languages,
  XCircle,
} from 'lucide-react';

export default function GanikaniLessonPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [userId, setUserId] = useState<string | null>(null);
  const [items, setItems] = useState<Item[]>([]);
  const [phase, setPhase] = useState<'slide' | 'quiz' | 'completed'>('slide');

  // Slide Phase States
  const [currentSlideIndex, setCurrentSlideIndex] = useState(0);
  const [slideTab, setSlideTab] = useState<'info' | 'mnemonic' | 'context'>('info');

  // Reset tab when slide changes
  useEffect(() => {
    setSlideTab('info');
  }, [currentSlideIndex]);

  // Mobile swipe gestures for learn phase
  const swipeHandlers = useSwipeGesture({
    onSwipeLeft: () => {
      if (currentSlideIndex < items.length - 1) {
        setCurrentSlideIndex((prev) => prev + 1);
      }
    },
    onSwipeRight: () => {
      if (currentSlideIndex > 0) {
        setCurrentSlideIndex((prev) => prev - 1);
      }
    },
  });

  // Quiz Phase States
  const [quizQueue, setQuizQueue] = useState<Item[]>([]);
  const [requeuedItems, setRequeuedItems] = useState<Item[]>([]);
  const [activeQuizItem, setActiveQuizItem] = useState<Item | null>(null);
  const [completedItemIds, setCompletedItemIds] = useState<string[]>([]);
  const [userInput, setUserInput] = useState('');
  const [isAnswerSubmitted, setIsAnswerSubmitted] = useState(false);
  const [isCorrect, setIsCorrect] = useState(false);
  const [showItemInfo, setShowItemInfo] = useState(false);
  const [savingLesson, setSavingLesson] = useState(false);

  const inputRef = useRef<HTMLInputElement>(null);

  const loadLessons = async () => {
    setLoading(true);
    try {
      const {
        data: { user },
      } = await supabase.auth.getUser();

      if (!user) {
        router.push('/login');
        return;
      }

      setUserId(user.id);
      const queue = await getGanikaniLessonQueue(user.id, 5);
      setItems(queue);
      setCurrentSlideIndex(0);
      setPhase('slide');
    } catch (err) {
      console.error('Error fetching lessons:', err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    loadLessons();
  }, []);

  // Keyboard navigation for Slide Phase
  useEffect(() => {
    if (phase !== 'slide') return;

    const handleKeyDown = (e: KeyboardEvent) => {
      if (e.key === 'ArrowRight' || e.key === 'Enter') {
        if (currentSlideIndex < items.length - 1) {
          setCurrentSlideIndex((prev) => prev + 1);
        } else if (currentSlideIndex === items.length - 1) {
          startQuizPhase();
        }
      } else if (e.key === 'ArrowLeft') {
        if (currentSlideIndex > 0) {
          setCurrentSlideIndex((prev) => prev - 1);
        }
      }
    };

    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [phase, currentSlideIndex, items.length]);

  // Focus input on Quiz Phase
  useEffect(() => {
    if (phase === 'quiz' && !isAnswerSubmitted) {
      inputRef.current?.focus();
    }
  }, [phase, activeQuizItem, isAnswerSubmitted]);

  const startQuizPhase = () => {
    const shuffled = [...items].sort(() => Math.random() - 0.5);
    setQuizQueue(shuffled.slice(1));
    setActiveQuizItem(shuffled[0] || null);
    setRequeuedItems([]);
    setCompletedItemIds([]);
    setUserInput('');
    setIsAnswerSubmitted(false);
    setIsCorrect(false);
    setPhase('quiz');
  };

  // Global keyboard shortcuts for Quiz Phase (Enter to submit/advance, Backspace to redo)
  useEffect(() => {
    if (phase !== 'quiz') return;

    const handleKeyDown = (e: KeyboardEvent) => {
      if (showItemInfo) {
        const isInputField =
          e.target instanceof HTMLInputElement || e.target instanceof HTMLTextAreaElement;
        if (!isInputField && (e.key.toLowerCase() === 'f' || e.key === 'Escape')) {
          e.preventDefault();
          setShowItemInfo(false);
        }
        return;
      }

      // Jika fokus sedang di input, input onKeyDown yang menangani secara eksklusif
      if (e.target === inputRef.current) return;

      if (e.key === 'Enter') {
        e.preventDefault();
        handleQuizAction();
      } else if (e.key === 'Backspace' && isAnswerSubmitted && !isCorrect) {
        e.preventDefault();
        handleRedo();
      } else if (e.key.toLowerCase() === 'f' && isAnswerSubmitted) {
        e.preventDefault();
        setShowItemInfo(true);
      }
    };

    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [phase, isAnswerSubmitted, isCorrect, showItemInfo, activeQuizItem, quizQueue, requeuedItems, userInput]);

  // Submit Answer in Quiz Phase
  const handleQuizSubmit = () => {
    if (!activeQuizItem || isAnswerSubmitted) return;

    const trimmed = userInput.trim();
    if (!trimmed) return;

    const kanaInput = wanakana.toKana(trimmed);
    const accepted = (activeQuizItem.accepted_readings || []).map((r) => r.trim());
    const match = accepted.includes(kanaInput) || accepted.includes(trimmed);

    setIsCorrect(match);
    setIsAnswerSubmitted(true);
  };

  const handleQuizAction = () => {
    if (!isAnswerSubmitted) {
      handleQuizSubmit();
    } else {
      handleQuizNext();
    }
  };

  // Next Card in Quiz Phase
  const handleQuizNext = async () => {
    if (!activeQuizItem) return;

    let nextQueue = [...quizQueue];
    let nextRequeued = [...requeuedItems];
    let nextCompleted = [...completedItemIds];

    if (isCorrect) {
      if (!nextCompleted.includes(activeQuizItem.id)) {
        nextCompleted.push(activeQuizItem.id);
      }
    } else {
      nextRequeued.push(activeQuizItem);
    }

    setCompletedItemIds(nextCompleted);

    // Check if session finished
    if (nextQueue.length === 0 && nextRequeued.length === 0) {
      // Completed all items in lesson!
      if (userId && items.length > 0) {
        setSavingLesson(true);
        try {
          await completeGanikaniLesson(
            userId,
            items.map((i) => i.id)
          );
        } catch (err) {
          console.error('Error completing lesson:', err);
        } finally {
          setSavingLesson(false);
        }
      }
      setPhase('completed');
      return;
    }

    // Advance to next active item
    let nextActive: Item | null = null;
    if (nextQueue.length > 0) {
      nextActive = nextQueue[0];
      nextQueue = nextQueue.slice(1);
    } else if (nextRequeued.length > 0) {
      const reshuffled = [...nextRequeued].sort(() => Math.random() - 0.5);
      nextActive = reshuffled[0];
      nextQueue = reshuffled.slice(1);
      nextRequeued = [];
    }

    setQuizQueue(nextQueue);
    setRequeuedItems(nextRequeued);
    setActiveQuizItem(nextActive);
    setUserInput('');
    setIsAnswerSubmitted(false);
    setIsCorrect(false);
  };

  const handleRedo = () => {
    setUserInput('');
    setIsAnswerSubmitted(false);
    setIsCorrect(false);
    inputRef.current?.focus();
  };

  if (loading) {
    return (
      <div className="flex-1 flex items-center justify-center p-8">
        <Loader2 className="w-8 h-8 animate-spin text-amber-500" />
      </div>
    );
  }

  // Empty Queue Screen
  if (items.length === 0 && phase !== 'completed') {
    return (
      <div className="max-w-xl mx-auto w-full px-4 py-16 text-center space-y-6">
        <div className="w-16 h-16 rounded-3xl bg-amber-500/10 border border-amber-500/20 text-amber-500 flex items-center justify-center mx-auto text-3xl">
          🦀
        </div>
        <div className="space-y-2">
          <h2 className="text-2xl font-black text-text-primary">
            Tidak Ada Lesson Tersedia
          </h2>
          <p className="text-text-secondary text-sm leading-relaxed">
            Semua kosakata yang memenuhi syarat sudah kamu pelajari di GaniKani, atau belum ada kosakata baru di KaniGani yang mencapai tingkat Guru.
          </p>
        </div>
        <div className="pt-4 flex flex-col sm:flex-row items-center justify-center gap-3">
          <Link
            href="/ganikani"
            className="w-full sm:w-auto px-6 py-3 rounded-2xl bg-amber-500 hover:bg-amber-600 text-white font-bold text-sm transition-all shadow-sm"
          >
            Kembali ke Dashboard
          </Link>
          <Link
            href="/ganikani/settings"
            className="w-full sm:w-auto px-6 py-3 rounded-2xl bg-card-muted hover:bg-card text-text-secondary hover:text-text-primary border border-card-border font-bold text-sm transition-all shadow-xs"
          >
            Ubah Ambang Batas
          </Link>
        </div>
      </div>
    );
  }

  // Completed Celebration Screen
  if (phase === 'completed') {
    return (
      <div className="max-w-xl mx-auto w-full px-4 py-16 text-center space-y-8 animate-fade-in">
        <div className="w-20 h-20 rounded-3xl bg-emerald-500/10 border border-emerald-500/30 text-emerald-500 flex items-center justify-center mx-auto shadow-lg shadow-emerald-500/10">
          <CheckCircle2 className="w-10 h-10" />
        </div>

        <div className="space-y-2">
          <h2 className="text-3xl font-black text-text-primary tracking-tight">
            Lesson Selesai!
          </h2>
          <p className="text-text-secondary text-sm">
            {items.length} kosakata baru berhasil diaktifkan ke dalam sistem SRS GaniKani (Stage 1 / Apprentice 1). Ulasan pertamamu akan siap dalam 4 jam ke depan.
          </p>
        </div>

        {/* List of learned items */}
        <div className="p-4 rounded-2xl bg-card border border-card-border flex flex-wrap justify-center gap-3">
          {items.map((item) => (
            <div
              key={item.id}
              className="px-3 py-1.5 rounded-xl bg-card-muted border border-card-border flex items-center space-x-2"
            >
              <span className="text-lg font-bold text-text-primary">
                {item.character}
              </span>
              <span className="text-xs text-amber-500 font-semibold">
                {item.primary_reading}
              </span>
            </div>
          ))}
        </div>

        <div className="pt-4 flex flex-col sm:flex-row items-center justify-center gap-3">
          <button
            onClick={loadLessons}
            className="w-full sm:w-auto px-6 py-3.5 rounded-2xl bg-amber-500 hover:bg-amber-600 text-white font-bold text-sm transition-all shadow-md shadow-amber-500/20 cursor-pointer"
          >
            Lanjut Lesson Berikutnya
          </button>
          <Link
            href="/ganikani"
            className="w-full sm:w-auto px-6 py-3.5 rounded-2xl bg-card-muted hover:bg-card text-text-secondary hover:text-text-primary border border-card-border font-bold text-sm transition-all shadow-xs"
          >
            Ke Dashboard GaniKani
          </Link>
        </div>
      </div>
    );
  }

  // ==========================================
  // PHASE 1: SLIDE PRESENTATION (Batch 5 Items)
  // ==========================================
  if (phase === 'slide') {
    const item = items[currentSlideIndex];
    const moraLabel = formatMoraLabel(item.primary_reading);

    return (
      <div className="min-h-screen flex flex-col relative transition-colors duration-300">
        <CrabBackground />
        <main className="flex-1 max-w-4xl w-full mx-auto px-4 flex flex-col items-center justify-start pt-2 pb-6 sm:pb-12">
          <div
            {...swipeHandlers}
            className="w-full bg-card rounded-3xl border border-card-border shadow-xl overflow-hidden flex flex-col min-h-[500px] touch-pan-y transition-colors duration-200 animate-fade-in"
          >
            {/* Header Hero Banner with Integrated Navbar */}
            <div className="relative pt-16 pb-10 px-6 flex flex-col items-center justify-center text-center bg-gradient-to-b from-amber-500/10 via-card-muted/50 to-card border-b border-card-border">
              {/* Absolute Top Bar */}
              <div className="absolute top-4 left-4 right-4 flex items-center justify-between text-text-primary select-none w-[calc(100%-2rem)]">
                <button
                  type="button"
                  onClick={() => {
                    if (confirm('Apakah Anda yakin ingin keluar dari sesi pembelajaran? Progres lesson belum disimpan.')) {
                      router.push('/ganikani');
                    }
                  }}
                  title="Kembali ke Dashboard GaniKani"
                  className="flex items-center justify-center text-text-muted hover:text-text-primary hover:scale-105 active:scale-95 transition-all w-8 h-8 rounded-lg hover:bg-card-muted cursor-pointer"
                >
                  <Home className="w-5 h-5" />
                </button>

                <div className="text-xs sm:text-sm font-bold text-text-secondary">
                  Lesson ({currentSlideIndex + 1}/{items.length})
                </div>
              </div>

              {/* Badges: POS & Mora */}
              <div className="flex flex-wrap items-center justify-center gap-2 mb-4">
                {item.parts_of_speech && item.parts_of_speech.length > 0 ? (
                  item.parts_of_speech.slice(0, 2).map((pos, idx) => (
                    <PartOfSpeechBadge key={idx} item={pos} size="sm" />
                  ))
                ) : (
                  <span className="text-xs px-2.5 py-0.5 rounded-full font-medium bg-card-muted text-text-muted border border-card-border">
                    Kosakata
                  </span>
                )}
                {moraLabel && (
                  <span className="inline-flex items-center text-xs font-bold px-2.5 py-0.5 rounded-full bg-amber-500/10 text-amber-500 dark:text-amber-400 border border-amber-500/25">
                    {moraLabel}
                  </span>
                )}
              </div>

              {/* Big Kanji Character */}
              <h1 className="text-6xl sm:text-7xl font-black text-text-primary tracking-wide text-center">
                {item.character}
              </h1>

              {/* Kana Reading + Audio Player */}
              <div className="flex items-center justify-center space-x-3 mt-3">
                <span className="text-2xl sm:text-3xl font-black text-amber-500 dark:text-amber-400 tracking-wider">
                  {item.primary_reading}
                </span>
                {item.audios && item.audios.length > 0 && (
                  <AudioPlayerButton audios={item.audios} variant="compact" />
                )}
              </div>

              {/* Meaning */}
              <p className="text-lg sm:text-xl font-bold tracking-wide mt-3 uppercase text-text-secondary">
                {item.primary_meaning}
              </p>
            </div>

            {/* Explanation Navigation Tabs */}
            <div className="flex border-b border-card-border bg-card-muted/50 select-none">
              <button
                type="button"
                onClick={() => setSlideTab('info')}
                className={`flex-1 py-3.5 text-center text-xs sm:text-sm font-bold border-b-2 transition-colors cursor-pointer flex items-center justify-center space-x-1.5 ${
                  slideTab === 'info'
                    ? 'border-amber-500 text-amber-500 bg-card'
                    : 'border-transparent text-text-muted hover:text-text-primary'
                }`}
              >
                <BookOpen className="w-4 h-4" />
                <span>Info</span>
              </button>

              <button
                type="button"
                onClick={() => setSlideTab('mnemonic')}
                className={`flex-1 py-3.5 text-center text-xs sm:text-sm font-bold border-b-2 transition-colors cursor-pointer flex items-center justify-center space-x-1.5 ${
                  slideTab === 'mnemonic'
                    ? 'border-amber-500 text-amber-500 bg-card'
                    : 'border-transparent text-text-muted hover:text-text-primary'
                }`}
              >
                <Sparkles className="w-4 h-4" />
                <span>Mnemonic</span>
              </button>

              <button
                type="button"
                onClick={() => setSlideTab('context')}
                className={`flex-1 py-3.5 text-center text-xs sm:text-sm font-bold border-b-2 transition-colors cursor-pointer flex items-center justify-center space-x-1.5 ${
                  slideTab === 'context'
                    ? 'border-amber-500 text-amber-500 bg-card'
                    : 'border-transparent text-text-muted hover:text-text-primary'
                }`}
              >
                <Languages className="w-4 h-4" />
                <span>Kalimat Contoh</span>
              </button>
            </div>

            {/* Tab Body */}
            <div className="p-6 flex-1 text-left space-y-6">
              {slideTab === 'info' && (
                <div className="space-y-6 animate-fade-in">
                  <div>
                    <span className="text-xxs font-extrabold text-text-muted uppercase tracking-widest block mb-1">
                      Arti Utama
                    </span>
                    <p className="text-xl font-bold text-text-primary capitalize">
                      {item.primary_meaning}
                    </p>
                    {item.meanings && item.meanings.length > 1 && (
                      <p className="text-xs text-text-secondary mt-1">
                        Alternatif:{' '}
                        {item.meanings
                          .filter((m) => !m.primary_meaning)
                          .map((m) => m.meaning)
                          .join(', ')}
                      </p>
                    )}
                  </div>

                  {item.parts_of_speech && item.parts_of_speech.length > 0 && (
                    <div>
                      <span className="text-xxs font-extrabold text-text-muted uppercase tracking-widest block mb-2">
                        Jenis Kata (Part of Speech)
                      </span>
                      <PartOfSpeechList partsOfSpeech={item.parts_of_speech} size="sm" />
                    </div>
                  )}
                </div>
              )}

              {slideTab === 'mnemonic' && (
                <div className="space-y-4 animate-fade-in">
                  {item.reading_mnemonic ? (
                    <div className="p-4 rounded-2xl bg-indigo-500/10 border border-indigo-500/20 space-y-1">
                      <span className="text-xxs font-extrabold text-indigo-400 uppercase tracking-widest block">
                        Mnemonic Bacaan (Reading)
                      </span>
                      <div className="text-sm text-text-primary leading-relaxed">
                        <FormattedText text={item.reading_mnemonic} />
                      </div>
                    </div>
                  ) : (
                    <p className="text-xs text-text-muted italic">Tidak ada mnemonic bacaan khusus.</p>
                  )}

                  {item.meaning_mnemonic && (
                    <div className="p-4 rounded-2xl bg-emerald-500/10 border border-emerald-500/20 space-y-1">
                      <span className="text-xxs font-extrabold text-emerald-400 uppercase tracking-widest block">
                        Mnemonic Arti (Meaning)
                      </span>
                      <div className="text-sm text-text-primary leading-relaxed">
                        <FormattedText text={item.meaning_mnemonic} />
                      </div>
                    </div>
                  )}
                </div>
              )}

              {slideTab === 'context' && (
                <div className="space-y-4 animate-fade-in">
                  {item.context_sentences && item.context_sentences.length > 0 ? (
                    <div className="space-y-3">
                      <span className="text-xxs font-extrabold text-text-muted uppercase tracking-widest block">
                        Contoh Kalimat ({item.context_sentences.length})
                      </span>
                      <div className="space-y-2">
                        {item.context_sentences.map((sent, idx) => (
                          <div
                            key={idx}
                            className="p-3.5 rounded-2xl bg-card-muted/60 border border-card-border space-y-1"
                          >
                            <p className="text-base font-semibold text-text-primary">
                              {sent.japanese}
                            </p>
                            <p className="text-xs text-text-secondary">
                              {sent.indonesian}
                            </p>
                          </div>
                        ))}
                      </div>
                    </div>
                  ) : (
                    <p className="text-xs text-text-muted italic">Belum ada contoh kalimat untuk item ini.</p>
                  )}
                </div>
              )}
            </div>

            {/* Bottom Navigation Buttons */}
            <div className="p-4 sm:p-6 border-t border-card-border bg-card-muted/30 flex items-center justify-between gap-4 select-none">
              <button
                type="button"
                onClick={() => setCurrentSlideIndex((prev) => Math.max(0, prev - 1))}
                disabled={currentSlideIndex === 0}
                className={`flex items-center space-x-1.5 px-5 py-3 rounded-2xl font-bold text-xs transition-all cursor-pointer ${
                  currentSlideIndex === 0
                    ? 'opacity-30 pointer-events-none text-text-muted'
                    : 'bg-card-muted hover:bg-card border border-card-border text-text-primary active:scale-95'
                }`}
              >
                <ArrowLeft className="w-4 h-4" />
                <span>Sebelumnya</span>
              </button>

              {currentSlideIndex < items.length - 1 ? (
                <button
                  type="button"
                  onClick={() => setCurrentSlideIndex((prev) => prev + 1)}
                  className="flex items-center space-x-1.5 px-6 py-3 rounded-2xl bg-amber-500 hover:bg-amber-600 text-white font-bold text-xs transition-all shadow-md shadow-amber-500/20 active:scale-95 cursor-pointer"
                >
                  <span>Selanjutnya</span>
                  <ArrowRight className="w-4 h-4" />
                </button>
              ) : (
                <button
                  type="button"
                  onClick={startQuizPhase}
                  className="flex items-center space-x-1.5 px-6 py-3 rounded-2xl bg-indigo-600 hover:bg-indigo-700 text-white font-bold text-xs transition-all shadow-md shadow-indigo-600/20 active:scale-95 cursor-pointer animate-pulse"
                >
                  <span>Mulai Kuis Lesson ({items.length} Item)</span>
                  <ArrowRight className="w-4 h-4" />
                </button>
              )}
            </div>
          </div>
        </main>
      </div>
    );
  }

  // ==========================================
  // PHASE 2: QUIZ PHASE (Reverse Testing)
  // ==========================================
  if (phase === 'quiz' && activeQuizItem) {
    return (
      <div className="min-h-screen flex flex-col relative transition-colors duration-300">
        <CrabBackground />
        <main className="flex-1 max-w-4xl w-full mx-auto px-4 flex flex-col items-center justify-start pt-2 pb-6 sm:pb-12">
          <div className="w-full bg-card rounded-3xl border border-card-border shadow-xl overflow-hidden animate-fade-in min-h-[420px] flex flex-col justify-start">
            {/* Top Hero Banner with Integrated Header Bar */}
            <div className="relative pt-16 pb-8 flex flex-col items-center justify-center bg-gradient-to-b from-card-muted/70 to-card border-b border-card-border">
              {/* Integrated Top Bar */}
              <div className="absolute top-4 left-4 right-4 flex items-center justify-between text-text-primary select-none w-[calc(100%-2rem)] z-10">
                <button
                  type="button"
                  onClick={() => {
                    if (confirm('Apakah Anda yakin ingin keluar? Progres kuis lesson ini belum disimpan.')) {
                      router.push('/ganikani');
                    }
                  }}
                  title="Kembali ke Dashboard GaniKani"
                  className="flex items-center justify-center text-text-muted hover:text-text-primary hover:scale-105 active:scale-95 transition-all w-8 h-8 rounded-lg hover:bg-card-muted cursor-pointer"
                >
                  <Home className="w-5 h-5" />
                </button>

                <div className="flex items-center space-x-2">
                  <span className="text-xs font-black uppercase tracking-widest px-2.5 py-0.5 rounded-lg bg-indigo-500/15 text-indigo-500 dark:text-indigo-400 border border-indigo-500/30">
                    Kuis Lesson
                  </span>
                  <span className="text-xs font-bold text-text-secondary px-2 py-0.5 rounded-lg bg-card-muted border border-card-border">
                    Sisa: {quizQueue.length + 1}
                  </span>
                </div>
              </div>

              {/* Front Card Content (Meaning -> Kana) */}
              <GanikaniFrontCard
                item={activeQuizItem}
                isAnswerSubmitted={isAnswerSubmitted}
                isCorrect={isCorrect}
                showKanjiRevealed={isCorrect}
                className="py-0 px-4"
              />
            </div>

            {/* Prompt Strip */}
            <div className="w-full py-2.5 border-b border-card-border flex items-center justify-center text-xs font-semibold tracking-wider uppercase select-none bg-card-muted/60 text-text-secondary">
              <span>Ketik Cara Baca <span className="font-black text-text-primary">Kosakata</span> (Kana)</span>
            </div>

            {/* Input Area with Integrated Arrow Submit Button */}
            <div className="pt-6 pb-2 px-4 sm:px-8 flex flex-col items-center space-y-4 w-full">
              <div className="w-full max-w-md relative select-none mx-auto">
                <input
                  ref={inputRef}
                  type="text"
                  placeholder={
                    isAnswerSubmitted
                      ? isCorrect
                        ? 'Benar! Tekan Enter untuk lanjut'
                        : 'Salah! Tekan Enter untuk lanjut atau Undo'
                      : 'Ketik bacaan Kana (romaji otomatis)...'
                  }
                  value={userInput}
                  onChange={(e) => {
                    if (!isAnswerSubmitted) {
                      setUserInput(wanakana.toKana(e.target.value, { IMEMode: true }));
                    }
                  }}
                  onKeyDown={(e) => {
                    if (e.key === 'Enter') {
                      e.preventDefault();
                      e.stopPropagation();
                      handleQuizAction();
                    } else if (e.key === 'Backspace' && isAnswerSubmitted && !isCorrect) {
                      e.preventDefault();
                      e.stopPropagation();
                      handleRedo();
                    } else if (e.key.toLowerCase() === 'f' && isAnswerSubmitted) {
                      e.preventDefault();
                      e.stopPropagation();
                      setShowItemInfo((prev) => !prev);
                    }
                  }}
                  readOnly={isAnswerSubmitted}
                  className={`w-full py-3.5 pl-6 pr-14 rounded-2xl text-center text-lg font-bold border shadow-xs transition-all focus:outline-none focus:ring-2 focus:ring-amber-500/50 focus:border-transparent ${
                    isAnswerSubmitted
                      ? isCorrect
                        ? 'bg-emerald-500/15 border-emerald-500 text-emerald-600 dark:text-emerald-400'
                        : 'bg-rose-500/15 border-rose-500 text-rose-600 dark:text-rose-400'
                      : 'bg-card border-card-border text-text-primary'
                  }`}
                  autoComplete="off"
                  autoCorrect="off"
                  autoCapitalize="off"
                  spellCheck="false"
                />

                {/* Integrated Submit Action Button inside the input box */}
                <button
                  type="button"
                  disabled={!isAnswerSubmitted && userInput.trim() === ''}
                  onClick={handleQuizAction}
                  className={`absolute right-2 top-1/2 -translate-y-1/2 w-10 h-10 flex items-center justify-center rounded-xl shadow-xs transition-all duration-200 active:scale-95 disabled:opacity-20 disabled:cursor-not-allowed z-10 ${
                    isAnswerSubmitted
                      ? isCorrect
                        ? 'bg-emerald-500 hover:bg-emerald-600 text-white shadow-md cursor-pointer'
                        : 'bg-rose-500 hover:bg-rose-600 text-white shadow-md cursor-pointer'
                      : 'bg-amber-500 hover:bg-amber-600 text-white shadow-md shadow-amber-500/20 cursor-pointer'
                  }`}
                  title={isAnswerSubmitted ? 'Lanjut (Enter)' : 'Kirim Jawaban (Enter)'}
                >
                  {savingLesson ? (
                    <Loader2 className="w-5 h-5 animate-spin" />
                  ) : (
                    <ArrowRight className="w-5 h-5" />
                  )}
                </button>
              </div>
            </div>

            {/* Action Buttons Row (Mobile Thumb Zone directly below Input) */}
            <div className="flex justify-center items-center gap-3.5 w-full max-w-md mx-auto pt-1 pb-3 select-none z-10 self-center">
              {/* Redo Button */}
              <button
                type="button"
                disabled={!isAnswerSubmitted}
                onClick={handleRedo}
                title="Salah ketik? Ulangi kartu ini (Backspace)"
                className="w-12 h-12 flex items-center justify-center rounded-2xl border border-card-border bg-card text-text-secondary hover:bg-card-muted shadow-xs transition-all duration-200 active:scale-90 cursor-pointer disabled:opacity-30 disabled:cursor-not-allowed"
              >
                <RotateCcw className="w-5 h-5" />
              </button>

              {/* Eye Button (Toggle Info Drawer) */}
              <button
                type="button"
                disabled={!isAnswerSubmitted}
                onClick={() => setShowItemInfo((prev) => !prev)}
                title={
                  isAnswerSubmitted
                    ? 'Buka Info Detail (F)'
                    : 'Info detail tersedia setelah menjawab'
                }
                className={`w-12 h-12 flex items-center justify-center rounded-2xl border shadow-xs transition-all duration-200 active:scale-90 cursor-pointer disabled:opacity-30 disabled:cursor-not-allowed ${
                  showItemInfo
                    ? 'bg-indigo-600 border-indigo-600 text-white shadow-md'
                    : 'bg-card border-card-border text-text-secondary hover:bg-card-muted'
                }`}
              >
                <Eye className="w-5 h-5" />
              </button>
            </div>

            {/* Inline Answer Feedback */}
            {isAnswerSubmitted && (
              <div
                className={`p-4 text-center text-sm border-t font-semibold ${
                  isCorrect
                    ? 'bg-emerald-500/10 border-emerald-500/20 text-emerald-600 dark:text-emerald-400'
                    : 'bg-rose-500/10 border-rose-500/20 text-rose-600 dark:text-rose-400'
                }`}
              >
                <div className="max-w-md mx-auto flex flex-col items-center justify-center space-y-1">
                  {isCorrect ? (
                    <div className="flex items-center space-x-2">
                      <CheckCircle2 className="w-4 h-4 text-emerald-500 shrink-0" />
                      <span>Benar! Tekan Enter atau tombol panah untuk lanjut.</span>
                    </div>
                  ) : (
                    <div className="flex flex-col items-center space-y-1">
                      <div className="flex items-center space-x-1.5 text-rose-600 dark:text-rose-400 font-bold">
                        <XCircle className="w-4 h-4 shrink-0" />
                        <span>Jawaban Salah!</span>
                      </div>
                      <span className="font-extrabold text-xs sm:text-sm tracking-wide">
                        Jawaban benar: {activeQuizItem.primary_reading} {activeQuizItem.character ? `(${activeQuizItem.character})` : ''}
                      </span>
                    </div>
                  )}
                </div>
              </div>
            )}
          </div>
        </main>

        {/* Info Drawer Modal */}
        <GanikaniInfoDrawer
          item={activeQuizItem}
          isOpen={showItemInfo}
          onClose={() => setShowItemInfo(false)}
          onReadingSynonymAdded={(syn) => {
            const inputKana = wanakana.toHiragana(userInput.trim());
            if (inputKana === syn) {
              setIsCorrect(true);
              setIsAnswerSubmitted(true);
            }
          }}
        />
      </div>
    );
  }

  return null;
}
