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

interface RadicalItem {
  id: string;
  character: string;
  slug: string;
  level: number;
  svg_filename?: string;
  meaning_mnemonic?: string;
  description?: string;
  srs_stage?: number;
  unlocked_at?: string | null;
  next_review?: string | null;
  kanjis?: any[];
}

export default function RadicalPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [radicals, setRadicals] = useState<RadicalItem[]>([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [debouncedSearchQuery, setDebouncedSearchQuery] = useState('');
  const [selectedBand, setSelectedBand] = useState<string>('all');
  const [selectedLevel, setSelectedLevel] = useState<string>('all');
  const [selectedItem, setSelectedItem] = useState<RadicalItem | null>(null);
  const [isKanjisOpen, setIsKanjisOpen] = useState(false);

  useEffect(() => {
    setIsKanjisOpen(false);
  }, [selectedItem]);

  const [selectedKanjiDetail, setSelectedKanjiDetail] = useState<any | null>(null);
  const [selectedKanjiVocabs, setSelectedKanjiVocabs] = useState<any[]>([]);
  const [loadingKanjiVocabs, setLoadingKanjiVocabs] = useState(false);
  const [selectedKanjiRadicals, setSelectedKanjiRadicals] = useState<any[]>([]);
  const [loadingKanjiRadicals, setLoadingKanjiRadicals] = useState(false);
  const [selectedVocabDetail, setSelectedVocabDetail] = useState<any | null>(null);
  const [page, setPage] = useState(0);
  const [hasMore, setHasMore] = useState(true);

  // Debounce search query
  useEffect(() => {
    const timer = setTimeout(() => {
      setDebouncedSearchQuery(searchQuery);
    }, 300);
    return () => clearTimeout(timer);
  }, [searchQuery]);

  // Read search param on load for deep linking
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

  // Fetch items based on active parameters
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
          .select('id, character, slug, level, svg_filename, meaning_mnemonic, description')
          .eq('type', 'radical')
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

          // Fetch user progress for current items
          const { data: progressData } = await supabase
            .from('user_progress')
            .select('item_id, srs_stage, unlocked_at, next_review')
            .eq('user_id', user.id)
            .in('item_id', itemIds);

          // Fetch dependent kanji via kanji_radicals junction table
          const { data: kanjiRadData } = await supabase
            .from('kanji_radicals')
            .select(`
              radical_id,
              kanji:items!kanji_radicals_kanji_id_fkey(
                id, character, slug, level, svg_filename, meaning_mnemonic, reading_mnemonic, description,
                item_meanings(*), item_readings(*)
              )
            `)
            .in('radical_id', itemIds);

          const depKanjiIds: string[] = [];
          kanjiRadData?.forEach((row: any) => {
            if (row.kanji?.id) depKanjiIds.push(row.kanji.id);
          });

          let depProgressData: any[] = [];
          if (depKanjiIds.length > 0) {
            const { data: pRes } = await supabase
              .from('user_progress')
              .select('item_id, srs_stage, unlocked_at, next_review')
              .eq('user_id', user.id)
              .in('item_id', depKanjiIds);
            depProgressData = pRes || [];
          }
          const depProgressMap = new Map(depProgressData.map((p: any) => [p.item_id, p]));

          const dependentsMap = new Map<string, any[]>();
          kanjiRadData?.forEach((row: any) => {
            const depItem = row.kanji;
            if (depItem) {
              const reqId = row.radical_id;
              if (!dependentsMap.has(reqId)) dependentsMap.set(reqId, []);

              const itemMeanings = depItem.item_meanings || [];
              const itemReadings = depItem.item_readings || [];
              const primaryMeaning = itemMeanings.find((m: any) => m.primary_meaning)?.meaning || depItem.slug || 'kanji';
              const primaryReading = itemReadings.find((r: any) => r.primary_reading)?.reading || '';
              const progress = depProgressMap.get(depItem.id);

              dependentsMap.get(reqId)!.push({
                id: depItem.id,
                character: depItem.character,
                slug: depItem.slug || 'kanji',
                level: depItem.level,
                svg_filename: depItem.svg_filename,
                meaning_mnemonic: depItem.meaning_mnemonic || '',
                reading_mnemonic: depItem.reading_mnemonic || '',
                description: depItem.description || '',
                meanings: itemMeanings,
                readings: itemReadings,
                primary_meaning: primaryMeaning,
                primary_reading: primaryReading,
                srs_stage: progress ? progress.srs_stage : 0,
                unlocked_at: progress ? progress.unlocked_at : null,
                next_review: progress ? progress.next_review : null
              });
            }
          });

          const progressMap = new Map(progressData?.map(p => [p.item_id, p]) || []);

          const combined: RadicalItem[] = itemsData.map(item => {
            const progress = progressMap.get(item.id);
            const foundKanjis = dependentsMap.get(item.id) || [];
            return {
              id: item.id,
              character: item.character,
              slug: item.slug || 'radical',
              level: item.level,
              svg_filename: item.svg_filename,
              meaning_mnemonic: item.meaning_mnemonic || '',
              description: item.description || '',
              srs_stage: progress ? progress.srs_stage : 0,
              unlocked_at: progress ? progress.unlocked_at : null,
              next_review: progress ? progress.next_review : null,
              kanjis: foundKanjis
            };
          });

          if (!active) return;
          if (page === 0) setRadicals(combined);
          else setRadicals(prev => [...prev, ...combined]);
        } else {
          if (!active) return;
          if (page === 0) setRadicals([]);
        }
      } catch (err) {
        if (active) console.error('Error loading Radicals:', err);
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
    setRadicals([]);
    setHasMore(true);
  }, [selectedBand, selectedLevel, debouncedSearchQuery]);

  // Load related vocabularies when a Kanji is clicked/opened
  useEffect(() => {
    async function loadRelatedVocab() {
      if (!selectedKanjiDetail) {
        setSelectedKanjiVocabs([]);
        return;
      }

      setLoadingKanjiVocabs(true);
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) return;

        const { data: vkData } = await supabase
          .from('vocabulary_kanjis')
          .select(`
            vocab:items!vocabulary_kanjis_vocabulary_id_fkey(
              id, character, slug, level, meaning_mnemonic, reading_mnemonic, description,
              item_meanings(*), item_readings(*), item_context_sentences(*)
            )
          `)
          .eq('kanji_id', selectedKanjiDetail.id);

        const rawVocabs = (vkData || []).map((row: any) => row.vocab).filter(Boolean);
        if (rawVocabs.length === 0) {
          setSelectedKanjiVocabs([]);
          return;
        }

        const vocabIds = rawVocabs.map((v: any) => v.id);

        const { data: progressData } = await supabase
          .from('user_progress')
          .select('item_id, srs_stage, unlocked_at, next_review')
          .eq('user_id', user.id)
          .in('item_id', vocabIds);

        const progressMap = new Map(progressData?.map((p: any) => [p.item_id, p]) || []);

        const vocabs = rawVocabs.map((item: any) => {
          const progress = progressMap.get(item.id);
          const primaryMeaning = item.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || item.slug || 'vocabulary';
          const primaryReading = item.item_readings?.find((r: any) => r.primary_reading)?.reading || '';

          return {
            id: item.id,
            character: item.character,
            slug: item.slug,
            primary_meaning: primaryMeaning,
            primary_reading: primaryReading,
            meaning_mnemonic: item.meaning_mnemonic,
            reading_mnemonic: item.reading_mnemonic,
            description: item.description,
            meanings: item.item_meanings || [],
            readings: item.item_readings || [],
            sentences: item.item_context_sentences || [],
            level: item.level,
            srs_stage: progress ? progress.srs_stage : 0,
            unlocked_at: progress ? progress.unlocked_at : null,
            next_review: progress ? progress.next_review : null
          };
        });

        setSelectedKanjiVocabs(vocabs);
      } catch (err) {
        console.error('Error loading related vocabularies:', err);
      } finally {
        setLoadingKanjiVocabs(false);
      }
    }
    loadRelatedVocab();
  }, [selectedKanjiDetail]);

  // Helper functions
  const filtered = radicals;

  const levelsPresent = Array.from(new Set(radicals.map(r => r.level))).sort((a, b) => a - b);

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
    if (stage === 1 && !nextReviewStr) return 'bg-radical/10 text-radical border border-radical/30 font-extrabold';
    if (stage >= 1 && stage <= 4) return 'bg-radical text-white border border-radical/80 font-bold';
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
          <Loader2 className="w-10 h-10 text-radical animate-spin" />
          <p className="text-sm font-bold text-slate-500 animate-pulse">Memuat data Kamus Radikal 60 Level WaniKani...</p>
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
        <section className="bg-gradient-to-r from-cyan-600 to-teal-600 text-white p-6 sm:p-8 rounded-3xl shadow-lg relative overflow-hidden">
          <div className="absolute right-0 bottom-0 translate-x-8 translate-y-8 opacity-10">
            <BookOpen className="w-56 h-56" />
          </div>
          <div className="relative z-10 space-y-1">
            <div className="flex items-center space-x-1.5 text-cyan-200">
              <Sparkles className="w-5 h-5 text-amber-300 animate-pulse" />
              <span className="text-xs font-bold uppercase tracking-widest">KaniGani Pustaka</span>
            </div>
            <h2 className="text-2xl sm:text-3xl font-extrabold tracking-tight">Kamus Radikal (WaniKani 60 Level)</h2>
            <p className="text-xs sm:text-sm text-cyan-100 max-w-2xl leading-relaxed">
              Radikal adalah komponen dasar pembentuk Kanji. KaniGani menggunakan radikal WaniKani 60 level lengkap dengan terjemahan Bahasa Indonesia.
            </p>
          </div>
        </section>

        {/* Filter & Search Bar */}
        <section className="bg-white dark:bg-slate-900 p-4 sm:p-6 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm flex flex-col sm:flex-row gap-4 items-center justify-between">
          <div className="relative w-full sm:max-w-md">
            <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400" />
            <input
              type="text"
              placeholder="Cari radikal berdasarkan simbol atau arti..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full pl-11 pr-4 py-3 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-radical focus:border-transparent transition-all"
            />
          </div>

          <div className="flex flex-wrap items-center gap-3 w-full sm:w-auto shrink-0 justify-end">
            <div className="flex items-center space-x-2 px-3.5 py-2.5 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 rounded-2xl">
              <Layers className="w-4 h-4 text-cyan-500" />
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
              <div className="w-6 h-6 rounded-md border border-dashed border-radical/30 bg-hatched-radical flex items-center justify-center font-japanese font-black text-xxs text-radical/60">本</div>
              <span>Locked</span>
            </div>
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-solid border-radical/20 bg-radical/5 dark:bg-radical/10 flex items-center justify-center font-japanese font-black text-xxs text-radical">本</div>
              <span>In Lessons</span>
            </div>
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-solid border-radical/80 bg-radical flex items-center justify-center font-japanese font-black text-xxs text-white">本</div>
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

        {/* Radicals Grouped Layout */}
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
                        cardStyles = "bg-hatched-radical border-dashed border-radical/20 text-slate-400 dark:text-slate-500 opacity-60";
                        charBorderStyles = "border-radical/20 text-radical/60 bg-radical/5";
                        textStyles = "text-slate-400 dark:text-slate-500 capitalize";
                      } else if (isInLessons) {
                        cardStyles = "bg-white dark:bg-slate-900 border-solid border-radical/30 text-slate-800 dark:text-slate-100 hover:border-radical shadow-xs";
                        charBorderStyles = "border-radical/30 text-radical bg-radical/10";
                        textStyles = "text-radical capitalize font-black";
                      } else if (isBurned) {
                        cardStyles = "bg-burned-card border-solid border-amber-600/50 text-white hover:border-amber-400 shadow-xs";
                        charBorderStyles = "border-white/30 text-white bg-white/10";
                        textStyles = "text-white capitalize font-black";
                      } else {
                        cardStyles = "bg-radical border-solid border-radical/80 text-white hover:border-white shadow-xs";
                        charBorderStyles = "border-white/30 text-white bg-white/10";
                        textStyles = "text-white capitalize font-black";
                      }

                      return (
                        <div
                          key={item.id}
                          onClick={() => setSelectedItem(item)}
                          className={`pt-4 pb-3 px-4 rounded-2xl border flex flex-col justify-between items-center text-center cursor-pointer transition-all duration-300 hover:-translate-y-0.5 relative overflow-hidden group h-28 select-none whitespace-nowrap min-w-[5.5rem] ${cardStyles}`}
                        >
                          <div className={`px-3 py-1 border rounded-xl font-japanese font-black text-2xl mb-1 transition-transform duration-300 group-hover:scale-105 ${charBorderStyles}`}>
                            <CharacterDisplay item={item} />
                          </div>

                          <span className={`text-xs leading-none mt-1 block max-w-[5rem] truncate ${textStyles}`}>
                            {item.slug}
                          </span>

                          {isLocked && (
                            <div className="absolute top-1 right-1.5 text-radical/50 dark:text-radical/40">
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
                  className="px-6 py-3 bg-radical text-white text-sm font-black rounded-2xl shadow-md hover:bg-radical/90 transition-all cursor-pointer flex items-center space-x-2"
                >
                  {loadingMore ? <Loader2 className="w-4 h-4 animate-spin" /> : <span>Muat Lebih Banyak Radikal</span>}
                </button>
              </div>
            )}
          </div>
        ) : (
          <div className="p-12 text-center bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 space-y-3">
            <BookOpen className="w-12 h-12 text-slate-300 dark:text-slate-600 mx-auto" />
            <h3 className="text-base font-extrabold text-slate-700 dark:text-slate-300">Tidak ada radikal yang ditemukan</h3>
            <p className="text-xs text-slate-400">Coba ubah kata kunci pencarian atau filter level Anda.</p>
          </div>
        )}

      </main>

      {/* Modal Detail Radikal */}
      {selectedItem && (
        <div className="fixed inset-0 z-50 bg-slate-950/80 backdrop-blur-md flex items-center justify-center p-4 animate-fade-in">
          <div className="bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl shadow-2xl max-w-xl w-full max-h-[90vh] overflow-hidden flex flex-col relative animate-fade-in">
            {/* Header Banner */}
            <div className="bg-radical-gradient p-8 text-white flex flex-col items-center justify-center relative shrink-0">
              <button
                onClick={() => setSelectedItem(null)}
                className="absolute top-4 right-4 p-1.5 hover:bg-white/20 rounded-lg text-white transition-colors cursor-pointer"
              >
                <X className="w-5 h-5" />
              </button>
              <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10 mb-3 block">
                Radikal • Level {selectedItem.level}
              </span>
              <CharacterDisplay item={selectedItem} className="text-7xl font-black select-all" size={80} />
              <p className="text-lg font-bold tracking-wide mt-2 uppercase opacity-90">{selectedItem.slug}</p>
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

              {/* Mnemonic / Deskripsi */}
              {selectedItem.meaning_mnemonic && (
                <div className="space-y-2">
                  <h4 className="text-xs font-black uppercase tracking-widest text-slate-400 dark:text-slate-500">Mnemonic Radikal</h4>
                  <div className="p-4 bg-slate-50 dark:bg-slate-950 border border-slate-200/60 dark:border-slate-850 rounded-2xl text-slate-700 dark:text-slate-300 text-xs sm:text-sm leading-relaxed">
                    {selectedItem.meaning_mnemonic}
                  </div>
                </div>
              )}

              {/* Kanji Menggunakan Radikal Ini */}
              {selectedItem.kanjis && selectedItem.kanjis.length > 0 && (
                <div className="space-y-3 pt-2">
                  <button
                    onClick={() => setIsKanjisOpen(!isKanjisOpen)}
                    className="w-full flex items-center justify-between text-xs font-black uppercase tracking-widest text-slate-400 dark:text-slate-500 hover:text-slate-600 dark:hover:text-slate-300 transition-colors cursor-pointer"
                  >
                    <span>Kanji Yang Menggunakan Radikal Ini ({selectedItem.kanjis.length})</span>
                    {isKanjisOpen ? <ChevronDown className="w-4 h-4" /> : <ChevronRight className="w-4 h-4" />}
                  </button>

                  {isKanjisOpen && (
                    <div className="grid grid-cols-2 sm:grid-cols-3 gap-2.5 pt-1 animate-fade-in">
                      {selectedItem.kanjis.map((kj: any) => (
                        <button
                          key={kj.id}
                          onClick={() => setSelectedKanjiDetail(kj)}
                          className="flex items-center space-x-2.5 p-2.5 bg-slate-50 dark:bg-slate-950 border border-slate-200/60 dark:border-slate-850 rounded-xl hover:border-kanji transition-all cursor-pointer text-left group"
                        >
                          <div className="w-8 h-8 rounded-lg bg-kanji/10 text-kanji flex items-center justify-center font-japanese font-black text-lg group-hover:scale-110 transition-transform">
                            {kj.character}
                          </div>
                          <div className="min-w-0 flex-1">
                            <div className="text-xs font-black truncate">{kj.slug}</div>
                            <div className="text-[10px] text-slate-400 truncate">{kj.primary_meaning}</div>
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

      {/* Modal Detail Kanji jika diklik dari Radikal */}
      {selectedKanjiDetail && (
        <div className="fixed inset-0 z-60 bg-slate-950/80 backdrop-blur-md flex items-center justify-center p-4 animate-fade-in">
          <div className="bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl shadow-2xl max-w-xl w-full max-h-[90vh] overflow-hidden flex flex-col relative animate-fade-in">
            <div className="bg-kanji-gradient p-8 text-white flex flex-col items-center justify-center relative shrink-0">
              <button
                onClick={() => setSelectedKanjiDetail(null)}
                className="absolute top-4 right-4 p-1.5 hover:bg-white/20 rounded-lg text-white transition-colors cursor-pointer"
              >
                <X className="w-5 h-5" />
              </button>
              <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10 mb-3 block">
                Kanji • Level {selectedKanjiDetail.level}
              </span>
              <h1 className="text-7xl font-black select-all">{selectedKanjiDetail.character}</h1>
              <p className="text-lg font-bold tracking-wide mt-2 uppercase opacity-90">{selectedKanjiDetail.primary_meaning}</p>
            </div>
            <div className="p-6 space-y-4 overflow-y-auto flex-1 text-sm">
              {selectedKanjiDetail.meaning_mnemonic && (
                <div>
                  <h4 className="text-xs font-black uppercase text-slate-400 mb-1">Mnemonic Meaning</h4>
                  <p className="text-xs p-3 bg-slate-50 dark:bg-slate-950 rounded-xl">{selectedKanjiDetail.meaning_mnemonic}</p>
                </div>
              )}
              {selectedKanjiDetail.reading_mnemonic && (
                <div>
                  <h4 className="text-xs font-black uppercase text-slate-400 mb-1">Mnemonic Reading</h4>
                  <p className="text-xs p-3 bg-slate-50 dark:bg-slate-950 rounded-xl">{selectedKanjiDetail.reading_mnemonic}</p>
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
