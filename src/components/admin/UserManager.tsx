'use client';

import { useState } from 'react';
import { Search, RefreshCw, Loader2, RotateCcw } from 'lucide-react';
import LevelChangeConfirmModal from './LevelChangeConfirmModal';
import LevelRevertConfirmModal from './LevelRevertConfirmModal';

interface UserManagerProps {
  users: any[];
  userSearchQuery: string;
  setUserSearchQuery: (q: string) => void;
  handleSetUserLevel: (userId: string, level: number | null) => void;
  handleRevertUserLevel?: (userId: string, historyId?: string) => void;
  updatingUserId: string | null;
  loadUsers: () => void;
  onInspectUser?: (userId: string) => void;
}

export default function UserManager({
  users,
  userSearchQuery,
  setUserSearchQuery,
  handleSetUserLevel,
  handleRevertUserLevel,
  updatingUserId,
  loadUsers,
  onInspectUser
}: UserManagerProps) {
  const [pendingLevelChange, setPendingLevelChange] = useState<{
    user: any;
    targetLevel: number | null;
  } | null>(null);

  const [pendingRevertUser, setPendingRevertUser] = useState<any | null>(null);

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
                      const nextLvl = val === "dynamic" ? null : Number(val);
                      // Jangan buka modal jika memilih level yang sama persis
                      const currentVal = userItem.override_level !== null && userItem.override_level !== undefined ? userItem.override_level : null;
                      if (nextLvl === currentVal) return;
                      setPendingLevelChange({ user: userItem, targetLevel: nextLvl });
                    }}
                    disabled={updatingUserId === userItem.id}
                    className="py-1.5 px-3 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 text-xxs font-extrabold rounded-xl focus:outline-none focus:ring-1 focus:ring-indigo-500 disabled:opacity-50 cursor-pointer"
                  >
                    <option value="dynamic">Otomatis (Dinamis)</option>
                    {Array.from({ length: 60 }, (_, idx) => (
                      <option key={idx + 1} value={idx + 1}>Set Level {idx + 1}</option>
                    ))}
                  </select>
                </div>
              </div>

              {/* Revert Banner jika user memiliki riwayat override aktif */}
              {userItem.active_override && (
                <div className="bg-amber-500/10 border border-amber-500/25 rounded-2xl p-3 flex items-center justify-between gap-3 animate-fade-in">
                  <div className="min-w-0">
                    <div className="flex items-center space-x-1.5 text-amber-700 dark:text-amber-400 font-extrabold text-3xs uppercase tracking-wider">
                      <RotateCcw className="w-3 h-3 shrink-0" />
                      <span>Override Aktif (Lvl {userItem.active_override.new_level})</span>
                    </div>
                    <p className="text-4xs text-slate-500 dark:text-slate-400 mt-0.5 truncate">
                      {userItem.active_override.affected_items_count} materi dinaikkan ke Guru • Awalnya {userItem.active_override.previous_level ? `Lvl ${userItem.active_override.previous_level}` : 'Dinamis'}
                    </p>
                  </div>
                  <button
                    type="button"
                    onClick={() => setPendingRevertUser(userItem)}
                    disabled={updatingUserId === userItem.id}
                    className="px-2.5 py-1.5 bg-amber-500 hover:bg-amber-600 text-slate-950 font-black text-3xs rounded-xl shadow-xs transition-all cursor-pointer shrink-0 flex items-center space-x-1 hover:scale-102 active:scale-98 disabled:opacity-50"
                  >
                    <RotateCcw className="w-3 h-3" />
                    <span>Revert</span>
                  </button>
                </div>
              )}

              {onInspectUser && (
                <button
                  type="button"
                  onClick={() => onInspectUser(userItem.id)}
                  className="w-full py-2 bg-indigo-50 dark:bg-indigo-950/30 hover:bg-indigo-100 dark:hover:bg-indigo-900/50 text-indigo-600 dark:text-indigo-400 font-bold rounded-xl text-3xs border border-indigo-100 dark:border-indigo-900/50 transition-colors cursor-pointer flex items-center justify-center gap-1.5"
                >
                  <span>Inspeksi Progres SRS Pengguna ➔</span>
                </button>
              )}

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

      {/* Modal Konfirmasi Perubahan Level */}
      <LevelChangeConfirmModal
        isOpen={pendingLevelChange !== null}
        onClose={() => setPendingLevelChange(null)}
        onConfirm={async () => {
          if (!pendingLevelChange) return;
          const { user, targetLevel } = pendingLevelChange;
          setPendingLevelChange(null);
          handleSetUserLevel(user.id, targetLevel);
        }}
        user={pendingLevelChange?.user || null}
        targetLevel={pendingLevelChange?.targetLevel ?? null}
        loading={updatingUserId === pendingLevelChange?.user?.id}
      />

      {/* Modal Konfirmasi Revert Override */}
      <LevelRevertConfirmModal
        isOpen={pendingRevertUser !== null}
        onClose={() => setPendingRevertUser(null)}
        onConfirm={async () => {
          if (!pendingRevertUser || !handleRevertUserLevel) return;
          const user = pendingRevertUser;
          setPendingRevertUser(null);
          handleRevertUserLevel(user.id, user.active_override?.id);
        }}
        user={pendingRevertUser}
        loading={updatingUserId === pendingRevertUser?.id}
      />
    </div>
  );
}
