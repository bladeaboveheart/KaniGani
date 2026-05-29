'use client';

import { Search, RefreshCw, Loader2 } from 'lucide-react';

interface UserManagerProps {
  users: any[];
  userSearchQuery: string;
  setUserSearchQuery: (q: string) => void;
  handleSetUserLevel: (userId: string, level: number | null) => void;
  updatingUserId: string | null;
  loadUsers: () => void;
}

export default function UserManager({
  users,
  userSearchQuery,
  setUserSearchQuery,
  handleSetUserLevel,
  updatingUserId,
  loadUsers
}: UserManagerProps) {
  const filteredUsers = users.filter(u =>
    u.username.toLowerCase().includes(userSearchQuery.toLowerCase())
  );

  return (
    <div className="space-y-6 animate-fade-in">
      {/* USER SEARCH BAR */}
      <section className="bg-white dark:bg-slate-900 p-4 sm:p-6 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm flex flex-col sm:flex-row gap-4 items-center justify-between">
        <div className="relative w-full sm:max-w-md">
          <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400" />
          <input
            type="text"
            placeholder="Cari pembelajar berdasarkan username..."
            value={userSearchQuery}
            onChange={(e) => setUserSearchQuery(e.target.value)}
            className="w-full pl-11 pr-4 py-3 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition-all"
          />
        </div>
        <button
          onClick={loadUsers}
          className="px-5 py-3 bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 border border-slate-200 dark:border-slate-700 text-slate-600 dark:text-slate-300 font-bold rounded-2xl text-xs flex items-center justify-center space-x-2 transition-all cursor-pointer"
        >
          <RefreshCw className="w-4 h-4" />
          <span>Muat Ulang Pengguna</span>
        </button>
      </section>

      {/* USER LIST CARDS */}
      {users.length > 0 ? (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {filteredUsers.map((userItem) => (
            <div
              key={userItem.id}
              className="bg-white dark:bg-slate-900 p-6 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xs space-y-4 hover:shadow-md transition-all duration-350 relative overflow-hidden group"
            >
              <div className="flex items-center space-x-4">
                <div className="w-12 h-12 bg-gradient-to-br from-indigo-500 to-purple-500 rounded-xl flex items-center justify-center text-white font-black text-lg shadow-sm">
                  {userItem.username.slice(0, 2).toUpperCase()}
                </div>
                <div className="flex-1 min-w-0">
                  <h4 className="font-extrabold text-slate-800 dark:text-slate-100 truncate text-sm select-all">
                    {userItem.username}
                  </h4>
                  <p className="text-4xs font-bold text-slate-450 uppercase tracking-widest mt-0.5">
                    Skor Belajar: <span className="text-indigo-500 dark:text-indigo-400 font-black">{userItem.points}</span>
                  </p>
                </div>
              </div>

              {/* Dynamic Level Override Action */}
              <div className="bg-slate-50 dark:bg-slate-950 p-4 rounded-2xl border border-slate-200 dark:border-slate-800 flex items-center justify-between gap-2">
                <div>
                  <span className="text-4xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Status Level</span>
                  <span className="text-xs font-black text-slate-800 dark:text-slate-200">
                    Lvl {userItem.level} {userItem.override_level !== null && userItem.override_level !== undefined ? "🔒 (Locked)" : "⚡ (Dinamis)"}
                  </span>
                </div>

                {/* Set level controls */}
                <div className="flex items-center space-x-2 shrink-0">
                  <select
                    value={userItem.override_level !== null && userItem.override_level !== undefined ? userItem.override_level : "dynamic"}
                    onChange={(e) => {
                      const val = e.target.value;
                      handleSetUserLevel(userItem.id, val === "dynamic" ? null : Number(val));
                    }}
                    disabled={updatingUserId === userItem.id}
                    className="py-1.5 px-3 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 text-xxs font-extrabold rounded-xl focus:outline-none focus:ring-1 focus:ring-indigo-500 disabled:opacity-50"
                  >
                    <option value="dynamic">Otomatis (Dinamis)</option>
                    {Array.from({ length: 10 }, (_, idx) => (
                      <option key={idx + 1} value={idx + 1}>Set Level {idx + 1}</option>
                    ))}
                  </select>
                </div>
              </div>

              {updatingUserId === userItem.id && (
                <div className="absolute inset-0 bg-slate-950/40 backdrop-blur-xs flex items-center justify-center rounded-3xl">
                  <Loader2 className="w-8 h-8 text-indigo-500 animate-spin" />
                </div>
              )}
            </div>
          ))}
        </div>
      ) : (
        <section className="bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl p-12 text-center text-slate-400 dark:text-slate-500 shadow-sm space-y-3">
          <Loader2 className="w-10 h-10 mx-auto text-indigo-500 animate-spin" />
          <h3 className="font-bold text-sm">Sedang Memuat Pengguna...</h3>
        </section>
      )}
    </div>
  );
}
