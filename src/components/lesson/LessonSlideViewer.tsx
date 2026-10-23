'use client';

import React from 'react';
import CharacterDisplay from '@/components/CharacterDisplay';
import FormattedText from '@/components/FormattedText';
import AudioPlayerButton from '@/components/audio/AudioPlayerButton';
import { PartOfSpeechList } from '@/components/ui/PartOfSpeechBadge';
import MnemonicVisual from '@/components/mnemonic/MnemonicVisual';
import SimilarKanjiSection from '@/components/dictionary/SimilarKanjiSection';
import UserSynonymsEditor from '@/components/user-annotations/UserSynonymsEditor';
import UserNoteEditor from '@/components/user-annotations/UserNoteEditor';
import { Item } from '@/lib/types';
import {
  ArrowLeft,
  ArrowRight,
  Award,
  Home,
  ChevronDown,
  ChevronUp,
  Languages,
  Layers,
  ExternalLink,
  Edit3,
} from 'lucide-react';

interface LessonSlideViewerProps {
  currentItem: Item;
  itemIndex: number;
  currentBatch: Item[];
  activeTab: 'info' | 'mnemonic' | 'kanjis';
  setActiveTab: (tab: 'info' | 'mnemonic' | 'kanjis') => void;
  showAllKanjis: boolean;
  setShowAllKanjis: (show: boolean) => void;
  globalDevMode: boolean;
  setEditModalOpen: (open: boolean) => void;
  onExit: () => void;
  startQuiz: () => void;
  handleNext: () => void;
  handlePrev: () => void;
  addCustomSynonymAndValidate: (itemId: string, synonym: string) => void;
  swipeHandlers?: any;
}

