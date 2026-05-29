'use client';

import { BarChart2 } from 'lucide-react';
import { DashboardStats } from '@/lib/types';

interface SrsDistributionProps {
  stats: DashboardStats | null;
}

export default function SrsDistribution({ stats }: SrsDistributionProps) {
  if (!stats) return null;

  const distribution = stats.distribution || {};

  const stages = [
    {
      label: 'Kepiting Cilik',
      count: (distribution[1] || 0) + (distribution[2] || 0) + (distribution[3] || 0) + (distribution[4] || 0),
      color: 'bg-rose-500'
    },
    {
      label: 'Kepiting Guru',
      count: (distribution[5] || 0) + (distribution[6] || 0),
      color: 'bg-purple-600'
    },
    {
      label: 'Kepiting Suhu',
      count: distribution[7] || 0,
      color: 'bg-blue-600'
    },
    {
      label: 'Kepiting Sakti',
      count: distribution[8] || 0,
      color: 'bg-teal-600'
    },
    {
      label: 'Kepiting Rebus',
      count: distribution[9] || 0,
      color: 'bg-slate-700 text-amber-400 border border-amber-500/20'
    }
  ];

  return (
    <div className="bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm p-6 sm:p-8 space-y-6">
      <div className="flex items-center space-x-2 border-b border-slate-100 dark:border-slate-800 pb-3 select-none">
        <BarChart2 className="w-5 h-5 text-indigo-500" />
        <h3 className="font-extrabold text-lg tracking-tight">Status Tahap Belajar (SRS Stage)</h3>
      </div>

      <div className="grid grid-cols-2 sm:grid-cols-5 gap-4">
        {stages.map((stage, idx) => (
          <div
            key={idx}
            className="flex flex-col items-center justify-between p-4 bg-slate-50 dark:bg-slate-950 rounded-2xl border border-slate-100 dark:border-slate-800 text-center"
          >
            <span className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest leading-normal">
              {stage.label}
            </span>
            <span className="text-2xl font-black text-slate-800 dark:text-slate-200 my-2">
              {stage.count}
            </span>
            <div className={`w-3 h-3 rounded-full ${stage.color.split(' ')[0]}`}></div>
          </div>
        ))}
      </div>
    </div>
  );
}
