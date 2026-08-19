'use client';

import React from 'react';
import ItemCard from './ItemCard';
import { DictionaryItem } from '@/hooks/useDictionaryItems';

interface LevelGroupSectionProps {
  allItems: DictionaryItem[];
  filteredItems: DictionaryItem[];
  onItemClick: (item: DictionaryItem) => void;
}

export default function LevelGroupSection({
  allItems,
  filteredItems,
  onItemClick,
}: LevelGroupSectionProps) {
  // Get all unique levels from filteredItems sorted ascending
  const uniqueLevels = Array.from(new Set(filteredItems.map((item) => item.level))).sort(
    (a, b) => a - b
  );

  return (
    <div className="space-y-8">
      {uniqueLevels.map((lvl) => {
        const levelFilteredItems = filteredItems.filter((item) => item.level === lvl);
        const levelTotalItems = allItems.filter((item) => item.level === lvl);
        const unlockedCount = levelTotalItems.filter(
          (item) => item.srs_stage !== undefined && item.srs_stage > 0
        ).length;
        const totalCount = levelTotalItems.length;

        return (
          <div key={lvl} className="space-y-4">
            {/* Level Header Panel */}
            <div className="bg-white dark:bg-slate-900 px-6 py-3.5 rounded-2xl border border-slate-200 dark:border-slate-850 shadow-2xs flex items-baseline space-x-2 shrink-0">
              <span className="text-base font-extrabold text-slate-850 dark:text-slate-100">
                Level {lvl}
              </span>
              <span className="text-xxs font-bold text-slate-400 dark:text-slate-550">
                ({unlockedCount}/{totalCount} unlocked)
              </span>
            </div>

            {/* Grid of level items */}
            <div className="flex flex-wrap gap-3 justify-start">
              {levelFilteredItems.map((item) => (
                <ItemCard key={item.id} item={item} onClick={onItemClick} />
              ))}
            </div>
          </div>
        );
      })}
    </div>
  );
}
