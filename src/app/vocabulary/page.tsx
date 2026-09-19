'use client';

import React from 'react';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import { useDictionaryItems } from '@/hooks/useDictionaryItems';
import { ITEM_THEMES } from '@/lib/srs';
import WaniKaniSubNav from '@/components/dictionary/WaniKaniSubNav';
import LevelTierBar from '@/components/dictionary/LevelTierBar';
import DictionaryFilterBar from '@/components/dictionary/DictionaryFilterBar';
import LevelGroupSection from '@/components/dictionary/LevelGroupSection';
import ItemDetailModal from '@/components/dictionary/ItemDetailModal';
import { BookOpen, Sparkles, Loader2 } from 'lucide-react';

export default function VocabularyPage() {
  const {
    loading,
    items,
    filteredItems,
    searchQuery,
    setSearchQuery,
    selectedLevel,
    setSelectedLevel,
    selectedTier,
    setSelectedTier,
    srsFilter,
    setSrsFilter,
    displayMode,
    setDisplayMode,
    selectedItem,
    openItemDetail,
    closeItemDetail,
    detailLoading,
  } = useDictionaryItems('vocabulary');

  const theme = ITEM_THEMES.vocabulary;

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-slate-50 dark:bg-slate-950 text-slate-900 dark:text-slate-100">
        <div className="flex flex-col items-center space-y-4">
          <Loader2 className="w-12 h-12 text-vocab animate-spin" />
          <p className="font-semibold text-sm">Menyiapkan Pustaka Kosakata WaniKani...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <Navbar />

      {/* WaniKani Official Sub-Navigation Tab Bar */}
      <WaniKaniSubNav currentType="vocabulary" counts={{ vocabulary: items.length }} />

      <main className="flex-1 max-w-7xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-6 sm:py-8 space-y-6 animate-fade-in">
        {/* Banner Title */}
        <section className={`bg-gradient-to-r ${theme.bannerGradient} text-white p-6 sm:p-8 rounded-3xl shadow-md relative overflow-hidden`}>
          <div className="absolute right-0 bottom-0 translate-x-8 translate-y-8 opacity-10 pointer-events-none">
            <BookOpen className="w-56 h-56" />
          </div>
          <div className="relative z-10 space-y-1.5">
            <div className="flex items-center space-x-1.5 text-purple-200">
              <Sparkles className="w-4 h-4 text-amber-300 animate-pulse" />
              <span className="text-xxs font-bold uppercase tracking-widest">KaniGani Kurikulum</span>
            </div>
            <h1 className="text-2xl sm:text-3xl font-black tracking-tight">{theme.title}</h1>
            <p className="text-xs sm:text-sm text-purple-100 max-w-2xl leading-relaxed">
              {theme.subtitle} Pahami penggunaan nyata kanji dalam ribuan kata kosakata bahasa Jepang sehari-hari (Level 1–60).
            </p>
          </div>
        </section>

        {/* Official 6 Tiers & Level 1–60 Pills Bar */}
        <LevelTierBar
          selectedLevel={selectedLevel}
          onLevelChange={setSelectedLevel}
          selectedTier={selectedTier}
          onTierChange={setSelectedTier}
          itemType="vocabulary"
        />

        {/* Filter, Search & Display Toggle Bar (Reading vs Meaning) */}
        <DictionaryFilterBar
          searchQuery={searchQuery}
          onSearchChange={setSearchQuery}
          srsFilter={srsFilter}
          onSrsFilterChange={setSrsFilter}
          displayMode={displayMode}
          onDisplayModeChange={setDisplayMode}
          itemType="vocabulary"
          totalResults={filteredItems.length}
        />

        {/* Vocabulary Grouped by Level Layout */}
        <LevelGroupSection
          allItems={items}
          filteredItems={filteredItems}
          onItemClick={openItemDetail}
          displayMode={displayMode}
        />
      </main>

      <Footer />

      {/* Detail Modal Drawer */}
      <ItemDetailModal
        item={selectedItem}
        onClose={closeItemDetail}
        loading={detailLoading}
        onNavigateItem={openItemDetail}
      />
    </div>
  );
}
