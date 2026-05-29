'use client';

import { X, Info, ChevronRight } from 'lucide-react';

interface LessonPickerModalProps {
  availableLessons: any[];
  selectedLessonIds: string[];
  setSelectedLessonIds: (ids: string[] | ((prev: string[]) => string[])) => void;
  interleaveLessons: boolean;
  setInterleaveLessons: (interleave: boolean) => void;
  startCustomLesson: () => void;
  setPickerOpen: (open: boolean) => void;
}

export default function LessonPickerModal({
  availableLessons,
  selectedLessonIds,
  setSelectedLessonIds,
  interleaveLessons,
  setInterleaveLessons,
  startCustomLesson,
  setPickerOpen
}: LessonPickerModalProps) {
  // Group lessons by level & type
  const getGroupedLessons = () => {
    const groups: Record<number, { radical: any[]; kanji: any[]; vocabulary: any[] }> = {};
    availableLessons.forEach(item => {
      const lvl = item.level || 1;
      if (!groups[lvl]) {
        groups[lvl] = { radical: [], kanji: [], vocabulary: [] };
      }
      const type = item.type as 'radical' | 'kanji' | 'vocabulary';
      if (groups[lvl][type]) {
        groups[lvl][type].push(item);
      }
    });
    return groups;
  };

  const toggleSelection = (itemId: string) => {
    setSelectedLessonIds(prev =>
      prev.includes(itemId) ? prev.filter(id => id !== itemId) : [...prev, itemId]
    );
  };

  const isLevelAllSelected = (levelNum: number) => {
    const levelItems = availableLessons.filter(i => i.level === levelNum);
    if (levelItems.length === 0) return false;
    return levelItems.every(i => selectedLessonIds.includes(i.id));
  };

  const isTypeAllSelected = (levelNum: number, type: string) => {
    const typeItems = availableLessons.filter(i => i.level === levelNum && i.type === type);
    if (typeItems.length === 0) return false;
    return typeItems.every(i => selectedLessonIds.includes(i.id));
  };

  const toggleLevelSelect = (levelNum: number) => {
    const levelIds = availableLessons.filter(i => i.level === levelNum).map(i => i.id);
    const isAllSel = isLevelAllSelected(levelNum);
    if (isAllSel) {
      setSelectedLessonIds(prev => prev.filter(id => !levelIds.includes(id)));
    } else {
      setSelectedLessonIds(prev => Array.from(new Set([...prev, ...levelIds])));
    }
  };

  const toggleTypeSelect = (levelNum: number, type: string) => {
    const typeIds = availableLessons.filter(i => i.level === levelNum && i.type === type).map(i => i.id);
    const isAllSel = isTypeAllSelected(levelNum, type);
    if (isAllSel) {
      setSelectedLessonIds(prev => prev.filter(id => !typeIds.includes(id)));
    } else {
      setSelectedLessonIds(prev => Array.from(new Set([...prev, ...typeIds])));
    }
  };

  const isAllGlobalSelected = availableLessons.length > 0 && availableLessons.every(i => selectedLessonIds.includes(i.id));
  const toggleAllGlobal = () => {
    if (isAllGlobalSelected) {
      setSelectedLessonIds([]);
    } else {
      setSelectedLessonIds(availableLessons.map(i => i.id));
    }
  };

  return (
    <div className="fixed inset-0 z-50 bg-slate-950/80 backdrop-blur-md flex items-center justify-center p-4 animate-fade-in">
      <div className="max-w-4xl w-full bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl shadow-2xl flex flex-col max-h-[85vh] overflow-hidden animate-fade-in">

        {/* Modal Header */}
        <div className="p-6 border-b border-slate-200 dark:border-slate-800 flex justify-between items-start bg-slate-50 dark:bg-slate-900/50">
          <div>
            <h2 className="text-2xl font-black tracking-tight select-none">Lesson Picker</h2>
            <div className="flex items-center gap-3 text-xs font-bold text-indigo-500 mt-2 select-none">
              <button onClick={toggleAllGlobal} className="hover:underline cursor-pointer">
                {isAllGlobalSelected ? 'Hapus Semua Pilihan' : 'Pilih Semua'}
              </button>
              <span className="text-slate-300 dark:text-slate-700">•</span>
              <span className="text-slate-500 dark:text-slate-400 font-semibold">
                {selectedLessonIds.length} dari {availableLessons.length} item dipilih
              </span>
            </div>
          </div>
          <button
            onClick={() => setPickerOpen(false)}
            className="p-1.5 hover:bg-slate-200 dark:hover:bg-slate-800 rounded-xl transition-all cursor-pointer text-slate-500 hover:text-slate-800 dark:text-slate-400 dark:hover:text-slate-200"
          >
            <X className="w-6 h-6" />
          </button>
        </div>

        {/* Scrollable Content */}
        <div className="p-6 sm:p-8 flex-1 overflow-y-auto space-y-6">

          {/* Instructions */}
          <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/40 rounded-2xl flex items-start space-x-3 text-xs leading-relaxed text-indigo-850 dark:text-indigo-300 animate-fade-in select-none">
            <Info className="w-5 h-5 shrink-0 text-indigo-500 mt-0.5" />
            <div>
              <p className="font-bold mb-1 text-indigo-900 dark:text-indigo-200">Kustomisasi Antrean Pelajaran Anda</p>
              <p>Pilih item di bawah ini untuk membuat daftar pelajaran kustom Anda. Centang <strong>&quot;Interleave Lessons&quot;</strong> di bagian bawah untuk mencampur urutan belajar (misal: mencampur radikal, kanji, kosakata) atau biarkan tidak tercentang untuk belajar berurutan.</p>
            </div>
          </div>

          {/* Grouped Levels & Items */}
          {availableLessons.length === 0 ? (
            <div className="py-12 text-center text-slate-400 dark:text-slate-500 font-bold select-none">
              Tidak ada item lesson yang tersedia.
            </div>
          ) : (
            <div className="space-y-8">
              {Object.entries(getGroupedLessons()).map(([levelNumStr, levelData]) => {
                const levelNum = parseInt(levelNumStr);
                const isLvlAll = isLevelAllSelected(levelNum);

                return (
                  <div key={levelNum} className="space-y-4 border border-slate-200 dark:border-slate-800/80 p-5 rounded-2xl bg-slate-50/30 dark:bg-slate-900/30">

                    {/* Level Header Row */}
                    <div className="flex justify-between items-center border-b border-slate-200 dark:border-slate-800 pb-2 select-none">
                      <h3 className="text-lg font-black tracking-tight bg-gradient-to-r from-indigo-500 to-pink-500 bg-clip-text text-transparent">
                        Level {levelNum}
                      </h3>
                      <button
                        onClick={() => toggleLevelSelect(levelNum)}
                        className="text-xs font-bold text-indigo-500 hover:underline cursor-pointer"
                      >
                        {isLvlAll ? 'Hapus Level ini' : 'Pilih Semua Level ini'}
                      </button>
                    </div>

                    {/* Level content split by item type */}
                    <div className="space-y-5">

                      {/* Radicals */}
                      {levelData.radical.length > 0 && (
                        <div className="space-y-2 animate-fade-in">
                          <div className="flex justify-between items-center text-xxs font-extrabold uppercase tracking-widest text-slate-450 dark:text-slate-500 select-none">
                            <span>Radikal ({levelData.radical.length})</span>
                            <button
                              onClick={() => toggleTypeSelect(levelNum, 'radical')}
                              className="text-[10px] font-bold text-indigo-500 hover:underline cursor-pointer lowercase"
                            >
                              {isTypeAllSelected(levelNum, 'radical') ? 'hapus' : 'pilih semua'}
                            </button>
                          </div>
                          <div className="flex flex-wrap gap-2.5">
                            {levelData.radical.map(item => {
                              const isSel = selectedLessonIds.includes(item.id);
                              return (
                                <button
                                  key={item.id}
                                  onClick={() => toggleSelection(item.id)}
                                  className={`flex flex-col items-center justify-center py-2.5 px-3 min-w-[3.5rem] rounded-xl transition-all duration-150 active:scale-95 select-none ${isSel
                                    ? 'bg-[#00a0f0] text-white border-2 border-white shadow-md glow-radical cursor-pointer'
                                    : 'bg-[#00a0f0]/15 text-[#00a0f0] border-2 border-dashed border-[#00a0f0]/30 hover:bg-[#00a0f0]/30 hover:text-[#00a0f0] cursor-pointer font-bold'
                                    }`}
                                >
                                  <span className="text-xl font-black font-japanese leading-none mb-1">{item.character}</span>
                                  <span className="text-[8px] font-extrabold uppercase tracking-wider opacity-85 max-w-[4rem] truncate">{item.slug}</span>
                                </button>
                              );
                            })}
                          </div>
                        </div>
                      )}

                      {/* Kanji */}
                      {levelData.kanji.length > 0 && (
                        <div className="space-y-2 animate-fade-in">
                          <div className="flex justify-between items-center text-xxs font-extrabold uppercase tracking-widest text-slate-455 dark:text-slate-500 select-none">
                            <span>Kanji ({levelData.kanji.length})</span>
                            <button
                              onClick={() => toggleTypeSelect(levelNum, 'kanji')}
                              className="text-[10px] font-bold text-indigo-500 hover:underline cursor-pointer lowercase"
                            >
                              {isTypeAllSelected(levelNum, 'kanji') ? 'hapus' : 'pilih semua'}
                            </button>
                          </div>
                          <div className="flex flex-wrap gap-2.5">
                            {levelData.kanji.map(item => {
                              const isSel = selectedLessonIds.includes(item.id);
                              return (
                                <button
                                  key={item.id}
                                  onClick={() => toggleSelection(item.id)}
                                  className={`flex flex-col items-center justify-center py-2.5 px-3 min-w-[3.5rem] rounded-xl transition-all duration-150 active:scale-95 select-none ${isSel
                                    ? 'bg-[#f03e64] text-white border-2 border-white shadow-md glow-kanji cursor-pointer'
                                    : 'bg-[#f03e64]/15 text-[#f03e64] border-2 border-dashed border-[#f03e64]/30 hover:bg-[#f03e64]/30 hover:text-[#f03e64] cursor-pointer font-bold'
                                    }`}
                                >
                                  <span className="text-xl font-black font-japanese leading-none mb-1">{item.character}</span>
                                  <span className="text-[8px] font-extrabold uppercase tracking-wider opacity-85 max-w-[4rem] truncate">{item.slug}</span>
                                </button>
                              );
                            })}
                          </div>
                        </div>
                      )}

                      {/* Vocabulary */}
                      {levelData.vocabulary.length > 0 && (
                        <div className="space-y-2 animate-fade-in">
                          <div className="flex justify-between items-center text-xxs font-extrabold uppercase tracking-widest text-slate-455 dark:text-slate-500 select-none">
                            <span>Kosakata ({levelData.vocabulary.length})</span>
                            <button
                              onClick={() => toggleTypeSelect(levelNum, 'vocabulary')}
                              className="text-[10px] font-bold text-indigo-500 hover:underline cursor-pointer lowercase"
                            >
                              {isTypeAllSelected(levelNum, 'vocabulary') ? 'hapus' : 'pilih semua'}
                            </button>
                          </div>
                          <div className="flex flex-wrap gap-2.5">
                            {levelData.vocabulary.map(item => {
                              const isSel = selectedLessonIds.includes(item.id);
                              return (
                                <button
                                  key={item.id}
                                  onClick={() => toggleSelection(item.id)}
                                  className={`flex flex-col items-center justify-center py-2.5 px-3 min-w-[3.5rem] rounded-xl transition-all duration-150 active:scale-95 select-none ${isSel
                                    ? 'bg-[#a000f0] text-white border-2 border-white shadow-md glow-vocab cursor-pointer'
                                    : 'bg-[#a000f0]/15 text-[#a000f0] border-2 border-dashed border-[#a000f0]/30 hover:bg-[#a000f0]/30 hover:text-[#a000f0] cursor-pointer font-bold'
                                    }`}
                                >
                                  <span className="text-xl font-black font-japanese leading-none mb-1">{item.character}</span>
                                  <span className="text-[8px] font-extrabold uppercase tracking-wider opacity-85 max-w-[4rem] truncate">{item.slug}</span>
                                </button>
                              );
                            })}
                          </div>
                        </div>
                      )}

                    </div>

                  </div>
                );
              })}
            </div>
          )}

        </div>

        {/* Modal Footer */}
        <div className="p-6 border-t border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-900/80 flex flex-col sm:flex-row items-center justify-between gap-4">

          {/* Interleave Toggle */}
          <label className="flex items-center space-x-2.5 cursor-pointer select-none text-sm text-slate-700 dark:text-slate-300">
            <input
              type="checkbox"
              checked={interleaveLessons}
              onChange={(e) => setInterleaveLessons(e.target.checked)}
              className="w-4 h-4 rounded text-teal-600 focus:ring-teal-500 border-slate-350 dark:border-slate-700 dark:bg-slate-800 dark:checked:bg-teal-500 cursor-pointer"
            />
            <span className="font-bold">Interleave Lessons (Campur urutan pelajaran)</span>
          </label>

          {/* Action Buttons */}
          <div className="flex items-center space-x-3 w-full sm:w-auto">
            <button
              type="button"
              onClick={() => setPickerOpen(false)}
              className="flex-1 sm:flex-none px-5 py-2.5 bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-300 font-bold rounded-xl transition-colors cursor-pointer text-sm"
            >
              Batal
            </button>
            <button
              type="button"
              disabled={selectedLessonIds.length === 0}
              onClick={startCustomLesson}
              className="flex-1 sm:flex-none px-6 py-2.5 bg-gradient-to-r from-teal-500 to-cyan-600 hover:from-teal-600 hover:to-cyan-700 text-white font-bold rounded-xl transition-all shadow-md shadow-teal-500/10 hover:shadow-teal-500/20 disabled:opacity-50 disabled:cursor-not-allowed cursor-pointer text-sm flex items-center justify-center space-x-1.5"
            >
              <span>Mulai Lesson</span>
              {selectedLessonIds.length > 0 && (
                <span className="px-2 py-0.5 text-2xs font-extrabold bg-white/20 rounded-md">
                  {selectedLessonIds.length} Item
                </span>
              )}
              <ChevronRight className="w-4 h-4" />
            </button>
          </div>

        </div>

      </div>
    </div>
  );
}
