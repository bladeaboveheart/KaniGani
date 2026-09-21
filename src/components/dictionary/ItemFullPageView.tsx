'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import {
  ChevronLeft,
  ChevronRight,
  ArrowLeft,
  Languages,
  Layers,
  FileText,
  Sparkles,
  BookOpen,
  Award,
  Share2,
  Edit3,
  Bookmark,
} from 'lucide-react';
import CharacterDisplay from '@/components/CharacterDisplay';
import FormattedText from '@/components/FormattedText';
import SimilarKanjiSection from '@/components/dictionary/SimilarKanjiSection';
import AudioPlayerButton from '@/components/audio/AudioPlayerButton';
import ItemEditorModal from '@/components/admin/ItemEditorModal';
import { PartOfSpeechBadge, PartOfSpeechList } from '@/components/ui/PartOfSpeechBadge';
import { getPartOfSpeechMeta } from '@/lib/partsOfSpeech';
import { ItemInput } from '@/lib/types';
import {
  mapItemToItemInput,
  saveItemFullData,
  fetchReferenceItems,
  fetchItemByIdentifier,
} from '@/services/itemsService';
import { getSrsLabel, getSrsColorClass } from '@/lib/srs';

interface ItemFullPageViewProps {
  item: any;
  prevItem?: any | null;
  nextItem?: any | null;
  userProgress?: any | null;
  onItemUpdated?: (updatedItem: any) => void;
}

