'use client';

import { useMemo } from 'react';
import { ItemType } from '@/lib/types';
import { Flame, Compass, ChevronRight } from 'lucide-react';

export interface TierInfo {
  id: string;
  name: string;
  indonesian: string;
  range: [number, number];
  color: string;
  badgeBg: string;
  badgeText: string;
  activeBorder: string;
}

export const WANIKANI_TIERS: TierInfo[] = [
  {
    id: 'pleasant',
    name: 'Pleasant',
    indonesian: 'Menyenangkan',
    range: [1, 10],
    color: 'emerald',
    badgeBg: 'bg-emerald-500/10 hover:bg-emerald-500/20 dark:bg-emerald-500/15',
    badgeText: 'text-emerald-700 dark:text-emerald-300',
    activeBorder: 'border-emerald-500 ring-2 ring-emerald-500/20 bg-emerald-500/20 text-emerald-800 dark:text-emerald-200',
  },
  {
    id: 'painful',
    name: 'Painful',
    indonesian: 'Menyakitkan',
    range: [11, 20],
    color: 'blue',
    badgeBg: 'bg-blue-500/10 hover:bg-blue-500/20 dark:bg-blue-500/15',
    badgeText: 'text-blue-700 dark:text-blue-300',
    activeBorder: 'border-blue-500 ring-2 ring-blue-500/20 bg-blue-500/20 text-blue-800 dark:text-blue-200',
  },
  {
    id: 'death',
    name: 'Death',
    indonesian: 'Kematian',
    range: [21, 30],
    color: 'amber',
    badgeBg: 'bg-amber-500/10 hover:bg-amber-500/20 dark:bg-amber-500/15',
    badgeText: 'text-amber-700 dark:text-amber-300',
    activeBorder: 'border-amber-500 ring-2 ring-amber-500/20 bg-amber-500/20 text-amber-800 dark:text-amber-200',
  },
  {
    id: 'hell',
    name: 'Hell',
    indonesian: 'Neraka',
    range: [31, 40],
    color: 'rose',
    badgeBg: 'bg-rose-500/10 hover:bg-rose-500/20 dark:bg-rose-500/15',
    badgeText: 'text-rose-700 dark:text-rose-300',
    activeBorder: 'border-rose-500 ring-2 ring-rose-500/20 bg-rose-500/20 text-rose-800 dark:text-rose-200',
  },
  {
    id: 'paradise',
    name: 'Paradise',
    indonesian: 'Surga',
    range: [41, 50],
    color: 'purple',
    badgeBg: 'bg-purple-500/10 hover:bg-purple-500/20 dark:bg-purple-500/15',
    badgeText: 'text-purple-700 dark:text-purple-300',
    activeBorder: 'border-purple-500 ring-2 ring-purple-500/20 bg-purple-500/20 text-purple-800 dark:text-purple-200',
  },
  {
    id: 'reality',
    name: 'Reality',
    indonesian: 'Realitas',
    range: [51, 60],
    color: 'slate',
    badgeBg: 'bg-slate-500/10 hover:bg-slate-500/20 dark:bg-slate-500/15',
    badgeText: 'text-slate-700 dark:text-slate-300',
    activeBorder: 'border-slate-500 ring-2 ring-slate-500/20 bg-slate-500/20 text-slate-800 dark:text-slate-100',
  },
];

interface LevelTierBarProps {
  selectedLevel: string;
  onLevelChange: (level: string) => void;
  selectedTier: string;
  onTierChange: (tier: string) => void;
  itemType: ItemType;
}

export default function LevelTierBar({
  selectedLevel,
  onLevelChange,
  selectedTier,
  onTierChange,
  itemType,
}: LevelTierBarProps) {
  // Determine which levels to show in the pills bar based on selectedTier
  const levelsToShow = useMemo(() => {
    if (selectedTier === 'all') {
      return Array.from({ length: 60 }, (_, i) => i + 1);
    }
    const tier = WANIKANI_TIERS.find((t) => t.id === selectedTier);
    if (!tier) return Array.from({ length: 60 }, (_, i) => i + 1);
    return Array.from({ length: tier.range[1] - tier.range[0] + 1 }, (_, i) => tier.range[0] + i);
  }, [selectedTier]);

  return (
    <div className="space-y-3 bg-white dark:bg-slate-900 p-4 sm:p-5 rounded-3xl border border-slate-200 dark:border-slate-850 shadow-xs">
      {/* 1. Tiers Navigation Bar */}
      <div className="flex items-center justify-between gap-2 overflow-x-auto no-scrollbar pb-1">
        <button
          type="button"
          onClick={() => {
            onTierChange('all');
            onLevelChange('all');
          }}
          className={`px-3.5 py-1.5 rounded-xl text-xs font-bold transition-all shrink-0 cursor-pointer border ${
            selectedTier === 'all' && selectedLevel === 'all'
              ? 'bg-slate-900 text-white dark:bg-white dark:text-slate-900 border-transparent shadow-xs'
              : 'border-slate-200 dark:border-slate-800 text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-slate-800'
          }`}
        >
          Semua (1–60)
        </button>

        {WANIKANI_TIERS.map((tier) => {
          const isTierActive = selectedTier === tier.id;
          return (
            <button
              key={tier.id}
              type="button"
              onClick={() => {
                onTierChange(tier.id);
                onLevelChange('all');
              }}
              className={`px-3 py-1.5 rounded-xl text-xs font-bold transition-all shrink-0 cursor-pointer border flex items-center space-x-1.5 ${
                isTierActive
                  ? tier.activeBorder
                  : `${tier.badgeBg} ${tier.badgeText} border-transparent`
              }`}
            >
              <span>{tier.name}</span>
              <span className="text-4xs opacity-75 font-semibold hidden sm:inline">
                ({tier.range[0]}–{tier.range[1]})
              </span>
            </button>
          );
        })}
      </div>

      {/* 2. Level Pills (1–60 or filtered by tier) */}
      <div className="pt-2 border-t border-slate-100 dark:border-slate-850">
        <div className="flex items-center space-x-1.5 overflow-x-auto no-scrollbar py-1">
          <button
            type="button"
            onClick={() => onLevelChange('all')}
            className={`px-3 py-1 rounded-lg text-xxs font-black shrink-0 transition-all cursor-pointer ${
              selectedLevel === 'all'
                ? 'bg-slate-900 text-white dark:bg-white dark:text-slate-900 shadow-xs'
                : 'bg-slate-100 dark:bg-slate-800 text-slate-500 hover:bg-slate-200 dark:hover:bg-slate-700'
            }`}
          >
            ALL
          </button>

          {levelsToShow.map((lvl) => {
            const isLvlActive = String(lvl) === selectedLevel;
            return (
              <button
                key={lvl}
                type="button"
                onClick={() => onLevelChange(String(lvl))}
                className={`min-w-[30px] h-[28px] px-1.5 rounded-lg text-xxs font-black shrink-0 transition-all cursor-pointer flex items-center justify-center ${
                  isLvlActive
                    ? 'bg-indigo-600 text-white shadow-xs scale-105 ring-2 ring-indigo-400/40'
                    : 'bg-slate-100 hover:bg-slate-200 dark:bg-slate-800/80 dark:hover:bg-slate-750 text-slate-700 dark:text-slate-300'
                }`}
              >
                {lvl}
              </button>
            );
          })}
        </div>
      </div>
    </div>
  );
}
