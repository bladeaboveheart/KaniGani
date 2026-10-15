'use client';

import React from 'react';
import { RotateCcw, ArrowRight, ShieldAlert, Loader2, X, History } from 'lucide-react';

interface LevelRevertConfirmModalProps {
  isOpen: boolean;
  onClose: () => void;
  onConfirm: () => void;
  user: {
    id: string;
    username: string;
    level: number;
    active_override?: {
      id: string;
      previous_level: number | null;
      new_level: number;
      affected_items_count: number;
      created_at: string;
    } | null;
  } | null;
  loading?: boolean;
}

export default function LevelRevertConfirmModal({
  isOpen,
  onClose,
  onConfirm,
  user,
  loading = false,
}: LevelRevertConfirmModalProps) {
  if (!isOpen || !user || !user.active_override) return null;

  const override = user.active_override;
  const targetRestoredLevel = override.previous_level ? `Lvl ${override.previous_level}` : '⚡ Otomatis (Dinamis)';

  const formattedDate = new Date(override.created_at).toLocaleString('id-ID', {
    day: 'numeric',
    month: 'short',
    year: 'numeric',
    hour: '2-digit',
    minute: '2-digit',
  });

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-slate-950/70 backdrop-blur-sm animate-fade-in">
      <div className="relative w-full max-w-md bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl shadow-2xl overflow-hidden animate-scale-up">
        {/* Header */}
        <div className="p-6 border-b border-slate-100 dark:border-slate-800 flex items-center justify-between bg-amber-500/5">
          <div className="flex items-center space-x-3">
            <div className="w-10 h-10 rounded-2xl bg-amber-500/15 border border-amber-500/30 flex items-center justify-center text-amber-600 dark:text-amber-400 shrink-0">
              <RotateCcw className="w-5 h-5" />
            </div>
            <div>
              <h3 className="text-base font-extrabold text-slate-800 dark:text-slate-100">
                Batalkan Override Level (Revert)
              </h3>
              <p className="text-3xs text-slate-500 dark:text-slate-400 mt-0.5">
                Mengembalikan status level & materi ke kondisi semula
              </p>
            </div>
          </div>
          <button
            type="button"
            onClick={onClose}
            disabled={loading}
            className="w-8 h-8 rounded-xl bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 flex items-center justify-center text-slate-500 transition-colors cursor-pointer"
          >
            <X className="w-4 h-4" />
          </button>
        </div>

        {/* Content Body */}
        <div className="p-6 space-y-4">
          {/* User Target Card */}
          <div className="bg-slate-50 dark:bg-slate-950/60 p-4 rounded-2xl border border-slate-200/80 dark:border-slate-800/80 space-y-3">
            <div className="flex items-center justify-between">
              <div className="flex items-center space-x-3">
                <div className="w-10 h-10 bg-gradient-to-br from-indigo-500 to-purple-500 rounded-xl flex items-center justify-center text-white font-black text-sm shadow-sm">
                  {user.username.slice(0, 2).toUpperCase()}
                </div>
                <div>
                  <span className="text-4xs font-bold text-slate-400 uppercase tracking-widest block">Pengguna</span>
                  <h4 className="font-bold text-slate-800 dark:text-slate-100 text-sm">{user.username}</h4>
                </div>
              </div>

              {/* Level Shift Preview */}
              <div className="flex items-center space-x-2 bg-white dark:bg-slate-900 px-3 py-1.5 rounded-xl border border-slate-200 dark:border-slate-800">
                <span className="text-xs font-black text-amber-600 dark:text-amber-400">
                  Lvl {override.new_level}
                </span>
                <ArrowRight className="w-3.5 h-3.5 text-slate-400" />
                <span className="text-xs font-black text-indigo-600 dark:text-indigo-400">
                  {targetRestoredLevel}
                </span>
              </div>
            </div>

            <div className="flex items-center justify-between text-3xs text-slate-500 dark:text-slate-400 border-t border-slate-200/60 dark:border-slate-800/60 pt-2.5">
              <span className="flex items-center space-x-1">
                <History className="w-3 h-3 text-slate-400" />
                <span>Override dibuat:</span>
              </span>
              <span className="font-semibold text-slate-700 dark:text-slate-300">{formattedDate}</span>
            </div>
          </div>

          {/* Details Notice */}
          <div className="p-4 bg-amber-500/10 border border-amber-500/20 rounded-2xl space-y-2">
            <h5 className="text-xs font-bold text-amber-800 dark:text-amber-300 flex items-center space-x-1.5">
              <ShieldAlert className="w-4 h-4 text-amber-600 dark:text-amber-400" />
              <span>Rincian Pengembalian:</span>
            </h5>
            <ul className="text-3xs text-slate-700 dark:text-slate-300 space-y-1 list-disc list-inside leading-relaxed font-medium">
              <li>
                Sebanyak <strong>{override.affected_items_count} item</strong> yang sempat dinaikkan statusnya akan dikembalikan ke SRS stage dan jadwal aslinya.
              </li>
              <li>
                Level pengguna dikembalikan ke <strong>{targetRestoredLevel}</strong>.
              </li>
              <li>
                Tindakan ini aman dan memastikan data historis belajar pengguna tetap utuh.
              </li>
            </ul>
          </div>
        </div>

        {/* Modal Actions */}
        <div className="p-5 bg-slate-50 dark:bg-slate-950/80 border-t border-slate-100 dark:border-slate-800 flex items-center justify-end space-x-3">
          <button
            type="button"
            onClick={onClose}
            disabled={loading}
            className="px-4 py-2.5 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-700 text-slate-700 dark:text-slate-300 hover:bg-slate-100 dark:hover:bg-slate-800 font-bold text-xs rounded-xl transition-all cursor-pointer disabled:opacity-50"
          >
            Batal
          </button>
          <button
            type="button"
            onClick={onConfirm}
            disabled={loading}
            className="px-5 py-2.5 bg-gradient-to-r from-amber-500 to-amber-600 hover:from-amber-600 hover:to-amber-700 text-slate-950 font-black text-xs rounded-xl shadow-md shadow-amber-500/20 transition-all cursor-pointer flex items-center space-x-2 disabled:opacity-50 hover:scale-102 active:scale-98"
          >
            {loading ? (
              <>
                <Loader2 className="w-4 h-4 animate-spin text-slate-950" />
                <span>Mengembalikan Status...</span>
              </>
            ) : (
              <>
                <RotateCcw className="w-3.5 h-3.5" />
                <span>Ya, Batalkan Override</span>
              </>
            )}
          </button>
        </div>
      </div>
    </div>
  );
}
