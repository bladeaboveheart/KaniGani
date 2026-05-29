'use client';

import { Item } from '@/lib/types';

interface QuizInfoDrawerProps {
  item: Item | null;
  cardType: 'meaning' | 'reading';
}

export default function QuizInfoDrawer({ item, cardType: _cardType }: QuizInfoDrawerProps) {
  if (!item) return null;

  const readings = item.readings || [];
  const onyomiList = readings.filter(r => r.reading_type === 'onyomi');
  const kunyomiList = readings.filter(r => r.reading_type === 'kunyomi');
  const nanoriList = readings.filter(r => r.reading_type === 'nanori');

  return (
    <div className="border-t border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-900/50 p-6 sm:p-8 animate-fade-in space-y-6 text-sm leading-relaxed text-left select-text">
      {/* 1. Meaning Info */}
      <div>
        <h4 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Arti Karakter</h4>
        <p className="text-xl font-bold text-teal-600 dark:text-teal-400 mt-1 capitalize">
          {item.primary_meaning}
        </p>

        {item.meaning_mnemonic && (
          <div className="p-4 bg-teal-50 dark:bg-teal-950/20 border border-teal-100 dark:border-teal-900/50 rounded-2xl mt-3">
            <h5 className="text-xs font-bold text-teal-700 dark:text-teal-400 uppercase tracking-widest block select-none">Mnemonic (Arti)</h5>
            <p className="text-teal-900 dark:text-teal-100 mt-1.5">{item.meaning_mnemonic}</p>
          </div>
        )}

        {item.description && (
          <div className="p-4 bg-slate-100/50 dark:bg-slate-800/40 border border-slate-200/50 dark:border-slate-800 rounded-2xl mt-3">
            <h5 className="text-xs font-bold text-slate-500 dark:text-slate-450 uppercase tracking-widest block select-none">Deskripsi Detail</h5>
            <p className="text-slate-700 dark:text-slate-200 mt-1.5">{item.description}</p>
          </div>
        )}
      </div>

      {/* 2. Reading Info */}
      {item.type !== 'radical' && (
        <div className="border-t border-slate-200/50 dark:border-slate-800/50 pt-6 space-y-4">
          <h4 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">
            {item.type === 'kanji'
              ? `Cara Baca Jepang (${item.readings?.find((r: any) => r.primary_reading)?.reading_type === 'onyomi'
                ? 'Onyomi'
                : 'Kunyomi'
              })`
              : 'Cara Baca Jepang (Kana)'}
          </h4>

          {item.type === 'kanji' ? (
            <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 bg-slate-100/40 dark:bg-slate-800/20 p-4 rounded-2xl border border-slate-200 dark:border-slate-800/45">
              <div>
                <span className="text-xxs font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Onyomi</span>
                {onyomiList.length > 0 ? (
                  <div className="flex flex-wrap gap-1.5 mt-1.5">
                    {onyomiList.map((r, idx) => (
                      <span
                        key={idx}
                        className={`px-2 py-0.5 text-sm font-black rounded-lg ${r.primary_reading
                          ? 'bg-indigo-600 text-white shadow-sm'
                          : 'bg-slate-200 dark:bg-slate-800 text-slate-700 dark:text-slate-350'
                        }`}
                      >
                        {r.reading}
                      </span>
                    ))}
                  </div>
                ) : (
                  <span className="text-sm text-slate-400 dark:text-slate-650 italic mt-1.5 block">n/a</span>
                )}
              </div>
              <div>
                <span className="text-xxs font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Kunyomi</span>
                {kunyomiList.length > 0 ? (
                  <div className="flex flex-wrap gap-1.5 mt-1.5">
                    {kunyomiList.map((r, idx) => (
                      <span
                        key={idx}
                        className={`px-2 py-0.5 text-sm font-black rounded-lg ${r.primary_reading
                          ? 'bg-indigo-600 text-white shadow-sm'
                          : 'bg-slate-200 dark:bg-slate-800 text-slate-700 dark:text-slate-350'
                        }`}
                      >
                        {r.reading}
                      </span>
                    ))}
                  </div>
                ) : (
                  <span className="text-sm text-slate-400 dark:text-slate-650 italic mt-1.5 block">n/a</span>
                )}
              </div>
              <div>
                <span className="text-xxs font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Nanori</span>
                {nanoriList.length > 0 ? (
                  <div className="flex flex-wrap gap-1.5 mt-1.5">
                    {nanoriList.map((r, idx) => (
                      <span
                        key={idx}
                        className={`px-2 py-0.5 text-sm font-black rounded-lg ${r.primary_reading
                          ? 'bg-indigo-600 text-white shadow-sm'
                          : 'bg-slate-200 dark:bg-slate-800 text-slate-700 dark:text-slate-350'
                        }`}
                      >
                        {r.reading}
                      </span>
                    ))}
                  </div>
                ) : (
                  <span className="text-sm text-slate-400 dark:text-slate-650 italic mt-1.5 block">n/a</span>
                )}
              </div>
            </div>
          ) : (
            <p className="text-2xl font-black text-indigo-600 dark:text-indigo-400 mt-1">
              {item.primary_reading}
            </p>
          )}

          {item.reading_mnemonic && (
            <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl">
              <h5 className="text-xs font-bold text-indigo-700 dark:text-indigo-400 uppercase tracking-widest block select-none">Mnemonic (Cara Baca)</h5>
              <p className="text-indigo-900 dark:text-indigo-300 mt-1.5">{item.reading_mnemonic}</p>
            </div>
          )}

          {/* Context sentence - Vocab only */}
          {item.type === 'vocabulary' && item.context_sentences && item.context_sentences.length > 0 && (
            <div className="border-t border-slate-200/50 dark:border-slate-800/50 pt-6 mt-6 space-y-4">
              <h5 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">Contoh Kalimat Kontekstual</h5>
              <div className="space-y-4">
                {item.context_sentences.map((s, idx) => (
                  <div key={idx} className="p-4 bg-slate-100/30 dark:bg-slate-950/40 rounded-2xl border border-slate-200/60 dark:border-slate-800/80 space-y-2">
                    <p className="text-lg font-bold text-indigo-600 dark:text-indigo-400 select-all">{s.japanese}</p>
                    <p className="text-xs text-slate-500 dark:text-slate-400">{s.indonesian}</p>
                  </div>
                ))}
              </div>
            </div>
          )}
        </div>
      )}
    </div>
  );
}
