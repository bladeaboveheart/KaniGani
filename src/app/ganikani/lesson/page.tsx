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
import { PartOfSpeechBadge } from '@/components/ui/PartOfSpeechBadge';
import AudioPlayerButton from '@/components/audio/AudioPlayerButton';
import FormattedText from '@/components/FormattedText';
import GanikaniFrontCard from '@/components/ganikani/GanikaniFrontCard';
import GanikaniInfoDrawer from '@/components/ganikani/GanikaniInfoDrawer';
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
} from 'lucide-react';

export default function GanikaniLessonPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [userId, setUserId] = useState<string | null>(null);
  const [items, setItems] = useState<Item[]>([]);
  const [phase, setPhase] = useState<'slide' | 'quiz' | 'completed'>('slide');

  // Slide Phase States
  const [currentSlideIndex, setCurrentSlideIndex] = useState(0);

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
      if (showItemInfo) return;

      // Jika fokus sedang di input, input onKeyDown yang menangani secara eksklusif
      if (e.target === inputRef.current) return;

      if (e.key === 'Enter') {
        e.preventDefault();
        handleQuizAction();
      } else if (e.key === 'Backspace' && isAnswerSubmitted && !isCorrect) {
        e.preventDefault();
        handleRedo();
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
      <div className="max-w-3xl mx-auto w-full px-4 py-8 flex flex-col flex-1 justify-between space-y-8 animate-fade-in">
        {/* Progress header */}
        <div className="space-y-3">
          <div className="flex items-center justify-between text-xs font-bold text-text-muted">
            <span className="uppercase tracking-widest text-amber-500">
              Fase Pengenalan (Slide {currentSlideIndex + 1} dari {items.length})
            </span>
            <span>Batch {items.length} Kosakata</span>
          </div>
          <div className="w-full h-1.5 bg-card-muted rounded-full overflow-hidden">
            <div
              className="h-full bg-amber-500 transition-all duration-300"
              style={{
                width: `${((currentSlideIndex + 1) / items.length) * 100}%`,
              }}
            />
          </div>
        </div>

        {/* Slide Card Content */}
        <div className="rounded-3xl border border-card-border bg-card p-6 sm:p-10 space-y-8 shadow-xl">
          {/* Top Badge: POS + Mora */}
          <div className="flex flex-wrap items-center justify-center gap-2">
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
              <span className="inline-flex items-center text-xs font-bold px-2.5 py-0.5 rounded-full bg-amber-500/10 text-amber-500 border border-amber-500/25">
                {moraLabel}
              </span>
            )}
          </div>

          {/* Target Kanji & Reading Audio */}
          <div className="flex flex-col items-center justify-center text-center space-y-3">
            <h2 className="text-5xl sm:text-7xl font-black text-text-primary tracking-wider">
              {item.character}
            </h2>

            <div className="flex items-center space-x-3">
              <span className="text-2xl sm:text-3xl font-black text-amber-500 dark:text-amber-400">
                {item.primary_reading}
              </span>
              {item.audios && item.audios.length > 0 && (
                <AudioPlayerButton audios={item.audios} variant="compact" />
              )}
            </div>
          </div>

          {/* Meaning & Secondary */}
          <div className="text-center space-y-2 pt-4 border-t border-card-border">
            <span className="text-xxs font-extrabold uppercase tracking-widest text-text-muted">
              Arti Utama
            </span>
            <p className="text-2xl sm:text-3xl font-bold text-text-primary capitalize">
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

          {/* Mnemonic Bacaan */}
          {item.reading_mnemonic && (
            <div className="p-4 rounded-2xl bg-indigo-500/10 border border-indigo-500/20 text-left space-y-1">
              <span className="text-xxs font-extrabold text-indigo-400 uppercase tracking-widest block">
                Mnemonic Bacaan (Kana)
              </span>
              <div className="text-xs text-text-primary leading-relaxed">
                <FormattedText text={item.reading_mnemonic} />
              </div>
            </div>
          )}

          {/* Context sentence preview */}
          {item.context_sentences && item.context_sentences.length > 0 && (
            <div className="p-4 rounded-2xl bg-card-muted/50 border border-card-border text-left space-y-1">
              <span className="text-xxs font-extrabold text-text-muted uppercase tracking-widest block">
                Contoh Kalimat
              </span>
              <p className="text-sm font-semibold text-text-primary">
                {item.context_sentences[0].japanese}
              </p>
              <p className="text-xs text-text-secondary">
                {item.context_sentences[0].indonesian}
              </p>
            </div>
          )}
        </div>

        {/* Footer Navigation Buttons */}
        <div className="flex items-center justify-between gap-4">
          <button
            onClick={() => setCurrentSlideIndex((prev) => Math.max(0, prev - 1))}
            disabled={currentSlideIndex === 0}
            className={`flex items-center space-x-1.5 px-5 py-3 rounded-2xl font-bold text-xs transition-all cursor-pointer ${
              currentSlideIndex === 0
                ? 'opacity-30 pointer-events-none text-text-muted'
                : 'bg-card-muted hover:bg-card border border-card-border text-text-primary'
            }`}
          >
            <ArrowLeft className="w-4 h-4" />
            <span>Sebelumnya</span>
          </button>

          {currentSlideIndex < items.length - 1 ? (
            <button
              onClick={() => setCurrentSlideIndex((prev) => prev + 1)}
              className="flex items-center space-x-1.5 px-6 py-3 rounded-2xl bg-amber-500 hover:bg-amber-600 text-white font-bold text-xs transition-all shadow-md shadow-amber-500/20 cursor-pointer"
            >
              <span>Selanjutnya</span>
              <ArrowRight className="w-4 h-4" />
            </button>
          ) : (
            <button
              onClick={startQuizPhase}
              className="flex items-center space-x-1.5 px-6 py-3 rounded-2xl bg-indigo-600 hover:bg-indigo-700 text-white font-bold text-xs transition-all shadow-md shadow-indigo-600/20 cursor-pointer"
            >
              <span>Mulai Kuis Lesson ({items.length} Item)</span>
              <ArrowRight className="w-4 h-4" />
            </button>
          )}
        </div>
      </div>
    );
  }

  // ==========================================
  // PHASE 2: QUIZ PHASE (Reverse Testing)
  // ==========================================
  if (phase === 'quiz' && activeQuizItem) {
    const isFinishedAll =
      quizQueue.length === 0 && requeuedItems.length === 0;

    return (
      <div className="max-w-2xl mx-auto w-full px-4 py-8 flex flex-col flex-1 justify-between space-y-6">
        {/* Quiz Header Bar */}
        <div className="flex items-center justify-between border-b border-card-border pb-4">
          <div className="flex items-center space-x-2">
            <span className="text-xs font-black uppercase tracking-widest px-2 py-0.5 rounded-md bg-indigo-500/15 text-indigo-400 border border-indigo-500/30">
              Kuis Lesson
            </span>
            <span className="text-xs font-bold text-text-muted">
              Sisa antrean: {quizQueue.length + 1}
            </span>
          </div>

          <div className="flex items-center space-x-2">
            <button
              onClick={() => setShowItemInfo(true)}
              className="p-2 rounded-xl bg-card-muted hover:bg-card border border-card-border text-text-secondary hover:text-text-primary transition-colors cursor-pointer"
              title="Buka Info Detail (F)"
            >
              <Eye className="w-4 h-4" />
            </button>
          </div>
        </div>

        {/* Front Card (Meaning -> Kana) */}
        <div className="rounded-3xl border border-card-border bg-card shadow-lg p-6 flex flex-col items-center">
          <GanikaniFrontCard
            item={activeQuizItem}
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
                } else if (e.key.toLowerCase() === 'f') {
                  if (isAnswerSubmitted || userInput.trim() === '') {
                    e.preventDefault();
                    setShowItemInfo(true);
                  }
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
                    ? 'bg-emerald-500/15 border-emerald-500 text-emerald-500'
                    : 'bg-rose-500/15 border-rose-500 text-rose-500'
                  : 'bg-card border-card-border text-text-primary focus:border-amber-500 focus:ring-2 focus:ring-amber-500/20'
              }`}
            />

            {/* Submit / Proceed Button */}
            <button
              type="button"
              onClick={handleQuizAction}
              disabled={savingLesson}
              className={`mt-4 w-full py-3.5 px-6 rounded-2xl font-bold text-sm transition-all cursor-pointer shadow-md flex items-center justify-center space-x-2 ${
                isAnswerSubmitted
                  ? isCorrect
                    ? 'bg-emerald-500 hover:bg-emerald-600 text-white shadow-emerald-500/20'
                    : 'bg-rose-500 hover:bg-rose-600 text-white shadow-rose-500/20'
                  : 'bg-amber-500 hover:bg-amber-600 text-white shadow-amber-500/20'
              }`}
            >
              {savingLesson ? (
                <Loader2 className="w-4 h-4 animate-spin" />
              ) : isAnswerSubmitted ? (
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

        {/* Info Drawer */}
        <GanikaniInfoDrawer
          item={activeQuizItem}
          isOpen={showItemInfo}
          onClose={() => setShowItemInfo(false)}
          onReadingSynonymAdded={(syn) => {
            // Check if matches input
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
