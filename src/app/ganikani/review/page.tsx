'use client';

import React, { useState, useEffect, useRef } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import * as wanakana from 'wanakana';
import { supabase } from '@/lib/supabase';
import { Item } from '@/lib/types';
import { isAnyReadingMatch } from '@/lib/kanaHelper';
import {
  getGanikaniReviewQueue,
  getGanikaniSettings,
  submitGanikaniReview,
  GanikaniSettings,
  DEFAULT_GANIKANI_SETTINGS,
} from '@/services/ganikaniService';
import GanikaniFrontCard from '@/components/ganikani/GanikaniFrontCard';
import GanikaniInfoDrawer from '@/components/ganikani/GanikaniInfoDrawer';
import CrabBackground from '@/components/CrabBackground';
import {
  Clock,
  Eye,
  RotateCcw,
  Layers,
  CheckCircle2,
  XCircle,
  ArrowRight,
  Loader2,
  Volume2,
  Home,
  ThumbsUp,
  Check,
  Inbox,
  ArrowUp,
} from 'lucide-react';

const getSrsStageName = (stage: number | undefined | null) => {
  if (!stage) return '';
  if (stage === 1) return 'Pemula 1';
  if (stage === 2) return 'Pemula 2';
  if (stage === 3) return 'Pemula 3';
  if (stage === 4) return 'Pemula 4';
  if (stage === 5) return 'Lulus 1';
  if (stage === 6) return 'Lulus 2';
  if (stage === 7) return 'Mahir';
  if (stage === 8) return 'Ahli';
  if (stage === 9) return 'Tuntas';
  return `Stage ${stage}`;
};

