'use client';

import { useState, useMemo } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { LeechItem } from '@/lib/leechLogic';
import { X, Search, Flame, ExternalLink, Play, AlertTriangle, ShieldAlert } from 'lucide-react';

interface LeechListModalProps {
  isOpen: boolean;
  onClose: () => void;
  leeches: LeechItem[];
}

export default function LeechListModal({
  isOpen,
  onClose,
  leeches,
}: LeechListModalProps) {
  const router = useRouter();
  const [searchQuery, setSearchQuery] = useState('');
  const [typeFilter, setTypeFilter] = useState<'all' | 'kanji' | 'vocabulary'>('all');
  const [sortBy, setSortBy] = useState<'score' | 'mistakes' | 'accuracy'>('score');

  const filteredLeeches = useMemo(() => {
    return leeches
      .filter((item) => {
        if (typeFilter !== 'all' && item.type !== typeFilter) return false;
        if (!searchQuery.trim()) return true;
        const q = searchQuery.toLowerCase().trim();
        return (
          item.character.toLowerCase().includes(q) ||
          item.meaning.toLowerCase().includes(q) ||
          (item.reading && item.reading.toLowerCase().includes(q))
        );
      })
      .sort((a, b) => {
        if (sortBy === 'score') return b.leech_score - a.leech_score;
        if (sortBy === 'mistakes') return b.incorrect_count - a.incorrect_count;
        return a.accuracy - b.accuracy;
      });
  }, [leeches, searchQuery, typeFilter, sortBy]);

  if (!isOpen) return null;

  const handleStartCram = () => {
    onClose();
    router.push('/review?mode=leech');
  };

  const getSeverityBadge = (severity: LeechItem['severity']) => {
    switch (severity) {
      case 'critical':
        return (
          <span className="px-2 py-0.5 rounded-md text-[11px] font-bold bg-rose-500/15 text-rose-600 dark:text-rose-400 border border-rose-500/30 flex items-center space-x-1">
            <Flame className="w-3 h-3 shrink-0" />
            <span>Kritis</span>
          </span>
        );
      case 'high':
        return (
          <span className="px-2 py-0.5 rounded-md text-[11px] font-bold bg-amber-500/15 text-amber-600 dark:text-amber-400 border border-amber-500/30 flex items-center space-x-1">
            <AlertTriangle className="w-3 h-3 shrink-0" />
            <span>Tinggi</span>
          </span>
        );
      case 'medium':
        return (
          <span className="px-2 py-0.5 rounded-md text-[11px] font-bold bg-yellow-500/15 text-yellow-600 dark:text-yellow-400 border border-yellow-500/30">
            Sedang
          </span>
        );
      default:
        return (
          <span className="px-2 py-0.5 rounded-md text-[11px] font-medium bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-400">
            Rendah
          </span>
        );
    }
  };

  const getItemTypeBadge = (type: string) => {
    if (type === 'radical') return 'bg-cyan-500 text-white';
    if (type === 'kanji') return 'bg-pink-500 text-white';
    return 'bg-purple-600 text-white';
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-3 sm:p-4 bg-slate-900/60 dark:bg-black/70 backdrop-blur-sm animate-fade-in">
      <div className="relative w-full max-w-2xl bg-white dark:bg-slate-900 rounded-2xl shadow-2xl border border-slate-200 dark:border-slate-800 flex flex-col max-h-[90vh] overflow-hidden">
        {/* Header */}
        <div className="flex items-center justify-between p-4 sm:p-5 border-b border-slate-200 dark:border-slate-800 shrink-0">
          <div className="flex items-center space-x-3">
            <div className="p-2.5 rounded-xl bg-rose-500/10 text-rose-500 dark:bg-rose-500/20 dark:text-rose-400">
              <ShieldAlert className="w-5 h-5" />
            </div>
            <div>
              <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white flex items-center space-x-2">
                <span>Daftar Lengkap Leech</span>
                <span className="text-xs px-2 py-0.5 rounded-full bg-rose-100 dark:bg-rose-950/60 text-rose-600 dark:text-rose-400 font-bold border border-rose-200 dark:border-rose-900">
                  {leeches.length} Item
                </span>
              </h2>
              <p className="text-xs text-slate-500 dark:text-slate-400">
                Item yang sering salah dijawab dan perlu penguatan ingatan
              </p>
            </div>
          </div>
          <button
            onClick={onClose}
            className="p-2 rounded-xl text-slate-400 hover:text-slate-700 dark:hover:text-slate-200 hover:bg-slate-100 dark:hover:bg-slate-800 transition-colors"
            aria-label="Tutup modal"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Controls (Search, Filter, Sort) */}
        <div className="p-4 border-b border-slate-100 dark:border-slate-800/60 bg-slate-50/50 dark:bg-slate-950/30 flex flex-col sm:flex-row items-stretch sm:items-center justify-between gap-3 shrink-0">
          {/* Search Bar */}
          <div className="relative flex-1">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400" />
            <input
              type="text"
              placeholder="Cari karakter, arti, atau kana..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full pl-9 pr-4 py-2 text-xs sm:text-sm bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl focus:outline-hidden focus:ring-2 focus:ring-rose-500 text-slate-800 dark:text-slate-200"
            />
          </div>

          {/* Type Filter & Sort */}
          <div className="flex items-center space-x-2 shrink-0">
            {/* Type buttons */}
            <div className="flex bg-slate-200/70 dark:bg-slate-800 p-0.5 rounded-xl text-xs">
              {(['all', 'kanji', 'vocabulary'] as const).map((t) => (
                <button
                  key={t}
                  onClick={() => setTypeFilter(t)}
                  className={`px-2.5 py-1.5 rounded-lg font-medium transition-all ${
                    typeFilter === t
                      ? 'bg-white dark:bg-slate-700 text-slate-900 dark:text-white shadow-xs'
                      : 'text-slate-600 dark:text-slate-400 hover:text-slate-900 dark:hover:text-white'
                  }`}
                >
                  {t === 'all' ? 'Semua' : t === 'kanji' ? 'Kanji' : 'Kosakata'}
                </button>
              ))}
            </div>

            {/* Sort Select */}
            <select
              value={sortBy}
              onChange={(e) => setSortBy(e.target.value as any)}
              className="text-xs py-1.5 px-2.5 bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl text-slate-700 dark:text-slate-300 focus:outline-hidden focus:ring-1 focus:ring-rose-500"
            >
              <option value="score">Skor Leech (Terparah)</option>
              <option value="mistakes">Paling Banyak Salah</option>
              <option value="accuracy">Akurasi Terendah</option>
            </select>
          </div>
        </div>

        {/* Leech Items List */}
        <div className="flex-1 overflow-y-auto p-4 space-y-2.5">
          {filteredLeeches.length === 0 ? (
            <div className="text-center py-12 text-slate-400 dark:text-slate-500 text-sm">
              Tidak ada item leech yang cocok dengan pencarian.
            </div>
          ) : (
            filteredLeeches.map((item) => (
              <div
                key={item.id}
                className="p-3 sm:p-3.5 bg-white dark:bg-slate-850 rounded-xl border border-slate-200/80 dark:border-slate-800 hover:border-rose-400/50 dark:hover:border-rose-500/50 transition-all flex items-center justify-between gap-3 group"
              >
                {/* Left: Character Badge & Details */}
                <div className="flex items-center space-x-3.5 min-w-0">
                  <div
                    className={`w-12 h-12 rounded-xl flex items-center justify-center font-japanese text-xl font-bold shrink-0 shadow-xs ${getItemTypeBadge(
                      item.type
                    )}`}
                  >
                    {item.character}
                  </div>
                  <div className="min-w-0">
                    <div className="flex items-center space-x-2 mb-0.5">
                      <span className="font-semibold text-sm sm:text-base text-slate-900 dark:text-white truncate">
                        {item.meaning}
                      </span>
                      {getSeverityBadge(item.severity)}
                    </div>
                    <div className="flex items-center space-x-2 text-xs text-slate-500 dark:text-slate-400">
                      {item.reading && (
                        <>
                          <span className="font-japanese text-slate-700 dark:text-slate-300">
                            {item.reading}
                          </span>
                          <span>•</span>
                        </>
                      )}
                      <span>Level {item.level}</span>
                      <span>•</span>
                      <span className="text-rose-500 dark:text-rose-400 font-medium">
                        {item.incorrect_count}x salah
                      </span>
                      <span>•</span>
                      <span>{item.accuracy}% akurat</span>
                    </div>
                  </div>
                </div>

                {/* Right: Actions */}
                <div className="flex items-center space-x-2 shrink-0">
                  <Link
                    href={`/${item.type}/${encodeURIComponent(item.character)}`}
                    target="_blank"
                    className="p-2 text-slate-400 hover:text-slate-700 dark:hover:text-slate-200 hover:bg-slate-100 dark:hover:bg-slate-800 rounded-lg transition-colors"
                    title="Buka halaman kamus"
                  >
                    <ExternalLink className="w-4 h-4" />
                  </Link>
                </div>
              </div>
            ))
          )}
        </div>

        {/* Footer */}
        <div className="p-4 border-t border-slate-200 dark:border-slate-800 bg-white dark:bg-slate-900 flex items-center justify-between shrink-0">
          <span className="text-xs text-slate-500 dark:text-slate-400 hidden sm:inline">
            Latihan Leech tidak memengaruhi jadwal SRS resmi
          </span>
          <div className="flex items-center space-x-2.5 w-full sm:w-auto justify-end">
            <button
              onClick={onClose}
              className="px-4 py-2 text-xs sm:text-sm font-medium rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-slate-800 transition-colors"
            >
              Tutup
            </button>
            <button
              onClick={handleStartCram}
              className="flex-1 sm:flex-none px-5 py-2 text-xs sm:text-sm font-bold rounded-xl bg-gradient-to-r from-rose-500 to-pink-600 hover:from-rose-600 hover:to-pink-700 text-white shadow-md shadow-rose-500/20 hover:shadow-lg transition-all flex items-center justify-center space-x-1.5 cursor-pointer"
            >
              <Play className="w-4 h-4 fill-current" />
              <span>Mulai Latihan Leech</span>
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
