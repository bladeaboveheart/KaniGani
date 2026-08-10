'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import { CharacterDisplay } from '@/components/CharacterDisplay';
import {
  Search, BookOpen, Layers, X, HelpCircle, Sparkles,
  Lock, CheckCircle2, ChevronRight, ChevronDown, Loader2, Languages, ArrowRight
} from 'lucide-react';

interface KanjiItem {
  id: string;
  character: string;
  slug: string;
  level: number;
  svg_filename?: string;
  meaning_mnemonic?: string;
  reading_mnemonic?: string;
  description?: string;
  srs_stage?: number;
  unlocked_at?: string | null;
  next_review?: string | null;
  meanings: any[];
  readings: any[];
  primary_meaning: string;
  primary_reading: string;
  radicals?: any[];
  vocabs?: any[];
}

export default function KanjiPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [kanjis, setKanjis] = useState<KanjiItem[]>([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [debouncedSearchQuery, setDebouncedSearchQuery] = useState('');
  const [selectedBand, setSelectedBand] = useState<string>('all');
  const [selectedLevel, setSelectedLevel] = useState<string>('all');
  const [selectedItem, setSelectedItem] = useState<KanjiItem | null>(null);
  const [isCompositionOpen, setIsCompositionOpen] = useState(false);
  const [isVocabUsageOpen, setIsVocabUsageOpen] = useState(false);

  useEffect(() => {
    setIsCompositionOpen(false);
    setIsVocabUsageOpen(false);
  }, [selectedItem]);

  const [selectedVocabDetail, setSelectedVocabDetail] = useState<any | null>(null);
  const [selectedRadicalDetail, setSelectedRadicalDetail] = useState<any | null>(null);
  const [page, setPage] = useState(0);
  const [hasMore, setHasMore] = useState(true);

  // Debounce search query
  useEffect(() => {
    const timer = setTimeout(() => {
      setDebouncedSearchQuery(searchQuery);
    }, 300);
    return () => clearTimeout(timer);
  }, [searchQuery]);

  // Read search query parameters from URL for deep linking
  useEffect(() => {
    if (typeof window !== 'undefined') {
      const params = new URLSearchParams(window.location.search);
      const query = params.get('search');
      if (query) {
        setTimeout(() => {
          setSearchQuery(decodeURIComponent(query));
        }, 0);
      }
    }
  }, []);

  // Handle direct item detail view via 'character' query parameter
  useEffect(() => {
    if (kanjis.length > 0 && typeof window !== 'undefined') {
      const params = new URLSearchParams(window.location.search);
      const charParam = params.get('character');
      if (charParam) {
        const decodedChar = decodeURIComponent(charParam);
        const found = kanjis.find(k => k.character === decodedChar);
        if (found) {
          setTimeout(() => {
            setSelectedItem(found);
          }, 0);
        }
      }
    }
  }, [kanjis]);

  // Load items
  useEffect(() => {
    let active = true;

    async function loadData() {
      try {
        if (page === 0) {
          setLoading(true);
        } else {
          setLoadingMore(true);
        }

        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          if (active) router.push('/');
          return;
        }

        const pageSize = 120;
        const from = page * pageSize;
        const to = from + pageSize - 1;

        let query = supabase
          .from('items')
          .select('id, character, slug, level, svg_filename, meaning_mnemonic, reading_mnemonic, description, item_meanings(*), item_readings(*)')
          .eq('type', 'kanji')
          .order('level', { ascending: true })
          .order('lesson_position', { ascending: true })
          .range(from, to);

        if (selectedLevel !== 'all') {
          query = query.eq('level', Number(selectedLevel));
        } else if (selectedBand !== 'all') {
          const [min, max] = selectedBand.split('-').map(Number);
          query = query.gte('level', min).lte('level', max);
        }

        if (debouncedSearchQuery.trim() !== '') {
          const q = debouncedSearchQuery.toLowerCase().trim();
          query = query.or(`character.ilike.%${q}%,slug.ilike.%${q}%`);
        }

        const { data: itemsData, error: itemsErr } = await query;
        if (itemsErr) throw itemsErr;
        if (!active) return;

        if (itemsData && itemsData.length < pageSize) {
          setHasMore(false);
        } else {
          setHasMore(true);
        }

        if (itemsData && itemsData.length > 0) {
          const itemIds = itemsData.map(item => item.id);

          // Fetch user progress for current kanjis
          const { data: progressData } = await supabase
            .from('user_progress')
            .select('item_id, srs_stage, unlocked_at, next_review')
            .eq('user_id', user.id)
            .in('item_id', itemIds);

          // Fetch component radicals via kanji_radicals junction table
          const { data: radData } = await supabase
            .from('kanji_radicals')
            .select(`
              kanji_id,
              radical:items!kanji_radicals_radical_id_fkey(
                id, character, slug, level, svg_filename, meaning_mnemonic, description, item_meanings(*)
              )
            `)
            .in('kanji_id', itemIds);

          // Fetch vocabulary using these kanjis via vocabulary_kanjis junction table
          const { data: vocabData } = await supabase
            .from('vocabulary_kanjis')
            .select(`
              kanji_id,
              vocab:items!vocabulary_kanjis_vocabulary_id_fkey(
                id, character, slug, level, meaning_mnemonic, reading_mnemonic, description,
                item_meanings(*), item_readings(*), item_context_sentences(*)
              )
            `)
            .in('kanji_id', itemIds);

          const radicalsMap = new Map<string, any[]>();
          radData?.forEach((row: any) => {
            const radItem = row.radical;
            if (radItem) {
              const kId = row.kanji_id;
              if (!radicalsMap.has(kId)) radicalsMap.set(kId, []);
              const itemMeanings = radItem.item_meanings || [];
              const primaryMeaning = itemMeanings.find((m: any) => m.primary_meaning)?.meaning || radItem.slug || 'radical';

              radicalsMap.get(kId)!.push({
                id: radItem.id,
                character: radItem.character,
                slug: radItem.slug || 'radical',
                level: radItem.level,
                svg_filename: radItem.svg_filename,
                meaning_mnemonic: radItem.meaning_mnemonic || '',
                description: radItem.description || '',
                primary_meaning: primaryMeaning
              });
            }
          });

          const vocabsMap = new Map<string, any[]>();
          vocabData?.forEach((row: any) => {
            const vItem = row.vocab;
            if (vItem) {
              const kId = row.kanji_id;
              if (!vocabsMap.has(kId)) vocabsMap.set(kId, []);
              const itemMeanings = vItem.item_meanings || [];
              const itemReadings = vItem.item_readings || [];
              const primaryMeaning = itemMeanings.find((m: any) => m.primary_meaning)?.meaning || vItem.slug || 'vocabulary';
              const primaryReading = itemReadings.find((r: any) => r.primary_reading)?.reading || '';

              vocabsMap.get(kId)!.push({
                id: vItem.id,
                character: vItem.character,
                slug: vItem.slug,
                level: vItem.level,
                meaning_mnemonic: vItem.meaning_mnemonic,
                reading_mnemonic: vItem.reading_mnemonic,
                description: vItem.description,
                meanings: itemMeanings,
                readings: itemReadings,
                sentences: vItem.item_context_sentences || [],
                primary_meaning: primaryMeaning,
                primary_reading: primaryReading
              });
            }
          });

          const progressMap = new Map(progressData?.map(p => [p.item_id, p]) || []);

          const combined: KanjiItem[] = itemsData.map(item => {
            const progress = progressMap.get(item.id);
            const itemMeanings = item.item_meanings || [];
            const itemReadings = item.item_readings || [];
            const primaryMeaning = itemMeanings.find((m: any) => m.primary_meaning)?.meaning || item.slug || 'kanji';
            const primaryReading = itemReadings.find((r: any) => r.primary_reading)?.reading || '';

            return {
              id: item.id,
              character: item.character,
              slug: item.slug || 'kanji',
              level: item.level,
              svg_filename: item.svg_filename,
              meaning_mnemonic: item.meaning_mnemonic || '',
              reading_mnemonic: item.reading_mnemonic || '',
              description: item.description || '',
              meanings: itemMeanings,
              readings: itemReadings,
              primary_meaning: primaryMeaning,
              primary_reading: primaryReading,
              srs_stage: progress ? progress.srs_stage : 0,
              unlocked_at: progress ? progress.unlocked_at : null,
              next_review: progress ? progress.next_review : null,
              radicals: radicalsMap.get(item.id) || [],
              vocabs: vocabsMap.get(item.id) || []
            };
          });

          if (!active) return;
          if (page === 0) setKanjis(combined);
          else setKanjis(prev => [...prev, ...combined]);
        } else {
          if (!active) return;
          if (page === 0) setKanjis([]);
        }
      } catch (err) {
        if (active) console.error('Error loading Kanjis:', err);
      } finally {
        if (active) {
          setLoading(false);
          setLoadingMore(false);
        }
      }
    }

    loadData();
    return () => { active = false; };
  }, [page, selectedBand, selectedLevel, debouncedSearchQuery, router]);

  useEffect(() => {
    setPage(0);
    setKanjis([]);
    setHasMore(true);
  }, [selectedBand, selectedLevel, debouncedSearchQuery]);

  const filtered = kanjis;
  const levelsPresent = Array.from(new Set(kanjis.map(k => k.level))).sort((a, b) => a - b);

  const getSrsLabel = (stage: number, nextReviewStr?: string | null) => {
    if (stage === 0) return 'Terkunci';
    if (stage === 1 && !nextReviewStr) return 'Tersedia Pelajaran';
    if (stage >= 1 && stage <= 4) return `Apprentice (Tahap ${stage})`;
    if (stage === 5 || stage === 6) return `Guru (Tahap ${stage})`;
    if (stage === 7) return 'Master';
    if (stage === 8) return 'Enlightened';
    if (stage === 9) return 'Burned';
    return `Tahap ${stage}`;
  };

  const getSrsColorClass = (stage: number, nextReviewStr?: string | null) => {
    if (stage === 0) return 'bg-slate-100 dark:bg-slate-800 text-slate-400 dark:text-slate-500 border border-dashed border-slate-300 dark:border-slate-700';
    if (stage === 1 && !nextReviewStr) return 'bg-kanji/10 text-kanji border border-kanji/30 font-extrabold';
    if (stage >= 1 && stage <= 4) return 'bg-kanji text-white border border-kanji/80 font-bold';
    if (stage === 5 || stage === 6) return 'bg-purple-600 text-white border border-purple-700 font-bold';
    if (stage === 7) return 'bg-indigo-600 text-white border border-indigo-700 font-bold';
    if (stage === 8) return 'bg-blue-600 text-white border border-blue-700 font-bold';
    if (stage === 9) return 'bg-amber-600 text-white border border-amber-700 font-bold';
    return 'bg-slate-700 text-white font-bold';
  };

  if (loading && page === 0) {
    return (
      <div className="min-h-screen flex flex-col bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
        <Navbar />
        <main className="flex-1 max-w-7xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-12 flex flex-col items-center justify-center space-y-4">
          <Loader2 className="w-10 h-10 text-kanji animate-spin" />
          <p className="text-sm font-bold text-slate-500 animate-pulse">Memuat data Kamus Kanji 60 Level WaniKani...</p>
        </main>
        <Footer />
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <Navbar />

      <main className="flex-1 max-w-7xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12 space-y-8 animate-fade-in">

        {/* Banner Title */}
        <section className="bg-gradient-to-r from-rose-600 to-pink-600 text-white p-6 sm:p-8 rounded-3xl shadow-lg relative overflow-hidden">
          <div className="absolute right-0 bottom-0 translate-x-8 translate-y-8 opacity-10">
            <BookOpen className="w-56 h-56" />
          </div>
          <div className="relative z-10 space-y-1">
            <div className="flex items-center space-x-1.5 text-rose-200">
              <Sparkles className="w-5 h-5 text-amber-300 animate-pulse" />
              <span className="text-xs font-bold uppercase tracking-widest">KaniGani Pustaka</span>
            </div>
            <h2 className="text-2xl sm:text-3xl font-extrabold tracking-tight">Kamus Kanji (WaniKani 60 Level)</h2>
            <p className="text-xs sm:text-sm text-rose-100 max-w-2xl leading-relaxed">
              Huruf Kanji dibentuk dari gabungan radikal. Pelajari arti, cara baca (Onyomi & Kunyomi), serta cerita mnemonic dalam Bahasa Indonesia.
            </p>
          </div>
        </section>

        {/* Filter & Search Bar */}
        <section className="bg-white dark:bg-slate-900 p-4 sm:p-6 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm flex flex-col sm:flex-row gap-4 items-center justify-between">
          <div className="relative w-full sm:max-w-md">
            <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400" />
            <input
              type="text"
              placeholder="Cari kanji berdasarkan karakter, arti, atau cara baca..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full pl-11 pr-4 py-3 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-kanji focus:border-transparent transition-all"
            />
          </div>

          <div className="flex flex-wrap items-center gap-3 w-full sm:w-auto shrink-0 justify-end">
            <div className="flex items-center space-x-2 px-3.5 py-2.5 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 rounded-2xl">
              <Layers className="w-4 h-4 text-rose-500" />
              <span className="text-xxs font-extrabold text-slate-400 uppercase tracking-wider">Filter WaniKani (Level 1–60):</span>
              <select
                value={selectedBand}
                onChange={(e) => {
                  setSelectedBand(e.target.value);
                  setSelectedLevel('all');
                }}
                className="bg-transparent dark:bg-slate-900 border-none text-xs font-black focus:outline-none cursor-pointer text-slate-800 dark:text-slate-100"
              >
                <option value="all">Semua Level (1-60)</option>
                <option value="1-10">Level 1-10 (Pleasant)</option>
                <option value="11-20">Level 11-20 (Painful)</option>
                <option value="21-30">Level 21-30 (Death)</option>
                <option value="31-40">Level 31-40 (Hell)</option>
                <option value="41-50">Level 41-50 (Paradise)</option>
                <option value="51-60">Level 51-60 (Reality)</option>
              </select>
            </div>

            <div className="flex items-center space-x-1.5 px-3.5 py-2.5 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 rounded-2xl">
              <span className="text-xxs font-bold text-slate-400 uppercase tracking-widest">Level</span>
              <select
                value={selectedLevel}
                onChange={(e) => setSelectedLevel(e.target.value)}
                className="bg-transparent dark:bg-slate-900 border-none text-xs font-extrabold focus:outline-none cursor-pointer text-slate-800 dark:text-slate-100"
              >
                <option value="all">Semua</option>
                {Array.from({ length: 60 }, (_, i) => i + 1).map(lvl => (
                  <option key={lvl} value={lvl}>Level {lvl}</option>
                ))}
              </select>
            </div>
          </div>
        </section>

        {/* Legend Panel */}
        <section className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 bg-white dark:bg-slate-900 p-4 sm:px-6 sm:py-3.5 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm">
          <span className="text-xxs font-extrabold uppercase tracking-widest text-slate-400 dark:text-slate-500">
            Legenda Status Belajar SRS
          </span>
          <div className="flex flex-wrap items-center gap-x-5 gap-y-2 text-xxs font-bold text-slate-550 dark:text-slate-400">
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-dashed border-kanji/30 bg-hatched-kanji flex items-center justify-center font-japanese font-black text-xxs text-kanji/60">本</div>
              <span>Locked</span>
            </div>
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-solid border-kanji/20 bg-kanji/5 dark:bg-kanji/10 flex items-center justify-center font-japanese font-black text-xxs text-kanji">本</div>
              <span>In Lessons</span>
            </div>
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-solid border-kanji/80 bg-kanji flex items-center justify-center font-japanese font-black text-xxs text-white">本</div>
              <span>Apprentice</span>
            </div>
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-solid bg-purple-600 flex items-center justify-center font-japanese font-black text-xxs text-white">本</div>
              <span>Guru</span>
            </div>
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-solid bg-burned-card flex items-center justify-center font-japanese font-black text-xxs text-white">本</div>
              <span>Burned</span>
            </div>
          </div>
        </section>

        {/* Kanji Grouped Layout */}
        {filtered.length > 0 ? (
          <div className="space-y-8">
            {levelsPresent.map((lvl) => {
              const levelItems = filtered.filter(item => item.level === lvl);
              if (levelItems.length === 0) return null;
              const unlockedCount = levelItems.filter(item => item.srs_stage !== undefined && item.srs_stage > 0).length;

              return (
                <div key={lvl} className="space-y-4">
                  {/* Level Header Panel */}
                  <div className="bg-white dark:bg-slate-900 px-6 py-3.5 rounded-2xl border border-slate-200 dark:border-slate-850 shadow-2xs flex items-baseline space-x-2 shrink-0">
                    <span className="text-base font-extrabold text-slate-855 dark:text-slate-100">Level {lvl}</span>
                    <span className="text-xxs font-bold text-slate-400 dark:text-slate-550">({unlockedCount}/{levelItems.length} unlocked)</span>
                  </div>

                  {/* Grid of level items */}
                  <div className="flex flex-wrap gap-3 justify-start">
                    {levelItems.map((item) => {
                      const isLocked = item.srs_stage === 0;
                      const isInLessons = item.srs_stage === 1 && !item.next_review;
                      const isBurned = item.srs_stage === 9;

                      let cardStyles = "";
                      let charBorderStyles = "";
                      let textStyles = "";

                      if (isLocked) {
                        cardStyles = "bg-hatched-kanji border-dashed border-kanji/20 text-slate-400 dark:text-slate-500 opacity-60";
                        charBorderStyles = "border-kanji/20 text-kanji/60 bg-kanji/5";
                        textStyles = "text-slate-400 dark:text-slate-500 capitalize";
                      } else if (isInLessons) {
                        cardStyles = "bg-white dark:bg-slate-900 border-solid border-kanji/30 text-slate-800 dark:text-slate-100 hover:border-kanji shadow-xs";
                        charBorderStyles = "border-kanji/30 text-kanji bg-kanji/10";
                        textStyles = "text-kanji capitalize font-black";
                      } else if (isBurned) {
                        cardStyles = "bg-burned-card border-solid border-amber-600/50 text-white hover:border-amber-400 shadow-xs";
                        charBorderStyles = "border-white/30 text-white bg-white/10";
                        textStyles = "text-white capitalize font-black";
                      } else {
                        cardStyles = "bg-kanji border-solid border-kanji/80 text-white hover:border-white shadow-xs";
                        charBorderStyles = "border-white/30 text-white bg-white/10";
                        textStyles = "text-white capitalize font-black";
                      }

                      return (
                        <div
                          key={item.id}
                          onClick={() => setSelectedItem(item)}
                          className={`pt-4 pb-3 px-4 rounded-2xl border flex flex-col justify-between items-center text-center cursor-pointer transition-all duration-300 hover:-translate-y-0.5 relative overflow-hidden group h-32 select-none whitespace-nowrap min-w-[6rem] ${cardStyles}`}
                        >
                          <div className={`px-3 py-1 border rounded-xl font-japanese font-black text-2xl mb-1 transition-transform duration-300 group-hover:scale-105 ${charBorderStyles}`}>
                            {item.character}
                          </div>

                          <div className="flex flex-col items-center min-w-0 max-w-[5.5rem]">
                            <span className={`text-xs leading-tight block truncate w-full ${textStyles}`}>
                              {item.primary_meaning}
                            </span>
                            {item.primary_reading && (
                              <span className="text-[10px] opacity-75 font-japanese block truncate w-full mt-0.5">
                                {item.primary_reading}
                              </span>
                            )}
                          </div>

                          {isLocked && (
                            <div className="absolute top-1 right-1.5 text-kanji/50 dark:text-kanji/40">
                              <Lock className="w-2.5 h-2.5" />
                            </div>
                          )}
                        </div>
                      );
                    })}
                  </div>
                </div>
              );
            })}

            {hasMore && (
              <div className="flex justify-center pt-6">
                <button
                  onClick={() => setPage(p => p + 1)}
                  disabled={loadingMore}
                  className="px-6 py-3 bg-kanji text-white text-sm font-black rounded-2xl shadow-md hover:bg-kanji/90 transition-all cursor-pointer flex items-center space-x-2"
                >
                  {loadingMore ? <Loader2 className="w-4 h-4 animate-spin" /> : <span>Muat Lebih Banyak Kanji</span>}
                </button>
              </div>
            )}
          </div>
        ) : (
          <div className="p-12 text-center bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 space-y-3">
            <BookOpen className="w-12 h-12 text-slate-300 dark:text-slate-600 mx-auto" />
            <h3 className="text-base font-extrabold text-slate-700 dark:text-slate-300">Tidak ada kanji yang ditemukan</h3>
            <p className="text-xs text-slate-400">Coba ubah kata kunci pencarian atau filter level Anda.</p>
          </div>
        )}

      </main>

      {/* Modal Detail Kanji */}
      {selectedItem && (
        <div className="fixed inset-0 z-50 bg-slate-950/80 backdrop-blur-md flex items-center justify-center p-4 animate-fade-in">
          <div className="bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl shadow-2xl max-w-xl w-full max-h-[90vh] overflow-hidden flex flex-col relative animate-fade-in">
            {/* Header Banner */}
            <div className="bg-kanji-gradient p-8 text-white flex flex-col items-center justify-center relative shrink-0">
              <button
                onClick={() => setSelectedItem(null)}
                className="absolute top-4 right-4 p-1.5 hover:bg-white/20 rounded-lg text-white transition-colors cursor-pointer"
              >
                <X className="w-5 h-5" />
              </button>
              <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10 mb-3 block">
                Kanji • Level {selectedItem.level}
              </span>
              <h1 className="text-7xl font-black select-all">{selectedItem.character}</h1>
              <p className="text-lg font-bold tracking-wide mt-2 uppercase opacity-90">{selectedItem.primary_meaning}</p>
              {selectedItem.primary_reading && (
                <span className="text-sm font-bold font-japanese opacity-80 mt-0.5">{selectedItem.primary_reading}</span>
              )}
            </div>

            {/* Content Body */}
            <div className="p-6 sm:p-8 space-y-6 text-sm leading-relaxed text-left overflow-y-auto flex-1">
              <div className="flex flex-col gap-3 p-3.5 bg-slate-50 dark:bg-slate-950 border border-slate-200/50 dark:border-slate-850 rounded-2xl">
                <div className="flex items-center justify-between">
                  <span className="text-xxs font-bold text-slate-450 uppercase tracking-widest block">Status Belajar SRS</span>
                  <span className={`text-xxs font-extrabold px-3 py-1 rounded-full ${getSrsColorClass(selectedItem.srs_stage || 0, selectedItem.next_review)}`}>
                    {getSrsLabel(selectedItem.srs_stage || 0, selectedItem.next_review)}
                  </span>
                </div>
              </div>

              {/* Meanings & Readings */}
              <div className="grid grid-cols-2 gap-4">
                <div className="p-4 bg-slate-50 dark:bg-slate-950 border border-slate-200/60 dark:border-slate-850 rounded-2xl space-y-1">
                  <h4 className="text-[10px] font-black uppercase tracking-widest text-slate-400">Arti (Meanings)</h4>
                  <p className="text-sm font-bold text-slate-800 dark:text-slate-100">
                    {selectedItem.meanings?.map(m => m.meaning).join(', ') || selectedItem.primary_meaning}
                  </p>
                </div>
                <div className="p-4 bg-slate-50 dark:bg-slate-950 border border-slate-200/60 dark:border-slate-850 rounded-2xl space-y-1">
                  <h4 className="text-[10px] font-black uppercase tracking-widest text-slate-400">Bacaan (Readings)</h4>
                  <p className="text-sm font-bold font-japanese text-slate-800 dark:text-slate-100">
                    {selectedItem.readings?.map(r => r.reading).join(', ') || selectedItem.primary_reading || '-'}
                  </p>
                </div>
              </div>

              {/* Meaning Mnemonic */}
              {selectedItem.meaning_mnemonic && (
                <div className="space-y-2">
                  <h4 className="text-xs font-black uppercase tracking-widest text-slate-400 dark:text-slate-500">Mnemonic Arti</h4>
                  <div className="p-4 bg-slate-50 dark:bg-slate-950 border border-slate-200/60 dark:border-slate-850 rounded-2xl text-slate-700 dark:text-slate-300 text-xs sm:text-sm leading-relaxed">
                    {selectedItem.meaning_mnemonic}
                  </div>
                </div>
              )}

              {/* Reading Mnemonic */}
              {selectedItem.reading_mnemonic && (
                <div className="space-y-2">
                  <h4 className="text-xs font-black uppercase tracking-widest text-slate-400 dark:text-slate-500">Mnemonic Bacaan</h4>
                  <div className="p-4 bg-slate-50 dark:bg-slate-950 border border-slate-200/60 dark:border-slate-850 rounded-2xl text-slate-700 dark:text-slate-300 text-xs sm:text-sm leading-relaxed">
                    {selectedItem.reading_mnemonic}
                  </div>
                </div>
              )}

              {/* Radikal Pembentuk Kanji Ini */}
              {selectedItem.radicals && selectedItem.radicals.length > 0 && (
                <div className="space-y-3 pt-2">
                  <button
                    onClick={() => setIsCompositionOpen(!isCompositionOpen)}
                    className="w-full flex items-center justify-between text-xs font-black uppercase tracking-widest text-slate-400 dark:text-slate-500 hover:text-slate-600 dark:hover:text-slate-300 transition-colors cursor-pointer"
                  >
                    <span>Radikal Pembentuk ({selectedItem.radicals.length})</span>
                    {isCompositionOpen ? <ChevronDown className="w-4 h-4" /> : <ChevronRight className="w-4 h-4" />}
                  </button>

                  {isCompositionOpen && (
                    <div className="grid grid-cols-2 sm:grid-cols-3 gap-2.5 pt-1 animate-fade-in">
                      {selectedItem.radicals.map((rad: any) => (
                        <button
                          key={rad.id}
                          onClick={() => setSelectedRadicalDetail(rad)}
                          className="flex items-center space-x-2.5 p-2.5 bg-slate-50 dark:bg-slate-950 border border-slate-200/60 dark:border-slate-850 rounded-xl hover:border-radical transition-all cursor-pointer text-left group"
                        >
                          <div className="w-8 h-8 rounded-lg bg-radical/10 text-radical flex items-center justify-center font-japanese font-black text-lg group-hover:scale-110 transition-transform">
                            <CharacterDisplay item={rad} />
                          </div>
                          <div className="min-w-0 flex-1">
                            <div className="text-xs font-black truncate">{rad.slug}</div>
                            <div className="text-[10px] text-slate-400 truncate">{rad.primary_meaning}</div>
                          </div>
                        </button>
                      ))}
                    </div>
                  )}
                </div>
              )}

              {/* Kosakata Yang Menggunakan Kanji Ini */}
              {selectedItem.vocabs && selectedItem.vocabs.length > 0 && (
                <div className="space-y-3 pt-2">
                  <button
                    onClick={() => setIsVocabUsageOpen(!isVocabUsageOpen)}
                    className="w-full flex items-center justify-between text-xs font-black uppercase tracking-widest text-slate-400 dark:text-slate-500 hover:text-slate-600 dark:hover:text-slate-300 transition-colors cursor-pointer"
                  >
                    <span>Kosakata Yang Menggunakan Kanji Ini ({selectedItem.vocabs.length})</span>
                    {isVocabUsageOpen ? <ChevronDown className="w-4 h-4" /> : <ChevronRight className="w-4 h-4" />}
                  </button>

                  {isVocabUsageOpen && (
                    <div className="grid grid-cols-2 sm:grid-cols-3 gap-2.5 pt-1 animate-fade-in">
                      {selectedItem.vocabs.map((v: any) => (
                        <button
                          key={v.id}
                          onClick={() => setSelectedVocabDetail(v)}
                          className="flex items-center space-x-2.5 p-2.5 bg-slate-50 dark:bg-slate-950 border border-slate-200/60 dark:border-slate-850 rounded-xl hover:border-vocab transition-all cursor-pointer text-left group"
                        >
                          <div className="w-8 h-8 rounded-lg bg-vocab/10 text-vocab flex items-center justify-center font-japanese font-black text-base group-hover:scale-110 transition-transform">
                            {v.character}
                          </div>
                          <div className="min-w-0 flex-1">
                            <div className="text-xs font-black truncate">{v.slug}</div>
                            <div className="text-[10px] text-slate-400 truncate">{v.primary_meaning}</div>
                          </div>
                        </button>
                      ))}
                    </div>
                  )}
                </div>
              )}

            </div>
          </div>
        </div>
      )}

      {/* Modal Detail Radikal */}
      {selectedRadicalDetail && (
        <div className="fixed inset-0 z-60 bg-slate-950/80 backdrop-blur-md flex items-center justify-center p-4 animate-fade-in">
          <div className="bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl shadow-2xl max-w-xl w-full max-h-[90vh] overflow-hidden flex flex-col relative animate-fade-in">
            <div className="bg-radical-gradient p-8 text-white flex flex-col items-center justify-center relative shrink-0">
              <button
                onClick={() => setSelectedRadicalDetail(null)}
                className="absolute top-4 right-4 p-1.5 hover:bg-white/20 rounded-lg text-white transition-colors cursor-pointer"
              >
                <X className="w-5 h-5" />
              </button>
              <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10 mb-3 block">
                Radikal • Level {selectedRadicalDetail.level}
              </span>
              <CharacterDisplay item={selectedRadicalDetail} className="text-7xl font-black select-all" size={80} />
              <p className="text-lg font-bold tracking-wide mt-2 uppercase opacity-90">{selectedRadicalDetail.slug}</p>
            </div>
            <div className="p-6 space-y-4 overflow-y-auto flex-1 text-sm">
              {selectedRadicalDetail.meaning_mnemonic && (
                <div>
                  <h4 className="text-xs font-black uppercase text-slate-400 mb-1">Mnemonic Radikal</h4>
                  <p className="text-xs p-3 bg-slate-50 dark:bg-slate-950 rounded-xl">{selectedRadicalDetail.meaning_mnemonic}</p>
                </div>
              )}
            </div>
          </div>
        </div>
      )}

      <Footer />
    </div>
  );
}
