'use client';

import { Clock, BookOpen } from 'lucide-react';

interface HourlyScheduleProps {
  schedule: any[];
  selectedHourIdx: number;
  setSelectedHourIdx: (idx: number) => void;
}

export default function HourlySchedule({
  schedule,
  selectedHourIdx,
  setSelectedHourIdx,
}: HourlyScheduleProps) {
  const maxCount = Math.max(...schedule.map((s) => s.count), 0);
  const chartMax = maxCount > 0 ? Math.ceil(maxCount * 1.25) : 5;
  const total24h = schedule.reduce((acc, curr) => acc + curr.count, 0);

  const selectedBucket = schedule[selectedHourIdx];
  const overdueCount =
    selectedHourIdx === 0
      ? selectedBucket.items.filter((i: any) => {
          const nowTime = new Date().getTime();
          const rTime = new Date(i.next_review).getTime();
          return rTime <= nowTime;
        }).length
      : 0;

  return (
    <div className="space-y-6 animate-fade-in">
      <div className="relative bg-card-muted/60 rounded-2xl sm:rounded-3xl border border-card-border p-4 sm:p-6 overflow-hidden">
        {/* Chart Header */}
        <div className="flex justify-between items-center mb-4 select-none">
          <div className="text-xs text-text-muted font-semibold flex items-center space-x-1.5">
            <span className="inline-block w-2 h-2 rounded-full bg-indigo-500 animate-pulse" />
            <span>Ketuk balok untuk melihat item detail</span>
          </div>
          <div className="text-xs font-bold px-2.5 py-1 bg-card text-text-secondary border border-card-border rounded-lg shadow-xs">
            Total 24 Jam: {total24h} item
          </div>
        </div>

        {/* Main Chart Area with Y-Axis and Gridlines */}
        <div className="relative flex h-64 mt-2">
          {/* Y-Axis Labels */}
          <div className="flex flex-col justify-between text-right text-[10px] font-extrabold text-text-muted w-8 pr-2.5 select-none h-52 mt-1">
            <span>{chartMax}</span>
            <span>{Math.round(chartMax / 2)}</span>
            <span>0</span>
          </div>

          {/* Chart Grid Lines and Bars Container */}
          <div className="flex-1 relative h-52 mt-1">
            {/* Grid Lines */}
            <div className="absolute inset-0 flex flex-col justify-between pointer-events-none select-none">
              <div className="border-t border-card-border/60 w-full h-0" />
              <div className="border-t border-dashed border-card-border/30 w-full h-0" />
              <div className="border-t border-card-border/60 w-full h-0" />
            </div>

            {/* Bars Horizontal Scroll Wrapper */}
            <div className="absolute inset-0 overflow-x-hidden sm:overflow-x-auto select-none scrollbar-none flex items-end justify-between gap-1.5 px-1 pb-0.5">
              <div className="flex items-end justify-between w-full sm:min-w-[560px] h-full gap-1 sm:gap-2">
                {schedule.map((item, idx) => {
                  const isSelected = selectedHourIdx === idx;
                  const hasReviews = item.count > 0;
                  const barHeightPct = hasReviews ? (item.count / chartMax) * 100 : 0;

                  return (
                    <div
                      key={idx}
                      onClick={() => setSelectedHourIdx(idx)}
                      className={`flex-1 flex-col items-center justify-end h-full cursor-pointer group relative ${
                        idx >= 12 ? 'hidden sm:flex' : 'flex'
                      }`}
                    >
                      {/* Hover Count Bubble */}
                      <div className="absolute -top-8 bg-slate-900 text-white text-[10px] font-black px-1.5 py-0.5 rounded-md shadow-md opacity-0 group-hover:opacity-100 transition-opacity duration-150 pointer-events-none whitespace-nowrap z-20">
                        {item.count} item
                      </div>

                      {/* Bar Column Outer Container (Slot) */}
                      <div
                        className={`w-full h-full bg-card-muted/50 border border-card-border/40 rounded-t-md flex flex-col justify-end overflow-hidden transition-all duration-200 ${
                          isSelected
                            ? 'ring-2 ring-indigo-500/80 ring-offset-2 ring-offset-card bg-indigo-50/20 dark:bg-indigo-950/20'
                            : 'hover:bg-card-muted'
                        }`}
                      >
                        {/* Bar Column Inner Value */}
                        {hasReviews && (
                          <div
                            className={`w-full rounded-t-sm transition-all duration-500 bg-gradient-to-t ${
                              idx === 0
                                ? 'from-pink-500 via-rose-500 to-indigo-500'
                                : 'from-indigo-600 to-pink-500 dark:from-indigo-500 dark:to-pink-500'
                            } ${isSelected ? 'brightness-110 shadow-lg shadow-indigo-500/20' : 'group-hover:brightness-105'}`}
                            style={{ height: `${Math.max(4, barHeightPct)}%` }}
                          />
                        )}
                      </div>

                      {/* Mini Y-Axis Tick Line (under the bar) */}
                      <div
                        className={`w-0.5 h-1.5 mt-1 transition-colors ${
                          isSelected ? 'bg-indigo-500' : 'bg-card-border'
                        }`}
                      />
                    </div>
                  );
                })}
              </div>
            </div>
          </div>
        </div>

        {/* X-Axis Time Labels Wrapper */}
        <div className="flex border-t border-card-border/60 pt-2 ml-8 pr-1">
          <div className="flex justify-between w-full sm:min-w-[560px] text-[10px] font-extrabold text-text-muted">
            {schedule.map((item, idx) => {
              const isSelected = selectedHourIdx === idx;
              return (
                <div
                  key={idx}
                  onClick={() => setSelectedHourIdx(idx)}
                  className={`flex-1 text-center cursor-pointer select-none transition-colors duration-200 ${
                    isSelected ? 'text-indigo-500 font-black' : 'hover:text-text-primary'
                  } ${idx >= 12 ? 'hidden sm:block' : 'block'}`}
                >
                  {idx === 0 ? 'Skrg' : item.label.split(':')[0]}
                </div>
              );
            })}
          </div>
        </div>
      </div>

      {/* INTERACTIVE BREAKDOWN CARD */}
      <div className="bg-card-muted/70 rounded-2xl border border-card-border p-4 sm:p-5 space-y-4 transition-all duration-300">
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 border-b border-card-border/60 pb-3">
          <div className="flex items-center space-x-2.5">
            <div className="p-2 bg-indigo-500/10 text-indigo-500 rounded-xl">
              <Clock className="w-4 h-4" />
            </div>
            <div>
              <h4 className="text-sm font-bold text-text-primary">
                {selectedHourIdx === 0
                  ? 'Detail Review Saat Ini (Sekarang)'
                  : `Detail Review Pukul ${selectedBucket.label} WIB`}
              </h4>
              <p className="text-[10px] font-semibold text-text-muted mt-0.5 uppercase tracking-wider">
                {selectedHourIdx === 0 ? 'Mencakup review lewat jatuh tempo' : 'Proyeksi jam ke-' + selectedHourIdx}
              </p>
            </div>
          </div>
          <div className="flex items-center gap-2">
            {overdueCount > 0 && (
              <span className="text-[10px] font-bold px-2 py-0.5 bg-rose-500/10 text-rose-500 dark:text-rose-400 border border-rose-500/20 rounded-md animate-pulse">
                {overdueCount} Overdue
              </span>
            )}
            <span className="text-xs font-black px-3 py-1 bg-indigo-500 text-white rounded-full">
              {selectedBucket.count} item siap
            </span>
          </div>
        </div>

        {selectedBucket.count > 0 ? (
          <div className="space-y-4 animate-fade-in">
            {/* Display breakdown indicators */}
            <div className="flex flex-wrap gap-4 text-[10px] font-black uppercase tracking-widest text-text-muted">
              {selectedBucket.items.some((i: any) => i.type === 'radical') && (
                <div className="flex items-center space-x-1.5">
                  <span className="w-2 h-2 rounded-full bg-radical" />
                  <span>Radikal ({selectedBucket.items.filter((i: any) => i.type === 'radical').length})</span>
                </div>
              )}
              {selectedBucket.items.some((i: any) => i.type === 'kanji') && (
                <div className="flex items-center space-x-1.5">
                  <span className="w-2 h-2 rounded-full bg-kanji" />
                  <span>Kanji ({selectedBucket.items.filter((i: any) => i.type === 'kanji').length})</span>
                </div>
              )}
              {selectedBucket.items.some((i: any) => i.type === 'vocabulary') && (
                <div className="flex items-center space-x-1.5">
                  <span className="w-2 h-2 rounded-full bg-vocab" />
                  <span>Kosakata ({selectedBucket.items.filter((i: any) => i.type === 'vocabulary').length})</span>
                </div>
              )}
            </div>

            {/* Characters List Grid */}
            <div className="flex flex-wrap gap-2.5">
              {[...selectedBucket.items]
                .sort((a: any, b: any) => {
                  const order = { radical: 1, kanji: 2, vocabulary: 3 };
                  const rankA = order[a.type as 'radical' | 'kanji' | 'vocabulary'] || 4;
                  const rankB = order[b.type as 'radical' | 'kanji' | 'vocabulary'] || 4;
                  return rankA - rankB;
                })
                .map((item: any, idx: number) => (
                  <div
                    key={idx}
                    className={`w-11 h-11 sm:w-12 sm:h-12 flex items-center justify-center rounded-xl border text-lg sm:text-xl font-black select-none shadow-xs transition-all hover:scale-110 duration-150 ${
                      item.type === 'radical'
                        ? 'bg-radical/10 border-radical/30 text-radical'
                        : item.type === 'kanji'
                        ? 'bg-kanji/10 border-kanji/30 text-kanji'
                        : 'bg-vocab/10 border-vocab/30 text-vocab'
                    }`}
                  >
                    <span>{item.character}</span>
                  </div>
                ))}
            </div>
          </div>
        ) : (
          <div className="text-center py-6 text-text-muted">
            <BookOpen className="w-8 h-8 mx-auto opacity-25 mb-2 animate-pulse" />
            <p className="text-xs font-semibold">Tidak ada review esok hari dalam jam ini.</p>
            <p className="text-[10px] mt-1 text-text-muted/80">Pilih jam lain pada grafik untuk melihat jadwal review berikutnya.</p>
          </div>
        )}
      </div>
    </div>
  );
}
