'use client';

import React, { useState, useEffect, useRef } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import * as wanakana from 'wanakana';
import { supabase } from '@/lib/supabase';
import { Item } from '@/lib/types';
import {
  getGanikaniReviewQueue,
  getGanikaniSettings,
  submitGanikaniReview,
  GanikaniSettings,
  DEFAULT_GANIKANI_SETTINGS,
} from '@/services/ganikaniService';
import GanikaniFrontCard from '@/components/ganikani/GanikaniFrontCard';
import GanikaniInfoDrawer from '@/components/ganikani/GanikaniInfoDrawer';
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
} from 'lucide-react';

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
        }
        return;
      }

      // Jika fokus sedang di input, input onKeyDown yang menangani secara eksklusif
      if (e.target === inputRef.current) return;

      // Enter Shortcut to advance when answer submitted
      if (e.key === 'Enter') {
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
      accepted.includes(kanaInput) || accepted.includes(trimmed);

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

  return (
    <div className="max-w-2xl mx-auto w-full px-4 py-8 flex flex-col flex-1 justify-between space-y-6">
      {/* Top Bar: Remaining count, Wrap Up, Info */}
      <div className="flex items-center justify-between border-b border-card-border pb-4">
        <div className="flex items-center space-x-2">
          <span className="text-xs font-black uppercase tracking-widest px-2.5 py-0.5 rounded-md bg-indigo-500/15 text-indigo-400 border border-indigo-500/30">
            Sisa: {remainingCount}
          </span>
          {wrapUpActive && (
            <span className="text-xs font-bold px-2 py-0.5 rounded-md bg-amber-500/15 text-amber-500 border border-amber-500/30 animate-pulse">
              Wrap Up Aktif
            </span>
          )}
        </div>

        <div className="flex items-center space-x-2">
          {/* Wrap Up button (W) */}
          <button
            onClick={toggleWrapUp}
            className={`p-2 rounded-xl border text-xs font-bold flex items-center space-x-1.5 transition-colors cursor-pointer ${
              wrapUpActive
                ? 'bg-amber-500 text-white border-amber-500'
                : 'bg-card-muted hover:bg-card border-card-border text-text-secondary hover:text-text-primary'
            }`}
            title="Selesaikan sesi lebih awal (W)"
          >
            <Clock className="w-4 h-4" />
            <span className="hidden sm:inline">Wrap Up</span>
          </button>

          {/* Info Drawer button (F) */}
          <button
            onClick={() => {
              if (isAnswerSubmitted) {
                setShowItemInfo((prev) => !prev);
              }
            }}
            disabled={!isAnswerSubmitted}
            className={`p-2 rounded-xl border transition-colors ${
              isAnswerSubmitted
                ? 'bg-card-muted hover:bg-card border-card-border text-text-secondary hover:text-text-primary cursor-pointer'
                : 'opacity-40 border-card-border/50 text-text-muted cursor-not-allowed'
            }`}
            title={
              isAnswerSubmitted
                ? 'Buka Info Detail Kosakata & Tambah Sinonim (F)'
                : 'Info detail tersedia setelah menjawab'
            }
          >
            <Eye className="w-4 h-4" />
          </button>
        </div>
      </div>

      {/* Front Card (Meaning -> Kana) */}
      <div className="rounded-3xl border border-card-border bg-card shadow-lg p-6 flex flex-col items-center">
        <GanikaniFrontCard
          item={activeItem}
          isAnswerSubmitted={isAnswerSubmitted}
          isCorrect={isCorrect}
          showKanjiRevealed={isCorrect}
        />
      </div>

      {/* Input & Feedback Area */}
      <div className="space-y-4">
        <div className="relative">
          <input
            ref={inputRef}
            type="text"
            value={userInput}
            onChange={(e) => {
              if (!isAnswerSubmitted) {
                // Auto IME Romaji -> Hiragana dengan IMEMode
                setUserInput(wanakana.toKana(e.target.value, { IMEMode: true }));
              }
            }}
            onKeyDown={(e) => {
              if (e.key === 'Enter') {
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
            placeholder={
              isAnswerSubmitted
                ? isCorrect
                  ? 'Benar! Tekan Enter untuk lanjut'
                  : 'Salah! Tekan Enter untuk lanjut atau Backspace untuk redo'
                : 'Ketik bacaan Kana (romaji otomatis)...'
            }
            className={`w-full text-center text-xl sm:text-2xl font-bold py-4 px-6 rounded-2xl border transition-all outline-hidden ${
              isAnswerSubmitted
                ? isCorrect
                  ? 'bg-emerald-500/15 border-emerald-500 text-emerald-500 font-black'
                  : 'bg-rose-500/15 border-rose-500 text-rose-500 font-black'
                : 'bg-card border-card-border text-text-primary focus:border-amber-500 focus:ring-2 focus:ring-amber-500/20'
            }`}
          />

          {/* Proceed Button */}
          <button
            type="button"
            onClick={handleReviewAction}
            className={`mt-4 w-full py-3.5 px-6 rounded-2xl font-bold text-sm transition-all cursor-pointer shadow-md flex items-center justify-center space-x-2 ${
              isAnswerSubmitted
                ? isCorrect
                  ? 'bg-emerald-500 hover:bg-emerald-600 text-white shadow-emerald-500/20'
                  : 'bg-rose-500 hover:bg-rose-600 text-white shadow-rose-500/20'
                : 'bg-indigo-600 hover:bg-indigo-700 text-white shadow-indigo-600/20'
            }`}
          >
            {isAnswerSubmitted ? (
              <span>Lanjut (Tekan Enter)</span>
            ) : (
              <span>Kirim Jawaban</span>
            )}
          </button>
        </div>

        {/* Redo Helper button when wrong */}
        {isAnswerSubmitted && !isCorrect && (
          <div className="flex items-center justify-center">
            <button
              type="button"
              onClick={handleRedo}
              className="flex items-center space-x-1.5 text-xs text-text-muted hover:text-amber-500 font-bold transition-colors cursor-pointer"
            >
              <RotateCcw className="w-3.5 h-3.5" />
              <span>Salah ketik? Ulangi kartu ini (Backspace)</span>
            </button>
          </div>
        )}
      </div>

      {/* Info Drawer (with Reading Synonyms Editor inside) */}
      <GanikaniInfoDrawer
        item={activeItem}
        isOpen={showItemInfo}
        onClose={() => setShowItemInfo(false)}
        onReadingSynonymAdded={(synonym) => {
          // If the user's current input matches the newly added synonym, flip to correct retroactively!
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
    </div>
  );
}
