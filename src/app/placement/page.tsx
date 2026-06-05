'use client';

import { useState, useEffect, useRef } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import CrabBackground from '@/components/CrabBackground';
import {
  Award, Sparkles, AlertCircle, CheckCircle2, ChevronRight, X, Loader2, Home, BarChart2
} from 'lucide-react';

interface Question {
  id: string;
  jlpt_level: string;
  question: string;
  options: string[];
}

export default function PlacementPage() {
  const router = useRouter();

  // Mode and progression state
  const [mode, setMode] = useState<string>('placement'); // 'placement' | 'exam'
  const [level, setLevel] = useState<string>('N5'); // Active JLPT level being tested
  const [questions, setQuestions] = useState<Question[]>([]);
  const [currentQuestionIdx, setCurrentQuestionIdx] = useState<number>(0);
  const [answers, setAnswers] = useState<Record<string, string>>({});
  const [selectedOption, setSelectedOption] = useState<string | null>(null);

  // Loading & error states
  const [loading, setLoading] = useState<boolean>(true);
  const [submitting, setSubmitting] = useState<boolean>(false);
  const [error, setError] = useState<string | null>(null);

  // Result state
  const [quizPhase, setQuizPhase] = useState<'intro' | 'quiz' | 'result'>('intro');
  const [resultData, setResultData] = useState<{
    score: number;
    correctCount: number;
    totalQuestions: number;
    status: string; // 'completed' | 'next_level' | 'failed'
    nextLevel?: string;
    targetRankId?: string;
    targetRankName?: string;
  } | null>(null);

  // Extract query parameters safely in the client
  useEffect(() => {
    if (typeof window !== 'undefined') {
      const params = new URLSearchParams(window.location.search);
      const modeParam = params.get('mode') || 'placement';
      const levelParam = params.get('level') || 'N5';
      setMode(modeParam);
      setLevel(levelParam);
    }
  }, []);

  // Fetch quiz questions
  const loadQuizQuestions = async (activeLevel: string) => {
    setLoading(true);
    setError(null);
    try {
      const { data: { session } } = await supabase.auth.getSession();
      const token = session?.access_token;
      if (!token) {
        router.push('/');
        return;
      }

      const res = await fetch('/api/placement/session', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify({ level: activeLevel })
      });

      const data = await res.json();
      if (data.error) throw new Error(data.error);

      if (data.questions && data.questions.length > 0) {
        setQuestions(data.questions);
        setCurrentQuestionIdx(0);
        setAnswers({});
        setSelectedOption(null);
        setQuizPhase('quiz');
      } else {
        throw new Error(`Tidak ada pertanyaan untuk tingkat ${activeLevel} di database.`);
      }
    } catch (err: any) {
      setError(err.message || 'Gagal memuat soal kuis.');
    } finally {
      setLoading(false);
    }
  };

  const startQuiz = () => {
    loadQuizQuestions(level);
  };

  const handleSelectOption = (option: string) => {
    setSelectedOption(option);
    const activeQuestion = questions[currentQuestionIdx];
    setAnswers(prev => ({
      ...prev,
      [activeQuestion.id]: option
    }));
  };

  const handleNextQuestion = () => {
    if (currentQuestionIdx < questions.length - 1) {
      setCurrentQuestionIdx(prev => prev + 1);
      const nextQuestion = questions[currentQuestionIdx + 1];
      setSelectedOption(answers[nextQuestion.id] || null);
    } else {
      handleSubmitQuiz();
    }
  };

  const handlePrevQuestion = () => {
    if (currentQuestionIdx > 0) {
      setCurrentQuestionIdx(prev => prev - 1);
      const prevQuestion = questions[currentQuestionIdx - 1];
      setSelectedOption(answers[prevQuestion.id] || null);
    }
  };

  const handleSubmitQuiz = async () => {
    setSubmitting(true);
    setError(null);
    try {
      const { data: { session } } = await supabase.auth.getSession();
      const token = session?.access_token;
      if (!token) throw new Error('Sesi masuk Anda telah habis.');

      const res = await fetch('/api/placement/session', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify({ level, answers })
      });

      const data = await res.json();
      if (data.error) throw new Error(data.error);

      // If passed exam mode, we determine status ourselves since backend is tailored for placement
      if (mode === 'exam') {
        const total = questions.length;
        const score = data.score;
        const passed = score >= 80;

        if (passed) {
          if (level === 'N5') {
            setResultData({
              score,
              correctCount: data.correctCount,
              totalQuestions: total,
              status: 'completed',
              targetRankId: 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', // N4 - Pangkat 1
              targetRankName: 'N4 - Pangkat 1'
            });
          } else {
            // N4 passed (Max level currently supported)
            setResultData({
              score,
              correctCount: data.correctCount,
              totalQuestions: total,
              status: 'max_level_reached'
            });
          }
        } else {
          setResultData({
            score,
            correctCount: data.correctCount,
            totalQuestions: total,
            status: 'failed'
          });
        }
      } else {
        // Placement Mode
        setResultData({
          score: data.score,
          correctCount: data.correctCount,
          totalQuestions: data.totalQuestions,
          status: data.status,
          nextLevel: data.nextLevel,
          targetRankId: data.targetRankId,
          targetRankName: data.targetRankName
        });
      }

      setQuizPhase('result');
    } catch (err: any) {
      setError(err.message || 'Gagal mengirim jawaban.');
    } finally {
      setSubmitting(false);
    }
  };

  const handleContinueNextLevelPlacement = () => {
    if (resultData && resultData.nextLevel) {
      setLevel(resultData.nextLevel);
      loadQuizQuestions(resultData.nextLevel);
    }
  };

  const handleApplyPlacementResult = async () => {
    if (!resultData || !resultData.targetRankId) return;
    setSubmitting(true);
    setError(null);
    try {
      const { data: { session } } = await supabase.auth.getSession();
      const token = session?.access_token;
      if (!token) throw new Error('Sesi masuk Anda telah habis.');

      const res = await fetch('/api/placement/execute', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify({ targetRankId: resultData.targetRankId })
      });

      const data = await res.json();
      if (data.error) throw new Error(data.error);

      router.push('/dashboard');
    } catch (err: any) {
      setError(err.message || 'Gagal menempatkan pangkat.');
    } finally {
      setSubmitting(false);
    }
  };

  return (
    <div className="min-h-screen flex flex-col relative overflow-hidden bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <CrabBackground />

      <main className="flex-1 max-w-2xl w-full mx-auto px-4 flex flex-col items-center justify-center py-12 z-10">
        
        {/* PHASE 1: INTRO */}
        {quizPhase === 'intro' && (
          <div className="w-full bg-white dark:bg-slate-900 p-8 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl space-y-6 text-center animate-fade-in">
            <div className="p-4 bg-indigo-50 dark:bg-indigo-950/40 rounded-2xl w-16 h-16 flex items-center justify-center mx-auto border border-indigo-100 dark:border-indigo-900">
              <Award className="w-8 h-8 text-indigo-500" />
            </div>
            
            <div className="space-y-2">
              <h2 className="text-2xl font-black tracking-tight">
                {mode === 'exam' 
                  ? `Ujian Kenaikan Pangkat JLPT ${level}` 
                  : 'Kuis Penempatan (Placement Test)'}
              </h2>
              <p className="text-sm text-slate-550 dark:text-slate-400">
                {mode === 'exam'
                  ? `Uji kemampuan Anda pada JLPT ${level}. Jawab minimal 80% pertanyaan dengan benar untuk naik ke tingkat pangkat berikutnya.`
                  : 'Kuis penempatan adaptif KaniGani. Jawab pertanyaan untuk menemukan pangkat belajar yang sesuai dengan pemahaman Anda.'}
              </p>
            </div>

            <div className="bg-slate-50 dark:bg-slate-950/60 p-4.5 rounded-2xl border border-slate-200/50 dark:border-slate-850 text-xs text-left space-y-2.5">
              <span className="font-bold text-slate-700 dark:text-slate-350 block select-none">💡 Petunjuk Ujian:</span>
              <ul className="list-disc pl-4 space-y-1 text-slate-550 dark:text-slate-400 font-medium">
                <li>Terdiri dari beberapa pilihan ganda pilihan.</li>
                <li>Setiap pertanyaan memiliki 1 jawaban benar.</li>
                <li>Gunakan tombol di bawah untuk navigasi antar pertanyaan.</li>
                <li>Skor kelulusan adalah <strong className="text-indigo-500">80%</strong>.</li>
              </ul>
            </div>

            {error && (
              <div className="p-4 bg-rose-50 dark:bg-rose-955/30 border border-rose-100 dark:border-rose-900/40 rounded-2xl text-xs text-rose-600 dark:text-rose-400 flex items-start space-x-2.5">
                <AlertCircle className="w-4 h-4 mt-0.5 shrink-0" />
                <span>{error}</span>
              </div>
            )}

            <div className="flex gap-4">
              <button
                onClick={() => router.push('/dashboard')}
                className="flex-1 py-3 bg-slate-100 dark:bg-slate-800 hover:bg-slate-200 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-200 font-bold rounded-2xl text-xs sm:text-sm transition-colors cursor-pointer"
              >
                Kembali ke Dashboard
              </button>
              <button
                onClick={startQuiz}
                className="flex-1 py-3 bg-indigo-505 bg-indigo-500 hover:bg-indigo-650 hover:bg-indigo-600 text-white font-bold rounded-2xl text-xs sm:text-sm shadow-md transition-colors cursor-pointer"
              >
                Mulai Ujian
              </button>
            </div>
          </div>
        )}

        {/* PHASE 2: QUIZ RUNNING */}
        {quizPhase === 'quiz' && (
          <div className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden animate-fade-in flex flex-col min-h-[460px]">
            
            {/* Header / Progress bar */}
            <div className="px-6 pt-6 pb-4 border-b border-slate-100 dark:border-slate-800 flex items-center justify-between select-none">
              <div className="flex items-center space-x-2">
                <BarChart2 className="w-4 h-4 text-indigo-500" />
                <span className="text-xs font-black uppercase tracking-wider text-slate-500 dark:text-slate-400">
                  {mode === 'exam' ? `Ujian ${level}` : `Penempatan - ${level}`}
                </span>
              </div>
              <span className="text-xs font-extrabold text-indigo-500">
                Pertanyaan {currentQuestionIdx + 1} / {questions.length}
              </span>
            </div>

            <div className="w-full bg-slate-100 dark:bg-slate-800 h-1.5 overflow-hidden">
              <div 
                className="bg-indigo-500 h-full transition-all duration-300"
                style={{ width: `${((currentQuestionIdx + 1) / questions.length) * 100}%` }}
              ></div>
            </div>

            {/* Core Question Card */}
            <div className="p-6 sm:p-8 flex-1 flex flex-col justify-between space-y-6">
              
              {/* Question Text */}
              <div className="space-y-1">
                <span className="text-[10px] font-black uppercase tracking-widest text-slate-400 dark:text-slate-550">Pertanyaan</span>
                <p className="text-lg font-extrabold text-slate-800 dark:text-slate-100 leading-snug">
                  {questions[currentQuestionIdx]?.question}
                </p>
              </div>

              {/* Options */}
              <div className="space-y-3">
                {questions[currentQuestionIdx]?.options.map((option, idx) => {
                  const isSelected = selectedOption === option;
                  return (
                    <button
                      key={idx}
                      onClick={() => handleSelectOption(option)}
                      className={`w-full text-left px-5 py-4 rounded-2xl border text-xs sm:text-sm font-semibold transition-all duration-150 cursor-pointer flex items-center justify-between ${
                        isSelected
                          ? 'bg-indigo-50 dark:bg-indigo-950/45 border-indigo-500 text-indigo-650 dark:text-indigo-300 shadow-sm scale-[1.01]'
                          : 'bg-slate-50 dark:bg-slate-950/40 border-slate-200 dark:border-slate-800/80 hover:bg-slate-100 dark:hover:bg-slate-800/50 text-slate-700 dark:text-slate-350'
                      }`}
                    >
                      <span>{option}</span>
                      <div className={`w-5 h-5 rounded-full border flex items-center justify-center shrink-0 transition-all ${
                        isSelected 
                          ? 'border-indigo-500 bg-indigo-500 text-white' 
                          : 'border-slate-300 dark:border-slate-700'
                      }`}>
                        {isSelected && <div className="w-2 h-2 rounded-full bg-white"></div>}
                      </div>
                    </button>
                  );
                })}
              </div>

              {/* Navigation Controls */}
              <div className="flex gap-4 pt-4 border-t border-slate-100 dark:border-slate-800 select-none">
                <button
                  disabled={currentQuestionIdx === 0}
                  onClick={handlePrevQuestion}
                  className="px-4 py-3 bg-slate-100 dark:bg-slate-800 hover:bg-slate-205 hover:bg-slate-200 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-200 disabled:opacity-30 disabled:cursor-not-allowed font-bold rounded-2xl text-xs flex items-center space-x-1.5 transition-colors shrink-0 cursor-pointer"
                >
                  Sebelumnya
                </button>
                
                <button
                  disabled={!selectedOption || submitting}
                  onClick={handleNextQuestion}
                  className="flex-1 py-3 bg-indigo-505 bg-indigo-500 hover:bg-indigo-650 hover:bg-indigo-600 text-white font-bold rounded-2xl text-xs sm:text-sm disabled:opacity-50 disabled:cursor-not-allowed flex items-center justify-center space-x-2 transition-colors cursor-pointer"
                >
                  {submitting ? (
                    <>
                      <Loader2 className="w-4 h-4 animate-spin" />
                      <span>Mengirim...</span>
                    </>
                  ) : currentQuestionIdx === questions.length - 1 ? (
                    <>
                      <span>Kirim Hasil Ujian</span>
                      <CheckCircle2 className="w-4 h-4" />
                    </>
                  ) : (
                    <>
                      <span>Pertanyaan Berikutnya</span>
                      <ChevronRight className="w-4 h-4" />
                    </>
                  )}
                </button>
              </div>

            </div>
          </div>
        )}

        {/* PHASE 3: RESULTS DISPLAY */}
        {quizPhase === 'result' && resultData && (
          <div className="w-full bg-white dark:bg-slate-900 p-8 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl space-y-6 text-center animate-fade-in">
            
            {/* Success icon / Badge */}
            {(resultData.status === 'next_level' || resultData.status === 'completed' || resultData.status === 'max_level_reached') ? (
              <div className="p-4 bg-emerald-50 dark:bg-emerald-950/40 rounded-2xl w-16 h-16 flex items-center justify-center mx-auto border border-emerald-100 dark:border-emerald-900">
                <CheckCircle2 className="w-8 h-8 text-emerald-500 animate-bounce" />
              </div>
            ) : (
              <div className="p-4 bg-rose-50 dark:bg-rose-955/30 rounded-2xl w-16 h-16 flex items-center justify-center mx-auto border border-rose-100 dark:border-rose-900">
                <AlertCircle className="w-8 h-8 text-rose-500 animate-shake" />
              </div>
            )}

            <div className="space-y-2">
              <h2 className="text-2xl font-black tracking-tight">
                {resultData.status === 'failed' ? 'Ujian Belum Lulus 😢' : 'Ujian Berhasil! 🎉'}
              </h2>
              <p className="text-sm text-slate-550 dark:text-slate-400">
                {resultData.status === 'failed'
                  ? 'Sayang sekali, skor Anda belum mencukupi batas kelulusan minimal 80%.'
                  : resultData.status === 'next_level'
                    ? `Kerja bagus! Anda telah menguasai tingkat ${level} dengan gemilang.`
                    : `Luar biasa! Evaluasi belajar Anda telah selesai.`}
              </p>
            </div>

            {/* Score box */}
            <div className="bg-slate-50 dark:bg-slate-955/50 p-6 rounded-2xl border border-slate-200/50 dark:border-slate-850/80 grid grid-cols-2 gap-4">
              <div className="text-center select-none space-y-1">
                <span className="text-[10px] font-black text-slate-400 uppercase tracking-widest block">Skor Evaluasi</span>
                <span className={`text-2xl font-black ${resultData.score >= 80 ? 'text-emerald-500' : 'text-rose-500'}`}>
                  {resultData.score}%
                </span>
              </div>
              <div className="text-center select-none space-y-1">
                <span className="text-[10px] font-black text-slate-400 uppercase tracking-widest block">Jawaban Benar</span>
                <span className="text-2xl font-black text-slate-800 dark:text-slate-200">
                  {resultData.correctCount} / {resultData.totalQuestions}
                </span>
              </div>
            </div>

            {/* Recommended rank promotion information */}
            {resultData.status === 'completed' && resultData.targetRankName && (
              <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-150 dark:border-indigo-900/30 rounded-2xl text-xs text-indigo-700 dark:text-indigo-300 leading-relaxed font-bold">
                🎯 Rekomendasi Pangkat: {resultData.targetRankName}
              </div>
            )}

            {resultData.status === 'max_level_reached' && (
              <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-150 dark:border-indigo-900/30 rounded-2xl text-xs text-indigo-700 dark:text-indigo-300 leading-relaxed font-bold">
                🏆 Selamat! Anda telah mencapai tingkat level tertinggi yang didukung oleh KaniGani saat ini.
              </div>
            )}

            {error && (
              <div className="p-4 bg-rose-50 dark:bg-rose-955/30 border border-rose-100 dark:border-rose-900/40 rounded-2xl text-xs text-rose-600 dark:text-rose-400 flex items-start space-x-2.5">
                <AlertCircle className="w-4 h-4 mt-0.5 shrink-0" />
                <span>{error}</span>
              </div>
            )}

            {/* Action buttons based on result */}
            <div className="flex gap-4">
              {resultData.status === 'failed' ? (
                <button
                  onClick={() => router.push('/dashboard')}
                  className="w-full py-3 bg-rose-600 hover:bg-rose-700 text-white font-bold rounded-2xl text-xs sm:text-sm transition-colors cursor-pointer shadow-md"
                >
                  Kembali ke Dashboard
                </button>
              ) : resultData.status === 'next_level' ? (
                <>
                  <button
                    onClick={() => router.push('/dashboard')}
                    className="flex-1 py-3 bg-slate-100 dark:bg-slate-800 hover:bg-slate-200 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-200 font-bold rounded-2xl text-xs sm:text-sm transition-colors cursor-pointer"
                  >
                    Simpan & Keluar
                  </button>
                  <button
                    onClick={handleContinueNextLevelPlacement}
                    className="flex-1 py-3 bg-indigo-505 bg-indigo-500 hover:bg-indigo-650 hover:bg-indigo-600 text-white font-bold rounded-2xl text-xs sm:text-sm shadow-md transition-colors cursor-pointer flex items-center justify-center space-x-1.5"
                  >
                    <span>Lanjut Tes {resultData.nextLevel}</span>
                    <ChevronRight className="w-4 h-4" />
                  </button>
                </>
              ) : resultData.status === 'max_level_reached' ? (
                <button
                  onClick={() => router.push('/dashboard')}
                  className="w-full py-3 bg-indigo-505 bg-indigo-500 hover:bg-indigo-650 hover:bg-indigo-600 text-white font-bold rounded-2xl text-xs sm:text-sm shadow-md transition-colors cursor-pointer"
                >
                  Selesai & Masuk Dashboard
                </button>
              ) : (
                // 'completed' (placement test over or exam passed)
                <button
                  disabled={submitting}
                  onClick={handleApplyPlacementResult}
                  className="w-full py-3 bg-emerald-600 hover:bg-emerald-700 disabled:opacity-50 text-white font-bold rounded-2xl text-xs sm:text-sm transition-colors cursor-pointer shadow-md flex items-center justify-center space-x-1.5"
                >
                  {submitting ? (
                    <>
                      <Loader2 className="w-4 h-4 animate-spin" />
                      <span>Menyimpan Kemajuan...</span>
                    </>
                  ) : (
                    <>
                      <span>Mulai Belajar di Pangkat Baru</span>
                      <CheckCircle2 className="w-4 h-4" />
                    </>
                  )}
                </button>
              )}
            </div>

          </div>
        )}

      </main>
    </div>
  );
}
