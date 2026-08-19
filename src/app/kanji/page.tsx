'use client';

import React from 'react';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import { useDictionaryItems } from '@/hooks/useDictionaryItems';
import { ITEM_THEMES } from '@/lib/srs';
import DictionaryFilterBar from '@/components/dictionary/DictionaryFilterBar';
import SrsLegend from '@/components/dictionary/SrsLegend';
import LevelGroupSection from '@/components/dictionary/LevelGroupSection';
import ItemDetailModal from '@/components/dictionary/ItemDetailModal';
import { BookOpen, Sparkles, HelpCircle, Loader2 } from 'lucide-react';

export default function KanjiPage() {
  const {
    loading,
    items,
    filteredItems,
    searchQuery,
    setSearchQuery,
    selectedLevel,
    setSelectedLevel,
    selectedItem,
    setSelectedItem,
    openItemDetail,
    detailLoading,
  } = useDictionaryItems('kanji');

  const theme = ITEM_THEMES.kanji;

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-slate-50 dark:bg-slate-950 text-slate-900 dark:text-slate-100">
        <div className="flex flex-col items-center space-y-4">
          <Loader2 className="w-12 h-12 text-kanji animate-spin" />
          <p className="font-semibold text-sm">Menyiapkan Pustaka Kanji...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <Navbar />

      <main className="flex-1 max-w-7xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12 space-y-8 animate-fade-in">
        {/* Banner Title */}
        <section className={`bg-gradient-to-r ${theme.bannerGradient} text-white p-6 sm:p-8 rounded-3xl shadow-lg relative overflow-hidden`}>
          <div className="absolute right-0 bottom-0 translate-x-8 translate-y-8 opacity-10">
            <BookOpen className="w-56 h-56" />
          </div>
          <div className="relative z-10 space-y-1">
            <div className="flex items-center space-x-1.5 text-pink-200">
              <Sparkles className="w-5 h-5 text-amber-300 animate-pulse" />
              <span className="text-xs font-bold uppercase tracking-widest">KaniGani Pustaka</span>
            </div>
            <h2 className="text-2xl sm:text-3xl font-extrabold tracking-tight">{theme.title}</h2>
            <p className="text-xs sm:text-sm text-pink-100 max-w-2xl leading-relaxed">
              {theme.subtitle}
            </p>
          </div>
        </section>

        {/* Filter & Search Bar */}
        <DictionaryFilterBar
          searchQuery={searchQuery}
          onSearchChange={setSearchQuery}
          selectedLevel={selectedLevel}
          onLevelChange={setSelectedLevel}
          itemType="kanji"
        />

        {/* Legend Panel */}
        <SrsLegend itemType="kanji" />

        {/* Kanji Grouped Layout */}
        {filteredItems.length > 0 ? (
          <LevelGroupSection
            allItems={items}
            filteredItems={filteredItems}
            onItemClick={openItemDetail}
          />
        ) : (
          <section className="bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl p-12 text-center text-slate-400 dark:text-slate-550 shadow-sm space-y-3">
            <HelpCircle className="w-12 h-12 mx-auto opacity-30" />
            <h3 className="font-bold text-sm">Kanji Tidak Ditemukan</h3>
            <p className="text-xs text-slate-450 max-w-sm mx-auto">
              Silakan sesuaikan kata kunci pencarian Anda atau ganti filter level.
            </p>
          </section>
        )}
      </main>

      <Footer />

      {/* Detail Modal Drawer */}
      <ItemDetailModal
        item={selectedItem}
        onClose={() => setSelectedItem(null)}
        loading={detailLoading}
      />
    </div>
  );
}
