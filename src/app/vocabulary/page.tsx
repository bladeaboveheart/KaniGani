'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import {
  Search, BookOpen, Layers, X, HelpCircle, Sparkles,
  Lock, CheckCircle2, ChevronRight, Loader2, FileText
} from 'lucide-react';

interface VocabItem {
  id: string;
  character: string;
  slug: string;
  level: number;
  meaning_mnemonic?: string;
  reading_mnemonic?: string;
  description?: string;
  srs_stage?: number;
  unlocked_at?: string | null;
  meanings: any[];
  readings: any[];
  sentences: any[];
  primary_meaning: string;
  primary_reading: string;
  kanjis?: any[];
}

export default function VocabularyPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [vocabs, setVocabs] = useState<VocabItem[]>([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedLevel, setSelectedLevel] = useState<string>('all');
  const [selectedItem, setSelectedItem] = useState<VocabItem | null>(null);

  useEffect(() => {
    async function loadData() {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          router.push('/');
          return;
        }

        // 1. Fetch all vocabulary items
        const { data: itemsData, error: itemsErr } = await supabase
          .from('items')
          .select('*')
          .eq('type', 'vocabulary')
          .order('level', { ascending: true })
          .order('lesson_position', { ascending: true });

        if (itemsErr) throw itemsErr;

        const itemIds = (itemsData || []).map(i => i.id);

        // 2. Fetch all readings, meanings, context sentences, progress & prerequisites
        const [readingsRes, meaningsRes, sentencesRes, progRes, prereqsRes] = await Promise.all([
          supabase.from('item_readings').select('*').in('item_id', itemIds),
          supabase.from('item_meanings').select('*').in('item_id', itemIds),
          supabase.from('item_context_sentences').select('*').in('item_id', itemIds),
          supabase.from('user_progress').select('item_id, srs_stage, unlocked_at').eq('user_id', user.id),
          supabase.from('item_prerequisites').select('item_id, requires_item_id, items!requires_item_id(id, character, slug, level, type)')
        ]);

        if (readingsRes.error) throw readingsRes.error;
        if (meaningsRes.error) throw meaningsRes.error;
        if (sentencesRes.error) throw sentencesRes.error;
        if (progRes.error) throw progRes.error;
        if (prereqsRes.error) throw prereqsRes.error;

        // Group prerequisite kanjis by vocabulary item id
        const kanjisMap = new Map<string, any[]>();
        if (prereqsRes.data) {
          prereqsRes.data.forEach((row: any) => {
            const reqItem = row.items;
            if (reqItem && reqItem.type === 'kanji') {
              const vocabId = row.item_id;
              if (!kanjisMap.has(vocabId)) {
                kanjisMap.set(vocabId, []);
              }
              kanjisMap.get(vocabId)!.push({
                id: reqItem.id,
                character: reqItem.character,
                slug: reqItem.slug || 'kanji',
                level: reqItem.level
              });
            }
          });
        }

        // Map progresses
        const progressMap = new Map(progRes.data?.map(p => [p.item_id, p]) || []);

        const readings = readingsRes.data || [];
        const meanings = meaningsRes.data || [];
        const sentences = sentencesRes.data || [];

        // Combine items with progress and details
        const combined: VocabItem[] = (itemsData || []).map(item => {
          const progress = progressMap.get(item.id);
          const itemMeanings = meanings.filter(m => m.item_id === item.id);
          const itemReadings = readings.filter(r => r.item_id === item.id);
          const itemSentences = sentences.filter(s => s.item_id === item.id);
          const foundKanjis = kanjisMap.get(item.id) || [];

          const primaryMeaning = itemMeanings.find(m => m.primary_meaning)?.meaning || item.slug || 'vocabulary';
          const primaryReading = itemReadings.find(r => r.primary_reading)?.reading || '';

          return {
            id: item.id,
            character: item.character,
            slug: item.slug || 'vocabulary',
            level: item.level,
            meaning_mnemonic: item.meaning_mnemonic || '',
            reading_mnemonic: item.reading_mnemonic || '',
            description: item.description || '',
            srs_stage: progress ? progress.srs_stage : 0,
            unlocked_at: progress ? progress.unlocked_at : null,
            meanings: itemMeanings,
            readings: itemReadings,
            sentences: itemSentences,
            primary_meaning: primaryMeaning,
            primary_reading: primaryReading,
            kanjis: foundKanjis
          };
        });

        setVocabs(combined);
      } catch (err) {
        console.error('Error loading Vocabulary:', err);
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
  const filtered = vocabs.filter(item => {
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
          <Loader2 className="w-12 h-12 text-vocab animate-spin" />
          <p className="font-semibold text-sm">Menyiapkan Pustaka Kosakata...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <Navbar />

      <main className="flex-1 max-w-7xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12 space-y-8 animate-fade-in">

        {/* Banner Title */}
        <section className="bg-gradient-to-r from-purple-600 to-indigo-600 text-white p-6 sm:p-8 rounded-3xl shadow-lg relative overflow-hidden">
          <div className="absolute right-0 bottom-0 translate-x-8 translate-y-8 opacity-10">
            <FileText className="w-56 h-56" />
          </div>
          <div className="relative z-10 space-y-1">
            <div className="flex items-center space-x-1.5 text-purple-200">
              <Sparkles className="w-5 h-5 text-amber-300 animate-pulse" />
              <span className="text-xs font-bold uppercase tracking-widest">KaniGani Pustaka</span>
            </div>
            <h2 className="text-2xl sm:text-3xl font-extrabold tracking-tight">Kamus Kosakata (Vocabulary)</h2>
            <p className="text-xs sm:text-sm text-purple-100 max-w-2xl leading-relaxed">
              Kosakata menggabungkan huruf Kanji dan Kana untuk membentuk kata bahasa Jepang yang siap digunakan dalam percakapan sehari-hari. Pelajari arti kontekstualnya beserta contoh kalimat!
            </p>
          </div>
        </section>

        {/* Filter & Search Bar */}
        <section className="bg-white dark:bg-slate-900 p-4 sm:p-6 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm flex flex-col sm:flex-row gap-4 items-center justify-between">
          <div className="relative w-full sm:max-w-md">
            <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400" />
            <input
              type="text"
              placeholder="Cari kosakata berdasarkan kata, arti, atau cara baca..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full pl-11 pr-4 py-3 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-vocab focus:border-transparent transition-all"
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
              className="py-2.5 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-xs font-bold rounded-2xl focus:outline-none focus:ring-1 focus:ring-vocab"
            >
              <option value="all">Semua Level</option>
              {levelList.map(l => (
                <option key={l} value={l}>Level {l}</option>
              ))}
            </select>
          </div>
        </section>

        {/* Vocab Grid Layout */}
        {filtered.length > 0 ? (
          <section className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-4">
            {filtered.map((item) => (
              <div
                key={item.id}
                onClick={() => setSelectedItem(item)}
                className={`p-5 rounded-2xl border flex flex-col justify-between items-center text-center cursor-pointer shadow-xs transition-all duration-300 hover:-translate-y-1 hover:shadow-md hover:border-vocab/30 relative overflow-hidden group ${item.srs_stage === 0
                    ? 'bg-slate-100/50 border-slate-200/50 dark:bg-slate-900/30 dark:border-slate-850 opacity-60'
                    : 'bg-vocab/5 border-vocab/15 dark:bg-vocab/10 hover:shadow-vocab/10'
                  }`}
              >
                {/* Character */}
                <span className={`text-4xl sm:text-5xl font-black block group-hover:scale-105 transition-transform duration-300 ${item.srs_stage === 0 ? 'text-slate-400 dark:text-slate-600' : 'text-vocab'
                  }`}>
                  {item.character}
                </span>

                {/* Sub info */}
                <div className="mt-3 space-y-0.5 max-w-full">
                  <span className="text-xs font-bold text-slate-700 dark:text-slate-350 truncate block capitalize">
                    {item.primary_meaning}
                  </span>
                  {item.srs_stage !== 0 && item.primary_reading && (
                    <span className="text-xxs font-black text-indigo-500 dark:text-indigo-400 block tracking-wider truncate">
                      {item.primary_reading}
                    </span>
                  )}
                </div>

                {/* Badge SRS/Locked */}
                <span className={`text-4xs font-extrabold px-2.5 py-0.5 rounded-full mt-3.5 flex items-center justify-center space-x-1 ${getSrsColorClass(item.srs_stage || 0)}`}>
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
            <h3 className="font-bold text-sm">Kosakata Tidak Ditemukan</h3>
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
            <div className="bg-vocab-gradient p-8 text-white flex flex-col items-center justify-center relative shrink-0">
              <button
                onClick={() => setSelectedItem(null)}
                className="absolute top-4 right-4 p-1.5 hover:bg-white/20 rounded-lg text-white transition-colors"
              >
                <X className="w-5 h-5" />
              </button>
              <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10 mb-3 block">
                Kosakata Kamus • Level {selectedItem.level}
              </span>
              <h1 className="text-5xl sm:text-6xl font-black select-all">{selectedItem.character}</h1>
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

              {/* Readings */}
              <div>
                <h4 className="text-xxs font-bold text-slate-450 uppercase tracking-widest block mb-1">Cara Baca Jepang (Kana)</h4>
                <p className="text-2xl font-black text-vocab">{selectedItem.primary_reading}</p>
              </div>

              {/* Meaning Mnemonic */}
              {selectedItem.meaning_mnemonic && (
                <div className="p-4 bg-vocab/5 dark:bg-vocab/10 border border-vocab/10 dark:border-vocab/30 rounded-2xl">
                  <h3 className="text-xxs font-bold text-vocab uppercase tracking-widest block mb-1">Mnemonic Jembatan Keledai (Arti)</h3>
                  <p className="text-slate-750 dark:text-slate-300 font-medium text-xs leading-relaxed">{selectedItem.meaning_mnemonic}</p>
                </div>
              )}

              {/* Reading Mnemonic */}
              {selectedItem.reading_mnemonic && (
                <div className="p-4 bg-indigo-500/5 dark:bg-indigo-500/10 border border-indigo-500/10 dark:border-indigo-900/30 rounded-2xl">
                  <h3 className="text-xxs font-bold text-indigo-700 dark:text-indigo-400 uppercase tracking-widest block mb-1">Mnemonic Jembatan Keledai (Cara Baca)</h3>
                  <p className="text-slate-750 dark:text-slate-300 font-medium text-xs leading-relaxed">{selectedItem.reading_mnemonic}</p>
                </div>
              )}

              {/* Kanji Components (Kanji Pembentuk) */}
              {selectedItem.kanjis && selectedItem.kanjis.length > 0 && (
                <div className="space-y-3 pt-4 border-t border-slate-200/50 dark:border-slate-800/50">
                  <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block flex items-center space-x-1.5">
                    <Layers className="w-3.5 h-3.5 text-pink-500" />
                    <span>Kanji Pembentuk (Kanji Components)</span>
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

              {/* Context sentences */}
              {selectedItem.sentences && selectedItem.sentences.length > 0 && (
                <div className="space-y-3">
                  <h3 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Contoh Kalimat Kontekstual</h3>
                  <div className="space-y-4">
                    {selectedItem.sentences.map((s, idx) => (
                      <div key={idx} className="p-4 bg-slate-50 dark:bg-slate-950 border border-slate-200/50 dark:border-slate-850/50 rounded-2xl space-y-1.5">
                        <p className="text-base font-bold text-indigo-600 dark:text-indigo-400 select-all leading-normal">{s.japanese}</p>
                        <p className="text-xxs text-slate-500 dark:text-slate-400 leading-normal">{s.indonesian}</p>
                      </div>
                    ))}
                  </div>
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
