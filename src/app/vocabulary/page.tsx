'use client';

import React from 'react';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import { useDictionaryItems } from '@/hooks/useDictionaryItems';
import { ITEM_THEMES } from '@/lib/srs';
import LevelTierBar from '@/components/dictionary/LevelTierBar';
import LevelGroupSection from '@/components/dictionary/LevelGroupSection';
import ItemDetailModal from '@/components/dictionary/ItemDetailModal';
import { Loader2 } from 'lucide-react';

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
      <div className="min-h-screen flex items-center justify-center bg-background text-primary">
        <div className="flex flex-col items-center space-y-4">
          <Loader2 className="w-12 h-12 text-vocab animate-spin" />
          <p className="font-semibold text-sm text-muted">Menyiapkan Halaman Kosakata...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col bg-background text-primary transition-colors duration-300">
      <Navbar />

      <main className="flex-1 max-w-7xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-6 pb-16 space-y-5 animate-fade-in">
        {/* Simple & Clean Header */}
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-2 pb-1 border-b border-card-border">
          <div>
            <h1 className="text-2xl sm:text-3xl font-black text-primary tracking-tight flex items-center gap-2.5">
              <span className="w-3.5 h-3.5 rounded-full bg-vocab inline-block" />
              {theme.title}
            </h1>
            <p className="text-xs text-muted mt-1">
              Kurikulum Level 1–60 • Menampilkan {filteredItems.length} kosakata
            </p>
          </div>
        </div>

        {/* Official 6 Tiers & Level 1–60 Pills Bar */}
        <LevelTierBar
          selectedLevel={selectedLevel}
          onLevelChange={setSelectedLevel}
          selectedTier={selectedTier}
          onTierChange={setSelectedTier}
          itemType="vocabulary"
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
