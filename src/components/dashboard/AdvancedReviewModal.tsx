'use client';

import { useState, useEffect, useTransition } from 'react';
import { useRouter } from 'next/navigation';
import { X, SlidersHorizontal, Sparkles, Check, Flame, Loader2 } from 'lucide-react';
import { supabase } from '@/lib/supabase';

interface AdvancedReviewModalProps {
  isOpen: boolean;
  onClose: () => void;
  userLevel?: number;
}

type ItemType = 'radical' | 'kanji' | 'vocabulary';

export default function AdvancedReviewModal({
  isOpen,
  onClose,
  userLevel = 1,
}: AdvancedReviewModalProps) {
  const router = useRouter();
  const [minLevel, setMinLevel] = useState<number>(1);
  const [maxLevel, setMaxLevel] = useState<number>(userLevel || 1);
  const [selectedTypes, setSelectedTypes] = useState<ItemType[]>(['radical', 'kanji', 'vocabulary']);
  const [matchCount, setMatchCount] = useState<number | null>(null);
  const [loadingCount, setLoadingCount] = useState<boolean>(true);
  const [, startTransition] = useTransition();

  // Reset or initialize levels when modal opens
  useEffect(() => {
    if (isOpen) {
      setMinLevel(1);
      setMaxLevel(Math.max(1, userLevel || 1));
      setSelectedTypes(['radical', 'kanji', 'vocabulary']);
    }
  }, [isOpen, userLevel]);

  // Live count preview
  useEffect(() => {
    if (!isOpen) return;

    let isCancelled = false;
    const fetchMatchingCount = async () => {
      setLoadingCount(true);
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          if (!isCancelled) {
            setMatchCount(0);
            setLoadingCount(false);
          }
          return;
        }

        if (selectedTypes.length === 0) {
          if (!isCancelled) {
            setMatchCount(0);
            setLoadingCount(false);
          }
          return;
        }

        const now = new Date().toISOString();
        const effectiveMin = Math.min(minLevel, maxLevel);
        const effectiveMax = Math.max(minLevel, maxLevel);

        const { count, error } = await supabase
          .from('user_progress')
          .select('item_id, items!inner(level, type)', { count: 'exact', head: true })
          .eq('user_id', user.id)
          .gte('srs_stage', 1)
          .lte('srs_stage', 8)
          .lte('next_review', now)
          .gte('items.level', effectiveMin)
          .lte('items.level', effectiveMax)
          .in('items.type', selectedTypes);

        if (!isCancelled) {
          if (error) {
            console.error('Error fetching preview review count:', error);
            setMatchCount(0);
          } else {
            setMatchCount(count || 0);
          }
          setLoadingCount(false);
        }
      } catch (err) {
        if (!isCancelled) {
          console.error('Failed to count matching reviews:', err);
          setMatchCount(0);
          setLoadingCount(false);
        }
      }
    };

    const timer = setTimeout(fetchMatchingCount, 150);
    return () => {
      isCancelled = true;
      clearTimeout(timer);
    };
  }, [isOpen, minLevel, maxLevel, selectedTypes]);

  if (!isOpen) return null;

  const toggleType = (t: ItemType) => {
    setSelectedTypes(prev => {
      if (prev.includes(t)) {
        if (prev.length === 1) return prev; // Keep at least one
        return prev.filter(item => item !== t);
      } else {
        return [...prev, t];
      }
    });
  };

  const handleStartReview = () => {
    if (!matchCount || matchCount <= 0) return;
    const effectiveMin = Math.min(minLevel, maxLevel);
    const effectiveMax = Math.max(minLevel, maxLevel);
    const query = new URLSearchParams({
      minLevel: String(effectiveMin),
      maxLevel: String(effectiveMax),
      types: selectedTypes.join(','),
    });

    onClose();
    startTransition(() => {
      router.push(`/review?${query.toString()}`);
    });
  };

  const levelRanges = [
    { label: '1–10', min: 1, max: 10 },
    { label: '11–20', min: 11, max: 20 },
    { label: '21–30', min: 21, max: 30 },
    { label: '31–40', min: 31, max: 40 },
    { label: '41–50', min: 41, max: 50 },
    { label: '51–60', min: 51, max: 60 },
  ];

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-slate-950/70 backdrop-blur-sm animate-fade-in">
      <div 
        className="w-full max-w-lg bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl shadow-2xl overflow-hidden flex flex-col max-h-[90vh] transition-all"
        role="dialog"
        aria-modal="true"
        aria-labelledby="advanced-review-title"
      >
        {/* Header */}
        <div className="p-5 sm:p-6 border-b border-slate-100 dark:border-slate-800 flex items-center justify-between bg-slate-50/50 dark:bg-slate-900/50">
          <div className="flex items-center space-x-3">
            <div className="w-10 h-10 rounded-2xl bg-gradient-to-tr from-pink-500 to-indigo-600 flex items-center justify-center text-white shadow-md shadow-pink-500/20">
              <SlidersHorizontal className="w-5 h-5" />
            </div>
            <div>
              <div className="flex items-center space-x-2">
                <h3 id="advanced-review-title" className="text-lg font-bold text-slate-900 dark:text-slate-100">
                  Advanced Review
                </h3>
                <span className="px-2 py-0.5 text-[10px] font-black uppercase tracking-wider rounded-md bg-indigo-500/10 text-indigo-600 dark:text-indigo-400 border border-indigo-500/20">
                  Dev Mode
                </span>
              </div>
              <p className="text-xs text-slate-500 dark:text-slate-400 mt-0.5">
                Filter item jatuh tempo berdasarkan level dan kategori
              </p>
            </div>
          </div>
          <button
            onClick={onClose}
            className="w-8 h-8 rounded-full flex items-center justify-center text-slate-400 hover:text-slate-600 dark:hover:text-slate-200 hover:bg-slate-100 dark:hover:bg-slate-800 transition-colors cursor-pointer"
            title="Tutup"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Content */}
        <div className="p-5 sm:p-6 space-y-6 overflow-y-auto">
          {/* Section 1: Rentang Level */}
          <div className="space-y-3">
            <label className="text-xs font-bold uppercase tracking-wider text-slate-500 dark:text-slate-400 block">
              Rentang Level (1 ~ 60)
            </label>

            <div className="grid grid-cols-2 gap-3">
              <div className="space-y-1">
                <span className="text-[11px] font-semibold text-slate-400 dark:text-slate-500">Dari Level</span>
                <input
                  type="number"
                  min={1}
                  max={60}
                  value={minLevel}
                  onChange={(e) => {
                    const val = Math.max(1, Math.min(60, Number(e.target.value) || 1));
                    setMinLevel(val);
                  }}
                  className="w-full px-3.5 py-2.5 rounded-xl border border-slate-200 dark:border-slate-700 bg-slate-50 dark:bg-slate-800 text-slate-900 dark:text-slate-100 text-sm font-bold focus:outline-hidden focus:ring-2 focus:ring-indigo-500"
                />
              </div>

              <div className="space-y-1">
                <span className="text-[11px] font-semibold text-slate-400 dark:text-slate-500">Sampai Level</span>
                <input
                  type="number"
                  min={1}
                  max={60}
                  value={maxLevel}
                  onChange={(e) => {
                    const val = Math.max(1, Math.min(60, Number(e.target.value) || 1));
                    setMaxLevel(val);
                  }}
                  className="w-full px-3.5 py-2.5 rounded-xl border border-slate-200 dark:border-slate-700 bg-slate-50 dark:bg-slate-800 text-slate-900 dark:text-slate-100 text-sm font-bold focus:outline-hidden focus:ring-2 focus:ring-indigo-500"
                />
              </div>
            </div>

            {/* Quick Presets */}
            <div className="space-y-1.5 pt-1">
              <span className="text-[11px] font-semibold text-slate-400 dark:text-slate-500 block">Preset Cepat:</span>
              <div className="flex flex-wrap gap-1.5">
                <button
                  type="button"
                  onClick={() => {
                    setMinLevel(userLevel);
                    setMaxLevel(userLevel);
                  }}
                  className="px-2.5 py-1 text-xs font-semibold rounded-lg bg-slate-100 dark:bg-slate-800 hover:bg-indigo-50 hover:text-indigo-600 dark:hover:bg-indigo-950/40 dark:hover:text-indigo-400 transition-colors border border-transparent hover:border-indigo-300 dark:hover:border-indigo-800 cursor-pointer"
                >
                  Level Saat Ini ({userLevel})
                </button>
                <button
                  type="button"
                  onClick={() => {
                    setMinLevel(1);
                    setMaxLevel(60);
                  }}
                  className="px-2.5 py-1 text-xs font-semibold rounded-lg bg-slate-100 dark:bg-slate-800 hover:bg-indigo-50 hover:text-indigo-600 dark:hover:bg-indigo-950/40 dark:hover:text-indigo-400 transition-colors border border-transparent hover:border-indigo-300 dark:hover:border-indigo-800 cursor-pointer"
                >
                  Semua (1–60)
                </button>
                {levelRanges.map((r) => (
                  <button
                    key={r.label}
                    type="button"
                    onClick={() => {
                      setMinLevel(r.min);
                      setMaxLevel(r.max);
                    }}
                    className="px-2.5 py-1 text-xs font-semibold rounded-lg bg-slate-100 dark:bg-slate-800 hover:bg-indigo-50 hover:text-indigo-600 dark:hover:bg-indigo-950/40 dark:hover:text-indigo-400 transition-colors border border-transparent hover:border-indigo-300 dark:hover:border-indigo-800 cursor-pointer"
                  >
                    {r.label}
                  </button>
                ))}
              </div>
            </div>
          </div>

          {/* Section 2: Kategori Item */}
          <div className="space-y-3">
            <label className="text-xs font-bold uppercase tracking-wider text-slate-500 dark:text-slate-400 block">
              Kategori Item
            </label>
            <div className="grid grid-cols-3 gap-2.5">
              {/* Radical */}
              <button
                type="button"
                onClick={() => toggleType('radical')}
                className={`py-3 px-3 rounded-2xl border text-center transition-all flex flex-col items-center justify-center gap-1.5 cursor-pointer ${
                  selectedTypes.includes('radical')
                    ? 'bg-cyan-500/10 border-cyan-500 text-cyan-600 dark:text-cyan-400 shadow-xs'
                    : 'bg-slate-50 dark:bg-slate-800/60 border-slate-200 dark:border-slate-700 text-slate-400 dark:text-slate-500 opacity-60'
                }`}
              >
                <div className="flex items-center gap-1">
                  <span className="w-2 h-2 rounded-full bg-cyan-500"></span>
                  <span className="text-xs font-black">Radikal</span>
                </div>
                {selectedTypes.includes('radical') && <Check className="w-3.5 h-3.5 text-cyan-500" />}
              </button>

              {/* Kanji */}
              <button
                type="button"
                onClick={() => toggleType('kanji')}
                className={`py-3 px-3 rounded-2xl border text-center transition-all flex flex-col items-center justify-center gap-1.5 cursor-pointer ${
                  selectedTypes.includes('kanji')
                    ? 'bg-pink-500/10 border-pink-500 text-pink-600 dark:text-pink-400 shadow-xs'
                    : 'bg-slate-50 dark:bg-slate-800/60 border-slate-200 dark:border-slate-700 text-slate-400 dark:text-slate-500 opacity-60'
                }`}
              >
                <div className="flex items-center gap-1">
                  <span className="w-2 h-2 rounded-full bg-pink-500"></span>
                  <span className="text-xs font-black">Kanji</span>
                </div>
                {selectedTypes.includes('kanji') && <Check className="w-3.5 h-3.5 text-pink-500" />}
              </button>

              {/* Vocabulary */}
              <button
                type="button"
                onClick={() => toggleType('vocabulary')}
                className={`py-3 px-3 rounded-2xl border text-center transition-all flex flex-col items-center justify-center gap-1.5 cursor-pointer ${
                  selectedTypes.includes('vocabulary')
                    ? 'bg-purple-500/10 border-purple-500 text-purple-600 dark:text-purple-400 shadow-xs'
                    : 'bg-slate-50 dark:bg-slate-800/60 border-slate-200 dark:border-slate-700 text-slate-400 dark:text-slate-500 opacity-60'
                }`}
              >
                <div className="flex items-center gap-1">
                  <span className="w-2 h-2 rounded-full bg-purple-500"></span>
                  <span className="text-xs font-black">Kosakata</span>
                </div>
                {selectedTypes.includes('vocabulary') && <Check className="w-3.5 h-3.5 text-purple-500" />}
              </button>
            </div>
          </div>

          {/* Section 3: Summary Match Box */}
          <div className="p-4 rounded-2xl bg-indigo-50/60 dark:bg-indigo-950/30 border border-indigo-100 dark:border-indigo-900/40 flex items-center justify-between">
            <div className="flex items-center space-x-2.5">
              <div className="p-2 rounded-xl bg-indigo-500/15 text-indigo-600 dark:text-indigo-400">
                <Flame className="w-5 h-5" />
              </div>
              <div>
                <span className="text-xs font-bold text-slate-900 dark:text-slate-100 block">
                  Item Jatuh Tempo
                </span>
                <span className="text-[11px] text-slate-500 dark:text-slate-400">
                  Level {Math.min(minLevel, maxLevel)}–{Math.max(minLevel, maxLevel)} • {selectedTypes.join(', ')}
                </span>
              </div>
            </div>

            <div className="text-right">
              {loadingCount ? (
                <Loader2 className="w-5 h-5 text-indigo-500 animate-spin ml-auto" />
              ) : (
                <span className="text-xl font-black text-indigo-600 dark:text-indigo-400">
                  {matchCount !== null ? matchCount : 0}
                </span>
              )}
            </div>
          </div>
        </div>

        {/* Footer */}
        <div className="p-4 sm:p-5 border-t border-slate-100 dark:border-slate-800 bg-slate-50/50 dark:bg-slate-900/50 flex items-center justify-end gap-2.5">
          <button
            type="button"
            onClick={onClose}
            className="px-4 py-2.5 text-xs font-bold text-slate-600 dark:text-slate-400 hover:text-slate-900 dark:hover:text-slate-200 hover:bg-slate-200/50 dark:hover:bg-slate-800 rounded-xl transition-colors cursor-pointer"
          >
            Batal
          </button>
          <button
            type="button"
            onClick={handleStartReview}
            disabled={loadingCount || !matchCount || matchCount === 0}
            className="px-5 py-2.5 text-xs font-bold bg-gradient-to-r from-pink-500 to-indigo-600 text-white rounded-xl shadow-md hover:shadow-lg disabled:opacity-40 disabled:cursor-not-allowed hover:scale-[1.02] active:scale-[0.98] transition-all flex items-center gap-1.5 cursor-pointer"
          >
            <Sparkles className="w-4 h-4" />
            <span>Mulai Review ({matchCount || 0})</span>
          </button>
        </div>
      </div>
    </div>
  );
}
