'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import { getVocabularyReadingType } from '@/lib/japanese';
import {
  Search, BookOpen, Layers, X, HelpCircle, Sparkles,
  Lock, CheckCircle2, ChevronRight, Loader2, Languages, ArrowRight
} from 'lucide-react';

interface RadicalItem {
  id: string;
  character: string;
  slug: string;
  level: number;
  rank_id?: string | null;
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
  const [selectedRank, setSelectedRank] = useState<string>('all');
  const [selectedJlpt, setSelectedJlpt] = useState<string>('all');
  const [ranks, setRanks] = useState<any[]>([]);
  const [selectedItem, setSelectedItem] = useState<RadicalItem | null>(null);
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

  // Load ranks and user level once
  useEffect(() => {
    async function loadRanksAndUserLevel() {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (user) {
          const { data: rankState } = await supabase
            .from('user_rank_state')
            .select('*, ranks(*)')
            .eq('user_id', user.id)
            .maybeSingle();

          let activeRank = rankState?.ranks;
          if (!activeRank) {
            const { data: fallbackRank } = await supabase
              .from('ranks')
              .select('*')
              .order('sort_order', { ascending: true })
              .limit(1)
              .maybeSingle();
            activeRank = fallbackRank;
          }

          if (activeRank?.jlpt_level) {
            setSelectedJlpt(activeRank.jlpt_level);
          }
        }

        const { data, error } = await supabase
          .from('ranks')
          .select('*')
          .order('sort_order', { ascending: true });
        if (error) throw error;
        setRanks(data || []);
      } catch (err) {
        console.error('Error loading ranks/user level:', err);
      }
    }
    loadRanksAndUserLevel();
  }, []);

  // Fetch items based on active parameters
  useEffect(() => {
    async function loadData() {
      try {
        if (page === 0) {
          setLoading(true);
        } else {
          setLoadingMore(true);
        }

        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          router.push('/');
          return;
        }

        const pageSize = 100;
        const from = page * pageSize;
        const to = from + pageSize - 1;

        // Build items query
        let query = supabase
          .from('items')
          .select('*, ranks!inner(*)')
          .eq('type', 'radical')
          .order('lesson_position', { ascending: true })
          .range(from, to);

        if (selectedRank !== 'all') {
          query = query.eq('rank_id', selectedRank);
        }

        if (selectedJlpt !== 'all') {
          query = query.eq('ranks.jlpt_level', selectedJlpt);
        }

        if (debouncedSearchQuery.trim() !== '') {
          const q = debouncedSearchQuery.toLowerCase().trim();
          query = query.or(`character.ilike.%${q}%,slug.ilike.%${q}%`);
        }

        const { data: itemsData, error: itemsErr } = await query;
        if (itemsErr) throw itemsErr;

        if (!itemsData || itemsData.length < pageSize) {
          setHasMore(false);
        } else {
          setHasMore(true);
        }

        if (itemsData && itemsData.length > 0) {
          const itemIds = itemsData.map(item => item.id);

          // Fetch user progress for current items
          const { data: progressData, error: progErr } = await supabase
            .from('user_progress')
            .select('item_id, srs_stage, unlocked_at, next_review')
            .eq('user_id', user.id)
            .in('item_id', itemIds);

          if (progErr) throw progErr;

          // Fetch prerequisites where required items are in our itemIds
          const { data: prereqsData, error: prereqsErr } = await supabase
            .from('item_prerequisites')
            .select(`
              item_id,
              requires_item_id,
              items!item_id(
                id,
                character,
                slug,
                level,
                type,
                rank_id,
                meaning_mnemonic,
                reading_mnemonic,
                description,
                item_meanings(*),
                item_readings(*)
              )
            `)
            .in('requires_item_id', itemIds);

          if (prereqsErr) throw prereqsErr;

          // Map dependents
          const depKanjiIds = (prereqsData || [])
            .map((row: any) => row.items?.id)
            .filter(Boolean);

          let depProgressData: any[] = [];
          if (depKanjiIds.length > 0) {
            const { data: progressRes } = await supabase
              .from('user_progress')
              .select('item_id, srs_stage, unlocked_at, next_review')
              .eq('user_id', user.id)
              .in('item_id', depKanjiIds);
            depProgressData = progressRes || [];
          }
          const depProgressMap = new Map(depProgressData.map((p: any) => [p.item_id, p]));

          const dependentsMap = new Map<string, any[]>();
          prereqsData?.forEach((row: any) => {
            const depItem = row.items;
            if (depItem && depItem.type === 'kanji') {
              const reqId = row.requires_item_id;
              if (!dependentsMap.has(reqId)) {
                dependentsMap.set(reqId, []);
              }

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
                rank_id: depItem.rank_id,
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
              rank_id: item.rank_id,
              meaning_mnemonic: item.meaning_mnemonic || '',
              description: item.description || '',
              srs_stage: progress ? progress.srs_stage : 0,
              unlocked_at: progress ? progress.unlocked_at : null,
              next_review: progress ? progress.next_review : null,
              kanjis: foundKanjis
            };
          });

          if (page === 0) {
            setRadicals(combined);
          } else {
            setRadicals(prev => [...prev, ...combined]);
          }
        } else {
          if (page === 0) {
            setRadicals([]);
          }
        }
      } catch (err) {
        console.error('Error loading Radicals:', err);
      } finally {
        setLoading(false);
        setLoadingMore(false);
      }
    }

    loadData();
  }, [page, selectedRank, selectedJlpt, debouncedSearchQuery, router]);

  // Reset page when parameters change
  useEffect(() => {
    setPage(0);
    setRadicals([]);
    setHasMore(true);
  }, [selectedRank, selectedJlpt, debouncedSearchQuery]);

  // Load related vocabularies when a Kanji is clicked/opened from Radicals
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

        // Query items where type = 'vocabulary' and prerequisite is this selectedKanjiDetail.id
        const { data, error } = await supabase
          .from('item_prerequisites')
          .select(`
            item_id,
            items!item_id(
              id,
              character,
              slug,
              level,
              type,
              rank_id,
              meaning_mnemonic,
              reading_mnemonic,
              description,
              item_meanings(*),
              item_readings(*),
              item_context_sentences(*)
            )
          `)
          .eq('requires_item_id', selectedKanjiDetail.id);

        if (error) throw error;

        const rawVocabs = (data || [])
          .map((row: any) => row.items)
          .filter((item: any) => item && item.type === 'vocabulary');

        if (rawVocabs.length === 0) {
          setSelectedKanjiVocabs([]);
          return;
        }

        const vocabIds = rawVocabs.map(v => v.id);

        // Fetch user progress for these vocabularies
        const { data: progressData } = await supabase
          .from('user_progress')
          .select('item_id, srs_stage, unlocked_at, next_review')
          .eq('user_id', user.id)
          .in('item_id', vocabIds);

        // Fetch prerequisites (kanjis) for these vocabularies
        const { data: prereqsData } = await supabase
          .from('item_prerequisites')
          .select(`
            item_id,
            requires_item_id,
            items!requires_item_id(
              id,
              character,
              slug,
              level,
              type,
              rank_id,
              item_meanings(*),
              item_readings(*)
            )
          `)
          .in('item_id', vocabIds);

        const progressMap = new Map(progressData?.map(p => [p.item_id, p]) || []);

        const kanjisMap = new Map<string, any[]>();
        prereqsData?.forEach((row: any) => {
          const reqItem = row.items;
          if (reqItem && reqItem.type === 'kanji') {
            const vocabId = row.item_id;
            if (!kanjisMap.has(vocabId)) {
              kanjisMap.set(vocabId, []);
            }
            const itemMeanings = reqItem.item_meanings || [];
            const itemReadings = reqItem.item_readings || [];
            const primaryMeaning = itemMeanings.find((m: any) => m.primary_meaning)?.meaning || reqItem.slug || 'kanji';
            const primaryReading = itemReadings.find((r: any) => r.primary_reading)?.reading || '';

            kanjisMap.get(vocabId)!.push({
              id: reqItem.id,
              character: reqItem.character,
              slug: reqItem.slug || 'kanji',
              level: reqItem.level,
              rank_id: reqItem.rank_id,
              meanings: itemMeanings,
              readings: itemReadings,
              primary_meaning: primaryMeaning,
              primary_reading: primaryReading
            });
          }
        });

        const vocabs = rawVocabs.map((item: any) => {
          const progress = progressMap.get(item.id);
          const primaryMeaning = item.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || item.slug || 'vocabulary';
          const primaryReading = item.item_readings?.find((r: any) => r.primary_reading)?.reading || '';
          const foundKanjis = kanjisMap.get(item.id) || [];

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
            rank_id: item.rank_id,
            level: item.level,
            srs_stage: progress ? progress.srs_stage : 0,
            unlocked_at: progress ? progress.unlocked_at : null,
            next_review: progress ? progress.next_review : null,
            kanjis: foundKanjis
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

  // Load prerequisite radicals when selectedKanjiDetail changes
  useEffect(() => {
    async function loadKanjiPrerequisites() {
      if (!selectedKanjiDetail) {
        setSelectedKanjiRadicals([]);
        return;
      }

      setLoadingKanjiRadicals(true);
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) return;

        const { data, error } = await supabase
          .from('item_prerequisites')
          .select(`
            requires_item_id,
            items!requires_item_id(
              id,
              character,
              slug,
              level,
              type,
              rank_id,
              meaning_mnemonic,
              description,
              item_meanings(*)
            )
          `)
          .eq('item_id', selectedKanjiDetail.id);

        if (error) throw error;

        const rawRadicals = (data || [])
          .map((row: any) => row.items)
          .filter((item: any) => item && item.type === 'radical');

        if (rawRadicals.length === 0) {
          setSelectedKanjiRadicals([]);
          return;
        }

        const radIds = rawRadicals.map(r => r.id);

        // Fetch user progress
        const { data: progressData } = await supabase
          .from('user_progress')
          .select('item_id, srs_stage, unlocked_at, next_review')
          .eq('user_id', user.id)
          .in('item_id', radIds);

        const progressMap = new Map(progressData?.map(p => [p.item_id, p]) || []);

        const radicals = rawRadicals.map((item: any) => {
          const progress = progressMap.get(item.id);
          const primaryMeaning = item.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || item.slug || 'radical';

          return {
            id: item.id,
            character: item.character,
            slug: item.slug,
            primary_meaning: primaryMeaning,
            meaning_mnemonic: item.meaning_mnemonic,
            description: item.description,
            rank_id: item.rank_id,
            level: item.level,
            srs_stage: progress ? progress.srs_stage : 0,
            unlocked_at: progress ? progress.unlocked_at : null,
            next_review: progress ? progress.next_review : null
          };
        });

        setSelectedKanjiRadicals(radicals);
      } catch (err) {
        console.error('Error loading kanji prerequisite radicals:', err);
      } finally {
        setLoadingKanjiRadicals(false);
      }
    }
    loadKanjiPrerequisites();
  }, [selectedKanjiDetail]);

  const getSrsLabel = (stage: number, nextReview?: string | null) => {
    if (stage === 0) return 'Terkunci';
    if (stage === 1 && !nextReview) return 'Dalam Pelajaran';
    if (stage >= 1 && stage <= 4) return 'Kepiting Cilik';
    if (stage === 5 || stage === 6) return 'Kepiting Guru';
    if (stage === 7) return 'Kepiting Suhu';
    if (stage === 8) return 'Kepiting Sakti';
    return 'Kepiting Rebus';
  };

  const getSrsColorClass = (stage: number, nextReview?: string | null) => {
    if (stage === 0) return 'bg-slate-200/50 text-slate-400 dark:bg-slate-800/40 dark:text-slate-500 border border-slate-350/10';
    if (stage === 1 && !nextReview) return 'bg-radical/5 text-radical border border-radical/20 dark:bg-radical/10';
    if (stage === 1) return 'bg-blue-100 text-blue-400 dark:bg-blue-950 dark:text-blue-300';
    if (stage === 2) return 'bg-blue-200 text-blue-500 dark:bg-blue-900 dark:text-blue-300';
    if (stage === 3) return 'bg-blue-300 text-blue-700 dark:bg-blue-800 dark:text-blue-200';
    if (stage === 4) return 'bg-blue-400 text-white dark:bg-blue-700 dark:text-white';
    if (stage === 5) return 'bg-blue-500 text-white dark:bg-blue-600 dark:text-white';
    if (stage === 6) return 'bg-blue-600 text-white dark:bg-blue-500 dark:text-white';
    if (stage === 7) return 'bg-blue-700 text-white dark:bg-blue-400 dark:text-blue-950';
    if (stage === 8) return 'bg-blue-800 text-white dark:bg-blue-300 dark:text-blue-955';
    return 'bg-blue-900 text-white dark:bg-blue-200 dark:text-blue-950';
  };

  // Filters
  const filtered = radicals;

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-slate-50 dark:bg-slate-950 text-slate-900 dark:text-slate-100">
        <div className="flex flex-col items-center space-y-4">
          <Loader2 className="w-12 h-12 text-radical animate-spin" />
          <p className="font-semibold text-sm">Menyiapkan Pustaka Radikal...</p>
        </div>
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
            <h2 className="text-2xl sm:text-3xl font-extrabold tracking-tight">Kamus Radikal</h2>
            <p className="text-xs sm:text-sm text-cyan-100 max-w-2xl leading-relaxed">
              Radikal (dikenal sebagai bushu dalam bahasa Jepang) adalah komponen pembentuk huruf Kanji. Mempelajari dan mengenali radikal adalah langkah dasar krusial sebelum Anda mulai memahami huruf Kanji yang rumit.
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

          <div className="flex flex-wrap items-center gap-4 w-full sm:w-auto shrink-0 justify-end">
            <div className="flex items-center space-x-1.5 px-3.5 py-2.5 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 rounded-2xl">
              <Languages className="w-4 h-4 text-slate-400" />
              <span className="text-xxs font-bold text-slate-400 uppercase tracking-widest">JLPT</span>
              <select
                value={selectedJlpt}
                onChange={(e) => {
                  setSelectedJlpt(e.target.value);
                  setSelectedRank('all');
                }}
                className="bg-transparent dark:bg-slate-900 border-none text-xs font-extrabold focus:outline-none cursor-pointer text-slate-800 dark:text-slate-100"
              >
                <option value="all" className="bg-white dark:bg-slate-900 text-slate-800 dark:text-slate-100">Semua Level</option>
                <option value="N5" className="bg-white dark:bg-slate-900 text-slate-800 dark:text-slate-100">JLPT N5</option>
                <option value="N4" className="bg-white dark:bg-slate-900 text-slate-800 dark:text-slate-100">JLPT N4</option>
                <option value="N3" className="bg-white dark:bg-slate-900 text-slate-800 dark:text-slate-100">JLPT N3</option>
                <option value="N2" className="bg-white dark:bg-slate-900 text-slate-800 dark:text-slate-100">JLPT N2</option>
                <option value="N1" className="bg-white dark:bg-slate-900 text-slate-800 dark:text-slate-100">JLPT N1</option>
              </select>
            </div>

            <div className="flex items-center space-x-1.5 px-3.5 py-2.5 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 rounded-2xl">
              <Layers className="w-4 h-4 text-slate-400" />
              <span className="text-xxs font-bold text-slate-400 uppercase tracking-widest">Pangkat</span>
              <select
                value={selectedRank}
                onChange={(e) => setSelectedRank(e.target.value)}
                className="bg-transparent dark:bg-slate-900 border-none text-xs font-extrabold focus:outline-none cursor-pointer text-slate-800 dark:text-slate-100"
              >
                <option value="all" className="bg-white dark:bg-slate-900 text-slate-800 dark:text-slate-100">Semua Pangkat</option>
                {ranks
                  .filter(r => selectedJlpt === 'all' || r.jlpt_level === selectedJlpt)
                  .map(r => (
                    <option key={r.id} value={r.id} className="bg-white dark:bg-slate-900 text-slate-800 dark:text-slate-100">{r.name}</option>
                  ))}
              </select>
            </div>
          </div>
        </section>

        {/* Legend Panel */}
        <section className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 bg-white dark:bg-slate-900 p-4 sm:px-6 sm:py-3.5 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm">
          <span className="text-xxs font-extrabold uppercase tracking-widest text-slate-400 dark:text-slate-500">
            Legenda Status Belajar
          </span>
          <div className="flex flex-wrap items-center gap-x-5 gap-y-2 text-xxs font-bold text-slate-550 dark:text-slate-400">
            {/* Locked */}
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-dashed border-radical/30 bg-hatched-radical flex items-center justify-center font-japanese font-black text-xxs text-radical/60">
                本
              </div>
              <span>Locked</span>
            </div>
            {/* In Lessons */}
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-solid border-radical/20 bg-radical/5 dark:bg-radical/10 flex items-center justify-center font-japanese font-black text-xxs text-radical">
                本
              </div>
              <span>In Lessons</span>
            </div>
            {/* In Reviews */}
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-solid border-radical/80 bg-radical flex items-center justify-center font-japanese font-black text-xxs text-white">
                本
              </div>
              <span>In Reviews</span>
            </div>
            {/* Burned */}
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-solid bg-burned-card flex items-center justify-center font-japanese font-black text-xxs text-white">
                本
              </div>
              <span>Burned</span>
            </div>
          </div>
        </section>

        {/* Radicals Grouped Layout */}
        {filtered.length > 0 ? (
          <div className="space-y-8">
            {ranks
              .filter(r => selectedJlpt === 'all' || r.jlpt_level === selectedJlpt)
              .map((rank) => {
                const rankItems = filtered.filter(item => item.rank_id === rank.id);
                if (rankItems.length === 0) return null;

                const rankTotalItems = radicals.filter(item => item.rank_id === rank.id);
                const unlockedCount = rankTotalItems.filter(item => item.srs_stage !== undefined && item.srs_stage > 0).length;
                const totalCount = rankTotalItems.length;

                return (
                  <div key={rank.id} className="space-y-4">
                  {/* Level Header Panel */}
                  <div className="bg-white dark:bg-slate-900 px-6 py-3.5 rounded-2xl border border-slate-200 dark:border-slate-850 shadow-2xs flex items-baseline space-x-2 shrink-0">
                    <span className="text-base font-extrabold text-slate-855 dark:text-slate-100">{rank.name}</span>
                    <span className="text-xxs font-bold text-slate-400 dark:text-slate-550">({unlockedCount}/{totalCount} unlocked)</span>
                  </div>

                  {/* Grid of level items */}
                  <div className="flex flex-wrap gap-3 justify-start">
                    {rankItems.map((item) => {
                      const isLocked = item.srs_stage === 0;
                      const isInLessons = item.srs_stage === 1 && !item.next_review;
                      const isBurned = item.srs_stage === 9;
                      const isInReviews = item.srs_stage !== undefined && item.srs_stage >= 1 && item.srs_stage <= 8 && item.next_review !== null;

                      let cardStyles = "";
                      let charBorderStyles = "";
                      let textStyles = "";

                      if (isLocked) {
                        cardStyles = "bg-hatched-radical border-dashed border-radical/30 dark:border-radical/20 hover:border-radical/45";
                        charBorderStyles = "border-solid border-radical/30 text-radical/55";
                        textStyles = "text-slate-500 dark:text-slate-400 capitalize font-bold";
                      } else if (isInLessons) {
                        cardStyles = "bg-radical/5 border-solid border-radical/20 dark:bg-radical/10 hover:border-radical/40 hover:shadow-radical/5";
                        charBorderStyles = "border-solid border-radical text-radical";
                        textStyles = "text-slate-750 dark:text-slate-200 capitalize font-black";
                      } else if (isInReviews) {
                        cardStyles = "bg-radical border-solid border-radical/80 text-white shadow-3xs hover:shadow-2xs hover:bg-radical-hover";
                        charBorderStyles = "border-solid border-white/60 text-white";
                        textStyles = "text-white capitalize font-black";
                      } else { // Burned
                        cardStyles = "bg-burned-card border-solid text-white shadow-3xs hover:shadow-2xs";
                        charBorderStyles = "border-solid border-white/60 text-white";
                        textStyles = "text-white capitalize font-black";
                      }

                      return (
                        <div
                          key={item.id}
                          onClick={() => setSelectedItem(item)}
                          className={`pt-4 pb-3 px-4 rounded-2xl border flex flex-col justify-between items-center text-center cursor-pointer transition-all duration-300 hover:-translate-y-0.5 relative overflow-hidden group h-28 select-none whitespace-nowrap ${cardStyles}`}
                        >
                          {/* Character with Solid Border */}
                          <div className={`px-4 py-1 border rounded-xl font-japanese font-black text-2xl mb-1 transition-transform duration-300 group-hover:scale-105 ${charBorderStyles}`}>
                            {item.character}
                          </div>

                          {/* Meanings */}
                          <span className={`text-xs leading-none mt-1 block ${textStyles}`}>
                            {item.slug}
                          </span>

                          {/* Mini Lock Icon for Locked */}
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

            {/* Load More Button */}
            {hasMore && (
              <div className="flex justify-center pt-6">
                <button
                  onClick={() => setPage(prev => prev + 1)}
                  disabled={loadingMore}
                  className="px-6 py-3 bg-gradient-to-r from-cyan-600 to-teal-600 hover:from-cyan-700 hover:to-teal-700 text-white text-xs font-bold rounded-2xl shadow-md hover:shadow-lg transition-all duration-200 disabled:opacity-50 flex items-center space-x-2 cursor-pointer"
                >
                  {loadingMore ? (
                    <>
                      <Loader2 className="w-4 h-4 animate-spin" />
                      <span>Memuat...</span>
                    </>
                  ) : (
                    <>
                      <span>Muat Lebih Banyak</span>
                      <ArrowRight className="w-4 h-4" />
                    </>
                  )}
                </button>
              </div>
            )}
          </div>
        ) : (
          <section className="bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl p-12 text-center text-slate-400 dark:text-slate-500 shadow-sm space-y-3">
            <HelpCircle className="w-12 h-12 mx-auto opacity-30" />
            <h3 className="font-bold text-sm">Radikal Tidak Ditemukan</h3>
            <p className="text-xs text-slate-450 max-w-sm mx-auto">
              Silakan sesuaikan kata kunci pencarian Anda atau ganti filter level.
            </p>
          </section>
        )}

      </main>

      <Footer />

      {/* DETAIL MODAL DRAWER OVERLAY */}
      {selectedItem && (
        <div
          onClick={() => setSelectedItem(null)}
          className="fixed inset-0 z-50 overflow-y-auto bg-slate-950/70 backdrop-blur-md flex items-center justify-center p-4 sm:p-6 transition-all duration-300"
        >
          <div
            onClick={(e) => e.stopPropagation()}
            className="bg-white dark:bg-slate-900 w-full max-w-lg rounded-3xl border border-slate-200 dark:border-slate-800 shadow-2xl overflow-hidden flex flex-col animate-fade-in max-h-[90vh]"
          >
            {/* Header Banner */}
            <div className="bg-radical-gradient p-8 text-white flex flex-col items-center justify-center relative shrink-0">
              <button
                onClick={() => setSelectedItem(null)}
                className="absolute top-4 right-4 p-1.5 hover:bg-white/20 rounded-lg text-white transition-colors"
              >
                <X className="w-5 h-5" />
              </button>
              <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10 mb-3 block">
                Radikal Kamus • {ranks.find(r => r.id === selectedItem.rank_id)?.name || `Level ${selectedItem.level}`}
              </span>
              <h1 className="text-7xl font-black select-all">{selectedItem.character}</h1>
              <p className="text-lg font-bold tracking-wide mt-2 uppercase opacity-90">{selectedItem.slug}</p>
            </div>

            {/* Content Body */}
            <div className="p-6 sm:p-8 space-y-6 text-sm leading-relaxed text-left overflow-y-auto flex-1">
              {/* Unlock Info */}
              <div className="flex flex-col gap-3 p-3.5 bg-slate-50 dark:bg-slate-950 border border-slate-200/50 dark:border-slate-850 rounded-2xl">
                <div className="flex items-center justify-between">
                  <span className="text-xxs font-bold text-slate-450 uppercase tracking-widest block">Status Belajar SRS</span>
                  <span className={`text-xxs font-extrabold px-3 py-1 rounded-full ${getSrsColorClass(selectedItem.srs_stage || 0, selectedItem.next_review)}`}>
                    {selectedItem.srs_stage === 0 ? 'Terkunci (Belum Dipelajari)' : getSrsLabel(selectedItem.srs_stage || 0, selectedItem.next_review)}
                  </span>
                </div>
                {selectedItem.srs_stage === 9 && (
                  <button
                    onClick={async () => {
                      if (!confirm('Apakah Anda ingin menghidupkan kembali materi ini dan memasukkannya kembali ke antrean review harian?')) return;
                      try {
                        const { data: { session } } = await supabase.auth.getSession();
                        const token = session?.access_token;
                        if (!token) throw new Error('Silakan login terlebih dahulu');
                        const res = await fetch('/api/archive/revive', {
                          method: 'POST',
                          headers: {
                            'Content-Type': 'application/json',
                            'Authorization': `Bearer ${token}`
                          },
                          body: JSON.stringify({ itemId: selectedItem.id })
                        });
                        const data = await res.json();
                        if (data.error) throw new Error(data.error);
                        alert('Item berhasil dihidupkan kembali!');
                        window.location.reload();
                      } catch (err: any) {
                        alert('Gagal menghidupkan kembali item: ' + err.message);
                      }
                    }}
                    className="w-full mt-1 px-4 py-2.5 bg-gradient-to-r from-rose-500 to-pink-600 hover:from-rose-600 hover:to-pink-700 text-white font-bold rounded-xl text-xs transition-colors flex items-center justify-center cursor-pointer shadow-sm hover:shadow"
                  >
                    <span>Reset ke Antrean Review</span>
                  </button>
                )}
              </div>

              {/* Mnemonic */}
              {selectedItem.meaning_mnemonic && (
                <div className="p-4 bg-teal-50 dark:bg-teal-950/20 border border-teal-100 dark:border-teal-900/50 rounded-2xl">
                  <h3 className="text-xxs font-bold text-teal-700 dark:text-teal-400 uppercase tracking-widest block mb-1">Mnemonic Jembatan Keledai</h3>
                  <p className="text-teal-900 dark:text-teal-300 font-medium text-xs leading-relaxed">{selectedItem.meaning_mnemonic}</p>
                </div>
              )}

              {/* Description */}
              {selectedItem.description && (
                <div className="space-y-1">
                  <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Deskripsi Detail</h3>
                  <p className="text-slate-650 dark:text-slate-350 text-xs leading-relaxed">{selectedItem.description}</p>
                </div>
              )}

              {/* Found in Kanji (KaniGani Style) */}
              {selectedItem.kanjis && selectedItem.kanjis.length > 0 && (
                <div className="space-y-3 pt-4 border-t border-slate-200/50 dark:border-slate-800/50">
                  <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block flex items-center space-x-1">
                    <Layers className="w-3.5 h-3.5 text-pink-500" />
                    <span>Ditemukan di Kanji (Found in Kanji)</span>
                  </h3>

                  <div className="grid grid-cols-2 sm:grid-cols-4 gap-2">
                    {selectedItem.kanjis.map((kj: any) => (
                      <div
                        key={kj.id}
                        onClick={() => {
                          setSelectedKanjiDetail(kj);
                        }}
                        className="p-2.5 bg-kanji/5 border border-kanji/15 hover:border-kanji/35 dark:bg-kanji/10 hover:shadow-sm rounded-xl flex items-center justify-between text-left group/kj cursor-pointer transition-all duration-200"
                        title={`Lihat detail kanji ${kj.character}`}
                      >
                        <div>
                          <span className="text-xl font-black text-kanji group-hover/kj:scale-105 transition-transform duration-200 block leading-tight">
                            {kj.character}
                          </span>
                          <span className="text-4xs text-slate-500 dark:text-slate-400 uppercase tracking-wider block truncate max-w-[65px] font-semibold mt-0.5" title={kj.primary_meaning}>
                            {kj.primary_meaning}
                          </span>
                        </div>
                      </div>
                    ))}
                  </div>
                </div>
              )}
            </div>

            {/* Bottom Actions */}
            <div className="p-4 border-t border-slate-200 dark:border-slate-800 bg-slate-55 dark:bg-slate-950 flex items-center justify-end">
              <button
                onClick={() => setSelectedItem(null)}
                className="px-6 py-2 bg-slate-100 hover:bg-slate-250 dark:bg-slate-800 dark:hover:bg-slate-700 font-bold rounded-xl text-xs transition-colors"
              >
                Tutup Detail
              </button>
            </div>
          </div>
        </div>
      )}

      {/* SECONDARY KANJI DETAIL MODAL DRAWER OVERLAY */}
      {selectedKanjiDetail && (
        <div
          onClick={() => setSelectedKanjiDetail(null)}
          className="fixed inset-0 z-[60] overflow-y-auto bg-slate-950/75 backdrop-blur-md flex items-center justify-center p-4 sm:p-6 transition-all duration-300 animate-fade-in"
        >
          <div
            onClick={(e) => e.stopPropagation()}
            className="bg-white dark:bg-slate-900 w-full max-w-lg rounded-3xl border border-slate-200 dark:border-slate-800 shadow-2xl overflow-hidden flex flex-col max-h-[85vh] animate-fade-in"
          >
            {/* Header Banner */}
            <div className="bg-kanji-gradient p-8 text-white flex flex-col items-center justify-center relative shrink-0">
              <button
                onClick={() => setSelectedKanjiDetail(null)}
                className="absolute top-4 right-4 p-1.5 hover:bg-white/20 rounded-lg text-white transition-colors"
              >
                <X className="w-5 h-5" />
              </button>
              <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10 mb-3 block">
                Kanji Kamus • {ranks.find(r => r.id === selectedKanjiDetail.rank_id)?.name || `Level ${selectedKanjiDetail.level}`}
              </span>
              <h1 className="text-7xl font-black select-all">{selectedKanjiDetail.character}</h1>
              <p className="text-lg font-bold tracking-wide mt-2 uppercase opacity-90">{selectedKanjiDetail.primary_meaning}</p>
            </div>

            {/* Content Body */}
            <div className="p-6 sm:p-8 space-y-6 text-sm leading-relaxed text-left overflow-y-auto flex-1">
              {/* Unlock Info */}
              <div className="flex flex-col gap-3 p-3.5 bg-slate-50 dark:bg-slate-950 border border-slate-200/50 dark:border-slate-850 rounded-2xl">
                <div className="flex items-center justify-between">
                  <span className="text-xxs font-bold text-slate-455 uppercase tracking-widest block">Status Belajar SRS</span>
                  <span className={`text-xxs font-extrabold px-3 py-1 rounded-full ${getSrsColorClass(selectedKanjiDetail.srs_stage || 0, selectedKanjiDetail.next_review)}`}>
                    {selectedKanjiDetail.srs_stage === 0 ? 'Terkunci (Belum Dipelajari)' : getSrsLabel(selectedKanjiDetail.srs_stage || 0, selectedKanjiDetail.next_review)}
                  </span>
                </div>
                {selectedKanjiDetail.srs_stage === 9 && (
                  <button
                    onClick={async () => {
                      if (!confirm('Apakah Anda ingin menghidupkan kembali materi ini dan memasukkannya kembali ke antrean review harian?')) return;
                      try {
                        const { data: { session } } = await supabase.auth.getSession();
                        const token = session?.access_token;
                        if (!token) throw new Error('Silakan login terlebih dahulu');
                        const res = await fetch('/api/archive/revive', {
                          method: 'POST',
                          headers: {
                            'Content-Type': 'application/json',
                            'Authorization': `Bearer ${token}`
                          },
                          body: JSON.stringify({ itemId: selectedKanjiDetail.id })
                        });
                        const data = await res.json();
                        if (data.error) throw new Error(data.error);
                        alert('Item berhasil dihidupkan kembali!');
                        window.location.reload();
                      } catch (err: any) {
                        alert('Gagal menghidupkan kembali item: ' + err.message);
                      }
                    }}
                    className="w-full mt-1 px-4 py-2.5 bg-gradient-to-r from-rose-500 to-pink-600 hover:from-rose-600 hover:to-pink-700 text-white font-bold rounded-xl text-xs transition-colors flex items-center justify-center cursor-pointer shadow-sm hover:shadow"
                  >
                    <span>Reset ke Antrean Review</span>
                  </button>
                )}
              </div>

              {/* Readings variations */}
              <div className="space-y-3 bg-slate-50 dark:bg-slate-950 p-4 rounded-2xl border border-slate-200/40 dark:border-slate-850/40">
                <h4 className="text-xxs font-bold text-slate-455 uppercase tracking-widest block mb-1">Daftar Variasi Cara Baca</h4>
                <div className="grid grid-cols-3 gap-2 text-center">
                  {[
                    { label: 'Onyomi', list: selectedKanjiDetail.readings?.filter((r: any) => r.reading_type === 'onyomi') || [] },
                    { label: 'Kunyomi', list: selectedKanjiDetail.readings?.filter((r: any) => r.reading_type === 'kunyomi') || [] },
                    { label: 'Nanori', list: selectedKanjiDetail.readings?.filter((r: any) => r.reading_type === 'nanori') || [] }
                  ].map((group, idx) => (
                    <div key={idx} className="p-2.5 bg-white dark:bg-slate-900 rounded-xl border border-slate-200/60 dark:border-slate-800">
                      <span className="text-3xs font-extrabold text-slate-400 uppercase tracking-wider block">{group.label}</span>
                      <div className="flex flex-wrap justify-center gap-1 mt-1.5">
                        {group.list.length > 0 ? (
                           group.list.map((r: any, i: number) => (
                            <span
                              key={i}
                              className={`px-1.5 py-0.5 text-xxs font-bold rounded ${r.primary_reading
                                ? 'bg-indigo-600 text-white font-black'
                                : 'bg-slate-105 dark:bg-slate-800 text-slate-600 dark:text-slate-350'
                                }`}
                            >
                              {r.reading}
                            </span>
                          ))
                        ) : (
                          <span className="text-4xs text-slate-400 italic block mt-0.5">-</span>
                        )}
                      </div>
                    </div>
                  ))}
                </div>
              </div>

              {/* Meaning Mnemonic */}
              {selectedKanjiDetail.meaning_mnemonic && (
                <div className="p-4 bg-pink-500/5 dark:bg-pink-500/10 border border-pink-500/10 dark:border-pink-900/30 rounded-2xl">
                  <h4 className="text-xxs font-bold text-pink-700 dark:text-pink-400 uppercase tracking-widest block mb-1">Mnemonic Jembatan Keledai (Arti)</h4>
                  <p className="text-slate-700 dark:text-slate-300 font-medium text-xs leading-relaxed">{selectedKanjiDetail.meaning_mnemonic}</p>
                </div>
              )}

              {/* Reading Mnemonic */}
              {selectedKanjiDetail.reading_mnemonic && (
                <div className="p-4 bg-indigo-500/5 dark:bg-indigo-500/10 border border-indigo-500/10 dark:border-indigo-900/30 rounded-2xl">
                  <h4 className="text-xxs font-bold text-indigo-700 dark:text-indigo-400 uppercase tracking-widest block mb-1">Mnemonic Jembatan Keledai (Cara Baca)</h4>
                  <p className="text-slate-700 dark:text-slate-300 font-medium text-xs leading-relaxed">{selectedKanjiDetail.reading_mnemonic}</p>
                </div>
              )}

              {/* Description */}
              {selectedKanjiDetail.description && (
                <div className="space-y-1">
                  <h4 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Deskripsi Tambahan</h4>
                  <p className="text-slate-600 dark:text-slate-350 text-xs leading-relaxed">{selectedKanjiDetail.description}</p>
                </div>
              )}

              {/* Radical Combination (Kombinasi Radikal) */}
              {selectedKanjiRadicals && selectedKanjiRadicals.length > 0 && (
                <div className="space-y-3 pt-4 border-t border-slate-200/50 dark:border-slate-800/50">
                  <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block flex items-center space-x-1.5">
                    <Layers className="w-3.5 h-3.5 text-radical" />
                    <span>Kombinasi Radikal (Radical Combination)</span>
                  </h3>

                  <div className="grid grid-cols-2 sm:grid-cols-4 gap-2">
                    {selectedKanjiRadicals.map((rad: any) => (
                      <div
                        key={rad.id}
                        onClick={() => {
                          setSelectedItem(rad);
                          setSelectedKanjiDetail(null);
                        }}
                        className="p-2.5 bg-radical/5 border border-radical/15 hover:border-radical/35 dark:bg-radical/10 hover:shadow-sm rounded-xl flex items-center justify-between text-left group/rad cursor-pointer transition-all duration-200"
                        title={`Radikal: ${rad.character}`}
                      >
                        <div>
                          <span className="text-xl font-black text-radical group-hover/rad:scale-105 transition-transform duration-200 block leading-tight">
                            {rad.character}
                          </span>
                          <span className="text-4xs text-slate-500 dark:text-slate-400 uppercase tracking-wider block truncate max-w-[65px] font-semibold mt-0.5" title={rad.primary_meaning}>
                            {rad.primary_meaning}
                          </span>
                        </div>
                      </div>
                    ))}
                  </div>
                </div>
              )}

              {/* Related Vocabularies Section */}
              <div className="space-y-3 pt-2">
                <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Kosakata yang Menggunakan Kanji Ini</h3>
                {loadingKanjiVocabs ? (
                  <div className="flex items-center space-x-2 py-4 text-xs text-slate-400">
                    <Loader2 className="w-4 h-4 animate-spin text-kanji" />
                    <span>Mendapatkan kosakata terkait...</span>
                  </div>
                ) : selectedKanjiVocabs.length > 0 ? (
                  <div className="grid grid-cols-2 gap-2">
                    {selectedKanjiVocabs.map((vocab) => (
                      <div
                        key={vocab.id}
                        onClick={() => {
                          setSelectedVocabDetail(vocab);
                        }}
                        className="p-3 bg-slate-55 dark:bg-slate-950 border border-slate-200/60 dark:border-slate-850 hover:border-vocab/40 dark:hover:border-vocab/30 rounded-2xl cursor-pointer hover:shadow-xs transition-all duration-200 flex flex-col justify-between"
                      >
                        <span className="font-japanese font-bold text-base text-slate-800 dark:text-slate-100">{vocab.character}</span>
                        <div className="flex flex-col mt-1 space-y-0.5 leading-none">
                          <span className="text-[10px] text-vocab font-bold">{vocab.primary_reading}</span>
                          <span className="text-[11px] text-slate-500 dark:text-slate-400 capitalize truncate font-medium">{vocab.primary_meaning}</span>
                        </div>
                      </div>
                    ))}
                  </div>
                ) : (
                  <p className="text-xs text-slate-400 italic py-2">Tidak ada kosakata terkait untuk kanji ini.</p>
                )}
              </div>
            </div>

            {/* Bottom Actions */}
            <div className="p-4 border-t border-slate-200 dark:border-slate-800 bg-slate-55 dark:bg-slate-950 flex items-center justify-end shrink-0">
              <button
                onClick={() => setSelectedKanjiDetail(null)}
                className="px-6 py-2 bg-slate-100 hover:bg-slate-250 dark:bg-slate-800 dark:hover:bg-slate-700 font-bold rounded-xl text-xs transition-colors"
              >
                Tutup Detail Kanji
              </button>
            </div>
          </div>
        </div>
      )}

      {/* TERTIARY VOCABULARY DETAIL MODAL DRAWER OVERLAY */}
      {selectedVocabDetail && (
        <div
          onClick={() => setSelectedVocabDetail(null)}
          className="fixed inset-0 z-[70] overflow-y-auto bg-slate-950/70 backdrop-blur-md flex items-center justify-center p-4 sm:p-6 transition-all duration-300"
        >
          <div
            onClick={(e) => e.stopPropagation()}
            className="bg-white dark:bg-slate-900 w-full max-w-lg rounded-3xl border border-slate-200 dark:border-slate-800 shadow-2xl overflow-hidden flex flex-col animate-fade-in max-h-[90vh]"
          >

            {/* Header Banner */}
            <div className="bg-vocab-gradient p-8 text-white flex flex-col items-center justify-center relative shrink-0">
              <button
                onClick={() => setSelectedVocabDetail(null)}
                className="absolute top-4 right-4 p-1.5 hover:bg-white/20 rounded-lg text-white transition-colors"
              >
                <X className="w-5 h-5" />
              </button>
              <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10 mb-3 block">
                Kosakata Kamus • {ranks.find(r => r.id === selectedVocabDetail.rank_id)?.name || `Level ${selectedVocabDetail.level}`}
              </span>
              <h1 className="text-5xl sm:text-6xl font-black select-all">{selectedVocabDetail.character}</h1>
              <p className="text-lg font-bold tracking-wide mt-2 uppercase opacity-90">{selectedVocabDetail.primary_meaning}</p>
            </div>

            {/* Content Body */}
            <div className="p-6 sm:p-8 space-y-6 text-sm leading-relaxed text-left overflow-y-auto flex-1">

              {/* Unlock Info */}
              <div className="flex flex-col gap-3 p-3.5 bg-slate-50 dark:bg-slate-950 border border-slate-200/50 dark:border-slate-850 rounded-2xl">
                <div className="flex items-center justify-between">
                  <span className="text-xxs font-bold text-slate-455 uppercase tracking-widest block">Status Belajar SRS</span>
                  <span className={`text-xxs font-extrabold px-3 py-1 rounded-full ${getSrsColorClass(selectedVocabDetail.srs_stage || 0, selectedVocabDetail.next_review)}`}>
                    {selectedVocabDetail.srs_stage === 0 ? 'Terkunci (Belum Dipelajari)' : getSrsLabel(selectedVocabDetail.srs_stage || 0, selectedVocabDetail.next_review)}
                  </span>
                </div>
                {selectedVocabDetail.srs_stage === 9 && (
                  <button
                    onClick={async () => {
                      if (!confirm('Apakah Anda ingin menghidupkan kembali materi ini dan memasukkannya kembali ke antrean review harian?')) return;
                      try {
                        const { data: { session } } = await supabase.auth.getSession();
                        const token = session?.access_token;
                        if (!token) throw new Error('Silakan login terlebih dahulu');
                        const res = await fetch('/api/archive/revive', {
                          method: 'POST',
                          headers: {
                            'Content-Type': 'application/json',
                            'Authorization': `Bearer ${token}`
                          },
                          body: JSON.stringify({ itemId: selectedVocabDetail.id })
                        });
                        const data = await res.json();
                        if (data.error) throw new Error(data.error);
                        alert('Item berhasil dihidupkan kembali!');
                        window.location.reload();
                      } catch (err: any) {
                        alert('Gagal menghidupkan kembali item: ' + err.message);
                      }
                    }}
                    className="w-full mt-1 px-4 py-2.5 bg-gradient-to-r from-rose-500 to-pink-600 hover:from-rose-600 hover:to-pink-700 text-white font-bold rounded-xl text-xs transition-colors flex items-center justify-center cursor-pointer shadow-sm hover:shadow"
                  >
                    <span>Reset ke Antrean Review</span>
                  </button>
                )}
              </div>

              {/* Readings & Meanings List */}
              <div className="space-y-4">
                {/* Meanings */}
                <div className="space-y-2">
                  <h4 className="text-xxs font-bold text-slate-455 uppercase tracking-widest block">Daftar Makna (Meanings)</h4>
                  <div className="flex flex-wrap gap-2">
                    {selectedVocabDetail.meanings.map((m: any, idx: number) => (
                      <span
                        key={idx}
                        className={`px-3 py-1.5 rounded-xl text-xs font-bold ${m.primary_meaning
                          ? 'bg-vocab text-white font-extrabold shadow-3xs'
                          : 'bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-355'
                          }`}
                      >
                        {m.meaning}
                      </span>
                    ))}
                  </div>
                </div>

                {/* Readings */}
                <div className="space-y-2">
                  <h4 className="text-xxs font-bold text-slate-455 uppercase tracking-widest block">Daftar Cara Baca (Readings)</h4>
                  <div className="flex flex-wrap gap-2">
                    {selectedVocabDetail.readings.map((r: any, idx: number) => {
                      const inferredReadingType = getVocabularyReadingType(
                        selectedVocabDetail.character,
                        r.reading,
                        selectedVocabDetail.kanjis
                      );
                      const isOnyomi = inferredReadingType === 'onyomi';
                      const isKunyomi = inferredReadingType === 'kunyomi';
                      const typeLabel = isOnyomi ? 'Onyomi' : isKunyomi ? 'Kunyomi' : '';
                      return (
                        <span
                          key={idx}
                          className={`px-3 py-1.5 rounded-xl text-xs font-bold ${r.primary_reading
                            ? 'bg-indigo-600 text-white font-extrabold shadow-3xs'
                            : 'bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-355'
                            }`}
                        >
                          {r.reading} {typeLabel ? `(${typeLabel})` : ''}
                        </span>
                      );
                    })}
                  </div>
                  {/* Explanatory text for primary reading */}
                  {selectedVocabDetail.readings.find((r: any) => r.primary_reading) && (() => {
                    const primaryR = selectedVocabDetail.readings.find((r: any) => r.primary_reading);
                    const inferredType = getVocabularyReadingType(
                      selectedVocabDetail.character,
                      primaryR.reading,
                      selectedVocabDetail.kanjis
                    );
                    return (
                      <p className="text-[10px] text-slate-400 dark:text-slate-500 italic mt-1.5">
                        * Cara baca utama kosakata ini menggunakan cara baca{' '}
                        <strong>
                          {inferredType === 'onyomi' ? 'Onyomi' : 'Kunyomi'}
                        </strong>.
                      </p>
                    );
                  })()}
                </div>
              </div>

              {/* Meaning Mnemonic */}
              {selectedVocabDetail.meaning_mnemonic && (
                <div className="p-4 bg-vocab/5 dark:bg-vocab/10 border border-vocab/10 dark:border-vocab/30 rounded-2xl">
                  <h3 className="text-xxs font-bold text-vocab uppercase tracking-widest block mb-1">Mnemonic Jembatan Keledai (Arti)</h3>
                  <p className="text-slate-750 dark:text-slate-300 font-medium text-xs leading-relaxed">{selectedVocabDetail.meaning_mnemonic}</p>
                </div>
              )}

              {/* Reading Mnemonic */}
              {selectedVocabDetail.reading_mnemonic && (
                <div className="p-4 bg-indigo-500/5 dark:bg-indigo-500/10 border border-indigo-500/10 dark:border-indigo-900/30 rounded-2xl">
                  <h3 className="text-xxs font-bold text-indigo-700 dark:text-indigo-400 uppercase tracking-widest block mb-1">Mnemonic Jembatan Keledai (Cara Baca)</h3>
                  <p className="text-slate-750 dark:text-slate-300 font-medium text-xs leading-relaxed">{selectedVocabDetail.reading_mnemonic}</p>
                </div>
              )}

              {/* Kanji Components (Kanji Pembentuk) */}
              {selectedVocabDetail.kanjis && selectedVocabDetail.kanjis.length > 0 && (
                <div className="space-y-3 pt-4 border-t border-slate-200/50 dark:border-slate-800/50">
                  <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block flex items-center space-x-1.5">
                    <Layers className="w-3.5 h-3.5 text-pink-500" />
                    <span>Kanji Pembentuk (Kanji Components)</span>
                  </h3>

                  <div className="grid grid-cols-2 sm:grid-cols-4 gap-2">
                    {selectedVocabDetail.kanjis.map((kj: any) => (
                      <div
                        key={kj.id}
                        onClick={() => {
                          setSelectedKanjiDetail(kj);
                          setSelectedVocabDetail(null);
                        }}
                        className="p-2.5 bg-kanji/5 border border-kanji/15 hover:border-kanji/35 dark:bg-kanji/10 hover:shadow-sm rounded-xl flex items-center justify-between text-left group/kj cursor-pointer transition-all duration-200"
                        title={`Lihat detail kanji ${kj.character}`}
                      >
                        <div>
                          <span className="text-xl font-black text-kanji group-hover/kj:scale-105 transition-transform duration-200 block leading-tight">
                            {kj.character}
                          </span>
                          <span className="text-4xs text-slate-500 dark:text-slate-400 uppercase tracking-wider block truncate max-w-[65px] font-semibold mt-0.5" title={kj.slug}>
                            {kj.slug}
                          </span>
                        </div>
                      </div>
                    ))}
                  </div>
                </div>
              )}

              {/* Context sentences */}
              {selectedVocabDetail.sentences && selectedVocabDetail.sentences.length > 0 && (
                <div className="space-y-3">
                  <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Contoh Kalimat Kontekstual</h3>
                  <div className="space-y-4">
                    {selectedVocabDetail.sentences.map((s: any, idx: number) => (
                      <div key={idx} className="p-4 bg-slate-50 dark:bg-slate-950 border border-slate-200/50 dark:border-slate-850/50 rounded-2xl space-y-1.5">
                        <p className="text-base font-bold text-indigo-600 dark:text-indigo-400 select-all leading-normal">{s.japanese}</p>
                        <p className="text-xxs text-slate-500 dark:text-slate-400 leading-normal">{s.indonesian}</p>
                      </div>
                    ))}
                  </div>
                </div>
              )}

              {/* Description */}
              {selectedVocabDetail.description && (
                <div className="space-y-1">
                  <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Deskripsi Tambahan</h3>
                  <p className="text-slate-600 dark:text-slate-355 text-xs leading-relaxed">{selectedVocabDetail.description}</p>
                </div>
              )}
            </div>

            {/* Bottom Actions */}
            <div className="p-4 border-t border-slate-200 dark:border-slate-800 bg-slate-55 dark:bg-slate-950 flex items-center justify-end shrink-0">
              <button
                onClick={() => setSelectedVocabDetail(null)}
                className="px-6 py-2 bg-slate-100 hover:bg-slate-250 dark:bg-slate-800 dark:hover:bg-slate-700 font-bold rounded-xl text-xs transition-colors"
              >
                Tutup Detail
              </button>
            </div>
          </div>
        </div>
      )}

    </div>
  );
}