export default function ItemFullPageView({
  item,
  prevItem,
  nextItem,
  userProgress,
  onItemUpdated,
}: ItemFullPageViewProps) {
  const router = useRouter();
  const [editedItem, setEditedItem] = useState<any | null>(null);
  const currentItem = editedItem || item;
  const [isEditModalOpen, setIsEditModalOpen] = useState(false);
  const [formLoading, setFormLoading] = useState(false);
  const [referenceItems, setReferenceItems] = useState<any[]>([]);
  const [formItem, setFormItem] = useState<ItemInput>({
    type: 'radical',
    character: '',
    slug: '',
    level: 1,
    lesson_position: 0,
    meaning_mnemonic: '',
    reading_mnemonic: '',
    description: '',
    meanings: [{ meaning: '', primary_meaning: true, accepted_answer: true }],
    readings: [],
    context_sentences: [],
    prerequisites: [],
    found_in_kanjis: []
  });

  const [devMode, setDevMode] = useState<boolean>(false);

  useEffect(() => {
    const handleStorageChange = () => {
      setDevMode(localStorage.getItem('kanigani-dev-mode') === 'true');
    };
    handleStorageChange();
    window.addEventListener('storage', handleStorageChange);

    const handleKeyDown = (e: KeyboardEvent) => {
      if (e.key === 'g' || e.key === 'G') {
        const tag = (document.activeElement as HTMLElement)?.tagName;
        if (tag === 'INPUT' || tag === 'TEXTAREA' || (document.activeElement as HTMLElement)?.isContentEditable) return;
        const next = localStorage.getItem('kanigani-dev-mode') !== 'true';
        localStorage.setItem('kanigani-dev-mode', String(next));
        setDevMode(next);
        window.dispatchEvent(new Event('storage'));
      }
    };
    window.addEventListener('keydown', handleKeyDown);

    return () => {
      window.removeEventListener('storage', handleStorageChange);
      window.removeEventListener('keydown', handleKeyDown);
    };
  }, []);

  const handleOpenEdit = async () => {
    if (!devMode || !currentItem) return;
    try {
      const mapped = await mapItemToItemInput(currentItem);
      setFormItem(mapped);
      setIsEditModalOpen(true);
      if (referenceItems.length === 0) {
        const refs = await fetchReferenceItems();
        setReferenceItems(refs);
      }
    } catch (err) {
      console.error('Error preparing edit item:', err);
    }
  };

  const handleSaveItem = async () => {
    setFormLoading(true);
    try {
      const res = await saveItemFullData(formItem);
      if (!res.success) {
        alert(res.error || 'Gagal menyimpan perubahan');
        return;
      }
      alert('Sukses! Perubahan item berhasil disimpan.');
      setIsEditModalOpen(false);

      // Refresh item data in view
      const updated = await fetchItemByIdentifier(
        formItem.type,
        formItem.character || formItem.slug
      );
      if (updated) {
        setEditedItem(updated);
        if (onItemUpdated) {
          onItemUpdated(updated);
        }
      }
    } catch (err: any) {
      console.error('Error saving item in page view:', err);
      alert('Terjadi kesalahan: ' + (err?.message || String(err)));
    } finally {
      setFormLoading(false);
    }
  };

  if (!item) {
    return (
      <div className="min-h-[60vh] flex flex-col items-center justify-center text-center p-6">
        <div className="w-16 h-16 rounded-full bg-rose-100 dark:bg-rose-950/40 text-rose-500 flex items-center justify-center mb-4">
          <BookOpen className="w-8 h-8" />
        </div>
        <h1 className="text-xl font-black text-slate-900 dark:text-slate-100 mb-2">Item Tidak Ditemukan</h1>
        <p className="text-xs sm:text-sm text-slate-500 dark:text-slate-400 max-w-md mb-6">
          Item yang Anda cari tidak dapat ditemukan di kurikulum KaniGani.
        </p>
        <button
          onClick={() => router.back()}
          className="px-5 py-2.5 bg-slate-900 text-white dark:bg-white dark:text-slate-900 rounded-xl text-xs font-bold hover:opacity-90 transition-opacity"
        >
          Kembali
        </button>
      </div>
    );
  }

  const itemToDisplay = currentItem || item;
  const type = itemToDisplay.type;
  const srsStage = userProgress?.srs_stage ?? itemToDisplay.srs_stage ?? 0;

  // Visual gradients & theme labels
  let headerGradient = 'bg-radical-gradient';
  let typeLabel = 'Radikal';
  let catalogPath = '/radical';
  let catalogName = 'Pustaka Radikal';

  if (type === 'kanji') {
    headerGradient = 'bg-kanji-gradient';
    typeLabel = 'Kanji';
    catalogPath = '/kanji';
    catalogName = 'Pustaka Kanji';
  } else if (type === 'vocabulary') {
    headerGradient = 'bg-vocab-gradient';
    typeLabel = 'Kosakata';
    catalogPath = '/vocabulary';
    catalogName = 'Pustaka Kosakata';
  }

  const primaryMeaning = itemToDisplay.primary_meaning || itemToDisplay.slug || '';
  const primaryReading = itemToDisplay.primary_reading || '';

  const getItemLink = (target: any) => {
    if (!target) return '#';
    const targetType = target.type || type;
    const identifier = encodeURIComponent(target.character || target.slug || '');
    return `/${targetType}/${identifier}`;
  };

  const handleCopyLink = () => {
    if (typeof window !== 'undefined') {
      navigator.clipboard.writeText(window.location.href);
      alert('Tautan halaman berhasil disalin ke clipboard!');
    }
  };

  return (
    <div className="w-full max-w-5xl mx-auto px-4 sm:px-6 py-6 sm:py-10 space-y-8">
      {/* Top Header & Breadcrumb & Prev/Next Bar */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 pb-4 border-b border-slate-200/80 dark:border-slate-800/80">
        <div className="flex items-center space-x-2 text-xs font-semibold text-slate-500 dark:text-slate-400">
          <Link
            href={catalogPath}
            className="flex items-center space-x-1 hover:text-slate-900 dark:hover:text-white transition-colors group"
          >
            <ArrowLeft className="w-3.5 h-3.5 group-hover:-translate-x-0.5 transition-transform" />
            <span>{catalogName}</span>
          </Link>
          <span>/</span>
          <Link
            href={`${catalogPath}?level=${itemToDisplay.level}`}
            className="hover:text-slate-900 dark:hover:text-white transition-colors"
          >
            Level {itemToDisplay.level}
          </Link>
          <span>/</span>
          <span className="font-bold text-slate-900 dark:text-slate-100">{itemToDisplay.character || itemToDisplay.slug}</span>
        </div>

        {/* Top Prev & Next Navigation Buttons */}
        <div className="flex items-center space-x-2 self-end sm:self-auto">
          {prevItem ? (
            <Link
              href={getItemLink(prevItem)}
              className="min-h-[44px] flex items-center space-x-1.5 px-3 py-1.5 rounded-xl border border-card-border hover:bg-card-muted text-xs font-bold text-primary transition-colors"
              title={`Sebelumnya: ${prevItem.character || prevItem.slug}`}
            >
              <ChevronLeft className="w-4 h-4" />
              <span className="font-japanese text-sm">{prevItem.character || prevItem.slug}</span>
              <span className="hidden md:inline text-[10px] uppercase tracking-wider text-muted">Prev</span>
            </Link>
          ) : (
            <span className="min-h-[44px] flex items-center px-3 py-1.5 rounded-xl border border-transparent text-xs font-bold text-muted opacity-50 cursor-not-allowed">
              Awal Level
            </span>
          )}

          {devMode && (
            <button
              type="button"
              onClick={handleOpenEdit}
              className="min-h-[44px] flex items-center space-x-1.5 px-3 py-1.5 rounded-xl border border-amber-500/30 bg-amber-500/10 hover:bg-amber-500/20 text-xs font-bold text-amber-700 dark:text-amber-300 transition-colors cursor-pointer"
              title="Edit Item Langsung"
            >
              <Edit3 className="w-3.5 h-3.5 text-amber-600 dark:text-amber-400" />
              <span className="hidden sm:inline text-[10px] uppercase tracking-wider">Edit</span>
            </button>
          )}

          <button
            onClick={handleCopyLink}
            className="min-h-[44px] min-w-[44px] flex items-center justify-center p-2 rounded-xl border border-card-border hover:bg-card-muted text-muted hover:text-primary transition-colors"
            title="Salin Tautan"
          >
            <Share2 className="w-4 h-4" />
          </button>

          {nextItem ? (
            <Link
              href={getItemLink(nextItem)}
              className="min-h-[44px] flex items-center space-x-1.5 px-3 py-1.5 rounded-xl border border-card-border hover:bg-card-muted text-xs font-bold text-primary transition-colors"
              title={`Selanjutnya: ${nextItem.character || nextItem.slug}`}
            >
              <span className="hidden md:inline text-[10px] uppercase tracking-wider text-muted">Next</span>
              <span className="font-japanese text-sm">{nextItem.character || nextItem.slug}</span>
              <ChevronRight className="w-4 h-4" />
            </Link>
          ) : (
            <span className="px-3 py-1.5 rounded-xl border border-transparent text-xs font-bold text-slate-300 dark:text-slate-700 cursor-not-allowed">
              Akhir Level
            </span>
          )}
        </div>
      </div>

      {/* Hero Display Section */}
      <section className={`${headerGradient} rounded-3xl p-8 sm:p-12 text-white relative shadow-xl overflow-hidden`}>
        {/* Background Subtle Watermark */}
        {(!item.character || item.character.length <= 4) && (
          <div className="absolute right-4 -bottom-10 opacity-10 pointer-events-none select-none font-japanese font-black text-9xl">
            {item.character || item.slug}
          </div>
        )}

        <div className="relative z-10 flex flex-col md:flex-row md:items-center justify-between gap-8">
          <div className="flex flex-col sm:flex-row items-center sm:items-start gap-6 text-center sm:text-left">
            {/* Big Character Display */}
            {(() => {
              const charLength = (item.character || item.slug || '').length;
              let textSize = 'text-6xl sm:text-8xl';
              let imgSize = 'w-24 h-24 sm:w-32 sm:h-32';
              if (charLength >= 5) {
                textSize = 'text-2xl sm:text-4xl';
                imgSize = 'w-16 h-16 sm:w-20 sm:h-20';
              } else if (charLength >= 3) {
                textSize = 'text-4xl sm:text-6xl';
                imgSize = 'w-20 h-20 sm:w-24 sm:h-24';
              }

              return (
                <div className="w-auto min-w-[112px] sm:min-w-[144px] max-w-full px-5 py-4 min-h-[112px] sm:min-h-[144px] rounded-3xl bg-white/10 backdrop-blur-md border border-white/20 flex items-center justify-center shadow-inner shrink-0">
                  <span className={`${textSize} font-black font-japanese select-all flex items-center justify-center text-center leading-tight tracking-normal whitespace-nowrap`}>
                    <CharacterDisplay
                      character={item.character}
                      slug={item.slug}
                      imgClassName={imgSize}
                    />
                  </span>
                </div>
              );
            })()}

            {/* Core Info */}
            <div className="space-y-2">
              <div className="flex flex-wrap items-center justify-center sm:justify-start gap-2">
                <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10">
                  {typeLabel} • Level {itemToDisplay.level}
                </span>

                {type === 'vocabulary' && itemToDisplay.parts_of_speech && itemToDisplay.parts_of_speech.length > 0 && (
                  itemToDisplay.parts_of_speech.map((pos: string) => {
                    const meta = getPartOfSpeechMeta(pos);
                    return (
                      <span
                        key={pos}
                        className="text-4xs font-bold bg-black/25 backdrop-blur-sm text-white/95 px-2.5 py-1 rounded-full border border-white/20 inline-flex items-center gap-1.5 shadow-xs"
                        title={meta.description ? `${meta.englishLabel} • ${meta.description}` : meta.englishLabel}
                      >
                        {meta.isTransitivity && (
                          <span
                            className={`w-1.5 h-1.5 rounded-full ${pos.includes('intransitive') ? 'bg-amber-300' : 'bg-sky-300'}`}
                            aria-hidden="true"
                          />
                        )}
                        <span>{meta.label}</span>
                      </span>
                    );
                  })
                )}
              </div>

              <h1 className="text-3xl sm:text-5xl font-black tracking-tight capitalize">{primaryMeaning}</h1>

              {type !== 'radical' && primaryReading && (
                <div className="flex flex-wrap items-center gap-3 pt-1">
                  <p className="text-2xl sm:text-3xl font-japanese font-black tracking-wide text-white/95">
                    {primaryReading}
                  </p>
                  {type === 'vocabulary' && item.audios && item.audios.length > 0 && (
                    <AudioPlayerButton audios={item.audios} variant="hero" />
                  )}
                </div>
              )}
            </div>
          </div>

          {/* SRS Stage Card */}
          <div className="bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl p-5 shrink-0 self-stretch sm:self-auto sm:min-w-[220px] flex flex-col justify-between space-y-3">
            <div className="flex items-center justify-between">
              <span className="text-4xs font-black uppercase tracking-widest opacity-80 flex items-center space-x-1">
                <Award className="w-3.5 h-3.5" />
                <span>Status Belajar SRS</span>
              </span>
            </div>
            <div>
              <span className={`inline-block text-xs font-black px-3 py-1 rounded-xl shadow-sm ${getSrsColorClass(srsStage)}`}>
                {srsStage === 0 ? 'Terkunci (Belum Belajar)' : getSrsLabel(srsStage)}
              </span>
              {srsStage > 0 && (
                <p className="text-4xs opacity-80 mt-1.5 font-medium">
                  Tahap SRS {srsStage} dari 9.
                </p>
              )}
            </div>
          </div>
        </div>
      </section>

      {/* Main Grid Content */}
      <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
        {/* Left 2 Columns: Readings, Mnemonics, Context Sentences, Similar Kanji */}
        <div className="lg:col-span-2 space-y-8">
          {/* Parts of Speech Section (Vocabulary) */}
          {type === 'vocabulary' && itemToDisplay.parts_of_speech && itemToDisplay.parts_of_speech.length > 0 && (
            <div className="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800/80 rounded-3xl p-6 sm:p-7 space-y-3 shadow-sm">
              <div className="flex items-center justify-between">
                <h2 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest flex items-center space-x-2">
                  <Bookmark className="w-4 h-4 text-purple-500" />
                  <span>Jenis Kata & Tata Bahasa (Parts of Speech)</span>
                </h2>
              </div>
              <div className="flex flex-wrap items-center gap-2 pt-1">
                {itemToDisplay.parts_of_speech.map((pos: string) => (
                  <PartOfSpeechBadge key={pos} item={pos} size="md" />
                ))}
              </div>
            </div>
          )}

          {/* Readings Section (Kanji & Vocab) */}
          {item.readings && item.readings.length > 0 && (
            <div className="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800/80 rounded-3xl p-6 sm:p-7 space-y-4 shadow-sm">
              <div className="flex items-center justify-between">
                <h2 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest flex items-center space-x-2">
                  <Languages className="w-4 h-4 text-pink-500" />
                  <span>Cara Baca (Readings)</span>
                </h2>
              </div>

              {type === 'kanji' ? (
                (() => {
                  const onyomiList = item.readings.filter(
                    (r: any) => r.reading_type === 'onyomi' || (!r.reading_type && r.reading_type !== 'kunyomi' && r.reading_type !== 'nanori')
                  );
                  const kunyomiList = item.readings.filter((r: any) => r.reading_type === 'kunyomi');
                  const nanoriList = item.readings.filter((r: any) => r.reading_type === 'nanori');

                  return (
                    <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 bg-card-muted/40 p-4 sm:p-5 rounded-2xl border border-card-border">
                      {/* On'yomi */}
                      <div className="space-y-2">
                        <span className="text-xs font-bold text-muted uppercase tracking-widest block">
                          On’yomi
                        </span>
                        {onyomiList.length > 0 ? (
                          <div className="flex flex-wrap gap-2">
                            {onyomiList.map((r: any, idx: number) => (
                              <div
                                key={idx}
                                className={`px-3 py-1.5 rounded-xl border text-sm font-japanese font-bold flex items-center space-x-2 transition-all ${
                                  r.primary_reading
                                    ? 'bg-pink-500/10 border-pink-500/30 text-pink-600 dark:text-pink-300 shadow-xs'
                                    : 'bg-card border-card-border text-primary'
                                }`}
                              >
                                <span className="text-base leading-none">{r.reading}</span>
                                {r.primary_reading && (
                                  <span className="text-[9px] font-black uppercase tracking-wider text-pink-500 bg-pink-100 dark:bg-pink-950/60 px-1.5 py-0.5 rounded">
                                    Utama
                                  </span>
                                )}
                              </div>
                            ))}
                          </div>
                        ) : (
                          <span className="text-sm font-medium text-muted italic block">
                            None
                          </span>
                        )}
                      </div>

                      {/* Kun'yomi */}
                      <div className="space-y-2">
                        <span className="text-xs font-bold text-muted uppercase tracking-widest block">
                          Kun’yomi
                        </span>
                        {kunyomiList.length > 0 ? (
                          <div className="flex flex-wrap gap-2">
                            {kunyomiList.map((r: any, idx: number) => (
                              <div
                                key={idx}
                                className={`px-3 py-1.5 rounded-xl border text-sm font-japanese font-bold flex items-center space-x-2 transition-all ${
                                  r.primary_reading
                                    ? 'bg-pink-500/10 border-pink-500/30 text-pink-600 dark:text-pink-300 shadow-xs'
                                    : 'bg-card border-card-border text-primary'
                                }`}
                              >
                                <span className="text-base leading-none">{r.reading}</span>
                                {r.primary_reading && (
                                  <span className="text-[9px] font-black uppercase tracking-wider text-pink-500 bg-pink-100 dark:bg-pink-950/60 px-1.5 py-0.5 rounded">
                                    Utama
                                  </span>
                                )}
                              </div>
                            ))}
                          </div>
                        ) : (
                          <span className="text-sm font-medium text-muted italic block">
                            None
                          </span>
                        )}
                      </div>

                      {/* Nanori */}
                      <div className="space-y-2">
                        <span className="text-xs font-bold text-muted uppercase tracking-widest block">
                          Nanori
                        </span>
                        {nanoriList.length > 0 ? (
                          <div className="flex flex-wrap gap-2">
                            {nanoriList.map((r: any, idx: number) => (
                              <div
                                key={idx}
                                className={`px-3 py-1.5 rounded-xl border text-sm font-japanese font-bold flex items-center space-x-2 transition-all ${
                                  r.primary_reading
                                    ? 'bg-pink-500/10 border-pink-500/30 text-pink-600 dark:text-pink-300 shadow-xs'
                                    : 'bg-card border-card-border text-primary'
                                }`}
                              >
                                <span className="text-base leading-none">{r.reading}</span>
                                {r.primary_reading && (
                                  <span className="text-[9px] font-black uppercase tracking-wider text-pink-500 bg-pink-100 dark:bg-pink-950/60 px-1.5 py-0.5 rounded">
                                    Utama
                                  </span>
                                )}
                              </div>
                            ))}
                          </div>
                        ) : (
                          <span className="text-sm font-medium text-muted italic block">
                            None
                          </span>
                        )}
                      </div>
                    </div>
                  );
                })()
              ) : (
                <div className="flex flex-wrap gap-2.5">
                  {item.readings.map((r: any, idx: number) => (
                    <div
                      key={idx}
                      className="px-4 py-2 rounded-2xl border text-sm font-japanese font-bold flex items-center space-x-3 transition-all bg-purple-50 dark:bg-purple-950/40 border-purple-200 dark:border-purple-900/60 text-purple-700 dark:text-purple-300 shadow-xs"
                    >
                      <span className="text-base">{r.reading}</span>
                    </div>
                  ))}
                </div>
              )}
            </div>
          )}

          {/* Meaning & Readings Mnemonics */}
          <div className="space-y-4">
            {/* Meaning Mnemonic / Radical Description */}
            {(itemToDisplay.meaning_mnemonic || itemToDisplay.description) && (
              <div className="bg-teal-50/70 dark:bg-teal-950/20 border border-teal-200/70 dark:border-teal-900/50 rounded-3xl p-6 sm:p-7 space-y-2">
                <h3 className="text-xs font-bold text-teal-700 dark:text-teal-400 uppercase tracking-widest flex items-center space-x-2">
                  <Sparkles className="w-4 h-4 text-teal-500" />
                  <span>
                    {type === 'radical' ? 'Mnemonic & Penjelasan Radikal' : 'Mnemonic Arti (Jembatan Keledai)'}
                  </span>
                </h3>
                <p className="text-teal-950 dark:text-teal-200 text-sm leading-relaxed font-medium">
                  <FormattedText text={itemToDisplay.meaning_mnemonic || itemToDisplay.description} />
                </p>
              </div>
            )}

            {/* Additional Description if both exist and differ */}
            {itemToDisplay.meaning_mnemonic &&
              itemToDisplay.description &&
              itemToDisplay.meaning_mnemonic.trim() !== itemToDisplay.description.trim() && (
                <div className="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800/80 rounded-3xl p-6 sm:p-7 space-y-2 shadow-sm">
                  <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest">
                    Deskripsi Tambahan
                  </h3>
                  <p className="text-slate-650 dark:text-slate-350 text-sm leading-relaxed">
                    <FormattedText text={itemToDisplay.description} />
                  </p>
                </div>
              )}

            {/* Reading Mnemonic (Kanji & Vocab) */}
            {itemToDisplay.reading_mnemonic && (
              <div className="bg-pink-50/70 dark:bg-pink-950/20 border border-pink-200/70 dark:border-pink-900/50 rounded-3xl p-6 sm:p-7 space-y-2">
                <h3 className="text-xs font-bold text-pink-700 dark:text-pink-400 uppercase tracking-widest flex items-center space-x-2">
                  <Languages className="w-4 h-4 text-pink-500" />
                  <span>Mnemonic Cara Baca</span>
                </h3>
                <p className="text-pink-950 dark:text-pink-200 text-sm leading-relaxed font-medium">
                  <FormattedText text={itemToDisplay.reading_mnemonic} />
                </p>
              </div>
            )}
          </div>

          {/* Context Sentences (Vocabulary) */}
          {item.sentences && item.sentences.length > 0 && (
            <div className="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800/80 rounded-3xl p-6 sm:p-7 space-y-4 shadow-sm">
              <h2 className="text-xs font-bold text-purple-500 uppercase tracking-widest flex items-center space-x-2">
                <FileText className="w-4 h-4 text-purple-500" />
                <span>Contoh Kalimat Konteks</span>
              </h2>
              <div className="space-y-3">
                {item.sentences.map((st: any, idx: number) => (
                  <div
                    key={idx}
                    className="p-4 bg-purple-50/50 dark:bg-purple-950/15 border border-purple-100 dark:border-purple-900/40 rounded-2xl space-y-1.5"
                  >
                    <p className="font-japanese font-bold text-base text-slate-900 dark:text-slate-100">
                      {st.japanese}
                    </p>
                    <p className="text-xs sm:text-sm text-slate-650 dark:text-slate-350 font-medium leading-relaxed">
                      {st.indonesian || st.english}
                    </p>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* Relations: Visually Similar Kanji (Prominently Placed for Kanji) */}
          {type === 'kanji' && item.similar_kanji && item.similar_kanji.length > 0 && (
            <div className="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800/80 rounded-3xl p-6 sm:p-7 shadow-sm">
              <SimilarKanjiSection
                currentKanji={{
                  character: item.character,
                  slug: item.slug,
                  level: item.level,
                  primary_meaning: primaryMeaning,
                  primary_reading: primaryReading,
                }}
                similarKanjis={item.similar_kanji}
                onSelectKanji={(sim) => {
                  router.push(`/kanji/${encodeURIComponent(sim.character)}`);
                }}
                variant="full"
              />
            </div>
          )}
        </div>

        {/* Right 1 Column: Component Hierarchy (Radicals, Kanji, Vocabularies) */}
        <div className="space-y-6">

          {/* Radicals composed in Kanji */}
          {itemToDisplay.radicals && itemToDisplay.radicals.length > 0 && (
            <div className="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800/80 rounded-3xl p-6 space-y-3 shadow-sm">
              <div className="flex items-center justify-between">
                <h3 className="text-xxs font-bold text-cyan-500 uppercase tracking-widest flex items-center space-x-1.5">
                  <Layers className="w-3.5 h-3.5" />
                  <span>Terdiri Dari Radikal</span>
                </h3>
                <span className="text-xxs font-bold text-cyan-600 dark:text-cyan-400 bg-cyan-50 dark:bg-cyan-950/40 px-2 py-0.5 rounded-full border border-cyan-200/60 dark:border-cyan-900/50">
                  {itemToDisplay.radicals.length}
                </span>
              </div>
              <div className="grid grid-cols-2 gap-2.5 max-h-[250px] overflow-y-auto pr-1.5 custom-scrollbar">
                {itemToDisplay.radicals.map((rd: any) => (
                  <Link
                    key={rd.id}
                    href={`/radical/${encodeURIComponent(rd.slug || rd.character)}`}
                    className="p-3.5 bg-radical/5 border border-radical/15 hover:border-radical/40 dark:bg-radical/10 hover:shadow-md rounded-2xl flex flex-col items-center justify-center text-center group cursor-pointer transition-all duration-200 hover:-translate-y-0.5"
                  >
                    <span className="text-3xl font-black text-radical group-hover:scale-110 transition-transform leading-tight block">
                      <CharacterDisplay character={rd.character || '—'} slug={rd.slug} imgClassName="w-8 h-8" />
                    </span>
                    <span className="text-4xs text-slate-500 dark:text-slate-400 uppercase tracking-wider font-semibold truncate max-w-full block mt-1.5">
                      {rd.slug}
                    </span>
                  </Link>
                ))}
              </div>
            </div>
          )}

          {/* Found in Kanji (Radical & Vocab) */}
          {itemToDisplay.kanjis && itemToDisplay.kanjis.length > 0 && (
            <div className="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800/80 rounded-3xl p-6 space-y-3 shadow-sm">
              <div className="flex items-center justify-between">
                <h3 className="text-xxs font-bold text-pink-500 uppercase tracking-widest flex items-center space-x-1.5">
                  <Layers className="w-3.5 h-3.5" />
                  <span>{type === 'vocabulary' ? 'Terdiri Dari Kanji' : 'Ditemukan di Kanji'}</span>
                </h3>
                <span className="text-xxs font-bold text-pink-600 dark:text-pink-400 bg-pink-50 dark:bg-pink-950/40 px-2 py-0.5 rounded-full border border-pink-200/60 dark:border-pink-900/50">
                  {itemToDisplay.kanjis.length}
                </span>
              </div>
              <div className="grid grid-cols-2 gap-2.5 max-h-[250px] overflow-y-auto pr-1.5 custom-scrollbar">
                {itemToDisplay.kanjis.map((kj: any) => (
                  <Link
                    key={kj.id}
                    href={`/kanji/${encodeURIComponent(kj.character)}`}
                    className="p-3.5 bg-kanji/5 border border-kanji/15 hover:border-kanji/40 dark:bg-kanji/10 hover:shadow-md rounded-2xl flex flex-col items-center justify-center text-center group cursor-pointer transition-all duration-200 hover:-translate-y-0.5"
                  >
                    <span className="text-3xl font-black font-japanese text-kanji group-hover:scale-110 transition-transform leading-tight block">
                      {kj.character}
                    </span>
                    <span className="text-4xs text-slate-500 dark:text-slate-400 uppercase tracking-wider font-semibold truncate max-w-full block mt-1.5">
                      {kj.slug}
                    </span>
                  </Link>
                ))}
              </div>
            </div>
          )}

          {/* Found in Vocabulary (Kanji) */}
          {itemToDisplay.vocabularies && itemToDisplay.vocabularies.length > 0 && (
            <div className="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800/80 rounded-3xl p-6 space-y-3 shadow-sm">
              <div className="flex items-center justify-between">
                <h3 className="text-xxs font-bold text-purple-500 uppercase tracking-widest flex items-center space-x-1.5">
                  <Layers className="w-3.5 h-3.5" />
                  <span>Ditemukan di Kosakata</span>
                </h3>
                <span className="text-xxs font-bold text-purple-600 dark:text-purple-400 bg-purple-50 dark:bg-purple-950/40 px-2 py-0.5 rounded-full border border-purple-200/60 dark:border-purple-900/50">
                  {itemToDisplay.vocabularies.length}
                </span>
              </div>
              <div className="grid grid-cols-2 gap-2.5 max-h-[250px] overflow-y-auto pr-1.5 custom-scrollbar">
                {itemToDisplay.vocabularies.map((vc: any) => (
                  <Link
                    key={vc.id}
                    href={`/vocabulary/${encodeURIComponent(vc.character)}`}
                    className="p-3.5 bg-vocab/5 border border-vocab/15 hover:border-vocab/40 dark:bg-vocab/10 hover:shadow-md rounded-2xl flex flex-col items-center justify-center text-center group cursor-pointer transition-all duration-200 hover:-translate-y-0.5"
                  >
                    <span className="text-2xl font-black font-japanese text-vocab group-hover:scale-110 transition-transform leading-tight block truncate max-w-full px-1">
                      {vc.character}
                    </span>
                    <span className="text-4xs text-slate-500 dark:text-slate-400 uppercase tracking-wider font-semibold truncate max-w-full block mt-1.5">
                      {vc.slug}
                    </span>
                  </Link>
                ))}
              </div>
            </div>
          )}
        </div>
      </div>

      {/* Bottom Sticky-like Prev & Next Bar */}
      <div className="pt-6 border-t border-slate-200/80 dark:border-slate-800/80 flex items-center justify-between">
        {prevItem ? (
          <Link
            href={getItemLink(prevItem)}
            className="flex items-center space-x-2 px-5 py-3 rounded-2xl bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 hover:border-slate-300 dark:hover:border-slate-700 shadow-sm text-xs font-bold text-slate-700 dark:text-slate-300 transition-all hover:-translate-x-0.5"
          >
            <ChevronLeft className="w-4 h-4" />
            <div className="text-left">
              <span className="text-4xs text-slate-400 uppercase tracking-widest block font-medium">Sebelumnya</span>
              <span className="font-japanese text-base font-black text-slate-900 dark:text-slate-100">
                {prevItem.character || prevItem.slug}
              </span>
            </div>
          </Link>
        ) : (
          <div />
        )}

        <Link
          href={catalogPath}
          className="px-6 py-2.5 bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-200 rounded-xl text-xs font-bold transition-colors"
        >
          Lihat Semua di {catalogName}
        </Link>

        {nextItem ? (
          <Link
            href={getItemLink(nextItem)}
            className="flex items-center space-x-2 px-5 py-3 rounded-2xl bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 hover:border-slate-300 dark:hover:border-slate-700 shadow-sm text-xs font-bold text-slate-700 dark:text-slate-300 transition-all hover:translate-x-0.5 text-right"
          >
            <div className="text-right">
              <span className="text-4xs text-slate-400 uppercase tracking-widest block font-medium">Selanjutnya</span>
              <span className="font-japanese text-base font-black text-slate-900 dark:text-slate-100">
                {nextItem.character || nextItem.slug}
              </span>
            </div>
            <ChevronRight className="w-4 h-4" />
          </Link>
        ) : (
          <div />
        )}
      </div>

      {/* In-place Item Editor Modal */}
      <ItemEditorModal
        isOpen={isEditModalOpen}
        setIsOpen={setIsEditModalOpen}
        formItem={formItem}
        setFormItem={setFormItem}
        handleSaveItem={handleSaveItem}
        formLoading={formLoading}
        items={referenceItems}
      />
    </div>
  );
}
