'use client';

import { useState, useEffect } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { LeechItem } from '@/lib/leechLogic';
import LeechListModal from './LeechListModal';
import { Flame, Play, ArrowRight, Sparkles, CheckCircle2, ShieldAlert, AlertTriangle } from 'lucide-react';

export default function LeechTrackerCard() {
  const router = useRouter();
  const [leeches, setLeeches] = useState<LeechItem[]>([]);
  const [loading, setLoading] = useState(true);
  const [isModalOpen, setIsModalOpen] = useState(false);

  useEffect(() => {
    async function loadLeeches() {
      try {
        setLoading(true);
        const { data: { session } } = await supabase.auth.getSession();
        if (!session) {
          setLoading(false);
          return;
        }

        const res = await fetch('/api/leeches', {
          headers: {
            Authorization: `Bearer ${session.access_token}`,
          },
        });

        if (res.ok) {
          const json = await res.json();
          setLeeches(json.leeches || []);
        }
      } catch (err) {
        console.error('Failed to load leeches:', err);
      } finally {
        setLoading(false);
      }
    }

    loadLeeches();
  }, []);

  const getItemTypeBadge = (type: string) => {
    if (type === 'radical') return 'bg-radical text-white';
    if (type === 'kanji') return 'bg-kanji text-white';
    return 'bg-vocab text-white';
  };

  const getSeverityBadge = (severity: LeechItem['severity']) => {
    switch (severity) {
      case 'critical':
        return (
          <span className="px-1.5 py-0.5 rounded text-[10px] font-bold bg-rose-500/15 text-rose-600 dark:text-rose-400 border border-rose-500/30 flex items-center space-x-0.5">
            <Flame className="w-2.5 h-2.5 shrink-0" />
            <span>Kritis</span>
          </span>
        );
      case 'high':
        return (
          <span className="px-1.5 py-0.5 rounded text-[10px] font-bold bg-amber-500/15 text-amber-600 dark:text-amber-400 border border-amber-500/30 flex items-center space-x-0.5">
            <AlertTriangle className="w-2.5 h-2.5 shrink-0" />
            <span>Tinggi</span>
          </span>
        );
      default:
        return (
          <span className="px-1.5 py-0.5 rounded text-[10px] font-medium bg-yellow-500/15 text-yellow-600 dark:text-yellow-400 border border-yellow-500/30">
            Sedang
          </span>
        );
    }
  };

  if (loading) {
    return (
      <div className="bg-card rounded-2xl sm:rounded-3xl p-5 border border-card-border shadow-xs animate-pulse">
        <div className="h-6 w-48 bg-card-muted rounded-lg mb-4" />
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
          {[1, 2, 3].map((i) => (
            <div key={i} className="h-20 bg-card-muted/60 rounded-xl" />
          ))}
        </div>
      </div>
    );
  }

  // Jika tidak ada leech sama sekali
  if (leeches.length === 0) {
    return (
      <div className="bg-card rounded-2xl sm:rounded-3xl p-5 border border-card-border shadow-xs">
        <div className="flex items-center justify-between mb-3">
          <div className="flex items-center space-x-2.5">
            <div className="p-2 rounded-xl bg-emerald-500/10 text-emerald-500 dark:bg-emerald-500/20 dark:text-emerald-400">
              <CheckCircle2 className="w-5 h-5" />
            </div>
            <div>
              <h3 className="font-bold text-text-primary text-base">
                Pelacak Leech (Item Kerap Keliru)
              </h3>
              <p className="text-xs text-text-muted">
                Memantau huruf atau kata yang sering gagal diingat
              </p>
            </div>
          </div>
          <span className="px-2.5 py-1 rounded-full text-xs font-bold bg-emerald-100 dark:bg-emerald-950/60 text-emerald-600 dark:text-emerald-400 border border-emerald-200 dark:border-emerald-800/50 flex items-center space-x-1">
            <Sparkles className="w-3.5 h-3.5" />
            <span>0 Leech</span>
          </span>
        </div>
        <p className="text-xs sm:text-sm text-text-secondary bg-card-muted/70 p-3.5 rounded-xl border border-card-border flex items-center space-x-2">
          <span>🎉</span>
          <span>Luar biasa! Tidak ada item leech yang tersendat. Daya ingat dan penguasaan materimu sangat stabil.</span>
        </p>
      </div>
    );
  }

  // Tampilkan top 4-6 leeches
  const topLeeches = leeches.slice(0, 6);

  return (
    <>
      <div className="bg-card rounded-2xl sm:rounded-3xl p-5 border border-card-border shadow-xs">
        {/* Header */}
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-2.5 mb-4">
          <div className="flex items-center space-x-2.5">
            <div className="p-2 rounded-xl bg-rose-500/10 text-rose-500 dark:bg-rose-500/20 dark:text-rose-400 shrink-0">
              <Flame className="w-5 h-5" />
            </div>
            <div>
              <div className="flex items-center space-x-2">
                <h3 className="font-bold text-text-primary text-base">
                  Pelacak Leech (Item Kerap Keliru)
                </h3>
                <span className="px-2 py-0.5 rounded-full text-xs font-bold bg-rose-100 dark:bg-rose-950/60 text-rose-600 dark:text-rose-400 border border-rose-200 dark:border-rose-900/60">
                  {leeches.length} Item
                </span>
              </div>
              <p className="text-xs text-text-muted">
                Item yang rasio salahnya tinggi. Latih sesering mungkin agar ingatan kembali kuat.
              </p>
            </div>
          </div>

          <div className="flex items-center space-x-2 self-start sm:self-auto">
            <button
              onClick={() => setIsModalOpen(true)}
              className="px-3 py-1.5 rounded-xl text-xs font-bold text-text-secondary hover:text-text-primary hover:bg-card-muted border border-card-border transition-colors flex items-center space-x-1 cursor-pointer"
            >
              <span>Lihat Semua</span>
              <ArrowRight className="w-3.5 h-3.5" />
            </button>
            <button
              onClick={() => router.push('/review?mode=leech')}
              className="px-3.5 py-1.5 rounded-xl text-xs font-bold bg-gradient-to-r from-rose-500 to-pink-600 hover:from-rose-600 hover:to-pink-700 text-white shadow-xs hover:shadow-md transition-all flex items-center space-x-1.5 cursor-pointer"
            >
              <Play className="w-3.5 h-3.5 fill-current" />
              <span>Latih Leech</span>
            </button>
          </div>
        </div>

        {/* Top Leech Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2.5">
          {topLeeches.map((item) => (
            <Link
              key={item.id}
              href={`/${item.type}/${encodeURIComponent(item.character)}`}
              className="p-3 rounded-xl bg-card-muted/70 border border-card-border hover:border-rose-400/50 dark:hover:border-rose-500/50 hover:bg-card transition-all flex items-center space-x-3 group"
            >
              <div
                className={`w-11 h-11 rounded-lg flex items-center justify-center font-japanese text-lg font-bold shrink-0 shadow-xs ${getItemTypeBadge(
                  item.type
                )}`}
              >
                {item.character}
              </div>
              <div className="min-w-0 flex-1">
                <div className="flex items-center justify-between gap-1 mb-0.5">
                  <span className="font-semibold text-xs sm:text-sm text-slate-800 dark:text-slate-200 truncate group-hover:text-rose-500 dark:group-hover:text-rose-400 transition-colors">
                    {item.meaning}
                  </span>
                  {getSeverityBadge(item.severity)}
                </div>
                <div className="flex items-center space-x-1.5 text-[11px] text-slate-500 dark:text-slate-400">
                  {item.reading && (
                    <>
                      <span className="font-japanese truncate max-w-[80px]">
                        {item.reading}
                      </span>
                      <span>•</span>
                    </>
                  )}
                  <span className="text-rose-500 dark:text-rose-400 font-semibold">
                    {item.incorrect_count}x salah
                  </span>
                  <span>•</span>
                  <span>{item.accuracy}%</span>
                </div>
              </div>
            </Link>
          ))}
        </div>

        {/* View All Footer Link if more than 6 */}
        {leeches.length > 6 && (
          <div className="mt-3.5 pt-3 border-t border-slate-100 dark:border-slate-800/60 flex items-center justify-between text-xs text-slate-500 dark:text-slate-400">
            <span>Menampilkan 6 dari {leeches.length} item tersulit</span>
            <button
              onClick={() => setIsModalOpen(true)}
              className="font-semibold text-rose-500 hover:text-rose-600 dark:text-rose-400 dark:hover:text-rose-300 flex items-center space-x-1 cursor-pointer"
            >
              <span>Buka daftar selengkapnya</span>
              <ArrowRight className="w-3.5 h-3.5" />
            </button>
          </div>
        )}
      </div>

      {/* Modal Detail */}
      <LeechListModal
        isOpen={isModalOpen}
        onClose={() => setIsModalOpen(false)}
        leeches={leeches}
      />
    </>
  );
}
