'use client';

import React from 'react';
import { useRouter } from 'next/navigation';
import { X, Layers, Languages, FileText, Loader2 } from 'lucide-react';
import CharacterDisplay from '@/components/CharacterDisplay';
import FormattedText from '@/components/FormattedText';
import { DictionaryItem } from '@/hooks/useDictionaryItems';
import { getSrsLabel, getSrsColorClass } from '@/lib/srs';

interface ItemDetailModalProps {
  item: DictionaryItem | null;
  onClose: () => void;
  loading?: boolean;
}

export default function ItemDetailModal({ item, onClose, loading }: ItemDetailModalProps) {
  const router = useRouter();

  if (!item) return null;

  const type = item.type || 'radical';

  // Gradient styles per type
  let headerGradient = 'bg-radical-gradient';
  let typeLabel = 'Radikal Kamus';
  if (type === 'kanji') {
    headerGradient = 'bg-kanji-gradient';
    typeLabel = 'Kanji Kamus';
  } else if (type === 'vocabulary') {
    headerGradient = 'bg-vocab-gradient';
    typeLabel = 'Kosakata Kamus';
  }

  const primaryMeaning = item.primary_meaning || item.slug || '';
  const primaryReading = item.primary_reading || '';

  return (
    <div
      onClick={onClose}
      className="fixed inset-0 z-50 overflow-y-auto bg-slate-950/70 backdrop-blur-md flex items-center justify-center p-4 sm:p-6 transition-all duration-300"
    >
      <div
        onClick={(e) => e.stopPropagation()}
        className="bg-white dark:bg-slate-900 w-full max-w-lg rounded-3xl border border-slate-200 dark:border-slate-800 shadow-2xl overflow-hidden flex flex-col animate-fade-in my-8 max-h-[90vh]"
      >
        {/* Header Banner */}
        <div className={`${headerGradient} p-8 text-white flex flex-col items-center justify-center relative shrink-0`}>
          <button
            onClick={onClose}
            className="absolute top-4 right-4 p-1.5 hover:bg-white/20 rounded-lg text-white transition-colors"
          >
            <X className="w-5 h-5" />
          </button>

          <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10 mb-3 block">
            {typeLabel} • Level {item.level}
          </span>

          <h1 className="text-7xl font-black select-all flex items-center justify-center">
            <CharacterDisplay character={item.character} slug={item.slug} imgClassName="w-20 h-20" />
          </h1>

          {type !== 'radical' && primaryReading && (
            <p className="text-xl font-japanese font-black tracking-wider mt-2 opacity-95">
              {primaryReading}
            </p>
          )}

          <p className="text-lg font-bold tracking-wide mt-1 uppercase opacity-90">{primaryMeaning}</p>
        </div>

        {/* Content Body */}
        <div className="p-6 sm:p-8 space-y-6 text-sm leading-relaxed text-left overflow-y-auto flex-1">
          {loading && (
            <div className="flex items-center justify-center py-4 space-x-2 text-slate-400">
              <Loader2 className="w-5 h-5 animate-spin" />
              <span className="text-xs font-semibold">Memuat rincian relasi...</span>
            </div>
          )}

          {/* SRS Stage Status */}
          <div className="flex items-center justify-between p-3.5 bg-slate-50 dark:bg-slate-950 border border-slate-200/50 dark:border-slate-850 rounded-2xl">
            <span className="text-xxs font-bold text-slate-450 uppercase tracking-widest block">
              Status Belajar SRS
            </span>
            <span className={`text-xxs font-extrabold px-3 py-1 rounded-full ${getSrsColorClass(item.srs_stage || 0)}`}>
              {item.srs_stage === 0 ? 'Terkunci (Belum Dipelajari)' : getSrsLabel(item.srs_stage || 0)}
            </span>
          </div>

          {/* Readings Section (Kanji & Vocab) */}
          {item.readings && item.readings.length > 0 && (
            <div className="space-y-2">
              <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest flex items-center space-x-1.5">
                <Languages className="w-3.5 h-3.5 text-pink-500" />
                <span>Cara Baca (Readings)</span>
              </h3>
              <div className="flex flex-wrap gap-2">
                {item.readings.map((r: any, idx: number) => (
                  <div
                    key={idx}
                    className={`px-3 py-1.5 rounded-xl border text-xs font-japanese font-bold flex items-center space-x-2 ${
                      r.primary_reading
                        ? 'bg-pink-50 dark:bg-pink-950/30 border-pink-200 dark:border-pink-900 text-pink-600 dark:text-pink-300'
                        : 'bg-slate-50 dark:bg-slate-800/40 border-slate-200 dark:border-slate-800 text-slate-600 dark:text-slate-400'
                    }`}
                  >
                    <span>{r.reading}</span>
                    {r.reading_type && (
                      <span className="text-4xs uppercase tracking-wider font-semibold opacity-70">
                        {r.reading_type}
                      </span>
                    )}
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* Meaning Mnemonic */}
          {item.meaning_mnemonic && (
            <div className="p-4 bg-teal-50 dark:bg-teal-950/20 border border-teal-100 dark:border-teal-900/50 rounded-2xl">
              <h3 className="text-xxs font-bold text-teal-700 dark:text-teal-400 uppercase tracking-widest block mb-1">
                Mnemonic Arti (Jembatan Keledai)
              </h3>
              <p className="text-teal-900 dark:text-teal-300 font-medium text-xs leading-relaxed">
                <FormattedText text={item.meaning_mnemonic} />
              </p>
            </div>
          )}

          {/* Reading Mnemonic (Kanji & Vocab) */}
          {item.reading_mnemonic && (
            <div className="p-4 bg-pink-50 dark:bg-pink-950/20 border border-pink-100 dark:border-pink-900/50 rounded-2xl">
              <h3 className="text-xxs font-bold text-pink-700 dark:text-pink-400 uppercase tracking-widest block mb-1">
                Mnemonic Cara Baca
              </h3>
              <p className="text-pink-900 dark:text-pink-300 font-medium text-xs leading-relaxed">
                <FormattedText text={item.reading_mnemonic} />
              </p>
            </div>
          )}

          {/* Description */}
          {item.description && (
            <div className="space-y-1">
              <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">
                Deskripsi Detail
              </h3>
              <p className="text-slate-650 dark:text-slate-350 text-xs leading-relaxed">
                <FormattedText text={item.description} />
              </p>
            </div>
          )}

          {/* Context Sentences (Vocabulary) */}
          {item.sentences && item.sentences.length > 0 && (
            <div className="space-y-3 pt-4 border-t border-slate-200/50 dark:border-slate-800/50">
              <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block flex items-center space-x-1.5">
                <FileText className="w-3.5 h-3.5 text-purple-500" />
                <span>Contoh Kalimat Konteks</span>
              </h3>
              <div className="space-y-3">
                {item.sentences.map((st: any, idx: number) => (
                  <div
                    key={idx}
                    className="p-3 bg-purple-50/50 dark:bg-purple-950/10 border border-purple-100 dark:border-purple-900/30 rounded-2xl space-y-1"
                  >
                    <p className="font-japanese font-bold text-sm text-slate-900 dark:text-slate-100">
                      {st.japanese}
                    </p>
                    <p className="text-xs text-slate-600 dark:text-slate-400 font-medium">
                      {st.indonesian || st.english}
                    </p>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* Relations: Radicals composed in Kanji */}
          {item.radicals && item.radicals.length > 0 && (
            <div className="space-y-3 pt-4 border-t border-slate-200/50 dark:border-slate-800/50">
              <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block flex items-center space-x-1">
                <Layers className="w-3.5 h-3.5 text-cyan-500" />
                <span>Terdiri Dari Radikal</span>
              </h3>
              <div className="grid grid-cols-2 sm:grid-cols-4 gap-2">
                {item.radicals.map((rd: any) => (
                  <div
                    key={rd.id}
                    onClick={() => {
                      onClose();
                      router.push(`/radical?character=${encodeURIComponent(rd.character || rd.slug)}`);
                    }}
                    className="p-2.5 bg-radical/5 border border-radical/15 hover:border-radical/35 dark:bg-radical/10 hover:shadow-sm rounded-xl flex items-center justify-between text-left cursor-pointer transition-all duration-200"
                  >
                    <span className="text-xl font-black text-radical">{rd.character}</span>
                    <span className="text-4xs text-slate-500 dark:text-slate-400 uppercase tracking-wider font-semibold truncate max-w-[60px]">
                      {rd.slug}
                    </span>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* Relations: Found in Kanji (Radical) */}
          {item.kanjis && item.kanjis.length > 0 && (
            <div className="space-y-3 pt-4 border-t border-slate-200/50 dark:border-slate-800/50">
              <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block flex items-center space-x-1">
                <Layers className="w-3.5 h-3.5 text-pink-500" />
                <span>
                  {type === 'vocabulary' ? 'Terdiri Dari Kanji' : 'Ditemukan di Kanji'}
                </span>
              </h3>
              <div className="grid grid-cols-2 sm:grid-cols-4 gap-2">
                {item.kanjis.map((kj: any) => (
                  <div
                    key={kj.id}
                    onClick={() => {
                      onClose();
                      router.push(`/kanji?character=${encodeURIComponent(kj.character)}`);
                    }}
                    className="p-2.5 bg-kanji/5 border border-kanji/15 hover:border-kanji/35 dark:bg-kanji/10 hover:shadow-sm rounded-xl flex items-center justify-between text-left group/kj cursor-pointer transition-all duration-200"
                  >
                    <div>
                      <span className="text-xl font-black text-kanji group-hover/kj:scale-105 transition-transform duration-200 block leading-tight">
                        {kj.character}
                      </span>
                      <span className="text-4xs text-slate-500 dark:text-slate-400 uppercase tracking-wider block truncate max-w-[65px] font-semibold mt-0.5">
                        {kj.slug}
                      </span>
                    </div>
                    {kj.level && (
                      <span className="px-1.5 py-0.5 text-4xs font-black bg-slate-900/5 dark:bg-white/5 rounded text-slate-500">
                        Lvl {kj.level}
                      </span>
                    )}
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* Relations: Found in Vocabulary (Kanji) */}
          {item.vocabularies && item.vocabularies.length > 0 && (
            <div className="space-y-3 pt-4 border-t border-slate-200/50 dark:border-slate-800/50">
              <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block flex items-center space-x-1">
                <Layers className="w-3.5 h-3.5 text-purple-500" />
                <span>Ditemukan di Kosakata</span>
              </h3>
              <div className="grid grid-cols-2 sm:grid-cols-3 gap-2">
                {item.vocabularies.map((vc: any) => (
                  <div
                    key={vc.id}
                    onClick={() => {
                      onClose();
                      router.push(`/vocabulary?character=${encodeURIComponent(vc.character)}`);
                    }}
                    className="p-2.5 bg-vocab/5 border border-vocab/15 hover:border-vocab/35 dark:bg-vocab/10 hover:shadow-sm rounded-xl flex items-center justify-between text-left cursor-pointer transition-all duration-200"
                  >
                    <span className="text-base font-japanese font-black text-vocab truncate max-w-[90px]">
                      {vc.character}
                    </span>
                    {vc.level && (
                      <span className="px-1.5 py-0.5 text-4xs font-black bg-slate-900/5 dark:bg-white/5 rounded text-slate-500">
                        Lvl {vc.level}
                      </span>
                    )}
                  </div>
                ))}
              </div>
            </div>
          )}
        </div>

        {/* Bottom Actions */}
        <div className="p-4 border-t border-slate-200 dark:border-slate-800 bg-slate-55 dark:bg-slate-950 flex items-center justify-end shrink-0">
          <button
            onClick={onClose}
            className="px-6 py-2 bg-slate-100 hover:bg-slate-250 dark:bg-slate-800 dark:hover:bg-slate-700 font-bold rounded-xl text-xs transition-colors"
          >
            Tutup Detail
          </button>
        </div>
      </div>
    </div>
  );
}