export default function GanikaniReviewPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [userId, setUserId] = useState<string | null>(null);
  const [settings, setSettings] = useState<GanikaniSettings>({
    user_id: '',
    ...DEFAULT_GANIKANI_SETTINGS,
  });

  // Review Queue States (Unbatched)
  const [queue, setQueue] = useState<Item[]>([]);
  const [requeuedItems, setRequeuedItems] = useState<Item[]>([]);
  const [activeItem, setActiveItem] = useState<Item | null>(null);
  const [wrapUpActive, setWrapUpActive] = useState(false);
  const [untrimmedQueue, setUntrimmedQueue] = useState<Item[] | null>(null);

  // Stats Tracking
  const [initialTotal, setInitialTotal] = useState(0);
  const [reviewedItems, setReviewedItems] = useState<
    { item: Item; wrongs: number; newStage?: number }[]
  >([]);
  const [itemWrongs, setItemWrongs] = useState<Record<string, number>>({});

  // Input & Interactive Feedback States
  const [userInput, setUserInput] = useState('');
  const [isAnswerSubmitted, setIsAnswerSubmitted] = useState(false);
  const [isCorrect, setIsCorrect] = useState(false);
  const [currentResultStage, setCurrentResultStage] = useState<number | null>(null);
  const [showItemInfo, setShowItemInfo] = useState(false);
  const [isFinished, setIsFinished] = useState(false);

  const inputRef = useRef<HTMLInputElement>(null);
  const audioRef = useRef<HTMLAudioElement | null>(null);

  // Load reviews & settings
  useEffect(() => {
    async function load() {
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
        const [userSettings, dueItems] = await Promise.all([
          getGanikaniSettings(user.id),
          getGanikaniReviewQueue(user.id),
        ]);

        setSettings(userSettings);

        // Shuffle due items for random presentation
        const shuffled = [...dueItems].sort(() => Math.random() - 0.5);
        setInitialTotal(shuffled.length);

        if (shuffled.length > 0) {
          setActiveItem(shuffled[0]);
          setQueue(shuffled.slice(1));
        } else {
          setActiveItem(null);
          setQueue([]);
        }
      } catch (err) {
        console.error('Error loading Ganikani reviews:', err);
      } finally {
        setLoading(false);
      }
    }

    load();
  }, [router]);

  // Focus input on active item change
  useEffect(() => {
    if (!loading && activeItem && !isAnswerSubmitted) {
      inputRef.current?.focus();
    }
  }, [loading, activeItem, isAnswerSubmitted]);

  // Keyboard Shortcuts Handler
  useEffect(() => {
    if (!settings.keyboard_shortcuts || isFinished) return;

    const handleKeyDown = (e: KeyboardEvent) => {
      // Don't intercept if user is typing inside an open dialog or editor
      if (showItemInfo) {
        const isInputField =
          e.target instanceof HTMLInputElement || e.target instanceof HTMLTextAreaElement;
        if (!isInputField && (e.key.toLowerCase() === 'f' || e.key === 'Escape')) {
          e.preventDefault();
          setShowItemInfo(false);
          return;
        }
      }

      // Jika fokus sedang di input, input onKeyDown yang menangani secara eksklusif
      if (e.target === inputRef.current) return;

      // Enter or ArrowRight Shortcut to advance when answer submitted
      if (e.key === 'Enter' || (e.key === 'ArrowRight' && isAnswerSubmitted)) {
        e.preventDefault();
        handleReviewAction();
      }

      // Wrap Up Shortcut (W)
      if (e.key.toLowerCase() === 'w') {
        e.preventDefault();
        toggleWrapUp();
      }

      // Info Drawer Shortcut (F) - hanya saat jawaban sudah disubmit
      if (e.key.toLowerCase() === 'f' && isAnswerSubmitted) {
        e.preventDefault();
        setShowItemInfo((prev) => !prev);
      }

      // Redo Shortcut (Backspace when answer is wrong)
      if (e.key === 'Backspace' && isAnswerSubmitted && !isCorrect) {
        e.preventDefault();
        handleRedo();
      }
    };

    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [settings.keyboard_shortcuts, isFinished, showItemInfo, isAnswerSubmitted, isCorrect, userInput, activeItem, queue, requeuedItems]);

  // Toggle Wrap Up
  const toggleWrapUp = () => {
    setWrapUpActive((prev) => {
      const next = !prev;
      if (next) {
        // Wrap Up ON: clear future reserve queue, only finish active item
        setUntrimmedQueue(queue);
        setQueue([]);
      } else {
        // Wrap Up OFF: restore queue
        setQueue(untrimmedQueue || []);
        setUntrimmedQueue(null);
      }
      return next;
    });
  };

  // Submit Answer
  const handleSubmitAnswer = async () => {
    if (!activeItem || isAnswerSubmitted) return;

    const trimmed = userInput.trim();
    if (!trimmed) return;

    const kanaInput = wanakana.toKana(trimmed);
    const accepted = (activeItem.accepted_readings || []).map((r) => r.trim());
    const isAnswerMatch =
      isAnyReadingMatch(trimmed, accepted) || isAnyReadingMatch(kanaInput, accepted);

    if (isAnswerMatch) {
      setIsCorrect(true);
      setIsAnswerSubmitted(true);

      const wrongCount = itemWrongs[activeItem.id] || 0;

      // Play audio if auto_play_audio is enabled
      if (settings.auto_play_audio && activeItem.audios && activeItem.audios.length > 0) {
        const audioUrl = activeItem.audios[0].url;
        if (audioUrl) {
          if (!audioRef.current) audioRef.current = new Audio();
          audioRef.current.src = audioUrl;
          audioRef.current.play().catch(() => {});
        }
      }

      // Auto expand details if configured
      if (settings.auto_expand_details) {
        setShowItemInfo(true);
      }

      // Submit SRS review update to database
      if (userId) {
        try {
          const res = await submitGanikaniReview(userId, activeItem.id, wrongCount);
          setCurrentResultStage(res.newStage);
          setReviewedItems((prev) => [
            ...prev,
            { item: activeItem, wrongs: wrongCount, newStage: res.newStage },
          ]);
        } catch (err) {
          console.error('Failed to submit review:', err);
        }
      }
    } else {
      const currentWrongs = (itemWrongs[activeItem.id] || 0) + 1;
      setItemWrongs((prev) => ({
        ...prev,
        [activeItem.id]: currentWrongs,
      }));
      setIsCorrect(false);
      setIsAnswerSubmitted(true);
    }
  };

  // Proceed to Next Card
  const handleProceedNext = () => {
    if (!activeItem) return;

    let nextQueue = [...queue];
    let nextRequeued = [...requeuedItems];

    if (!isCorrect && !wrapUpActive) {
      // Requeue incorrect item so user practices it before session ends
      nextRequeued.push(activeItem);
    }

    // Determine next active item
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

    if (!nextActive) {
      setIsFinished(true);
      setActiveItem(null);
      return;
    }

    setQueue(nextQueue);
    setRequeuedItems(nextRequeued);
    setActiveItem(nextActive);
    setUserInput('');
    setIsAnswerSubmitted(false);
    setIsCorrect(false);
    setShowItemInfo(false);
    setCurrentResultStage(null);
    setTimeout(() => {
      inputRef.current?.focus();
    }, 20);
  };

  const handleReviewAction = () => {
    if (!isAnswerSubmitted) {
      handleSubmitAnswer();
    } else {
      handleProceedNext();
    }
  };

  // Redo / Typo Undo
  const handleRedo = () => {
    if (!activeItem) return;

    const currentWrongs = itemWrongs[activeItem.id] || 0;
    if (currentWrongs > 0) {
      setItemWrongs((prev) => ({
        ...prev,
        [activeItem.id]: currentWrongs - 1,
      }));
    }

    setUserInput('');
    setIsAnswerSubmitted(false);
    setIsCorrect(false);
    setCurrentResultStage(null);
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
  if (initialTotal === 0 && !isFinished) {
    return (
      <div className="max-w-xl mx-auto w-full px-4 py-16 text-center space-y-6">
        <div className="w-16 h-16 rounded-3xl bg-indigo-500/10 border border-indigo-500/20 text-indigo-500 flex items-center justify-center mx-auto text-3xl">
          🦀
        </div>
        <div className="space-y-2">
          <h2 className="text-2xl font-black text-text-primary">
            Tidak Ada Ulasan Jatuh Tempo
          </h2>
          <p className="text-text-secondary text-sm leading-relaxed">
            Kerja bagus! Semua item kosakata GaniKani telah kamu ulas. Ulasan baru akan muncul secara bertahap sesuai interval SRS.
          </p>
        </div>
        <div className="pt-4 flex items-center justify-center">
          <Link
            href="/ganikani"
            className="px-6 py-3 rounded-2xl bg-indigo-600 hover:bg-indigo-700 text-white font-bold text-sm transition-all shadow-sm"
          >
            Kembali ke Dashboard
          </Link>
        </div>
      </div>
    );
  }

  // Summary Screen
  if (isFinished) {
    const totalCount = reviewedItems.length;
    const cleanFirstTries = reviewedItems.filter((r) => r.wrongs === 0).length;
    const accuracy = totalCount > 0 ? Math.round((cleanFirstTries / totalCount) * 100) : 100;

    return (
      <div className="max-w-2xl mx-auto w-full px-4 py-12 space-y-8 animate-fade-in">
        <div className="text-center space-y-3">
          <div className="w-16 h-16 rounded-3xl bg-emerald-500/10 border border-emerald-500/30 text-emerald-500 flex items-center justify-center mx-auto shadow-md">
            <CheckCircle2 className="w-8 h-8" />
          </div>
          <h1 className="text-3xl font-black text-text-primary tracking-tight">
            Sesi Ulasan Selesai!
          </h1>
          <p className="text-text-secondary text-sm">
            Progres SRS telah otomatis diperbarui dan dicatat ke dalam streak harianmu.
          </p>
        </div>

        {/* Stats Grid */}
        <div className="grid grid-cols-2 gap-4">
          <div className="p-5 rounded-2xl bg-card border border-card-border text-center">
            <span className="text-xs font-bold text-text-muted uppercase tracking-wider block">
              Total Diulas
            </span>
            <span className="text-3xl font-black text-text-primary mt-1 block">
              {totalCount}
            </span>
          </div>

          <div className="p-5 rounded-2xl bg-card border border-card-border text-center">
            <span className="text-xs font-bold text-text-muted uppercase tracking-wider block">
              Akurasi Pertama
            </span>
            <span className="text-3xl font-black text-emerald-500 mt-1 block">
              {accuracy}%
            </span>
          </div>
        </div>

        {/* Reviewed Items List */}
        {reviewedItems.length > 0 && (
          <div className="rounded-3xl border border-card-border bg-card p-6 space-y-4 shadow-sm">
            <h3 className="text-xs font-bold uppercase tracking-wider text-text-muted">
              Ringkasan Item
            </h3>
            <div className="divide-y divide-card-border/60 max-h-72 overflow-y-auto">
              {reviewedItems.map((entry, idx) => (
                <div
                  key={idx}
                  className="py-3 flex items-center justify-between text-sm"
                >
                  <div className="flex items-center space-x-3">
                    <span className="text-xl font-bold text-text-primary">
                      {entry.item.character}
                    </span>
                    <div>
                      <span className="text-xs font-semibold text-text-secondary block">
                        {entry.item.primary_meaning}
                      </span>
                      <span className="text-xs font-bold text-amber-500">
                        {entry.item.primary_reading}
                      </span>
                    </div>
                  </div>

                  <div className="flex items-center space-x-2">
                    {entry.wrongs === 0 ? (
                      <span className="px-2 py-0.5 rounded-md bg-emerald-500/15 text-emerald-500 border border-emerald-500/30 text-xs font-bold">
                        Benar
                      </span>
                    ) : (
                      <span className="px-2 py-0.5 rounded-md bg-rose-500/15 text-rose-500 border border-rose-500/30 text-xs font-bold">
                        {entry.wrongs}x Salah
                      </span>
                    )}

                    {entry.newStage && (
                      <span className="text-xs text-text-muted font-bold">
                        Stage {entry.newStage}
                      </span>
                    )}
                  </div>
                </div>
              ))}
            </div>
          </div>
        )}

        {/* Navigation Action */}
        <div className="flex items-center justify-center pt-4">
          <Link
            href="/ganikani"
            className="px-8 py-3.5 rounded-2xl bg-indigo-600 hover:bg-indigo-700 text-white font-bold text-sm transition-all shadow-md shadow-indigo-600/20"
          >
            Kembali ke Dashboard GaniKani
          </Link>
        </div>
      </div>
    );
  }

  // ==========================================
  // ACTIVE REVIEW QUIZ LOOP (Ala KaniWani)
  // ==========================================
  if (!activeItem) return null;

  const remainingCount = queue.length + 1;
  const totalReviewed = reviewedItems.length;
  const cleanFirstTries = reviewedItems.filter((r) => r.wrongs === 0).length;
  const accuracyPct =
    totalReviewed > 0 ? Math.round((cleanFirstTries / totalReviewed) * 100) : 100;

  return (
    <div className="min-h-screen flex flex-col relative transition-colors duration-300">
      <CrabBackground />
      <main className="flex-1 max-w-4xl w-full mx-auto px-0 sm:px-4 flex flex-col items-center justify-start pt-0 pb-6 sm:pb-12">
        <div className="w-full bg-card rounded-none sm:rounded-3xl border-x-0 sm:border-x border-t-0 sm:border-t border-b border-card-border shadow-xl overflow-hidden animate-fade-in min-h-[420px] flex flex-col justify-start">
          {/* Top Hero Banner with Integrated Header Bar */}
          <div className="relative pt-16 pb-8 flex flex-col items-center justify-center bg-gradient-to-b from-card-muted/70 to-card border-b border-card-border select-text">
            {/* Integrated Top Bar */}
            <div className="absolute top-4 left-4 right-4 flex items-center justify-between text-text-primary select-none w-[calc(100%-2rem)] z-10">
              <button
                type="button"
                onClick={() => {
                  if (confirm('Apakah Anda yakin ingin keluar? Progres item yang dijawab benar sudah tersimpan di server.')) {
                    router.push('/ganikani');
                  }
                }}
                title="Kembali ke Dashboard GaniKani"
                className="flex items-center justify-center text-text-muted hover:text-text-primary hover:scale-105 active:scale-95 transition-all w-8 h-8 rounded-lg hover:bg-card-muted cursor-pointer"
              >
                <Home className="w-5 h-5" />
              </button>

              <div className="flex items-center space-x-2 sm:space-x-3 text-xs font-bold text-text-secondary">
                <span className="hidden sm:inline-flex items-center px-2 py-0.5 rounded-lg bg-indigo-500/15 text-indigo-500 dark:text-indigo-400 border border-indigo-500/30 text-xs font-black uppercase tracking-wider">
                  Review GaniKani
                </span>

                {wrapUpActive && (
                  <span className="px-2 py-0.5 rounded-md bg-amber-500/15 text-amber-500 border border-amber-500/30 animate-pulse text-xs">
                    Wrap Up
                  </span>
                )}

                {/* Accuracy */}
                <div className="flex items-center space-x-1" title="Akurasi Sesi">
                  <ThumbsUp className="w-3.5 h-3.5 text-text-muted" />
                  <span>{accuracyPct}%</span>
                </div>

                {/* Completed */}
                <div className="flex items-center space-x-1" title="Item Selesai">
                  <Check className="w-3.5 h-3.5 text-emerald-500" />
                  <span>{totalReviewed}</span>
                </div>

                {/* Remaining */}
                <div className="flex items-center space-x-1" title="Item Tersisa">
                  <Inbox className="w-3.5 h-3.5 text-text-muted" />
                  <span>{remainingCount}</span>
                </div>
              </div>
            </div>

            {/* Front Card Content (Meaning -> Kana) */}
            <GanikaniFrontCard
              item={activeItem}
              isAnswerSubmitted={isAnswerSubmitted}
              isCorrect={isCorrect}
              showKanjiRevealed={false}
              className="py-0 px-4"
            />
          </div>

          {/* Prompt Strip */}
          <div className="w-full py-2.5 border-b border-card-border flex items-center justify-center text-xs font-semibold tracking-wider uppercase select-none bg-card-muted/60 text-text-secondary">
            <span>Ketik Cara Baca <span className="font-black text-text-primary">Kosakata</span></span>
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
                      ? 'Benar! Tekan Enter atau Panah Kanan untuk lanjut'
                      : 'Salah! Tekan Enter untuk lanjut atau Undo'
                    : '答え'
                }
                value={userInput}
                onChange={(e) => {
                  if (!isAnswerSubmitted) {
                    setUserInput(wanakana.toKana(e.target.value, { IMEMode: true }));
                  }
                }}
                onKeyDown={(e) => {
                  if (e.key === 'Enter' || (e.key === 'ArrowRight' && isAnswerSubmitted)) {
                    e.preventDefault();
                    e.stopPropagation();
                    handleReviewAction();
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
                className={`w-full py-3.5 px-14 rounded-2xl text-center text-lg font-bold border shadow-xs transition-all focus:outline-none focus:ring-2 focus:ring-amber-500/50 focus:border-transparent ${
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
                onClick={handleReviewAction}
                className={`absolute right-2 top-1/2 -translate-y-1/2 w-10 h-10 flex items-center justify-center rounded-xl shadow-xs transition-all duration-200 active:scale-95 disabled:opacity-20 disabled:cursor-not-allowed z-10 ${
                  isAnswerSubmitted
                    ? isCorrect
                      ? 'bg-emerald-500 hover:bg-emerald-600 text-white shadow-md cursor-pointer'
                      : 'bg-rose-500 hover:bg-rose-600 text-white shadow-md cursor-pointer'
                    : 'bg-indigo-600 hover:bg-indigo-700 text-white shadow-md shadow-indigo-500/20 cursor-pointer'
                }`}
                title={isAnswerSubmitted ? 'Lanjut (Enter / Panah Kanan)' : 'Kirim Jawaban (Enter)'}
              >
                <ArrowRight className="w-5 h-5" />
              </button>
            </div>
          </div>

          {/* Action Buttons Row (Mobile Thumb Zone directly below Input) */}
          <div className="flex justify-center items-center gap-3.5 w-full max-w-md mx-auto pt-1 pb-3 select-none z-10 self-center">
            {/* 1. Wrap Up Button */}
            <button
              type="button"
              onClick={toggleWrapUp}
              title="Wrap Up (Selesaikan sesi lebih awal - W)"
              className={`w-12 h-12 flex items-center justify-center rounded-2xl border shadow-xs transition-all duration-200 active:scale-90 cursor-pointer ${
                wrapUpActive
                  ? 'bg-amber-500 border-amber-500 text-white shadow-md'
                  : 'bg-card border-card-border text-text-secondary hover:bg-card-muted'
              }`}
            >
              <Clock className="w-5 h-5" />
            </button>

            {/* 2. Redo Button */}
            <button
              type="button"
              disabled={!isAnswerSubmitted}
              onClick={handleRedo}
              title="Salah ketik? Ulangi kartu ini (Backspace)"
              className="w-12 h-12 flex items-center justify-center rounded-2xl border border-card-border bg-card text-text-secondary hover:bg-card-muted shadow-xs transition-all duration-200 active:scale-90 cursor-pointer disabled:opacity-30 disabled:cursor-not-allowed"
            >
              <RotateCcw className="w-5 h-5" />
            </button>

            {/* 3. Eye Button (Toggle Info Drawer) */}
            <button
              type="button"
              disabled={!isAnswerSubmitted}
              onClick={() => setShowItemInfo((prev) => !prev)}
              title={
                isAnswerSubmitted
                  ? 'Buka Info Detail Kosakata & Tambah Sinonim (F)'
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
                  <div className="flex flex-col items-center justify-center space-y-2">
                    <div className="flex items-center space-x-2">
                      <CheckCircle2 className="w-4 h-4 text-emerald-500 shrink-0" />
                      <span>Benar! Tekan Enter atau tombol panah untuk lanjut.</span>
                      {currentResultStage && (
                        <span className="px-2 py-0.5 bg-emerald-500 text-white font-extrabold text-xs rounded-lg shadow-xs flex items-center space-x-1">
                          <span>{getSrsStageName(currentResultStage)}</span>
                          <ArrowUp className="w-3 h-3 stroke-[3]" />
                        </span>
                      )}
                    </div>
                    {activeItem && (
                      <div className="flex items-center space-x-3 pt-1 animate-fade-in select-text">
                        <span className="text-2xl sm:text-3xl font-black text-text-primary tracking-wide">
                          {activeItem.character}
                        </span>
                        <span className="text-base sm:text-lg font-bold text-amber-500 dark:text-amber-400 tracking-wider">
                          {activeItem.primary_reading}
                        </span>
                      </div>
                    )}
                  </div>
                ) : (
                  <div className="flex flex-col items-center space-y-1">
                    <div className="flex items-center space-x-1.5 text-rose-600 dark:text-rose-400 font-bold">
                      <XCircle className="w-4 h-4 shrink-0" />
                      <span>Jawaban Salah!</span>
                    </div>
                    <span className="font-extrabold text-xs sm:text-sm tracking-wide select-text">
                      Jawaban benar: {activeItem?.primary_reading} {activeItem?.character ? `(${activeItem.character})` : ''}
                    </span>
                  </div>
                )}
              </div>
            </div>
          )}

          {/* Collapsible Info Drawer - Expands Downward Inline */}
          {showItemInfo && (
            <GanikaniInfoDrawer
              item={activeItem}
              isOpen={showItemInfo}
              onClose={() => setShowItemInfo(false)}
              onReadingSynonymAdded={(synonym) => {
                const inputKana = wanakana.toHiragana(userInput.trim());
                if (inputKana === synonym) {
                  setIsCorrect(true);
                  setIsAnswerSubmitted(true);

                  // Revert wrong count if already counted
                  if (activeItem && itemWrongs[activeItem.id] && itemWrongs[activeItem.id] > 0) {
                    setItemWrongs((prev) => ({
                      ...prev,
                      [activeItem.id]: prev[activeItem.id] - 1,
                    }));
                  }

                  // Submit review if user is logged in
                  if (userId && activeItem) {
                    const currentWrong = Math.max(0, (itemWrongs[activeItem.id] || 1) - 1);
                    submitGanikaniReview(userId, activeItem.id, currentWrong)
                      .then((res) => {
                        setReviewedItems((prev) => [
                          ...prev,
                          { item: activeItem, wrongs: currentWrong, newStage: res.newStage },
                        ]);
                      })
                      .catch((err) => console.error(err));
                  }
                }
              }}
            />
          )}
        </div>
      </main>
    </div>
  );
}
