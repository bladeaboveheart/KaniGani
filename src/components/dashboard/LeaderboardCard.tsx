'use client';

import { Star, UserCheck } from 'lucide-react';

interface LeaderboardCardProps {
  leaderboard: any[];
  username: string;
}

export default function LeaderboardCard({ leaderboard, username }: LeaderboardCardProps) {
  return (
    <div className="bg-card rounded-2xl sm:rounded-3xl border border-card-border shadow-xs p-5 sm:p-7 space-y-5 sm:space-y-6 transition-all duration-300">
      <div className="select-none">
        <div className="flex items-center space-x-2">
          <Star className="w-5 h-5 text-amber-500 fill-amber-500 dark:text-amber-400 dark:fill-amber-400" />
          <h3 className="font-extrabold text-base sm:text-lg tracking-tight text-text-primary">
            Leaderboard KaniGani
          </h3>
        </div>
        <p className="text-xs text-text-muted mt-1 leading-relaxed">
          Bersaing secara sehat dengan pembelajar Bahasa Jepang lainnya di Indonesia.
        </p>
      </div>

      {/* Leaderboard list */}
      <div className="space-y-3 max-h-[320px] overflow-y-auto pr-1 custom-scrollbar">
        {leaderboard.map((user, idx) => (
          <div
            key={idx}
            className={`flex items-center justify-between p-3 sm:p-3.5 rounded-2xl transition-all select-none ${
              user.isSelf
                ? 'bg-indigo-500/10 border border-indigo-200 dark:border-indigo-900/50'
                : 'bg-card-muted/70 border border-card-border hover:bg-card-muted'
            }`}
          >
            <div className="flex items-center space-x-3">
              {/* Rank Number */}
              <span
                className={`text-xs font-black w-6 h-6 flex items-center justify-center rounded-lg ${
                  idx === 0
                    ? 'bg-amber-500 text-white shadow-xs'
                    : idx === 1
                    ? 'bg-slate-400 dark:bg-slate-600 text-white'
                    : idx === 2
                    ? 'bg-amber-700 text-white'
                    : 'bg-card text-text-muted border border-card-border'
                }`}
              >
                {user.rank}
              </span>

              <div>
                <div className="flex items-center space-x-1.5">
                  <span
                    className={`text-xs sm:text-sm font-bold ${
                      user.isSelf ? 'text-indigo-600 dark:text-indigo-400' : 'text-text-primary'
                    }`}
                  >
                    {user.isSelf
                      ? user.name
                      : user.name && user.name.length > 0
                      ? user.name.charAt(0) + '***'
                      : 'P***'}
                  </span>
                  {user.isSelf && (
                    <UserCheck className="w-3.5 h-3.5 text-indigo-500 dark:text-indigo-400" />
                  )}
                </div>
              </div>
            </div>

            <div className="flex items-center space-x-2.5">
              <span className="text-[10px] font-extrabold px-2 py-0.5 bg-card border border-card-border text-text-secondary rounded-md shadow-xs">
                Level {user.level}
              </span>
              <span
                className={`inline-block w-1.5 h-1.5 rounded-full ${
                  user.active ? 'bg-emerald-500 animate-pulse' : 'bg-slate-300 dark:bg-slate-600'
                }`}
              />
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}
