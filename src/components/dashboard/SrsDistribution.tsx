'use client';

import { BarChart2 } from 'lucide-react';
import { DashboardStats } from '@/lib/types';
import { Card, CardHeader, CardTitle } from '@/components/ui/Card';

interface SrsDistributionProps {
  stats: DashboardStats | null;
}

export default function SrsDistribution({ stats }: SrsDistributionProps) {
  if (!stats) return null;

  const distribution = stats.distribution || {};

  const stages = [
    {
      label: 'Pemula',
      count:
        (distribution[1] || 0) +
        (distribution[2] || 0) +
        (distribution[3] || 0) +
        (distribution[4] || 0),
      dotColor: 'bg-rose-500',
    },
    {
      label: 'Lulus',
      count: (distribution[5] || 0) + (distribution[6] || 0),
      dotColor: 'bg-purple-600',
    },
    {
      label: 'Mahir',
      count: distribution[7] || 0,
      dotColor: 'bg-blue-600',
    },
    {
      label: 'Ahli',
      count: distribution[8] || 0,
      dotColor: 'bg-teal-600',
    },
    {
      label: 'Tuntas',
      count: distribution[9] || 0,
      dotColor: 'bg-slate-600 dark:bg-slate-400',
    },
  ];

  return (
    <Card className="space-y-6">
      <CardHeader>
        <div className="flex items-center space-x-2 select-none">
          <BarChart2 className="w-5 h-5 text-indigo-500" />
          <CardTitle>Status Tahap Belajar (SRS Stage)</CardTitle>
        </div>
      </CardHeader>

      <div className="grid grid-cols-2 sm:grid-cols-5 gap-3 sm:gap-4">
        {stages.map((stage, idx) => (
          <div
            key={idx}
            className="flex flex-col items-center justify-between p-3.5 sm:p-4 bg-card-muted/70 rounded-2xl border border-card-border/60 text-center hover:border-card-border transition-colors"
          >
            <span className="text-[10px] sm:text-xs font-bold text-text-muted uppercase tracking-wider leading-normal">
              {stage.label}
            </span>
            <span className="text-2xl sm:text-3xl font-black text-text-primary my-1.5 sm:my-2">
              {stage.count}
            </span>
            <div className={`w-2.5 h-2.5 sm:w-3 sm:h-3 rounded-full ${stage.dotColor}`} />
          </div>
        ))}
      </div>
    </Card>
  );
}
