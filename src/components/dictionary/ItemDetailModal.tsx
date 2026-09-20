'use client';

import React, { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import { X, Layers, Languages, FileText, Loader2, ExternalLink } from 'lucide-react';
import CharacterDisplay from '@/components/CharacterDisplay';
import FormattedText from '@/components/FormattedText';
import { DictionaryItem } from '@/hooks/useDictionaryItems';
import { getSrsLabel, getSrsColorClass } from '@/lib/srs';
import SimilarKanjiSection from '@/components/dictionary/SimilarKanjiSection';
import AudioPlayerButton from '@/components/audio/AudioPlayerButton';
import { supabase } from '@/lib/supabase';

interface ItemDetailModalProps {
  item: DictionaryItem | null;
  onClose: () => void;
  loading?: boolean;
  onNavigateItem?: (item: any) => void;
  onItemUpdated?: (updatedItem: any) => void;
}

export default function ItemDetailModal({
  item,
  onClose,
  loading,
  onNavigateItem,
  onItemUpdated,
}: ItemDetailModalProps) {
  const router = useRouter();
  const [fallbackSimilar, setFallbackSimilar] = useState<any[]>([]);
  const [fallbackAudios, setFallbackAudios] = useState<any[]>([]);
  const type = item?.type || 'radical';

  const localSimilar = (item?.similar_kanji && item.similar_kanji.length > 0)
    ? item.similar_kanji
    : fallbackSimilar;

  const localAudios = (item?.audios && item.audios.length > 0)
    ? item.audios
    : fallbackAudios;

  useEffect(() => {
    if (!item) return;

    let isMounted = true;

    if (type === 'vocabulary' && (!item.audios || item.audios.length === 0)) {
      supabase
        .from('item_audios')
        .select('*')
        .eq('item_id', item.id)
        .then(({ data }) => {
          if (isMounted && data) setFallbackAudios(data);
        });
    }

    async function loadFallbackSimilar() {
      if (type !== 'kanji' || (item!.similar_kanji && item!.similar_kanji.length > 0)) return;
      try {
        const { data } = await supabase
          .from('item_similar_kanji')
          .select(`
            similar_item_id,
            items!similar_item_id(
              id, character, slug, level, type,
              item_meanings(meaning, primary_meaning),
              item_readings(reading, primary_reading)
            )
          `)
          .eq('item_id', item!.id);

        if (!isMounted || !data) return;
        const list = data.map((s: any) => {
          const it = Array.isArray(s.items) ? s.items[0] : s.items;
          if (!it) return null;
          const pMean = it.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || it.item_meanings?.[0]?.meaning || it.slug;
          const pRead = it.item_readings?.find((r: any) => r.primary_reading)?.reading || it.item_readings?.[0]?.reading || null;
          return {
            id: it.id,
            character: it.character,
            slug: it.slug,
            level: it.level,
            type: it.type,
            primary_meaning: pMean,
            primary_reading: pRead,
          };
        }).filter(Boolean);

        setFallbackSimilar(list);
      } catch (e) {
        console.error('Error in fallback similar kanji fetch:', e);
      }
    }

    loadFallbackSimilar();
    return () => { isMounted = false; };
  }, [item?.id, item?.similar_kanji, item?.audios, type]);

  if (!item) return null;

  // Gradient styles per type
  let headerGradient = 'bg-radical-gradient';
  if (type === 'kanji') {
    headerGradient = 'bg-kanji-gradient';
  } else if (type === 'vocabulary') {
    headerGradient = 'bg-vocab-gradient';
  }

  const primaryMeaning = item.primary_meaning || item.slug || '';
  const primaryReading = item.primary_reading || '';

  return (
    <div
      onClick={onClose}
      className="fixed inset-0 z-50 overflow-y-auto bg-slate-950/70 backdrop-blur-md flex items-end sm:items-center justify-center p-0 sm:p-6 transition-all duration-300"
    >
      <div
        onClick={(e) => e.stopPropagation()}
        className="bg-card text-primary w-full max-w-lg rounded-t-3xl sm:rounded-3xl border-t sm:border border-card-border shadow-2xl overflow-hidden flex flex-col animate-fade-in max-h-[92vh] sm:max-h-[90vh] my-0 sm:my-8"
      >
        {/* Header Banner */}
        <div className={`${headerGradient} p-6 sm:p-8 text-white flex flex-col items-center justify-center relative shrink-0`}>
          {/* Mobile Drag Handle Indicator */}
          <div className="w-12 h-1.5 bg-white/40 rounded-full mx-auto mb-3 sm:hidden shrink-0" />

          <div className="absolute top-4 right-4 flex items-center space-x-1.5">
            <button
              onClick={() => {
                onClose();
                const identifier = encodeURIComponent(item.character || item.slug || '');
                router.push(`/${type}/${identifier}`);
              }}
              className="min-h-[44px] px-3 py-2 hover:bg-white/20 rounded-xl text-white transition-colors flex items-center space-x-1.5 text-xs font-semibold"
              title="Buka Halaman Lengkap"
            >
              <ExternalLink className="w-4 h-4" />
              <span className="hidden sm:inline text-[10px] uppercase tracking-wider">Halaman Penuh</span>
            </button>
            <button
              onClick={onClose}
              className="min-h-[44px] min-w-[44px] p-2.5 hover:bg-white/20 rounded-xl text-white transition-colors flex items-center justify-center"
              title="Tutup"
            >
              <X className="w-5 h-5" />
            </button>
          </div>

          {(() => {
            const charLength = (item.character || item.slug || '').length;
            let textSize = 'text-6xl sm:text-7xl';
            let imgSize = 'w-20 h-20';
            if (charLength >= 5) {
              textSize = 'text-3xl sm:text-4xl';
              imgSize = 'w-14 h-14';
            } else if (charLength >= 3) {
              textSize = 'text-4xl sm:text-5xl';
              imgSize = 'w-16 h-16';
            }

            return (
              <h1 className={`${textSize} font-black font-japanese select-all flex items-center justify-center text-center px-4 leading-tight break-words`}>
                <CharacterDisplay character={item.character} slug={item.slug} imgClassName={imgSize} />
              </h1>
            );
          })()}

          {type !== 'radical' && primaryReading && (
            <div className="flex flex-wrap items-center justify-center gap-2.5 mt-2">
              <p className="text-xl font-japanese font-black tracking-wider opacity-95">
                {primaryReading}
              </p>
              {type === 'vocabulary' && (item.audios?.length || localAudios.length) > 0 && (
                <AudioPlayerButton
                  audios={item.audios && item.audios.length > 0 ? item.audios : localAudios}
                  variant="hero"
                />
              )}
            </div>
          )}

          <p className="text-lg font-bold tracking-wide mt-1 uppercase opacity-90">{primaryMeaning}</p>
        </div>

        {/* Content Body */}
        <div className="p-6 sm:p-8 space-y-6 text-sm leading-relaxed text-left overflow-y-auto flex-1">
          {loading && (
            <div className="flex items-center justify-center py-4 space-x-2 text-muted">
              <Loader2 className="w-5 h-5 animate-spin text-indigo-500" />
              <span className="text-xs font-semibold">Memuat rincian relasi...</span>
            </div>
          )}

          {/* SRS Stage Status */}
          <div className="flex items-center justify-between p-3.5 bg-card-muted/50 border border-card-border rounded-2xl">
            <span className="text-xs font-bold text-muted uppercase tracking-widest block">
              Status Belajar SRS
            </span>
            <span className={`text-xs font-extrabold px-3 py-1 rounded-full ${getSrsColorClass(item.srs_stage || 0)}`}>
              {item.srs_stage === 0 ? 'Terkunci (Belum Dipelajari)' : getSrsLabel(item.srs_stage || 0)}
            </span>
          </div>

          {/* Readings Section (Kanji & Vocab) */}
          {item.readings && item.readings.length > 0 && (
            <div className="space-y-2">
              <div className="flex items-center justify-between">
                <h3 className="text-xs font-bold text-muted uppercase tracking-widest flex items-center space-x-1.5">
                  <Languages className="w-3.5 h-3.5 text-pink-500" />
                  <span>Cara Baca (Readings)</span>
                </h3>
              </div>

              {type === 'kanji' ? (
                (() => {
                  const onyomiList = item.readings.filter(
                    (r: any) => r.reading_type === 'onyomi' || (!r.reading_type && r.reading_type !== 'kunyomi' && r.reading_type !== 'nanori')
                  );
                  const kunyomiList = item.readings.filter((r: any) => r.reading_type === 'kunyomi');
                  const nanoriList = item.readings.filter((r: any) => r.reading_type === 'nanori');

                  return (
                    <div className="grid grid-cols-1 sm:grid-cols-3 gap-3 bg-card-muted/40 p-3.5 rounded-2xl border border-card-border">
                      {/* On'yomi */}
                      <div className="space-y-1.5">
                        <span className="text-[11px] font-extrabold text-muted uppercase tracking-widest block">
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
                                    : 'bg-card border-card-border text-primary'
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
                          <span className="text-xs font-medium text-muted italic block">
                            None
                          </span>
                        )}
                      </div>

                      {/* Kun'yomi */}
                      <div className="space-y-1.5">
                        <span className="text-[11px] font-extrabold text-muted uppercase tracking-widest block">
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
                                    : 'bg-card border-card-border text-primary'
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
                          <span className="text-xs font-medium text-muted italic block">
                            None
                          </span>
                        )}
                      </div>

                      {/* Nanori */}
                      <div className="space-y-1.5">
                        <span className="text-[11px] font-extrabold text-muted uppercase tracking-widest block">
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
                                    : 'bg-card border-card-border text-primary'
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
                          <span className="text-xs font-medium text-muted italic block">
                            None
                          </span>
                        )}
                      </div>
                    </div>
                  );
                })()
              ) : (
                <div className="flex flex-wrap gap-2">
                  {item.readings.map((r: any, idx: number) => (
                    <div
                      key={idx}
                      className="px-3 py-1.5 rounded-xl border text-xs font-japanese font-bold flex items-center space-x-2 bg-purple-500/10 border-purple-500/30 text-purple-700 dark:text-purple-300 shadow-xs"
                    >
                      <span>{r.reading}</span>
                    </div>
                  ))}
                </div>
              )}
            </div>
          )}

          {/* Meaning Mnemonic / Radical Description */}
          {(item.meaning_mnemonic || item.description) && (
            <div className="p-4 bg-teal-500/10 border border-teal-500/20 rounded-2xl">
              <h3 className="text-xs font-bold text-teal-700 dark:text-teal-300 uppercase tracking-widest block mb-1">
                {type === 'radical' ? 'Mnemonic & Penjelasan Radikal' : 'Mnemonic Arti (Jembatan Keledai)'}
              </h3>
              <p className="text-primary font-medium text-xs leading-relaxed">
                <FormattedText text={item.meaning_mnemonic || item.description} />
              </p>
            </div>
          )}

          {/* Reading Mnemonic (Kanji & Vocab) */}
          {item.reading_mnemonic && (
            <div className="p-4 bg-pink-500/10 border border-pink-500/20 rounded-2xl">
              <h3 className="text-xs font-bold text-pink-700 dark:text-pink-300 uppercase tracking-widest block mb-1">
                Mnemonic Cara Baca
              </h3>
              <p className="text-primary font-medium text-xs leading-relaxed">
                <FormattedText text={item.reading_mnemonic} />
              </p>
            </div>
          )}

          {/* Description if both exist and differ */}
          {item.description &&
            item.meaning_mnemonic &&
            item.description.trim() !== item.meaning_mnemonic.trim() && (
              <div className="space-y-1">
                <h3 className="text-xs font-bold text-muted uppercase tracking-widest block">
                  Deskripsi Detail
                </h3>
                <p className="text-primary/90 text-xs leading-relaxed">
                  <FormattedText text={item.description} />
                </p>
              </div>
            )}

          {/* Relations: Visually Similar Kanji (Prominently Placed) */}
          {type === 'kanji' && ((item.similar_kanji && item.similar_kanji.length > 0) || localSimilar.length > 0) && (
            <SimilarKanjiSection
              currentKanji={{
                character: item.character,
                slug: item.slug,
                level: item.level,
                primary_meaning: primaryMeaning,
                primary_reading: primaryReading,
              }}
              similarKanjis={item.similar_kanji && item.similar_kanji.length > 0 ? item.similar_kanji : localSimilar}
              onSelectKanji={(sim) => {
                if (onNavigateItem) {
                  onNavigateItem(sim);
                } else {
                  router.push(`/kanji?character=${encodeURIComponent(sim.character)}`);
                }
              }}
              variant="modal"
            />
          )}

          {/* Context Sentences (Vocabulary) */}
          {item.sentences && item.sentences.length > 0 && (
            <div className="space-y-3 pt-4 border-t border-card-border">
              <h3 className="text-xs font-bold text-muted uppercase tracking-widest block flex items-center space-x-1.5">
                <FileText className="w-3.5 h-3.5 text-purple-500" />
                <span>Contoh Kalimat Konteks</span>
              </h3>
              <div className="space-y-3">
                {item.sentences.map((st: any, idx: number) => (
                  <div
                    key={idx}
                    className="p-3 bg-purple-500/10 border border-purple-500/20 rounded-2xl space-y-1"
                  >
                    <p className="font-japanese font-bold text-sm text-primary">
                      {st.japanese}
                    </p>
                    <p className="text-xs text-muted font-medium">
                      {st.indonesian || st.english}
                    </p>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* Relations: Radicals composed in Kanji */}
          {item.radicals && item.radicals.length > 0 && (
            <div className="space-y-3 pt-4 border-t border-card-border">
              <div className="flex items-center justify-between">
                <h3 className="text-xs font-bold text-cyan-500 uppercase tracking-widest block flex items-center space-x-1.5">
                  <Layers className="w-3.5 h-3.5" />
                  <span>Terdiri Dari Radikal</span>
                </h3>
                <span className="text-xs font-bold text-cyan-600 dark:text-cyan-400 bg-cyan-500/10 px-2 py-0.5 rounded-full border border-cyan-500/20">
                  {item.radicals.length}
                </span>
              </div>
              <div className="grid grid-cols-2 gap-2 max-h-[220px] overflow-y-auto pr-1.5 custom-scrollbar">
                {item.radicals.map((rd: any) => (
                  <div
                    key={rd.id}
                    onClick={() => {
                      if (onNavigateItem) {
                        onNavigateItem(rd);
                      } else {
                        onClose();
                        router.push(`/radical?character=${encodeURIComponent(rd.character || rd.slug)}`);
                      }
                    }}
                    className="p-3 bg-radical/5 border border-radical/20 hover:border-radical/40 dark:bg-radical/10 hover:shadow-xs rounded-xl flex flex-col items-center justify-center text-center group cursor-pointer transition-all duration-200 hover:-translate-y-0.5"
                  >
                    <span className="text-2xl font-black text-radical group-hover:scale-110 transition-transform leading-tight block">
                      <CharacterDisplay character={rd.character || '—'} slug={rd.slug} imgClassName="w-7 h-7" />
                    </span>
                    <span className="text-[10px] text-muted uppercase tracking-wider font-semibold truncate max-w-full block mt-1">
                      {rd.slug}
                    </span>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* Relations: Found in Kanji (Radical) */}
          {item.kanjis && item.kanjis.length > 0 && (
            <div className="space-y-3 pt-4 border-t border-card-border">
              <div className="flex items-center justify-between">
                <h3 className="text-xs font-bold text-pink-500 uppercase tracking-widest block flex items-center space-x-1.5">
                  <Layers className="w-3.5 h-3.5" />
                  <span>
                    {type === 'vocabulary' ? 'Terdiri Dari Kanji' : 'Ditemukan di Kanji'}
                  </span>
                </h3>
                <span className="text-xs font-bold text-pink-600 dark:text-pink-400 bg-pink-500/10 px-2 py-0.5 rounded-full border border-pink-500/20">
                  {item.kanjis.length}
                </span>
              </div>
              <div className="grid grid-cols-2 gap-2 max-h-[220px] overflow-y-auto pr-1.5 custom-scrollbar">
                {item.kanjis.map((kj: any) => (
                  <div
                    key={kj.id}
                    onClick={() => {
                      if (onNavigateItem) {
                        onNavigateItem(kj);
                      } else {
                        onClose();
                        router.push(`/kanji?character=${encodeURIComponent(kj.character)}`);
                      }
                    }}
                    className="p-3 bg-kanji/5 border border-kanji/20 hover:border-kanji/40 dark:bg-kanji/10 hover:shadow-xs rounded-xl flex flex-col items-center justify-center text-center group cursor-pointer transition-all duration-200 hover:-translate-y-0.5"
                  >
                    <span className="text-2xl font-black font-japanese text-kanji group-hover:scale-110 transition-transform leading-tight block">
                      {kj.character}
                    </span>
                    <span className="text-[10px] text-muted uppercase tracking-wider font-semibold truncate max-w-full block mt-1">
                      {kj.slug}
                    </span>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* Relations: Found in Vocabulary (Kanji) */}
          {item.vocabularies && item.vocabularies.length > 0 && (
            <div className="space-y-3 pt-4 border-t border-card-border">
              <div className="flex items-center justify-between">
                <h3 className="text-xs font-bold text-purple-500 uppercase tracking-widest block flex items-center space-x-1.5">
                  <Layers className="w-3.5 h-3.5" />
                  <span>Ditemukan di Kosakata</span>
                </h3>
                <span className="text-xs font-bold text-purple-600 dark:text-purple-400 bg-purple-500/10 px-2 py-0.5 rounded-full border border-purple-500/20">
                  {item.vocabularies.length}
                </span>
              </div>
              <div className="grid grid-cols-2 gap-2 max-h-[220px] overflow-y-auto pr-1.5 custom-scrollbar">
                {item.vocabularies.map((vc: any) => (
                  <div
                    key={vc.id}
                    onClick={() => {
                      if (onNavigateItem) {
                        onNavigateItem(vc);
                      } else {
                        onClose();
                        router.push(`/vocabulary?character=${encodeURIComponent(vc.character)}`);
                      }
                    }}
                    className="p-3 bg-vocab/5 border border-vocab/20 hover:border-vocab/40 dark:bg-vocab/10 hover:shadow-xs rounded-xl flex flex-col items-center justify-center text-center group cursor-pointer transition-all duration-200 hover:-translate-y-0.5"
                  >
                    <span className="text-xl font-black font-japanese text-vocab group-hover:scale-110 transition-transform leading-tight block truncate max-w-full px-1">
                      {vc.character}
                    </span>
                    <span className="text-[10px] text-muted uppercase tracking-wider font-semibold truncate max-w-full block mt-1">
                      {vc.slug}
                    </span>
                  </div>
                ))}
              </div>
            </div>
          )}

        </div>

        {/* Bottom Actions */}
        <div className="p-4 border-t border-card-border bg-card-muted/50 flex items-center justify-between shrink-0">
          <button
            onClick={() => {
              onClose();
              const identifier = encodeURIComponent(item.character || item.slug || '');
              router.push(`/${type}/${identifier}`);
            }}
            className="min-h-[44px] flex items-center space-x-1.5 text-xs font-bold text-muted hover:text-primary transition-colors px-3 py-2 rounded-xl hover:bg-card-muted"
          >
            <ExternalLink className="w-4 h-4" />
            <span>Buka Halaman Lengkap</span>
          </button>
          <button
            onClick={onClose}
            className="min-h-[44px] px-6 py-2 bg-card-muted hover:bg-card-muted/80 text-primary font-bold rounded-xl text-xs transition-colors border border-card-border"
          >
            Tutup Detail
          </button>
        </div>
      </div>
    </div>
  );
}