export default function LessonSlideViewer({
  currentItem,
  itemIndex,
  currentBatch,
  activeTab,
  setActiveTab,
  showAllKanjis,
  setShowAllKanjis,
  globalDevMode,
  setEditModalOpen,
  onExit,
  startQuiz,
  handleNext,
  handlePrev,
  addCustomSynonymAndValidate,
  swipeHandlers = {},
}: LessonSlideViewerProps) {
  const getItemColorClass = (type: string) => {
    if (type === 'radical') return 'bg-radical border-radical/20 glow-radical';
    if (type === 'kanji') return 'bg-kanji border-kanji/20 glow-kanji';
    return 'bg-vocab border-vocab/20 glow-vocab';
  };

  return (
    <div
      {...swipeHandlers}
      className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden flex flex-col min-h-[500px] touch-pan-y transition-colors duration-200"
    >
      {/* Header Colorful Character Card */}
      <div
        className={`relative pt-16 pb-12 flex flex-col items-center justify-center text-white ${getItemColorClass(
          currentItem.type
        )}`}
      >
        <div className="absolute top-4 left-4 right-4 flex items-center justify-between text-white select-none w-[calc(100%-2rem)]">
          <button
            type="button"
            onClick={onExit}
            title="Keluar Sesi"
            className="flex items-center justify-center text-white/85 hover:text-white hover:scale-105 active:scale-95 transition-all w-8 h-8 rounded-lg hover:bg-white/10 cursor-pointer"
          >
            <Home className="w-5 h-5" />
          </button>

          <div className="text-xs sm:text-sm font-bold text-white/90">
            Lesson ({itemIndex + 1}/{currentBatch.length})
          </div>
        </div>

        <h1 className="text-7xl font-black tracking-tight select-text text-center mt-6 flex items-center justify-center">
          <CharacterDisplay
            character={currentItem.character}
            slug={currentItem.slug}
            imgClassName="w-20 h-20"
          />
        </h1>
        <p className="text-lg font-bold tracking-wide mt-4 uppercase opacity-90">
          {currentItem.primary_meaning || currentItem.slug}
        </p>

        {currentItem.type === 'vocabulary' &&
          currentItem.audios &&
          currentItem.audios.length > 0 && (
            <div className="mt-3">
              <AudioPlayerButton audios={currentItem.audios} variant="compact" />
            </div>
          )}
      </div>

      {/* Explanation Navigation Tabs */}
      <div className="flex border-b border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-900/50 select-none">
        <button
          onClick={() => setActiveTab('info')}
          className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors cursor-pointer ${
            activeTab === 'info'
              ? 'border-teal-500 text-teal-500'
              : 'border-transparent text-slate-500 hover:text-slate-700 dark:hover:text-slate-200'
          }`}
        >
          Arti & Deskripsi
        </button>

        {currentItem.type === 'radical' ? (
          <button
            onClick={() => setActiveTab('kanjis')}
            className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors cursor-pointer ${
              activeTab === 'kanjis'
                ? 'border-teal-500 text-teal-500'
                : 'border-transparent text-slate-500 hover:text-slate-700 dark:hover:text-slate-200'
            }`}
          >
            Ditemukan di Kanji
          </button>
        ) : (
          <button
            onClick={() => setActiveTab('mnemonic')}
            className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors cursor-pointer ${
              activeTab === 'mnemonic'
                ? 'border-teal-500 text-teal-500'
                : 'border-transparent text-slate-500 hover:text-slate-700 dark:hover:text-slate-200'
            }`}
          >
            Cara Baca
          </button>
        )}
      </div>

      {/* Tab Explanation Details */}
      <div className="p-6 sm:p-8 flex-1 space-y-6 text-sm leading-relaxed select-text">
        {/* TAB 1: MEANINGS & INFO */}
        {activeTab === 'info' && (
          <div className="space-y-4">
            {/* Developer Quick Edit Action */}
            {globalDevMode && (
              <div className="flex items-center justify-between p-3 rounded-2xl bg-amber-500/10 border border-amber-500/20">
                <div className="flex items-center space-x-2 text-amber-700 dark:text-amber-400 text-xs font-bold">
                  <span className="px-2 py-0.5 rounded-md bg-amber-500/20 text-3xs font-black uppercase tracking-wider">
                    DEV MODE
                  </span>
                  <span className="hidden sm:inline">Perbaiki atau tambah alternatif kata</span>
                </div>
                <button
                  type="button"
                  onClick={() => setEditModalOpen(true)}
                  className="flex items-center space-x-1.5 px-3 py-1.5 rounded-xl bg-amber-500 hover:bg-amber-600 text-slate-950 font-black text-xs transition-all shadow-sm shadow-amber-500/20 hover:scale-102 active:scale-98 cursor-pointer ml-auto"
                >
                  <Edit3 className="w-3.5 h-3.5" />
                  <span>Edit Item Ini</span>
                </button>
              </div>
            )}

            {/* Arti Utama & Arti Alternatif Dua Sub-kolom */}
            {(() => {
              const rawMeanings = currentItem.meanings || [];
              const primaryMeaning =
                currentItem.primary_meaning ||
                rawMeanings.find((m: any) => m.primary_meaning)?.meaning ||
                currentItem.slug ||
                '';
              const altList = rawMeanings
                .filter(
                  (m: any) =>
                    !m.primary_meaning &&
                    m.meaning &&
                    m.meaning.toLowerCase().trim() !== primaryMeaning.toLowerCase().trim()
                )
                .map((m: any) => m.meaning.trim());
              const uniqueAlts = Array.from(new Set(altList));
              const alternativeMeaningsText = uniqueAlts.length > 0 ? uniqueAlts.join(', ') : '-';

              return (
                <div>
                  <div className="grid grid-cols-1 sm:grid-cols-2 gap-3.5 bg-white/70 dark:bg-slate-800/40 border border-slate-200/80 dark:border-slate-800 rounded-2xl p-4 sm:p-5">
                    {/* Sub-kolom 1: Arti Utama */}
                    <div>
                      <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">
                        Arti Utama
                      </h3>
                      <p className="text-xl font-bold text-teal-600 dark:text-teal-400 mt-1 capitalize">
                        {primaryMeaning}
                      </p>
                    </div>

                    {/* Sub-kolom 2: Arti Alternatif */}
                    <div className="border-t sm:border-t-0 sm:border-l border-slate-200/60 dark:border-slate-700/60 pt-3 sm:pt-0 sm:pl-4 space-y-3">
                      <div>
                        <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">
                          Arti Alternatif
                        </h3>
                        <p
                          className={`text-base font-semibold mt-1 ${
                            alternativeMeaningsText === '-'
                              ? 'text-slate-400 dark:text-slate-500'
                              : 'text-slate-700 dark:text-slate-200'
                          }`}
                        >
                          {alternativeMeaningsText}
                        </p>
                      </div>

                      {/* User Synonyms */}
                      <div className="pt-2 border-t border-slate-200/50 dark:border-slate-700/50">
                        <UserSynonymsEditor
                          itemId={currentItem.id}
                          initialSynonyms={currentItem.user_synonyms}
                          onSynonymAdded={(syn) =>
                            addCustomSynonymAndValidate(currentItem.id, syn)
                          }
                        />
                      </div>
                    </div>
                  </div>

                  {currentItem.type === 'vocabulary' &&
                    currentItem.parts_of_speech &&
                    currentItem.parts_of_speech.length > 0 && (
                      <div className="mt-2.5">
                        <PartOfSpeechList
                          partsOfSpeech={currentItem.parts_of_speech}
                          size="sm"
                        />
                      </div>
                    )}
                </div>
              );
            })()}

            {currentItem.description && (
              <div>
                <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">
                  {currentItem.type === 'radical'
                    ? 'Penjelasan & Mnemonic Radikal'
                    : 'Deskripsi Detail'}
                </h3>
                <p className="text-slate-600 dark:text-slate-350 mt-1">
                  <FormattedText text={currentItem.description} />
                </p>
              </div>
            )}

            {/* Radicals composed in Kanji */}
            {currentItem.type === 'kanji' &&
              currentItem.radicals &&
              currentItem.radicals.length > 0 && (
                <div className="space-y-2.5 pt-2">
                  <div className="flex items-center justify-between">
                    <h3 className="text-xs font-bold text-cyan-600 dark:text-cyan-400 uppercase tracking-widest flex items-center space-x-1.5 select-none">
                      <Layers className="w-3.5 h-3.5 text-cyan-500" />
                      <span>Terdiri Dari Radikal</span>
                    </h3>
                    <span className="text-xs font-bold text-cyan-600 dark:text-cyan-400 bg-cyan-500/10 px-2 py-0.5 rounded-full border border-cyan-500/20 select-none">
                      {currentItem.radicals.length}
                    </span>
                  </div>

                  <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-2.5 pt-1">
                    {currentItem.radicals.map((rd: any) => {
                      const meaning =
                        rd.item_meanings?.find((m: any) => m.primary_meaning)?.meaning ||
                        rd.slug;
                      return (
                        <a
                          key={rd.id}
                          href={`/radical/${encodeURIComponent(rd.slug || rd.character)}`}
                          target="_blank"
                          rel="noopener noreferrer"
                          title={`Buka halaman penuh radikal ${meaning} di tab baru`}
                          className="p-3 bg-radical/5 border border-radical/20 hover:border-radical/40 dark:bg-radical/10 hover:shadow-md rounded-2xl flex items-center justify-between text-left group/rd transition-all duration-200 cursor-pointer"
                        >
                          <div className="min-w-0 pr-2">
                            <span className="text-2xl font-black text-radical group-hover/rd:scale-110 transition-transform duration-200 block leading-tight">
                              <CharacterDisplay
                                character={rd.character || '—'}
                                slug={rd.slug}
                                imgClassName="w-6 h-6"
                              />
                            </span>
                            <span className="text-4xs text-slate-600 dark:text-slate-350 uppercase tracking-wider block truncate max-w-[90px] font-bold mt-0.5">
                              {meaning}
                            </span>
                          </div>
                          <div className="flex flex-col items-end gap-1 shrink-0">
                            {rd.level && (
                              <span className="px-1.5 py-0.5 text-4xs font-black bg-radical/10 dark:bg-radical/20 rounded-md text-radical">
                                Lvl {rd.level}
                              </span>
                            )}
                            <ExternalLink className="w-3 h-3 text-slate-400 group-hover/rd:text-radical transition-colors" />
                          </div>
                        </a>
                      );
                    })}
                  </div>
                </div>
              )}

            {/* Kanjis composed in Vocabulary */}
            {currentItem.type === 'vocabulary' &&
              currentItem.kanjis &&
              currentItem.kanjis.length > 0 && (
                <div className="space-y-2.5 pt-2">
                  <div className="flex items-center justify-between">
                    <h3 className="text-xs font-bold text-pink-600 dark:text-pink-400 uppercase tracking-widest flex items-center space-x-1.5 select-none">
                      <Layers className="w-3.5 h-3.5 text-pink-500" />
                      <span>Terdiri Dari Kanji</span>
                    </h3>
                    <span className="text-xs font-bold text-pink-600 dark:text-pink-400 bg-pink-500/10 px-2 py-0.5 rounded-full border border-pink-500/20 select-none">
                      {currentItem.kanjis.length}
                    </span>
                  </div>

                  <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-2.5 pt-1">
                    {currentItem.kanjis.map((kj: any) => {
                      const meaning =
                        kj.item_meanings?.find((m: any) => m.primary_meaning)?.meaning ||
                        kj.slug;
                      const reading =
                        kj.item_readings?.find((r: any) => r.primary_reading)?.reading || null;
                      return (
                        <a
                          key={kj.id}
                          href={`/kanji/${encodeURIComponent(kj.character)}`}
                          target="_blank"
                          rel="noopener noreferrer"
                          title={`Buka halaman penuh kanji ${kj.character} (${meaning}) di tab baru`}
                          className="p-3 bg-kanji/5 border border-kanji/20 hover:border-kanji/40 dark:bg-kanji/10 hover:shadow-md rounded-2xl flex items-center justify-between text-left group/kj transition-all duration-200 cursor-pointer"
                        >
                          <div className="min-w-0 pr-2">
                            <span className="text-2xl font-black font-japanese text-kanji group-hover/kj:scale-110 transition-transform duration-200 block leading-tight">
                              {kj.character}
                            </span>
                            <span className="text-4xs text-slate-600 dark:text-slate-350 uppercase tracking-wider block truncate max-w-[90px] font-bold mt-0.5">
                              {meaning}
                            </span>
                            {reading && (
                              <span className="text-[10px] text-slate-450 dark:text-slate-400 font-semibold block truncate">
                                {reading}
                              </span>
                            )}
                          </div>
                          <div className="flex flex-col items-end gap-1 shrink-0">
                            {kj.level && (
                              <span className="px-1.5 py-0.5 text-4xs font-black bg-kanji/10 dark:bg-kanji/20 rounded-md text-kanji">
                                Lvl {kj.level}
                              </span>
                            )}
                            <ExternalLink className="w-3 h-3 text-slate-400 group-hover/kj:text-kanji transition-colors" />
                          </div>
                        </a>
                      );
                    })}
                  </div>
                </div>
              )}

            {(currentItem.meaning_mnemonic || currentItem.description) && (
              <div className="p-4 bg-teal-50 dark:bg-teal-950/20 border border-teal-100 dark:border-teal-900/50 rounded-2xl">
                <h3 className="text-xs font-bold text-teal-700 dark:text-teal-400 uppercase tracking-widest block select-none">
                  {currentItem.type === 'radical'
                    ? 'Penjelasan & Mnemonic Radikal'
                    : 'Mnemonic Jembatan Keledai (Arti)'}
                </h3>
                <MnemonicVisual
                  slug={currentItem.slug}
                  character={currentItem.character}
                  type={currentItem.type}
                />
                <p className="text-teal-900 dark:text-teal-300 mt-1.5">
                  <FormattedText text={currentItem.meaning_mnemonic || currentItem.description} />
                </p>
              </div>
            )}

            {/* User Meaning Note */}
            <UserNoteEditor
              itemId={currentItem.id}
              type="meaning"
              initialNote={currentItem.user_meaning_note}
            />

            {/* Visually Similar Kanji in Lesson */}
            {currentItem.type === 'kanji' &&
              currentItem.similar_kanjis &&
              currentItem.similar_kanjis.length > 0 && (
                <SimilarKanjiSection
                  currentKanji={{
                    character: currentItem.character,
                    slug: currentItem.slug,
                    level: currentItem.level,
                    primary_meaning: currentItem.primary_meaning,
                    primary_reading: currentItem.primary_reading,
                  }}
                  similarKanjis={currentItem.similar_kanjis}
                  variant="lesson"
                />
              )}
          </div>
        )}

        {/* TAB: RADICAL RELATED KANJIS */}
        {activeTab === 'kanjis' && currentItem.type === 'radical' && (() => {
          const allKanjis = currentItem.kanjis || [];
          const displayedKanjis = showAllKanjis ? allKanjis : allKanjis.slice(0, 8);
          const hasMore = allKanjis.length > 8;

          return (
            <div className="space-y-4 animate-fade-in">
              <div>
                <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">
                  Kanji yang Mengandung Radikal Ini
                </h3>
                <p className="text-xs text-slate-500 dark:text-slate-400 mt-1">
                  Mempelajari radikal ini akan membantumu mengingat kanji-kanji berikut dengan lebih
                  mudah:
                </p>
              </div>

              {allKanjis.length > 0 ? (
                <div className="space-y-3">
                  <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-2.5 pt-1">
                    {displayedKanjis.map((kj) => (
                      <a
                        key={kj.id}
                        href={`/kanji/${encodeURIComponent(kj.character)}`}
                        target="_blank"
                        rel="noopener noreferrer"
                        title={`Buka halaman penuh kanji ${kj.character} di tab baru`}
                        className="p-3 bg-kanji/5 border border-kanji/15 hover:border-kanji/40 dark:bg-kanji/10 hover:shadow-md rounded-2xl flex items-center justify-between text-left group/kj transition-all duration-200 cursor-pointer"
                      >
                        <div>
                          <span className="text-2xl font-black text-kanji group-hover/kj:scale-110 transition-transform duration-200 block leading-tight font-japanese">
                            {kj.character}
                          </span>
                          <span className="text-4xs text-slate-600 dark:text-slate-350 uppercase tracking-wider block truncate max-w-[80px] font-bold mt-0.5">
                            {kj.slug}
                          </span>
                        </div>
                        <div className="flex flex-col items-end gap-1 shrink-0">
                          {kj.level && (
                            <span className="px-1.5 py-0.5 text-4xs font-black bg-kanji/10 dark:bg-kanji/20 rounded-md text-kanji">
                              Lvl {kj.level}
                            </span>
                          )}
                          <ExternalLink className="w-3 h-3 text-slate-400 group-hover/kj:text-kanji transition-colors" />
                        </div>
                      </a>
                    ))}
                  </div>

                  {hasMore && (
                    <button
                      type="button"
                      onClick={() => setShowAllKanjis(!showAllKanjis)}
                      className="w-full py-2.5 px-4 bg-kanji/10 hover:bg-kanji/20 dark:bg-kanji/15 dark:hover:bg-kanji/25 text-kanji font-bold text-xs rounded-2xl flex items-center justify-center space-x-1.5 transition-all duration-200 cursor-pointer"
                    >
                      <span>
                        {showAllKanjis
                          ? 'Tampilkan Lebih Sedikit'
                          : `Muat Lebih Banyak (+${allKanjis.length - 8} Kanji)`}
                      </span>
                      {showAllKanjis ? (
                        <ChevronUp className="w-4 h-4" />
                      ) : (
                        <ChevronDown className="w-4 h-4" />
                      )}
                    </button>
                  )}
                </div>
              ) : (
                <div className="p-6 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-200/60 dark:border-slate-800/80 text-center">
                  <p className="text-slate-400 text-xs italic select-none">
                    Belum ada data relasi kanji untuk radikal ini.
                  </p>
                </div>
              )}
            </div>
          );
        })()}

        {/* TAB 2: READINGS & MNEMONICS (KANJI / VOCAB) */}
        {activeTab === 'mnemonic' && currentItem.type !== 'radical' && (
          <div className="space-y-4">
            {currentItem.type === 'kanji' ? (
              <div>
                <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest flex items-center space-x-1.5 select-none mb-2">
                  <Languages className="w-3.5 h-3.5 text-pink-500" />
                  <span>Cara Baca (Readings)</span>
                </h3>
                {(() => {
                  const rawReadings = currentItem.readings || [];
                  const onyomiList = rawReadings.filter(
                    (r: any) =>
                      r.reading_type === 'onyomi' ||
                      (!r.reading_type &&
                        r.reading_type !== 'kunyomi' &&
                        r.reading_type !== 'nanori')
                  );
                  const kunyomiList = rawReadings.filter((r: any) => r.reading_type === 'kunyomi');
                  const nanoriList = rawReadings.filter((r: any) => r.reading_type === 'nanori');

                  return (
                    <div className="grid grid-cols-1 sm:grid-cols-3 gap-3.5 bg-white/70 dark:bg-slate-800/40 border border-slate-200/80 dark:border-slate-800 rounded-2xl p-4 sm:p-5">
                      {/* On'yomi */}
                      <div className="space-y-1.5">
                        <span className="text-[11px] font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">
                          On’yomi
                        </span>
                        {onyomiList.length > 0 ? (
                          <div className="flex flex-wrap gap-1.5">
                            {onyomiList.map((r: any, idx: number) => (
                              <div
                                key={idx}
                                className={`px-2.5 py-1 rounded-xl border text-xs font-japanese font-bold flex items-center space-x-1.5 transition-all ${
                                  r.primary_reading
                                    ? 'bg-pink-500/10 border-pink-500/30 text-pink-600 dark:text-pink-300 shadow-xs'
                                    : 'bg-white dark:bg-slate-900 border-slate-200 dark:border-slate-700 text-slate-800 dark:text-slate-100'
                                }`}
                              >
                                <span className="leading-none">{r.reading}</span>
                                {r.primary_reading && (
                                  <span className="text-[9px] font-black uppercase tracking-wider text-pink-500 bg-pink-100 dark:bg-pink-950/60 px-1 py-0.5 rounded">
                                    Utama
                                  </span>
                                )}
                              </div>
                            ))}
                          </div>
                        ) : (
                          <span className="text-xs font-medium text-slate-400 dark:text-slate-500 italic block select-none">
                            None
                          </span>
                        )}
                      </div>

                      {/* Kun'yomi */}
                      <div className="space-y-1.5 border-t sm:border-t-0 sm:border-l border-slate-200/60 dark:border-slate-700/60 pt-3 sm:pt-0 sm:pl-3.5">
                        <span className="text-[11px] font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">
                          Kun’yomi
                        </span>
                        {kunyomiList.length > 0 ? (
                          <div className="flex flex-wrap gap-1.5">
                            {kunyomiList.map((r: any, idx: number) => (
                              <div
                                key={idx}
                                className={`px-2.5 py-1 rounded-xl border text-xs font-japanese font-bold flex items-center space-x-1.5 transition-all ${
                                  r.primary_reading
                                    ? 'bg-pink-500/10 border-pink-500/30 text-pink-600 dark:text-pink-300 shadow-xs'
                                    : 'bg-white dark:bg-slate-900 border-slate-200 dark:border-slate-700 text-slate-800 dark:text-slate-100'
                                }`}
                              >
                                <span className="leading-none">{r.reading}</span>
                                {r.primary_reading && (
                                  <span className="text-[9px] font-black uppercase tracking-wider text-pink-500 bg-pink-100 dark:bg-pink-950/60 px-1 py-0.5 rounded">
                                    Utama
                                  </span>
                                )}
                              </div>
                            ))}
                          </div>
                        ) : (
                          <span className="text-xs font-medium text-slate-400 dark:text-slate-500 italic block select-none">
                            None
                          </span>
                        )}
                      </div>

                      {/* Nanori */}
                      <div className="space-y-1.5 border-t sm:border-t-0 sm:border-l border-slate-200/60 dark:border-slate-700/60 pt-3 sm:pt-0 sm:pl-3.5">
                        <span className="text-[11px] font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">
                          Nanori
                        </span>
                        {nanoriList.length > 0 ? (
                          <div className="flex flex-wrap gap-1.5">
                            {nanoriList.map((r: any, idx: number) => (
                              <div
                                key={idx}
                                className={`px-2.5 py-1 rounded-xl border text-xs font-japanese font-bold flex items-center space-x-1.5 transition-all ${
                                  r.primary_reading
                                    ? 'bg-pink-500/10 border-pink-500/30 text-pink-600 dark:text-pink-300 shadow-xs'
                                    : 'bg-white dark:bg-slate-900 border-slate-200 dark:border-slate-700 text-slate-800 dark:text-slate-100'
                                }`}
                              >
                                <span className="leading-none">{r.reading}</span>
                                {r.primary_reading && (
                                  <span className="text-[9px] font-black uppercase tracking-wider text-pink-500 bg-pink-100 dark:bg-pink-950/60 px-1 py-0.5 rounded">
                                    Utama
                                  </span>
                                )}
                              </div>
                            ))}
                          </div>
                        ) : (
                          <span className="text-xs font-medium text-slate-400 dark:text-slate-500 italic block select-none">
                            None
                          </span>
                        )}
                      </div>
                    </div>
                  );
                })()}
              </div>
            ) : (
              <div>
                <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">
                  Bacaan Jepang Utama (Kana)
                </h3>
                <div className="flex items-center gap-3 mt-1">
                  <p className="text-2xl font-black text-indigo-600 dark:text-indigo-400">
                    {currentItem.primary_reading}
                  </p>
                  {currentItem.type === 'vocabulary' &&
                    currentItem.audios &&
                    currentItem.audios.length > 0 && (
                      <AudioPlayerButton audios={currentItem.audios} variant="compact" />
                    )}
                </div>
              </div>
            )}

            {currentItem.reading_mnemonic && (
              <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl">
                <h3 className="text-xs font-bold text-indigo-700 dark:text-indigo-400 uppercase tracking-widest block select-none">
                  Mnemonic Jembatan Keledai (Bacaan)
                </h3>
                <p className="text-indigo-900 dark:text-indigo-300 mt-1.5">
                  <FormattedText text={currentItem.reading_mnemonic} />
                </p>
              </div>
            )}

            {/* User Reading Note */}
            <UserNoteEditor
              itemId={currentItem.id}
              type="reading"
              initialNote={currentItem.user_reading_note}
            />

            {/* Context sentence - Vocab only */}
            {currentItem.type === 'vocabulary' && (
              <div className="border-t border-slate-200 dark:border-slate-800 pt-6 mt-6 space-y-4">
                <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">
                  Contoh Kalimat Kontekstual
                </h3>

                {currentItem.context_sentences && currentItem.context_sentences.length > 0 ? (
                  <div className="space-y-4">
                    {currentItem.context_sentences.map((s, idx) => (
                      <div
                        key={idx}
                        className="p-4 bg-slate-50 dark:bg-slate-950/40 rounded-2xl border border-slate-200/60 dark:border-slate-800/80 space-y-2"
                      >
                        <p className="text-lg font-bold text-indigo-600 dark:text-indigo-400 select-all">
                          {s.japanese}
                        </p>
                        <p className="text-xs text-slate-505 dark:text-slate-400">{s.indonesian}</p>
                      </div>
                    ))}
                  </div>
                ) : (
                  <p className="text-slate-400 text-xs italic select-none">
                    Belum ada contoh kalimat untuk kosakata ini.
                  </p>
                )}
              </div>
            )}
          </div>
        )}
      </div>

      {/* Slide Navigation Buttons */}
      <div className="p-4 border-t border-slate-200 dark:border-slate-800 bg-slate-55 dark:bg-slate-900 flex flex-col items-center gap-3 sm:gap-0 select-none">
        {/* Progress dots - Mobile Only */}
        <div className="flex space-x-1.5 sm:hidden">
          {currentBatch.map((_, idx) => (
            <div
              key={idx}
              className={`w-2.5 h-2.5 rounded-full transition-all duration-300 ${
                idx === itemIndex
                  ? 'bg-teal-500 scale-125'
                  : idx < itemIndex
                  ? 'bg-teal-300 dark:bg-teal-800'
                  : 'bg-slate-200 dark:bg-slate-850'
              }`}
            ></div>
          ))}
        </div>

        {/* Navigation Controls Row */}
        <div className="flex items-center justify-between w-full">
          <button
            disabled={itemIndex === 0 && activeTab === 'info'}
            onClick={handlePrev}
            className="px-4 py-2 bg-slate-100 dark:bg-slate-700 hover:bg-slate-200 dark:hover:bg-slate-600 text-slate-700 dark:text-slate-200 disabled:opacity-30 disabled:cursor-not-allowed font-bold rounded-xl text-xs flex items-center space-x-1.5 transition-colors shrink-0 cursor-pointer"
          >
            <ArrowLeft className="w-4 h-4" />
            <span>Sebelumnya</span>
          </button>

          {/* Progress dots - Desktop Only */}
          <div className="hidden sm:flex space-x-1.5">
            {currentBatch.map((_, idx) => (
              <div
                key={idx}
                className={`w-2.5 h-2.5 rounded-full transition-all duration-300 ${
                  idx === itemIndex
                    ? 'bg-teal-500 scale-125'
                    : idx < itemIndex
                    ? 'bg-teal-300 dark:bg-teal-800'
                    : 'bg-slate-200 dark:bg-slate-850'
                }`}
              ></div>
            ))}
          </div>

          {itemIndex === currentBatch.length - 1 && activeTab !== 'info' ? (
            <button
              onClick={startQuiz}
              className="px-5 py-2 bg-teal-500 hover:bg-teal-600 text-white font-bold rounded-xl text-xs flex items-center space-x-1.5 transition-all duration-200 shrink-0 cursor-pointer shadow-sm"
            >
              <span>Mulai Kuis</span>
              <Award className="w-4 h-4" />
            </button>
          ) : (
            <button
              onClick={handleNext}
              className="px-5 py-2 bg-teal-500 hover:bg-teal-600 text-white font-bold rounded-xl text-xs flex items-center space-x-1.5 transition-all duration-200 shrink-0 cursor-pointer shadow-sm"
            >
              <span>Berikutnya</span>
              <ArrowRight className="w-4 h-4" />
            </button>
          )}
        </div>
      </div>
    </div>
  );
}
