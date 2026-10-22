'use client';

import { useState, useEffect } from 'react';
import { Item, SimilarKanji } from '@/lib/types';
import FormattedText from '@/components/FormattedText';
import { ChevronDown, ChevronUp, Edit3 } from 'lucide-react';
import { supabase } from '@/lib/supabase';
import SimilarKanjiSection from '@/components/dictionary/SimilarKanjiSection';
import AudioPlayerButton from '@/components/audio/AudioPlayerButton';
import CharacterDisplay from '@/components/CharacterDisplay';

import { PartOfSpeechList } from '@/components/ui/PartOfSpeechBadge';
import MnemonicVisual from '@/components/mnemonic/MnemonicVisual';
import UserSynonymsEditor from '@/components/user-annotations/UserSynonymsEditor';
import UserNoteEditor from '@/components/user-annotations/UserNoteEditor';

interface QuizInfoDrawerProps {
  item: Item | null;
  cardType: 'meaning' | 'reading';
  devMode?: boolean;
  onEditItem?: () => void;
  onSynonymAdded?: (synonym: string) => void;
}

export default function QuizInfoDrawer({
  item,
  cardType,
  devMode = false,
  onEditItem,
  onSynonymAdded,
}: QuizInfoDrawerProps) {
  const [showAllKanjis, setShowAllKanjis] = useState(false);
  const [showAllRadicals, setShowAllRadicals] = useState(false);
  const [showAllVocabs, setShowAllVocabs] = useState(false);

  const [fallbackSimilar, setFallbackSimilar] = useState<SimilarKanji[]>([]);
  const [fallbackAudios, setFallbackAudios] = useState<any[]>([]);
  const [fallbackRadicals, setFallbackRadicals] = useState<any[]>([]);
  const [fallbackVocabularies, setFallbackVocabularies] = useState<any[]>([]);
  const [fallbackKanjis, setFallbackKanjis] = useState<any[]>([]);

  const [isMeaningExpanded, setIsMeaningExpanded] = useState(cardType === 'meaning' || item?.type === 'radical');
  const [isReadingExpanded, setIsReadingExpanded] = useState(cardType === 'reading');
  const [isKanjisExpanded, setIsKanjisExpanded] = useState(false);
  const [isRadicalsExpanded, setIsRadicalsExpanded] = useState(false);
  const [isVocabulariesExpanded, setIsVocabulariesExpanded] = useState(false);
  const [isSimilarExpanded, setIsSimilarExpanded] = useState(false);

  useEffect(() => {
    setIsMeaningExpanded(cardType === 'meaning' || item?.type === 'radical');
    setIsReadingExpanded(cardType === 'reading');
    setIsKanjisExpanded(false);
    setIsRadicalsExpanded(false);
    setIsVocabulariesExpanded(false);
    setIsSimilarExpanded(false);
    setShowAllKanjis(false);
    setShowAllRadicals(false);
    setShowAllVocabs(false);
  }, [item?.id, cardType, item?.type]);

  const similarKanjis = (item?.similar_kanjis && item.similar_kanjis.length > 0)
    ? item.similar_kanjis
    : fallbackSimilar;

  const localAudios = (item?.audios && item.audios.length > 0)
    ? item.audios
    : fallbackAudios;

  const allRadicals = (item?.radicals && item.radicals.length > 0)
    ? item.radicals
    : fallbackRadicals;

  const allVocabularies = (item?.vocabularies && item.vocabularies.length > 0)
    ? item.vocabularies
    : fallbackVocabularies;

  const allKanjis = (item?.kanjis && item.kanjis.length > 0)
    ? item.kanjis
    : fallbackKanjis;

  const displayedRadicals = showAllRadicals ? allRadicals : allRadicals.slice(0, 8);
  const hasMoreRadicals = allRadicals.length > 8;

  const displayedVocabs = showAllVocabs ? allVocabularies : allVocabularies.slice(0, 8);
  const hasMoreVocabs = allVocabularies.length > 8;

  const displayedKanjis = showAllKanjis ? allKanjis : allKanjis.slice(0, 8);
  const hasMoreKanjis = allKanjis.length > 8;

  useEffect(() => {
    if (!item) return;

    let isMounted = true;

    // 1. Fallback audios for vocab
    if (item.type === 'vocabulary' && (!item.audios || item.audios.length === 0)) {
      supabase
        .from('item_audios')
        .select('*')
        .eq('item_id', item.id)
        .then(({ data }) => {
          if (isMounted && data) setFallbackAudios(data);
        });
    }

    // 2. Fallback similar kanji for kanji
    if (item.type === 'kanji' && (!item.similar_kanjis || item.similar_kanjis.length > 0)) {
      supabase
        .from('item_similar_kanji')
        .select(`
          similar_item_id,
          items!similar_item_id(
            id, character, slug, level, type,
            item_meanings(meaning, primary_meaning),
            item_readings(reading, primary_reading)
          )
        `)
        .eq('item_id', item.id)
        .then(({ data }) => {
          if (!isMounted || !data) return;
          const list: SimilarKanji[] = [];
          for (const s of data) {
            const it: any = Array.isArray((s as any).items) ? (s as any).items[0] : (s as any).items;
            if (it) {
              const primaryMeaning = it.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || it.item_meanings?.[0]?.meaning || it.slug;
              const primaryReading = it.item_readings?.find((r: any) => r.primary_reading)?.reading || it.item_readings?.[0]?.reading || null;
              list.push({
                id: it.id,
                character: it.character,
                slug: it.slug,
                level: it.level,
                type: it.type,
                primary_meaning: primaryMeaning,
                primary_reading: primaryReading,
              });
            }
          }
          setFallbackSimilar(list);
        })
        .catch(e => console.error('Error loading similar kanji in drawer:', e));
    }

    // 3. For Kanji: Fallback Radicals (prerequisites) & Vocabularies (dependents)
    if (item.type === 'kanji') {
      if (!item.radicals || item.radicals.length === 0) {
        supabase
          .from('item_prerequisites')
          .select('requires_item_id, items!requires_item_id(id, character, slug, level, type)')
          .eq('item_id', item.id)
          .then(({ data }) => {
            if (!isMounted || !data) return;
            const rads = data
              .map((row: any) => Array.isArray(row.items) ? row.items[0] : row.items)
              .filter((it: any) => it && it.type === 'radical');
            rads.sort((a: any, b: any) => (a.level - b.level) || a.character?.localeCompare(b.character));
            setFallbackRadicals(rads);
          })
          .catch(e => console.error('Error loading radicals in drawer:', e));
      }

      if (!item.vocabularies || item.vocabularies.length === 0) {
        supabase
          .from('item_prerequisites')
          .select('item_id, items!item_id(id, character, slug, level, type)')
          .eq('requires_item_id', item.id)
          .then(({ data }) => {
            if (!isMounted || !data) return;
            const vocabs = data
              .map((row: any) => Array.isArray(row.items) ? row.items[0] : row.items)
              .filter((it: any) => it && it.type === 'vocabulary');
            vocabs.sort((a: any, b: any) => (a.level - b.level) || a.character?.localeCompare(b.character));
            setFallbackVocabularies(vocabs);
          })
          .catch(e => console.error('Error loading vocabularies in drawer:', e));
      }
    }

    // 4. For Vocabulary: Fallback Kanjis (prerequisites)
    if (item.type === 'vocabulary' && (!item.kanjis || item.kanjis.length === 0)) {
      supabase
        .from('item_prerequisites')
        .select('requires_item_id, items!requires_item_id(id, character, slug, level, type)')
        .eq('item_id', item.id)
        .then(({ data }) => {
          if (!isMounted || !data) return;
          const kjs = data
            .map((row: any) => Array.isArray(row.items) ? row.items[0] : row.items)
            .filter((it: any) => it && it.type === 'kanji');
          kjs.sort((a: any, b: any) => (a.level - b.level) || a.character?.localeCompare(b.character));
          setFallbackKanjis(kjs);
        })
        .catch(e => console.error('Error loading kanjis for vocab in drawer:', e));
    }

    // 5. For Radical: Fallback Kanjis (dependents)
    if (item.type === 'radical' && (!item.kanjis || item.kanjis.length === 0)) {
      supabase
        .from('item_prerequisites')
        .select('item_id, items!item_id(id, character, slug, level, type)')
        .eq('requires_item_id', item.id)
        .then(({ data }) => {
          if (!isMounted || !data) return;
          const kjs = data
            .map((row: any) => Array.isArray(row.items) ? row.items[0] : row.items)
            .filter((it: any) => it && it.type === 'kanji');
          kjs.sort((a: any, b: any) => (a.level - b.level) || a.character?.localeCompare(b.character));
          setFallbackKanjis(kjs);
        })
        .catch(e => console.error('Error loading kanjis for radical in drawer:', e));
    }

    return () => { isMounted = false; };
  }, [item?.id, item?.type, item?.similar_kanjis, item?.audios, item?.radicals, item?.vocabularies, item?.kanjis]);

  if (!item) return null;

  const readings = item.readings || [];
  const onyomiList = readings.filter(r => r.reading_type === 'onyomi');
  const kunyomiList = readings.filter(r => r.reading_type === 'kunyomi');
  const nanoriList = readings.filter(r => r.reading_type === 'nanori');

  const rawMeanings = item.meanings || [];
  const primaryMeaning = item.primary_meaning || rawMeanings.find((m: any) => m.primary_meaning)?.meaning || item.slug || '';
  const altList = rawMeanings
    .filter((m: any) => !m.primary_meaning && m.meaning && m.meaning.toLowerCase().trim() !== primaryMeaning.toLowerCase().trim())
    .map((m: any) => m.meaning.trim());
  const uniqueAlts = Array.from(new Set(altList));
  const alternativeMeaningsText = uniqueAlts.length > 0 ? uniqueAlts.join(', ') : '-';

  return (
    <div className="border-t border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-900/50 p-6 sm:p-8 animate-fade-in space-y-6 text-sm leading-relaxed text-left select-text">
      {/* Developer Quick Edit Action */}
      {devMode && onEditItem && (
        <div className="flex items-center justify-between pb-3 border-b border-amber-500/20 bg-amber-500/10 -mx-6 sm:-mx-8 -mt-6 sm:-mt-8 px-6 sm:px-8 py-3 rounded-t-3xl">
          <div className="flex items-center space-x-2 text-amber-700 dark:text-amber-400 text-xs font-bold">
            <span className="px-2 py-0.5 rounded-md bg-amber-500/20 text-3xs font-black uppercase tracking-wider">DEV MODE</span>
            <span className="hidden sm:inline">Perbaiki atau tambah alternatif kata</span>
          </div>
          <button
            type="button"
            onClick={onEditItem}
            className="flex items-center space-x-1.5 px-3 py-1.5 rounded-xl bg-amber-500 hover:bg-amber-600 text-slate-950 font-black text-xs transition-all shadow-sm shadow-amber-500/20 hover:scale-102 active:scale-98 cursor-pointer ml-auto"
          >
            <Edit3 className="w-3.5 h-3.5" />
            <span>Edit Item Ini</span>
          </button>
        </div>
      )}

      {/* 1. Meaning Info */}
      <div className="space-y-4">
        <button
          type="button"
          onClick={() => setIsMeaningExpanded(!isMeaningExpanded)}
          className="w-full flex items-center justify-between py-1 text-left font-bold text-xs uppercase tracking-widest text-slate-500 dark:text-slate-400 hover:text-slate-800 dark:hover:text-slate-200 transition-colors cursor-pointer select-none"
          aria-expanded={isMeaningExpanded}
        >
          <span>{item.type === 'radical' ? 'Informasi & Penjelasan Radikal' : 'Informasi & Mnemonic Arti'}</span>
          {isMeaningExpanded ? <ChevronUp className="w-4 h-4 text-slate-400 dark:text-slate-500" /> : <ChevronDown className="w-4 h-4 text-slate-400 dark:text-slate-500" />}
        </button>

        {isMeaningExpanded && (
          <div className="space-y-4 animate-fade-in">
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-3.5 bg-white/70 dark:bg-slate-800/40 border border-slate-200/80 dark:border-slate-800 rounded-2xl p-4 sm:p-5">
              {/* Sub-kolom 1: Arti Utama */}
              <div>
                <h4 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">
                  Arti Utama
                </h4>
                <p className="text-xl font-bold text-teal-600 dark:text-teal-400 mt-1 capitalize">
                  {primaryMeaning}
                </p>
              </div>

              {/* Sub-kolom 2: Arti Alternatif */}
              <div className="border-t sm:border-t-0 sm:border-l border-slate-200/60 dark:border-slate-700/60 pt-3 sm:pt-0 sm:pl-4 space-y-3">
                <div>
                  <h4 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">
                    Arti Alternatif
                  </h4>
                  <p className={`text-base font-semibold mt-1 ${alternativeMeaningsText === '-' ? 'text-slate-400 dark:text-slate-500' : 'text-slate-700 dark:text-slate-200'}`}>
                    {alternativeMeaningsText}
                  </p>
                </div>

                {/* User Synonyms */}
                <div className="pt-2 border-t border-slate-200/50 dark:border-slate-700/50">
                  <UserSynonymsEditor
                    itemId={item.id}
                    initialSynonyms={item.user_synonyms}
                    onSynonymAdded={onSynonymAdded}
                  />
                </div>
              </div>
            </div>

            {item.type === 'vocabulary' && item.parts_of_speech && item.parts_of_speech.length > 0 && (
              <div className="mt-2.5">
                <PartOfSpeechList partsOfSpeech={item.parts_of_speech} size="sm" />
              </div>
            )}

            {(item.meaning_mnemonic || item.description) && (
              <div className="p-4 bg-teal-50 dark:bg-teal-950/20 border border-teal-100 dark:border-teal-900/50 rounded-2xl mt-3">
                <h5 className="text-xs font-bold text-teal-700 dark:text-teal-400 uppercase tracking-widest block select-none">
                  {item.type === 'radical' ? 'Penjelasan & Mnemonic Radikal' : 'Mnemonic (Arti)'}
                </h5>
                <MnemonicVisual slug={item.slug} character={item.character} type={item.type} />
                <p className="text-teal-900 dark:text-teal-100 mt-1.5 leading-relaxed">
                  <FormattedText text={item.meaning_mnemonic || item.description} />
                </p>
              </div>
            )}

            {/* User Meaning Note */}
            <UserNoteEditor
              itemId={item.id}
              type="meaning"
              initialNote={item.user_meaning_note}
            />

            {item.description && item.meaning_mnemonic && item.description.trim() !== item.meaning_mnemonic.trim() && (
              <div className="p-4 bg-slate-100/50 dark:bg-slate-800/40 border border-slate-200/50 dark:border-slate-800 rounded-2xl mt-3">
                <h5 className="text-xs font-bold text-slate-500 dark:text-slate-450 uppercase tracking-widest block select-none">Deskripsi Detail</h5>
                <p className="text-slate-700 dark:text-slate-200 mt-1.5"><FormattedText text={item.description} /></p>
              </div>
            )}
          </div>
        )}
      </div>

      {/* 2. Reading Info */}
      {item.type !== 'radical' && (
        <div className="border-t border-slate-200/50 dark:border-slate-800/50 pt-4 space-y-4">
          <button
            type="button"
            onClick={() => setIsReadingExpanded(!isReadingExpanded)}
            className="w-full flex items-center justify-between py-1 text-left font-bold text-xs uppercase tracking-widest text-slate-500 dark:text-slate-400 hover:text-slate-800 dark:hover:text-slate-200 transition-colors cursor-pointer select-none"
            aria-expanded={isReadingExpanded}
          >
            <span>
              {item.type === 'kanji'
                ? `Cara Baca Jepang (${item.readings?.find((r: any) => r.primary_reading)?.reading_type === 'onyomi'
                  ? 'Onyomi'
                  : 'Kunyomi'
                })`
                : 'Cara Baca Jepang (Kana)'}
            </span>
            {isReadingExpanded ? <ChevronUp className="w-4 h-4 text-slate-400 dark:text-slate-500" /> : <ChevronDown className="w-4 h-4 text-slate-400 dark:text-slate-500" />}
          </button>

          {isReadingExpanded && (
            <div className="space-y-4 animate-fade-in">
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
                <div className="flex items-center space-x-3 mt-1">
                  <p className="text-2xl font-black text-indigo-600 dark:text-indigo-400">
                    {item.primary_reading}
                  </p>
                  {item.type === 'vocabulary' && (item.audios?.length || localAudios.length) > 0 && (
                    <AudioPlayerButton
                      audios={item.audios && item.audios.length > 0 ? item.audios : localAudios}
                      variant="compact"
                    />
                  )}
                </div>
              )}

              {item.reading_mnemonic && (
                <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl">
                  <h5 className="text-xs font-bold text-indigo-700 dark:text-indigo-400 uppercase tracking-widest block select-none">Mnemonic (Cara Baca)</h5>
                  <p className="text-indigo-900 dark:text-indigo-300 mt-1.5"><FormattedText text={item.reading_mnemonic} /></p>
                </div>
              )}

              {/* User Reading Note */}
              <UserNoteEditor
                itemId={item.id}
                type="reading"
                initialNote={item.user_reading_note}
              />

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
      )}

      {/* 3. Kanji Relations: Composed of Radicals (Kanji only) */}
      {item.type === 'kanji' && allRadicals.length > 0 && (
        <div className="border-t border-slate-200/50 dark:border-slate-800/50 pt-4 space-y-3">
          <button
            type="button"
            onClick={() => setIsRadicalsExpanded(!isRadicalsExpanded)}
            className="w-full flex items-center justify-between py-1 text-left font-bold text-xs uppercase tracking-widest text-slate-500 dark:text-slate-400 hover:text-slate-800 dark:hover:text-slate-200 transition-colors cursor-pointer select-none"
            aria-expanded={isRadicalsExpanded}
          >
            <span>Terdiri Dari Radikal ({allRadicals.length})</span>
            {isRadicalsExpanded ? <ChevronUp className="w-4 h-4 text-slate-400 dark:text-slate-500" /> : <ChevronDown className="w-4 h-4 text-slate-400 dark:text-slate-500" />}
          </button>

          {isRadicalsExpanded && (
            <div className="space-y-3 animate-fade-in">
              <div className="grid grid-cols-2 sm:grid-cols-4 gap-2.5">
                {displayedRadicals.map((rd: any) => (
                  <div
                    key={rd.id}
                    className="p-3 bg-radical/5 border border-radical/15 hover:border-radical/40 dark:bg-radical/10 hover:shadow-md rounded-2xl flex items-center justify-between text-left group/rd transition-all duration-200"
                  >
                    <div>
                      <span className="text-2xl font-black text-radical group-hover/rd:scale-110 transition-transform duration-200 block leading-tight">
                        <CharacterDisplay character={rd.character || '—'} slug={rd.slug} imgClassName="w-6 h-6" />
                      </span>
                      <span className="text-4xs text-slate-600 dark:text-slate-350 uppercase tracking-wider block truncate max-w-[80px] font-bold mt-0.5">
                        {rd.slug}
                      </span>
                    </div>
                    {rd.level && (
                      <span className="px-1.5 py-0.5 text-4xs font-black bg-radical/10 dark:bg-radical/20 rounded-md text-radical">
                        Lvl {rd.level}
                      </span>
                    )}
                  </div>
                ))}
              </div>

              {hasMoreRadicals && (
                <button
                  type="button"
                  onClick={() => setShowAllRadicals(!showAllRadicals)}
                  className="w-full py-2.5 px-4 bg-radical/10 hover:bg-radical/20 dark:bg-radical/15 dark:hover:bg-radical/25 text-radical font-bold text-xs rounded-2xl flex items-center justify-center space-x-1.5 transition-all duration-200 cursor-pointer"
                >
                  <span>
                    {showAllRadicals
                      ? 'Tampilkan Lebih Sedikit'
                      : `Muat Lebih Banyak (+${allRadicals.length - 8} Radikal)`}
                  </span>
                  {showAllRadicals ? <ChevronUp className="w-4 h-4" /> : <ChevronDown className="w-4 h-4" />}
                </button>
              )}
            </div>
          )}
        </div>
      )}

      {/* 4. Kanji Relations: Found in Vocabulary (Kanji only) */}
      {item.type === 'kanji' && allVocabularies.length > 0 && (
        <div className="border-t border-slate-200/50 dark:border-slate-800/50 pt-4 space-y-3">
          <button
            type="button"
            onClick={() => setIsVocabulariesExpanded(!isVocabulariesExpanded)}
            className="w-full flex items-center justify-between py-1 text-left font-bold text-xs uppercase tracking-widest text-slate-500 dark:text-slate-400 hover:text-slate-800 dark:hover:text-slate-200 transition-colors cursor-pointer select-none"
            aria-expanded={isVocabulariesExpanded}
          >
            <span>Ditemukan di Kosakata ({allVocabularies.length})</span>
            {isVocabulariesExpanded ? <ChevronUp className="w-4 h-4 text-slate-400 dark:text-slate-500" /> : <ChevronDown className="w-4 h-4 text-slate-400 dark:text-slate-500" />}
          </button>

          {isVocabulariesExpanded && (
            <div className="space-y-3 animate-fade-in">
              <div className="grid grid-cols-2 sm:grid-cols-4 gap-2.5">
                {displayedVocabs.map((vc: any) => (
                  <div
                    key={vc.id}
                    className="p-3 bg-vocab/5 border border-vocab/15 hover:border-vocab/40 dark:bg-vocab/10 hover:shadow-md rounded-2xl flex items-center justify-between text-left group/vc transition-all duration-200"
                  >
                    <div className="min-w-0 pr-1.5">
                      <span className="text-xl font-black font-japanese text-vocab group-hover/vc:scale-110 transition-transform duration-200 block leading-tight truncate">
                        {vc.character}
                      </span>
                      <span className="text-4xs text-slate-600 dark:text-slate-350 uppercase tracking-wider block truncate max-w-[80px] font-bold mt-0.5">
                        {vc.slug}
                      </span>
                    </div>
                    {vc.level && (
                      <span className="px-1.5 py-0.5 text-4xs font-black bg-vocab/10 dark:bg-vocab/20 rounded-md text-vocab shrink-0">
                        Lvl {vc.level}
                      </span>
                    )}
                  </div>
                ))}
              </div>

              {hasMoreVocabs && (
                <button
                  type="button"
                  onClick={() => setShowAllVocabs(!showAllVocabs)}
                  className="w-full py-2.5 px-4 bg-vocab/10 hover:bg-vocab/20 dark:bg-vocab/15 dark:hover:bg-vocab/25 text-vocab font-bold text-xs rounded-2xl flex items-center justify-center space-x-1.5 transition-all duration-200 cursor-pointer"
                >
                  <span>
                    {showAllVocabs
                      ? 'Tampilkan Lebih Sedikit'
                      : `Muat Lebih Banyak (+${allVocabularies.length - 8} Kosakata)`}
                  </span>
                  {showAllVocabs ? <ChevronUp className="w-4 h-4" /> : <ChevronDown className="w-4 h-4" />}
                </button>
              )}
            </div>
          )}
        </div>
      )}

      {/* 5. Kanji Relations: Found in Kanji (Radical) OR Composed of Kanji (Vocabulary) */}
      {(item.type === 'radical' || item.type === 'vocabulary') && allKanjis.length > 0 && (
        <div className="border-t border-slate-200/50 dark:border-slate-800/50 pt-4 space-y-3">
          <button
            type="button"
            onClick={() => setIsKanjisExpanded(!isKanjisExpanded)}
            className="w-full flex items-center justify-between py-1 text-left font-bold text-xs uppercase tracking-widest text-slate-500 dark:text-slate-400 hover:text-slate-800 dark:hover:text-slate-200 transition-colors cursor-pointer select-none"
            aria-expanded={isKanjisExpanded}
          >
            <span>
              {item.type === 'vocabulary' ? 'Terdiri Dari Kanji' : 'Ditemukan di Kanji'} ({allKanjis.length})
            </span>
            {isKanjisExpanded ? <ChevronUp className="w-4 h-4 text-slate-400 dark:text-slate-500" /> : <ChevronDown className="w-4 h-4 text-slate-400 dark:text-slate-500" />}
          </button>

          {isKanjisExpanded && (
            <div className="space-y-3 animate-fade-in">
              <div className="grid grid-cols-2 sm:grid-cols-4 gap-2.5">
                {displayedKanjis.map((kj: any) => (
                  <div
                    key={kj.id}
                    className="p-3 bg-kanji/5 border border-kanji/15 hover:border-kanji/40 dark:bg-kanji/10 hover:shadow-md rounded-2xl flex items-center justify-between text-left group/kj transition-all duration-200"
                  >
                    <div>
                      <span className="text-2xl font-black text-kanji group-hover/kj:scale-110 transition-transform duration-200 block leading-tight font-japanese">
                        {kj.character}
                      </span>
                      <span className="text-4xs text-slate-600 dark:text-slate-350 uppercase tracking-wider block truncate max-w-[80px] font-bold mt-0.5">
                        {kj.slug}
                      </span>
                    </div>
                    {kj.level && (
                      <span className="px-1.5 py-0.5 text-4xs font-black bg-kanji/10 dark:bg-kanji/20 rounded-md text-kanji">
                        Lvl {kj.level}
                      </span>
                    )}
                  </div>
                ))}
              </div>

              {hasMoreKanjis && (
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
                  {showAllKanjis ? <ChevronUp className="w-4 h-4" /> : <ChevronDown className="w-4 h-4" />}
                </button>
              )}
            </div>
          )}
        </div>
      )}

      {/* 4. Visually Similar Kanji */}
      {item.type === 'kanji' && similarKanjis.length > 0 && (
        <div className="border-t border-slate-200/50 dark:border-slate-800/50 pt-4 space-y-3">
          <button
            type="button"
            onClick={() => setIsSimilarExpanded(!isSimilarExpanded)}
            className="w-full flex items-center justify-between py-1 text-left font-bold text-xs uppercase tracking-widest text-slate-500 dark:text-slate-400 hover:text-slate-800 dark:hover:text-slate-200 transition-colors cursor-pointer select-none"
            aria-expanded={isSimilarExpanded}
          >
            <span>Kanji Mirip Secara Visual ({similarKanjis.length})</span>
            {isSimilarExpanded ? <ChevronUp className="w-4 h-4 text-slate-400 dark:text-slate-500" /> : <ChevronDown className="w-4 h-4 text-slate-400 dark:text-slate-500" />}
          </button>

          {isSimilarExpanded && (
            <div className="animate-fade-in">
              <SimilarKanjiSection
                currentKanji={{
                  character: item.character,
                  slug: item.slug,
                  level: item.level,
                  primary_meaning: item.primary_meaning,
                  primary_reading: item.primary_reading,
                }}
                similarKanjis={similarKanjis}
                variant="drawer"
                className="!pt-0 !border-t-0"
              />
            </div>
          )}
        </div>
      )}
    </div>
  );
}
