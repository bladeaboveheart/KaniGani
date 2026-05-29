'use client';

import { Star, UserCheck } from 'lucide-react';

interface LeaderboardCardProps {
  leaderboard: any[];
  username: string;
}

export default function LeaderboardCard({ leaderboard, username }: LeaderboardCardProps) {
  return (
    <div className="bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm p-6 sm:p-8 space-y-6 transition-all duration-300">
      <div className="select-none">
        <div className="flex items-center space-x-2">
          <Star className="w-5 h-5 text-amber-500 fill-amber-500 dark:text-amber-400 dark:fill-amber-400" />
          <h3 className="font-extrabold text-lg tracking-tight text-slate-800 dark:text-slate-100">Leaderboard KaniGani</h3>
        </div>
        <p className="text-2xs text-slate-500 dark:text-slate-400 mt-1">
          Bersaing secara sehat dengan pembelajar Bahasa Jepang lainnya di Indonesia.
        </p>
      </div>

      {/* Leaderboard list */}
      <div className="space-y-3.5 max-h-[295px] overflow-y-auto pr-1 scrollbar-thin scrollbar-thumb-slate-200 dark:scrollbar-thumb-slate-800 scrollbar-track-transparent">
        {leaderboard.map((user, idx) => (
          <div
            key={idx}
            className={`flex items-center justify-between p-3.5 rounded-2xl transition-all select-none hover:bg-slate-50 dark:hover:bg-slate-900/50 ${user.isSelf
              ? 'bg-indigo-500/10 border border-indigo-200 dark:border-indigo-900/50'
              : 'bg-slate-50 dark:bg-slate-950/40 border border-slate-200 dark:border-slate-800'
              }`}
          >
            <div className="flex items-center space-x-3.5">
              {/* Rank Number */}
              <span className={`text-2xs font-extrabold w-5 h-5 flex items-center justify-center rounded-lg ${idx === 0 ? 'bg-amber-500 text-white font-black' : idx === 1 ? 'bg-slate-350 dark:bg-slate-600 text-slate-800 dark:text-slate-100 font-black' : idx === 2 ? 'bg-amber-700 text-white font-black' : 'bg-slate-100 dark:bg-slate-800 text-slate-500 dark:text-slate-400'}`}>
                {user.rank}
              </span>

              <div>
                <div className="flex items-center space-x-1.5">
                  <span className={`text-sm font-bold ${user.isSelf ? 'text-indigo-600 dark:text-indigo-350' : 'text-slate-700 dark:text-slate-200'}`}>
                    {user.isSelf
                      ? user.name
                      : (user.name && user.name.length > 0 ? user.name.charAt(0) + '***' : 'P***')
                    }
                  </span>
                  {user.isSelf && <UserCheck className="w-3.5 h-3.5 text-indigo-500 dark:text-indigo-400" />}
                </div>
              </div>
            </div>

            <div className="flex items-center space-x-2.5">
              <span className="text-3xs font-extrabold px-2 py-0.5 bg-white dark:bg-slate-800/80 border border-slate-200 dark:border-slate-800 text-slate-600 dark:text-slate-300 rounded-md">
                Level {user.level}
              </span>
              <span className={`inline-block w-1.5 h-1.5 rounded-full ${user.active ? 'bg-emerald-500 animate-pulse' : 'bg-slate-300 dark:bg-slate-600'}`}></span>
            </div>
          </div>
        ))}
      </div>

      <div className="text-center select-none">
        <span className="text-3xs uppercase tracking-widest text-indigo-600 dark:text-indigo-400 font-bold block">Update Realtime</span>
        <span className="text-4xs text-slate-450 dark:text-slate-500">Nilai didasarkan pada total level & item Guru SRS</span>
      </div>
    </div>
  );
}
