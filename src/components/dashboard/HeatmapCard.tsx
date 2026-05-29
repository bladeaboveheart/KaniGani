'use client';

import { useState } from 'react';

interface HeatmapCardProps {
  reviewHeatmap: Record<string, number>;
  lessonHeatmap: Record<string, number>;
  durationHeatmap: Record<string, number>;
}

export default function HeatmapCard({
  reviewHeatmap,
  lessonHeatmap,
  durationHeatmap
}: HeatmapCardProps) {
  const [heatmapYear, setHeatmapYear] = useState<number>(2026);
  const [selectedType, setSelectedType] = useState<'year' | 'month' | 'day'>('year');
  const [selectedValue, setSelectedValue] = useState<any>(null);

  // Generate continuous grid for navigated year
  const jan1 = new Date(heatmapYear, 0, 1);
  const dec31 = new Date(heatmapYear, 11, 31);

  // Align start date to the Sunday before or on Jan 1st
  const startDate = new Date(jan1);
  startDate.setDate(jan1.getDate() - jan1.getDay());

  // Align end date to the Saturday after or on Dec 31st
  const endDate = new Date(dec31);
  endDate.setDate(dec31.getDate() + (6 - dec31.getDay()));

  const weeks: {
    weekIdx: number;
    monthLabel: string | null;
    days: {
      date: Date;
      dateKey: string;
      count: number;
      isFuture: boolean;
      inYear: boolean;
    }[];
  }[] = [];

  let currentWeekDays: any[] = [];
  let lastMonthRendered: number | null = null;
  const tempDate = new Date(startDate);
  let weekIdx = 0;

  const monthLabels = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

  while (tempDate <= endDate) {
    const dateKey = tempDate.toISOString().split('T')[0];
    const isFuture = tempDate > new Date();
    const inYear = tempDate.getFullYear() === heatmapYear;

    // Combined total count (reviews + lessons)
    const reviewCount = reviewHeatmap[dateKey] || 0;
    const lessonCount = lessonHeatmap[dateKey] || 0;
    const totalCount = reviewCount + lessonCount;

    currentWeekDays.push({
      date: new Date(tempDate),
      dateKey,
      count: inYear ? totalCount : 0,
      isFuture,
      inYear,
    });

    if (currentWeekDays.length === 7) {
      let monthLabel: string | null = null;
      const firstInYearDay = currentWeekDays.find(d => d.inYear);
      if (firstInYearDay) {
        const m = firstInYearDay.date.getMonth();
        if (m !== lastMonthRendered) {
          monthLabel = monthLabels[m];
          lastMonthRendered = m;
        }
      }

      weeks.push({
        weekIdx,
        monthLabel,
        days: currentWeekDays,
      });

      currentWeekDays = [];
      weekIdx++;
    }

    tempDate.setDate(tempDate.getDate() + 1);
  }

  // Colors mapping matching the reference image's pink/coral theme
  const getHeatColor = (count: number) => {
    if (count === 0) return 'bg-[#f1f1f2] dark:bg-[#1e293b]/70';
    if (count <= 3) return 'bg-[#ffcbd1] hover:brightness-95 dark:bg-[#f43f5e]/20';
    if (count <= 10) return 'bg-[#f08a9b] hover:brightness-95 dark:bg-[#f43f5e]/45';
    if (count <= 25) return 'bg-[#d84b65] hover:brightness-95 dark:bg-[#e11d48]';
    return 'bg-[#b8253f] hover:brightness-95 dark:bg-[#be123c]';
  };

  const monthNames = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

  let displayLabel = `Year {heatmapYear}`;
  let activeReviews = 0;
  let activeLessons = 0;
  let activeSeconds = 0;

  if (selectedType === 'day' && selectedValue) {
    const date = new Date(selectedValue);
    displayLabel = `${monthLabels[date.getMonth()]} ${date.getDate()}, ${date.getFullYear()}`;
    activeReviews = reviewHeatmap[selectedValue] || 0;
    activeLessons = lessonHeatmap[selectedValue] || 0;
    activeSeconds = durationHeatmap[selectedValue] || 0;
  } else if (selectedType === 'month' && selectedValue !== null) {
    const monthIndex = selectedValue as number;
    displayLabel = `${monthNames[monthIndex]} ${heatmapYear}`;
    const monthPrefix = `${heatmapYear}-${String(monthIndex + 1).padStart(2, '0')}`;

    activeReviews = Object.entries(reviewHeatmap)
      .filter(([dateKey]) => dateKey.startsWith(monthPrefix))
      .reduce((sum, [_, val]) => sum + val, 0);
    activeLessons = Object.entries(lessonHeatmap)
      .filter(([dateKey]) => dateKey.startsWith(monthPrefix))
      .reduce((sum, [_, val]) => sum + val, 0);
    activeSeconds = Object.entries(durationHeatmap)
      .filter(([dateKey]) => dateKey.startsWith(monthPrefix))
      .reduce((sum, [_, val]) => sum + val, 0);
  } else {
    displayLabel = `Year ${heatmapYear}`;
    const yearPrefix = `${heatmapYear}-`;

    activeReviews = Object.entries(reviewHeatmap)
      .filter(([dateKey]) => dateKey.startsWith(yearPrefix))
      .reduce((sum, [_, val]) => sum + val, 0);
    activeLessons = Object.entries(lessonHeatmap)
      .filter(([dateKey]) => dateKey.startsWith(yearPrefix))
      .reduce((sum, [_, val]) => sum + val, 0);
    activeSeconds = Object.entries(durationHeatmap)
      .filter(([dateKey]) => dateKey.startsWith(yearPrefix))
      .reduce((sum, [_, val]) => sum + val, 0);
  }

  const activeHours = (activeSeconds / 3600).toFixed(1);

  return (
    <section
      onClick={() => {
        setSelectedType('year');
        setSelectedValue(null);
      }}
      className="bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm p-6 sm:p-8 space-y-6 cursor-default"
    >
      {/* Header Row */}
      <div className="flex items-center justify-between select-none">
        <h3 className="font-extrabold text-slate-800 dark:text-slate-100 text-lg tracking-tight">Heat Map</h3>

        {/* Year navigation */}
        <div className="flex items-center space-x-2 text-sm font-extrabold text-slate-500 dark:text-slate-400">
          <button
            onClick={(e) => {
              e.stopPropagation();
              setHeatmapYear(prev => prev - 1);
              setSelectedType('year');
              setSelectedValue(null);
            }}
            className="p-1 hover:bg-slate-100 dark:hover:bg-slate-800 rounded-lg transition-colors cursor-pointer"
          >
            &lt;
          </button>
          <span
            onClick={(e) => {
              e.stopPropagation();
              setSelectedType('year');
              setSelectedValue(null);
            }}
            className="w-10 text-center select-none cursor-pointer hover:text-indigo-500 transition-colors"
            title="Klik untuk tampilkan total tahunan"
          >
            {heatmapYear}
          </span>
          <button
            onClick={(e) => {
              e.stopPropagation();
              setHeatmapYear(prev => prev + 1);
              setSelectedType('year');
              setSelectedValue(null);
            }}
            className="p-1 hover:bg-slate-100 dark:hover:bg-slate-800 rounded-lg transition-colors cursor-pointer"
          >
            &gt;
          </button>
        </div>
      </div>

      {/* Continuous Heatmap Grid with labels */}
      <div
        onClick={(e) => e.stopPropagation()}
        className="relative overflow-x-auto pt-6 pb-4 scrollbar-thin flex heatmap-container"
      >
        {/* Left Label column */}
        <div className="flex flex-col justify-between pr-3 select-none text-[11px] font-extrabold text-slate-400 dark:text-slate-500 pb-[4px]">
          <div className="h-[12px] flex items-center">Mon</div>
          <div className="h-[12px] flex items-center">Wed</div>
          <div className="h-[12px] flex items-center">Fri</div>
        </div>

        {/* Horizontal continuous grid of weeks */}
        <div className="flex-1 flex gap-[3px] select-none">
          {weeks.map((week, wIdx) => (
            <div key={wIdx} className="flex flex-col gap-[3px] relative">
              {/* Month header label positioned over first column of month */}
              {week.monthLabel ? (
                <button
                  onClick={(e) => {
                    e.stopPropagation();
                    const monthIndex = monthLabels.indexOf(week.monthLabel!);
                    if (monthIndex !== -1) {
                      if (selectedType === 'month' && selectedValue === monthIndex) {
                        setSelectedType('year');
                        setSelectedValue(null);
                      } else {
                        setSelectedType('month');
                        setSelectedValue(monthIndex);
                      }
                    }
                  }}
                  className={`absolute bottom-full left-0 mb-1.5 h-[14px] text-[10px] font-extrabold uppercase tracking-wider transition-colors cursor-pointer select-none focus:outline-none border-none bg-transparent whitespace-nowrap ${selectedType === 'month' && selectedValue === monthLabels.indexOf(week.monthLabel!)
                    ? 'text-indigo-500 dark:text-indigo-400 font-black scale-105'
                    : 'text-slate-400 dark:text-slate-500 hover:text-slate-700 dark:hover:text-slate-200'
                    }`}
                >
                  {week.monthLabel}
                </button>
              ) : null}

              {/* 7 Days (Sunday to Saturday) */}
              {week.days.map((day: any, dIdx: number) => {
                const isToday = day.dateKey === new Date().toISOString().split('T')[0];
                const displayCount = day.inYear ? day.count : 0;
                const isSelected = selectedType === 'day' && selectedValue === day.dateKey;

                return (
                  <div
                    key={dIdx}
                    onClick={(e) => {
                      e.stopPropagation();
                      if (day.inYear) {
                        if (selectedType === 'day' && selectedValue === day.dateKey) {
                          setSelectedType('year');
                          setSelectedValue(null);
                        } else {
                          setSelectedType('day');
                          setSelectedValue(day.dateKey);
                        }
                      }
                    }}
                    className={`w-[11px] h-[11px] sm:w-[13px] sm:h-[13px] rounded-[3px] transition-all duration-150 cursor-pointer ${day.inYear ? getHeatColor(displayCount) : 'bg-transparent'
                      } ${isToday && day.inYear
                        ? 'ring-1 ring-offset-1 ring-slate-400 dark:ring-slate-500 dark:ring-offset-slate-950'
                        : ''
                      } ${isSelected
                        ? 'ring-2 ring-slate-800 dark:ring-slate-200 ring-offset-1 dark:ring-offset-slate-900 scale-110 shadow-md'
                        : 'hover:scale-110 hover:shadow-xs'
                      }`}
                  />
                );
              })}
            </div>
          ))}
        </div>
      </div>

      {/* Footer selected statistics display */}
      <div className="text-sm pt-4 select-none border-t border-slate-200 dark:border-slate-800/80 mt-2 flex items-center space-x-2 text-slate-500 dark:text-slate-400">
        <span className="font-extrabold text-slate-800 dark:text-slate-100">
          {displayLabel}
        </span>
        <span className="text-slate-300 dark:text-slate-700">|</span>
        <span>
          Reviews <span className="font-extrabold text-slate-800 dark:text-slate-100">{activeReviews}</span>
        </span>
        <span className="pl-1">
          Lessons <span className="font-extrabold text-slate-800 dark:text-slate-100">{activeLessons}</span>
        </span>
        <span className="text-slate-300 dark:text-slate-700 pl-1">|</span>
        <span className="pl-1">
          Hours Spent <span className="font-extrabold text-slate-800 dark:text-slate-100">{activeHours}</span>
        </span>
      </div>
    </section>
  );
}
