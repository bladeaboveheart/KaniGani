'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import {
  Search, BookOpen, Layers, X, HelpCircle, Sparkles,
  Lock, CheckCircle2, ChevronRight, Loader2, Languages
} from 'lucide-react';

interface KanjiItem {
  id: string;
  character: string;
  slug: string;
  level: number;
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
}

export default function KanjiPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [kanjis, setKanjis] = useState<KanjiItem[]>([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedLevel, setSelectedLevel] = useState<string>('all');
  const [selectedItem, setSelectedItem] = useState<KanjiItem | null>(null);

  // Read search query parameters from URL for deep linking
  useEffect(() => {
    if (typeof window !== 'undefined') {
      const params = new URLSearchParams(window.location.search);
      const query = params.get('search');
      if (query) {
        setSearchQuery(decodeURIComponent(query));
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
          setSelectedItem(found);
        }
      }
    }
  }, [kanjis]);


  useEffect(() => {
    async function loadData() {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          router.push('/');
          return;
        }

        // 1. Fetch all kanji items
        const { data: itemsData, error: itemsErr } = await supabase
          .from('items')
          .select('*')
          .eq('type', 'kanji')
          .order('level', { ascending: true })
          .order('lesson_position', { ascending: true });

        if (itemsErr) throw itemsErr;

        const itemIds = (itemsData || []).map(i => i.id);

        // 2. Fetch all readings & meanings for these Kanjis
        const [readingsRes, meaningsRes, progRes] = await Promise.all([
          supabase.from('item_readings').select('*').in('item_id', itemIds),
          supabase.from('item_meanings').select('*').in('item_id', itemIds),
          supabase.from('user_progress').select('item_id, srs_stage, unlocked_at, next_review').eq('user_id', user.id)
        ]);

        if (readingsRes.error) throw readingsRes.error;
        if (meaningsRes.error) throw meaningsRes.error;
        if (progRes.error) throw progRes.error;

        // Map progresses for easy search
        const progressMap = new Map(progRes.data?.map(p => [p.item_id, p]) || []);

        const readings = readingsRes.data || [];
        const meanings = meaningsRes.data || [];

        // Combine items with progress and details
        const combined: KanjiItem[] = (itemsData || []).map(item => {
          const progress = progressMap.get(item.id);
          const itemMeanings = meanings.filter(m => m.item_id === item.id);
          const itemReadings = readings.filter(r => r.item_id === item.id);

          const primaryMeaning = itemMeanings.find(m => m.primary_meaning)?.meaning || item.slug || 'kanji';
          const primaryReading = itemReadings.find(r => r.primary_reading)?.reading || '';

          return {
            id: item.id,
            character: item.character,
            slug: item.slug || 'kanji',
            level: item.level,
            meaning_mnemonic: item.meaning_mnemonic || '',
            reading_mnemonic: item.reading_mnemonic || '',
            description: item.description || '',
            srs_stage: progress ? progress.srs_stage : 0,
            unlocked_at: progress ? progress.unlocked_at : null,
            next_review: progress ? progress.next_review : null,
            meanings: itemMeanings,
            readings: itemReadings,
            primary_meaning: primaryMeaning,
            primary_reading: primaryReading
          };
        });

        setKanjis(combined);
      } catch (err) {
        console.error('Error loading Kanji:', err);
      } finally {
        setLoading(false);
      }
    }

    loadData();
  }, [router]);

  const getSrsLabel = (stage: number) => {
    if (stage === 0) return 'Terkunci';
    if (stage >= 1 && stage <= 4) return 'Kepiting Cilik';
    if (stage === 5 || stage === 6) return 'Kepiting Guru';
    if (stage === 7) return 'Kepiting Suhu';
    if (stage === 8) return 'Kepiting Sakti';
    return 'Kepiting Rebus 🦀🔥';
  };

  const getSrsColorClass = (stage: number) => {
    if (stage === 0) return 'bg-slate-200/50 text-slate-400 dark:bg-slate-800/40 dark:text-slate-500 border border-slate-350/10';
    if (stage === 1) return 'bg-blue-100 text-blue-400 dark:bg-blue-950 dark:text-blue-300';
    if (stage === 2) return 'bg-blue-200 text-blue-500 dark:bg-blue-900 dark:text-blue-300';
    if (stage === 3) return 'bg-blue-300 text-blue-700 dark:bg-blue-800 dark:text-blue-200';
    if (stage === 4) return 'bg-blue-400 text-white dark:bg-blue-700 dark:text-white';
    if (stage === 5) return 'bg-blue-500 text-white dark:bg-blue-600 dark:text-white';
    if (stage === 6) return 'bg-blue-600 text-white dark:bg-blue-500 dark:text-white';
    if (stage === 7) return 'bg-blue-700 text-white dark:bg-blue-400 dark:text-blue-950';
    if (stage === 8) return 'bg-blue-800 text-white dark:bg-blue-300 dark:text-blue-950';
    return 'bg-blue-900 text-white dark:bg-blue-200 dark:text-blue-950';
  };

  // Filters
  const filtered = kanjis.filter(item => {
    if (selectedLevel !== 'all' && String(item.level) !== selectedLevel) return false;

    if (searchQuery.trim() !== '') {
      const q = searchQuery.toLowerCase().trim();
      return (
        item.character.toLowerCase().includes(q) ||
        item.primary_meaning.toLowerCase().includes(q) ||
        item.primary_reading.toLowerCase().includes(q)
      );
    }
    return true;
  });

  const levelList = Array.from({ length: 10 }, (_, i) => String(i + 1));

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-slate-50 dark:bg-slate-950 text-slate-900 dark:text-slate-100">
        <div className="flex flex-col items-center space-y-4">
          <Loader2 className="w-12 h-12 text-kanji animate-spin" />
          <p className="font-semibold text-sm">Menyiapkan Pustaka Kanji...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <Navbar />

      <main className="flex-1 max-w-7xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12 space-y-8 animate-fade-in">

        {/* Banner Title */}
        <section className="bg-gradient-to-r from-pink-600 to-rose-600 text-white p-6 sm:p-8 rounded-3xl shadow-lg relative overflow-hidden">
          <div className="absolute right-0 bottom-0 translate-x-8 translate-y-8 opacity-10">
            <Languages className="w-56 h-56" />
          </div>
          <div className="relative z-10 space-y-1">
            <div className="flex items-center space-x-1.5 text-pink-200">
              <Sparkles className="w-5 h-5 text-amber-300 animate-pulse" />
              <span className="text-xs font-bold uppercase tracking-widest">KaniGani Pustaka</span>
            </div>
            <h2 className="text-2xl sm:text-3xl font-extrabold tracking-tight">Kamus Huruf Kanji</h2>
            <p className="text-xs sm:text-sm text-pink-100 max-w-2xl leading-relaxed">
              Kanji adalah karakter logografis Tionghoa yang diadaptasi dalam bahasa Jepang. Setiap huruf melambangkan sebuah konsep atau makna konkret serta memiliki variasi cara baca.
            </p>
          </div>
        </section>

        {/* Filter & Search Bar */}
        <section className="bg-white dark:bg-slate-900 p-4 sm:p-6 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm flex flex-col sm:flex-row gap-4 items-center justify-between">
          <div className="relative w-full sm:max-w-md">
            <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400" />
            <input
              type="text"
              placeholder="Cari kanji berdasarkan huruf, arti, atau cara baca..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full pl-11 pr-4 py-3 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-kanji focus:border-transparent transition-all"
            />
          </div>

          <div className="flex items-center space-x-3 w-full sm:w-auto shrink-0 justify-end">
            <div className="flex items-center space-x-1 px-3 py-2 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 rounded-2xl">
              <Layers className="w-4 h-4 text-slate-450" />
              <span className="text-xxs font-bold text-slate-450 uppercase tracking-widest">Level</span>
            </div>
            <select
              value={selectedLevel}
              onChange={(e) => setSelectedLevel(e.target.value)}
              className="py-2.5 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-xs font-bold rounded-2xl focus:outline-none focus:ring-1 focus:ring-kanji"
            >
              <option value="all">Semua Level</option>
              {levelList.map(l => (
                <option key={l} value={l}>Level {l}</option>
              ))}
            </select>
          </div>
        </section>

        {/* Legend Panel */}
        <section className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 bg-white dark:bg-slate-900 p-4 sm:px-6 sm:py-3.5 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm">
          <span className="text-xxs font-extrabold uppercase tracking-widest text-slate-400 dark:text-slate-500">
            Legenda Status Belajar
          </span>
          <div className="flex flex-wrap items-center gap-x-5 gap-y-2 text-xxs font-bold text-slate-555 dark:text-slate-400">
            {/* Locked */}
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-dashed border-kanji/30 bg-hatched-kanji flex items-center justify-center font-japanese font-black text-xxs text-kanji/60">
                本
              </div>
              <span>Locked</span>
            </div>
            {/* In Lessons */}
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-solid border-kanji/20 bg-kanji/5 dark:bg-kanji/10 flex items-center justify-center font-japanese font-black text-xxs text-kanji">
                本
              </div>
              <span>In Lessons</span>
            </div>
            {/* In Reviews */}
            <div className="flex items-center space-x-2">
              <div className="w-6 h-6 rounded-md border border-solid border-kanji/80 bg-kanji flex items-center justify-center font-japanese font-black text-xxs text-white">
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

        {/* Kanji Grouped Layout */}
        {filtered.length > 0 ? (
          <div className="space-y-8">
            {Array.from(new Set(filtered.map(item => item.level))).sort((a, b) => a - b).map((lvl) => {
              const levelItems = filtered.filter(item => item.level === lvl);
              const levelTotalItems = kanjis.filter(item => item.level === lvl);
              const unlockedCount = levelTotalItems.filter(item => item.srs_stage !== undefined && item.srs_stage > 0).length;
              const totalCount = levelTotalItems.length;

              return (
                <div key={lvl} className="space-y-4">
                  {/* Level Header Panel */}
                  <div className="bg-white dark:bg-slate-900 px-6 py-3.5 rounded-2xl border border-slate-200 dark:border-slate-850 shadow-2xs flex items-baseline space-x-2 shrink-0">
                    <span className="text-base font-extrabold text-slate-850 dark:text-slate-100">Level {lvl}</span>
                    <span className="text-xxs font-bold text-slate-400 dark:text-slate-550">({unlockedCount}/{totalCount} unlocked)</span>
                  </div>

                  {/* Grid of level items */}
                  <div className="flex flex-wrap gap-3 justify-start">
                    {levelItems.map((item) => {
                      const isLocked = item.srs_stage === 0;
                      const isInLessons = item.srs_stage === 1 && !item.next_review;
                      const isBurned = item.srs_stage === 9;
                      const isInReviews = item.srs_stage !== undefined && item.srs_stage >= 1 && item.srs_stage <= 8 && item.next_review !== null;

                      let cardStyles = "";
                      let charBorderStyles = "";
                      let primaryReadingStyles = "";
                      let primaryMeaningStyles = "";

                      if (isLocked) {
                        cardStyles = "bg-hatched-kanji border-dashed border-kanji/30 dark:border-kanji/20 hover:border-kanji/45";
                        charBorderStyles = "border-solid border-kanji/30 text-kanji/55";
                        primaryReadingStyles = "text-slate-455 dark:text-slate-500 font-bold block text-[10px]";
                        primaryMeaningStyles = "text-slate-500 dark:text-slate-400 font-bold block text-xs capitalize";
                      } else if (isInLessons) {
                        cardStyles = "bg-kanji/5 border-solid border-kanji/20 dark:bg-kanji/10 hover:border-kanji/40 hover:shadow-kanji/5";
                        charBorderStyles = "border-solid border-kanji text-kanji";
                        primaryReadingStyles = "text-kanji/70 dark:text-kanji/80 font-bold block text-[10px]";
                        primaryMeaningStyles = "text-slate-750 dark:text-slate-200 font-black block text-xs capitalize";
                      } else if (isInReviews) {
                        cardStyles = "bg-kanji border-solid border-kanji/80 text-white shadow-3xs hover:shadow-2xs hover:bg-kanji-hover";
                        charBorderStyles = "border-solid border-white/60 text-white";
                        primaryReadingStyles = "text-white/80 font-bold block text-[10px]";
                        primaryMeaningStyles = "text-white font-black block text-xs capitalize";
                      } else { // Burned
                        cardStyles = "bg-burned-card border-solid text-white shadow-3xs hover:shadow-2xs";
                        charBorderStyles = "border-solid border-white/60 text-white";
                        primaryReadingStyles = "text-white/80 font-bold block text-[10px]";
                        primaryMeaningStyles = "text-white font-black block text-xs capitalize";
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

                          {/* Readings & Meanings stack */}
                          <div className="flex flex-col items-center leading-none mt-1 space-y-0.5">
                            <span className={primaryReadingStyles}>
                              {isLocked ? "Locked" : item.primary_reading}
                            </span>
                            <span className={primaryMeaningStyles}>
                              {item.primary_meaning}
                            </span>
                          </div>

                          {/* Mini Lock Icon for Locked */}
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
          </div>
        ) : (
          <section className="bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl p-12 text-center text-slate-400 dark:text-slate-500 shadow-sm space-y-3">
            <HelpCircle className="w-12 h-12 mx-auto opacity-30" />
            <h3 className="font-bold text-sm">Huruf Kanji Tidak Ditemukan</h3>
            <p className="text-xs text-slate-455 max-w-sm mx-auto">
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
            <div className="bg-kanji-gradient p-8 text-white flex flex-col items-center justify-center relative shrink-0">
              <button
                onClick={() => setSelectedItem(null)}
                className="absolute top-4 right-4 p-1.5 hover:bg-white/20 rounded-lg text-white transition-colors"
              >
                <X className="w-5 h-5" />
              </button>
              <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10 mb-3 block">
                Kanji Kamus • Level {selectedItem.level}
              </span>
              <h1 className="text-7xl font-black select-all">{selectedItem.character}</h1>
              <p className="text-lg font-bold tracking-wide mt-2 uppercase opacity-90">{selectedItem.primary_meaning}</p>
            </div>

            {/* Content Body */}
            <div className="p-6 sm:p-8 space-y-6 text-sm leading-relaxed text-left overflow-y-auto flex-1">

              {/* Unlock Info */}
              <div className="flex items-center justify-between p-3.5 bg-slate-50 dark:bg-slate-950 border border-slate-200/50 dark:border-slate-850 rounded-2xl">
                <span className="text-xxs font-bold text-slate-450 uppercase tracking-widest block">Status Belajar SRS</span>
                <span className={`text-xxs font-extrabold px-3 py-1 rounded-full ${getSrsColorClass(selectedItem.srs_stage || 0)}`}>
                  {selectedItem.srs_stage === 0 ? 'Terkunci (Belum Dipelajari)' : getSrsLabel(selectedItem.srs_stage || 0)}
                </span>
              </div>

              {/* Readings variations */}
              <div className="space-y-3 bg-slate-50 dark:bg-slate-950 p-4 rounded-2xl border border-slate-200/40 dark:border-slate-850/40">
                <h4 className="text-xxs font-bold text-slate-450 uppercase tracking-widest block mb-1">Daftar Variasi Cara Baca</h4>

                <div className="grid grid-cols-3 gap-2 text-center">
                  {[
                    { label: 'Onyomi', list: selectedItem.readings.filter(r => r.reading_type === 'onyomi') },
                    { label: 'Kunyomi', list: selectedItem.readings.filter(r => r.reading_type === 'kunyomi') },
                    { label: 'Nanori', list: selectedItem.readings.filter(r => r.reading_type === 'nanori') }
                  ].map((group, idx) => (
                    <div key={idx} className="p-2.5 bg-white dark:bg-slate-900 rounded-xl border border-slate-200/60 dark:border-slate-800">
                      <span className="text-3xs font-extrabold text-slate-400 uppercase tracking-wider block">{group.label}</span>
                      <div className="flex flex-wrap justify-center gap-1 mt-1.5">
                        {group.list.length > 0 ? (
                          group.list.map((r, i) => (
                            <span
                              key={i}
                              className={`px-1.5 py-0.5 text-xxs font-bold rounded ${r.primary_reading
                                ? 'bg-indigo-600 text-white font-black'
                                : 'bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-350'
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
              {selectedItem.meaning_mnemonic && (
                <div className="p-4 bg-pink-500/5 dark:bg-pink-500/10 border border-pink-500/10 dark:border-pink-900/30 rounded-2xl">
                  <h3 className="text-xxs font-bold text-pink-700 dark:text-pink-400 uppercase tracking-widest block mb-1">Mnemonic Jembatan Keledai (Arti)</h3>
                  <p className="text-slate-700 dark:text-slate-300 font-medium text-xs leading-relaxed">{selectedItem.meaning_mnemonic}</p>
                </div>
              )}

              {/* Reading Mnemonic */}
              {selectedItem.reading_mnemonic && (
                <div className="p-4 bg-indigo-500/5 dark:bg-indigo-500/10 border border-indigo-500/10 dark:border-indigo-900/30 rounded-2xl">
                  <h3 className="text-xxs font-bold text-indigo-700 dark:text-indigo-400 uppercase tracking-widest block mb-1">Mnemonic Jembatan Keledai (Cara Baca)</h3>
                  <p className="text-slate-700 dark:text-slate-300 font-medium text-xs leading-relaxed">{selectedItem.reading_mnemonic}</p>
                </div>
              )}

              {/* Description */}
              {selectedItem.description && (
                <div className="space-y-1">
                  <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Deskripsi Tambahan</h3>
                  <p className="text-slate-600 dark:text-slate-350 text-xs leading-relaxed">{selectedItem.description}</p>
                </div>
              )}
            </div>

            {/* Bottom Actions */}
            <div className="p-4 border-t border-slate-200 dark:border-slate-800 bg-slate-55 dark:bg-slate-950 flex items-center justify-end shrink-0">
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

    </div>
  );
}
