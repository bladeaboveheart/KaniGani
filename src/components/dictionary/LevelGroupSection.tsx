'use client';

import React from 'react';
import ItemCard from './ItemCard';
import { DictionaryItem } from '@/hooks/useDictionaryItems';

interface LevelGroupSectionProps {
  allItems: DictionaryItem[];
  filteredItems: DictionaryItem[];
  onItemClick: (item: DictionaryItem) => void;
  displayMode?: 'reading' | 'meaning';
}

export default function LevelGroupSection({
  allItems,
  filteredItems,
  onItemClick,
  displayMode = 'reading',
}: LevelGroupSectionProps) {
  // Get all unique levels from filteredItems sorted ascending
  const uniqueLevels = Array.from(new Set(filteredItems.map((item) => item.level))).sort(
    (a, b) => a - b
  );

  if (uniqueLevels.length === 0) {
    return (
      <div className="py-16 text-center bg-card rounded-3xl border border-card-border p-8 space-y-3 shadow-xs">
        <p className="text-base font-bold text-primary">
          Tidak ada item yang sesuai dengan filter atau pencarian Anda.
        </p>
        <p className="text-xs text-muted">
          Coba ubah kata kunci pencarian, pilih tingkat level lain, atau reset filter SRS.
        </p>
      </div>
    );
  }

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
          <div key={lvl} className="space-y-3 sm:space-y-3.5">
            {/* Level Header Panel */}
            <div className="bg-card px-4 sm:px-5 py-3 rounded-2xl border border-card-border shadow-xs flex items-center justify-between">
              <div className="flex items-center space-x-2.5">
                <span className="text-sm sm:text-base font-black text-primary">
                  Level {lvl}
                </span>
              </div>

              <div className="flex items-center space-x-2.5">
                <span className="text-xs font-semibold text-muted">
                  {unlockedCount} / {totalCount} terbuka ({Math.round((unlockedCount / (totalCount || 1)) * 100)}%)
                </span>
                <div className="w-16 sm:w-24 h-1.5 bg-card-muted rounded-full overflow-hidden">
                  <div
                    className="h-full bg-indigo-500 rounded-full transition-all duration-300"
                    style={{ width: `${Math.round((unlockedCount / (totalCount || 1)) * 100)}%` }}
                  />
                </div>
              </div>
            </div>

            {/* Items Container: Flex-wrap for Vocabulary & Kanji (dynamic card width), CSS Grid for Radical */}
            {levelFilteredItems[0]?.type === 'vocabulary' || levelFilteredItems[0]?.type === 'kanji' ? (
              <div className="flex flex-wrap gap-2 sm:gap-2.5 justify-start">
                {levelFilteredItems.map((item) => (
                  <ItemCard
                    key={item.id}
                    item={item}
                    onClick={onItemClick}
                    displayMode={displayMode}
                  />
                ))}
              </div>
            ) : (
              <div className="grid grid-cols-3 xs:grid-cols-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12 gap-2 sm:gap-2.5">
                {levelFilteredItems.map((item) => (
                  <ItemCard
                    key={item.id}
                    item={item}
                    onClick={onItemClick}
                    displayMode={displayMode}
                  />
                ))}
              </div>
            )}
          </div>
        );
      })}
    </div>
  );
}
