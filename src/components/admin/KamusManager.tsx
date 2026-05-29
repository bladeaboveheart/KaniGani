'use client';

import { Search, Filter, Database, Edit2, Trash2 } from 'lucide-react';

interface KamusManagerProps {
  items: any[];
  stats: {
    total: number;
    radical: number;
    kanji: number;
    vocabulary: number;
  };
  searchQuery: string;
  setSearchQuery: (q: string) => void;
  filterType: 'all' | 'radical' | 'kanji' | 'vocabulary';
  setFilterType: (t: 'all' | 'radical' | 'kanji' | 'vocabulary') => void;
  filterLevel: string;
  setFilterLevel: (l: string) => void;
  loadDatabase: (lvl?: string) => void;
  openEditModal: (item: any) => void;
  handleDeleteItem: (id: string) => void;
  deleteConfirmId: string | null;
  setDeleteConfirmId: (id: string | null) => void;
}

export default function KamusManager({
  items,
  stats,
  searchQuery,
  setSearchQuery,
  filterType,
  setFilterType,
  filterLevel,
  setFilterLevel,
  loadDatabase,
  openEditModal,
  handleDeleteItem,
  deleteConfirmId,
  setDeleteConfirmId
}: KamusManagerProps) {
  // Filtering & Search
  const filteredItems = items.filter(item => {
    if (filterType !== 'all' && item.type !== filterType) return false;
    if (filterLevel !== 'all' && String(item.level) !== filterLevel) return false;

    if (searchQuery.trim() !== '') {
      const query = searchQuery.toLowerCase().trim();
      const matchChar = item.character.toLowerCase().includes(query);
      const matchSlug = (item.slug || '').toLowerCase().includes(query);
      const matchMeanings = item.item_meanings?.some((m: any) => m.meaning.toLowerCase().includes(query));

      return matchChar || matchSlug || matchMeanings;
    }

    return true;
  });

  const levelList = Array.from({ length: 10 }, (_, i) => String(i + 1));

  return (
    <div className="space-y-6">
      {/* STATISTICS OVERVIEW */}
      <section className="grid grid-cols-2 lg:grid-cols-4 gap-4 sm:gap-6 select-none">
        {[
          { label: 'Total Item Kamus', count: stats.total, color: 'text-indigo-500 bg-indigo-50 dark:bg-indigo-950/20 border-indigo-100 dark:border-indigo-900/50' },
          { label: 'Radikal (Cyan)', count: stats.radical, color: 'text-radical bg-radical/5 border-radical/10 dark:bg-radical/10' },
          { label: 'Karakter Kanji (Pink)', count: stats.kanji, color: 'text-kanji bg-kanji/5 border-kanji/10 dark:bg-kanji/10' },
          { label: 'Kosakata (Purple)', count: stats.vocabulary, color: 'text-vocab bg-vocab/5 border-vocab/10 dark:bg-vocab/10' },
        ].map((stat, idx) => (
          <div key={idx} className={`p-5 rounded-2xl border text-center space-y-1 ${stat.color} shadow-xxs transition-transform hover:scale-102 duration-200`}>
            <span className="text-xxs font-bold uppercase tracking-widest text-slate-400 dark:text-slate-500 block">{stat.label}</span>
            <span className="text-3xl font-black block">{stat.count}</span>
          </div>
        ))}
      </section>

      {/* SEARCH AND FILTERS */}
      <section className="bg-white dark:bg-slate-900 p-4 sm:p-6 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm flex flex-col md:flex-row gap-4 items-center justify-between">
        {/* Search Bar */}
        <div className="relative w-full md:max-w-md">
          <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400" />
          <input
            type="text"
            placeholder="Cari karakter, slug, atau arti..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className="w-full pl-11 pr-4 py-3 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition-all"
          />
        </div>

        {/* Filters select */}
        <div className="flex flex-wrap items-center gap-3 w-full md:w-auto select-none">
          <div className="flex items-center space-x-1.5 px-3 py-2 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 rounded-2xl">
            <Filter className="w-4 h-4 text-slate-400" />
            <span className="text-xxs font-bold text-slate-400 uppercase tracking-wider">Filter</span>
          </div>

          {/* Type Filter */}
          <select
            value={filterType}
            onChange={(e: any) => setFilterType(e.target.value)}
            className="py-2.5 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-xs font-bold rounded-2xl focus:outline-none focus:ring-1 focus:ring-indigo-500"
          >
            <option value="all">Semua Tipe</option>
            <option value="radical">Radikal</option>
            <option value="kanji">Kanji</option>
            <option value="vocabulary">Kosakata</option>
          </select>

          {/* Level Filter */}
          <select
            value={filterLevel}
            onChange={(e) => {
              const newLvl = e.target.value;
              setFilterLevel(newLvl);
              loadDatabase(newLvl);
            }}
            className="py-2.5 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-xs font-bold rounded-2xl focus:outline-none focus:ring-1 focus:ring-indigo-500"
          >
            <option value="all">Semua Level</option>
            {levelList.map(lvl => (
              <option key={lvl} value={lvl}>Level {lvl}</option>
            ))}
          </select>
        </div>
      </section>

      {/* DYNAMIC DATABASE ITEMS GRID */}
      {filteredItems.length > 0 ? (
        <div className="space-y-8 animate-fade-in">
          {Array.from(new Set(filteredItems.map(item => item.level))).sort((a, b) => a - b).map((lvl) => {
            const levelItems = filteredItems.filter(item => item.level === lvl);

            return (
              <div key={lvl} className="space-y-4">
                {/* Level Header Panel */}
                <div className="bg-white dark:bg-slate-900 px-6 py-3.5 rounded-2xl border border-slate-200 dark:border-slate-800 shadow-2xs flex items-baseline space-x-2 shrink-0 select-none">
                  <span className="text-base font-extrabold text-slate-800 dark:text-slate-100">Level {lvl}</span>
                  <span className="text-xxs font-bold text-slate-400 dark:text-slate-500">({levelItems.length} item)</span>
                </div>

                {/* Grid of level items */}
                <div className="flex flex-wrap gap-3 justify-start">
                  {levelItems.map((item) => {
                    const meanings = item.item_meanings || [];
                    const readings = item.item_readings || [];
                    const primaryMeaning = meanings.find((m: any) => m.primary_meaning)?.meaning || item.slug || 'item';
                    const primaryReading = readings.find((r: any) => r.primary_reading)?.reading || null;

                    let cardStyles = "";
                    let charBorderStyles = "";
                    let primaryReadingStyles = "";
                    let primaryMeaningStyles = "";

                    if (item.type === 'radical') {
                      cardStyles = "bg-radical/5 border-solid border-radical/20 dark:bg-radical/10 hover:border-radical/40 hover:shadow-radical/5";
                      charBorderStyles = "border-solid border-radical text-radical";
                      primaryMeaningStyles = "text-slate-700 dark:text-slate-200 font-black block text-xs capitalize";
                    } else if (item.type === 'kanji') {
                      cardStyles = "bg-kanji/5 border-solid border-kanji/20 dark:bg-kanji/10 hover:border-kanji/40 hover:shadow-kanji/5";
                      charBorderStyles = "border-solid border-kanji text-kanji";
                      primaryReadingStyles = "text-[#f03e64]/70 dark:text-[#f03e64]/80 font-bold block text-[10px]";
                      primaryMeaningStyles = "text-slate-700 dark:text-slate-200 font-black block text-xs capitalize";
                    } else { // vocabulary
                      cardStyles = "bg-vocab/5 border-solid border-vocab/20 dark:bg-vocab/10 hover:border-vocab/40 hover:shadow-vocab/5";
                      charBorderStyles = "border-solid border-vocab text-vocab";
                      primaryReadingStyles = "text-[#a000f0]/70 dark:text-[#a000f0]/80 font-bold block text-[10px]";
                      primaryMeaningStyles = "text-slate-700 dark:text-slate-200 font-black block text-xs capitalize";
                    }

                    return (
                      <div
                        key={item.id}
                        className={`group relative pt-4 pb-3 px-4 rounded-2xl border flex flex-col justify-between items-center text-center transition-all duration-300 hover:-translate-y-0.5 h-28 select-none whitespace-nowrap overflow-hidden ${cardStyles}`}
                      >
                        {/* Character with Solid Border */}
                        <div className={`px-4 py-1 border rounded-xl font-japanese font-black text-2xl mb-1 transition-transform duration-300 group-hover:scale-105 ${charBorderStyles}`}>
                          {item.character}
                        </div>

                        {/* Readings & Meanings stack */}
                        <div className="flex flex-col items-center leading-none mt-1 space-y-0.5 max-w-full">
                          {primaryReading && (
                            <span className={primaryReadingStyles}>
                              {primaryReading}
                            </span>
                          )}
                          <span className={`${primaryMeaningStyles} truncate max-w-full`} title={primaryMeaning}>
                            {primaryMeaning}
                          </span>
                        </div>

                        {/* HOVER HOOD ACTION CONTROLS */}
                        <div className="absolute inset-0 bg-slate-950/80 backdrop-blur-xs rounded-2xl opacity-0 group-hover:opacity-100 flex items-center justify-center space-x-3 transition-opacity duration-200">
                          {deleteConfirmId === item.id ? (
                            <div className="flex flex-col items-center p-2 space-y-2">
                              <span className="text-4xs font-black text-rose-450 uppercase tracking-widest">Yakin hapus?</span>
                              <div className="flex space-x-1.5">
                                <button
                                  onClick={() => setDeleteConfirmId(null)}
                                  className="px-2 py-1 bg-slate-800 hover:bg-slate-700 text-3xs font-extrabold rounded-md text-slate-300 cursor-pointer"
                                >
                                  Batal
                                </button>
                                <button
                                  onClick={() => handleDeleteItem(item.id)}
                                  className="px-2 py-1 bg-rose-500 hover:bg-rose-600 text-3xs font-extrabold rounded-md text-white cursor-pointer"
                                >
                                  Hapus
                                </button>
                              </div>
                            </div>
                          ) : (
                            <>
                              <button
                                onClick={() => openEditModal(item)}
                                className="p-2.5 bg-slate-800 hover:bg-indigo-600 text-slate-200 hover:text-white rounded-xl transition-all cursor-pointer"
                                title="Sunting Item"
                              >
                                <Edit2 className="w-4 h-4" />
                              </button>
                              <button
                                onClick={() => setDeleteConfirmId(item.id)}
                                className="p-2.5 bg-slate-800 hover:bg-rose-900/80 text-slate-200 hover:text-rose-400 rounded-xl transition-all cursor-pointer"
                                title="Hapus Item"
                              >
                                <Trash2 className="w-4 h-4" />
                              </button>
                            </>
                          )}
                        </div>
                      </div>
                    );
                  })}
                </div>
              </div>
            );
          })}
        </div>
      ) : (
        <section className="bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl p-12 text-center text-slate-400 dark:text-slate-500 shadow-sm space-y-3 select-none">
          <Database className="w-12 h-12 mx-auto opacity-30 animate-pulse" />
          <h3 className="font-bold text-sm">Tidak Ada Item Ditemukan</h3>
          <p className="text-xs text-slate-400 max-w-sm mx-auto">
            Coba sesuaikan kata kunci pencarian Anda atau ubah filter penyaringan radikal/kanji/kosakata.
          </p>
        </section>
      )}
    </div>
  );
}
