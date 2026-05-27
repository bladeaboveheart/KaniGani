'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import {
  Search, BookOpen, Layers, X, HelpCircle, Sparkles,
  Lock, CheckCircle2, ChevronRight, Loader2, ArrowRight
} from 'lucide-react';

interface RadicalItem {
  id: string;
  character: string;
  slug: string;
  level: number;
  meaning_mnemonic?: string;
  description?: string;
  srs_stage?: number;
  unlocked_at?: string | null;
  kanjis?: any[];
}

export default function RadicalPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [radicals, setRadicals] = useState<RadicalItem[]>([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedLevel, setSelectedLevel] = useState<string>('all');
  const [selectedItem, setSelectedItem] = useState<RadicalItem | null>(null);

  // Read search param on load for deep linking
  useEffect(() => {
    if (typeof window !== 'undefined') {
      const params = new URLSearchParams(window.location.search);
      const query = params.get('search');
      if (query) {
        setSearchQuery(decodeURIComponent(query));
      }
    }
  }, []);

  useEffect(() => {
    async function loadData() {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          router.push('/');
          return;
        }

        // 1. Fetch all radical items
        const { data: itemsData, error: itemsErr } = await supabase
          .from('items')
          .select('*')
          .eq('type', 'radical')
          .order('level', { ascending: true })
          .order('lesson_position', { ascending: true });

        if (itemsErr) throw itemsErr;

        // 2. Fetch user progress
        const { data: progData, error: progErr } = await supabase
          .from('user_progress')
          .select('item_id, srs_stage, unlocked_at')
          .eq('user_id', user.id);

        if (progErr) throw progErr;

        // 3. Fetch item prerequisites to map 'found in kanji' relation
        const { data: prereqs, error: prereqErr } = await supabase
          .from('item_prerequisites')
          .select('item_id, requires_item_id, items!item_id(id, character, slug, level, type)');

        if (prereqErr) throw prereqErr;

        // Group dependents by required radical item id
        const dependentsMap = new Map<string, any[]>();
        if (prereqs) {
          prereqs.forEach((row: any) => {
            const depItem = row.items;
            if (depItem && depItem.type === 'kanji') {
              const reqId = row.requires_item_id;
              if (!dependentsMap.has(reqId)) {
                dependentsMap.set(reqId, []);
              }
              dependentsMap.get(reqId)!.push({
                id: depItem.id,
                character: depItem.character,
                slug: depItem.slug || 'kanji',
                level: depItem.level
              });
            }
          });
        }

        // Map progresses for easy search
        const progressMap = new Map(progData?.map(p => [p.item_id, p]) || []);

        // Combine items with progress and prerequisites
        const combined: RadicalItem[] = (itemsData || []).map(item => {
          const progress = progressMap.get(item.id);
          const foundKanjis = dependentsMap.get(item.id) || [];
          return {
            id: item.id,
            character: item.character,
            slug: item.slug || 'radical',
            level: item.level,
            meaning_mnemonic: item.meaning_mnemonic || '',
            description: item.description || '',
            srs_stage: progress ? progress.srs_stage : 0,
            unlocked_at: progress ? progress.unlocked_at : null,
            kanjis: foundKanjis
          };
        });

        setRadicals(combined);
      } catch (err) {
        console.error('Error loading Radicals:', err);
      } finally {
        setLoading(false);
      }
    }

    loadData();
  }, [router]);

  const getSrsLabel = (stage: number) => {
    if (stage === 0) return 'Terkunci';
    if (stage >= 1 && stage <= 4) return 'Apprentice';
    if (stage === 5 || stage === 6) return 'Guru';
    if (stage === 7) return 'Master';
    if (stage === 8) return 'Enlightened';
    return 'Burned 🔥';
  };

  const getSrsColorClass = (stage: number) => {
    if (stage === 0) return 'bg-slate-200/50 text-slate-400 dark:bg-slate-800/40 dark:text-slate-500 border border-slate-350/10';
    if (stage >= 1 && stage <= 4) return 'bg-rose-500 text-white';
    if (stage === 5 || stage === 6) return 'bg-purple-600 text-white';
    if (stage === 7) return 'bg-blue-600 text-white';
    if (stage === 8) return 'bg-teal-600 text-white';
    return 'bg-slate-700 text-amber-400 border border-amber-500/20';
  };

  // Filters
  const filtered = radicals.filter(item => {
    if (selectedLevel !== 'all' && String(item.level) !== selectedLevel) return false;

    if (searchQuery.trim() !== '') {
      const q = searchQuery.toLowerCase().trim();
      return item.character.toLowerCase().includes(q) || item.slug.toLowerCase().includes(q);
    }
    return true;
  });

  const levelList = Array.from({ length: 10 }, (_, i) => String(i + 1));

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
              Radikal adalah komponen pembentuk huruf Kanji. Mempelajari dan mengenali radikal adalah langkah dasar krusial sebelum Anda mulai memahami huruf Kanji yang rumit.
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

          <div className="flex items-center space-x-3 w-full sm:w-auto shrink-0 justify-end">
            <div className="flex items-center space-x-1 px-3 py-2 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 rounded-2xl">
              <Layers className="w-4 h-4 text-slate-450" />
              <span className="text-xxs font-bold text-slate-450 uppercase tracking-widest">Level</span>
            </div>
            <select
              value={selectedLevel}
              onChange={(e) => setSelectedLevel(e.target.value)}
              className="py-2.5 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-xs font-bold rounded-2xl focus:outline-none focus:ring-1 focus:ring-radical"
            >
              <option value="all">Semua Level</option>
              {levelList.map(l => (
                <option key={l} value={l}>Level {l}</option>
              ))}
            </select>
          </div>
        </section>

        {/* Radicals Grid Layout */}
        {filtered.length > 0 ? (
          <section className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-4">
            {filtered.map((item) => (
              <div
                key={item.id}
                onClick={() => setSelectedItem(item)}
                className={`p-5 rounded-2xl border flex flex-col justify-between items-center text-center cursor-pointer shadow-xs transition-all duration-300 hover:-translate-y-1 hover:shadow-md hover:border-radical/30 relative overflow-hidden group ${item.srs_stage === 0
                    ? 'bg-slate-100/50 border-slate-200/50 dark:bg-slate-900/30 dark:border-slate-850 opacity-60'
                    : 'bg-radical/5 border-radical/15 dark:bg-radical/10 hover:shadow-radical/10'
                  }`}
              >
                {/* Character */}
                <span className={`text-5xl font-black block group-hover:scale-105 transition-transform duration-300 ${item.srs_stage === 0 ? 'text-slate-400 dark:text-slate-650' : 'text-radical'
                  }`}>
                  {item.character}
                </span>

                {/* Meanings */}
                <span className="text-xs font-bold text-slate-700 dark:text-slate-300 mt-3 truncate max-w-full block capitalize">
                  {item.slug}
                </span>

                {/* Badge SRS/Locked */}
                <span className={`text-4xs font-extrabold px-2.5 py-0.5 rounded-full mt-3 flex items-center justify-center space-x-1 ${getSrsColorClass(item.srs_stage || 0)}`}>
                  {item.srs_stage === 0 && <Lock className="w-2.5 h-2.5 mr-0.5 shrink-0" />}
                  <span>{getSrsLabel(item.srs_stage || 0)}</span>
                </span>

                {/* Level indicator */}
                <div className="absolute top-2 left-2 px-1.5 py-0.5 text-4xs font-black bg-slate-200/50 dark:bg-slate-800/60 rounded text-slate-500">
                  Lvl {item.level}
                </div>
              </div>
            ))}
          </section>
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
            className="bg-white dark:bg-slate-900 w-full max-w-lg rounded-3xl border border-slate-200 dark:border-slate-800 shadow-2xl overflow-hidden flex flex-col animate-fade-in"
          >
            {/* Header Banner */}
            <div className="bg-radical-gradient p-8 text-white flex flex-col items-center justify-center relative">
              <button
                onClick={() => setSelectedItem(null)}
                className="absolute top-4 right-4 p-1.5 hover:bg-white/20 rounded-lg text-white transition-colors"
              >
                <X className="w-5 h-5" />
              </button>
              <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10 mb-3 block">
                Radikal Kamus • Level {selectedItem.level}
              </span>
              <h1 className="text-7xl font-black select-all">{selectedItem.character}</h1>
              <p className="text-lg font-bold tracking-wide mt-2 uppercase opacity-90">{selectedItem.slug}</p>
            </div>

            {/* Content Body */}
            <div className="p-6 sm:p-8 space-y-6 text-sm leading-relaxed text-left">
              {/* Unlock Info */}
              <div className="flex items-center justify-between p-3.5 bg-slate-50 dark:bg-slate-950 border border-slate-200/50 dark:border-slate-850 rounded-2xl">
                <span className="text-xxs font-bold text-slate-450 uppercase tracking-widest block">Status Belajar SRS</span>
                <span className={`text-xxs font-extrabold px-3 py-1 rounded-full ${getSrsColorClass(selectedItem.srs_stage || 0)}`}>
                  {selectedItem.srs_stage === 0 ? 'Terkunci (Belum Dipelajari)' : getSrsLabel(selectedItem.srs_stage || 0)}
                </span>
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

              {/* Found in Kanji (WaniKani Style) */}
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
                          setSelectedItem(null);
                          router.push(`/kanji?character=${encodeURIComponent(kj.character)}`);
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
                        <span className="px-1.5 py-0.5 text-4xs font-black bg-slate-900/5 dark:bg-white/5 rounded text-slate-500">
                          Lvl {kj.level}
                        </span>
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

    </div>
  );
}
