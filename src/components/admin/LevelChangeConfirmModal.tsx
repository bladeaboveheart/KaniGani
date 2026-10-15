'use client';

import React from 'react';
import { AlertTriangle, ArrowRight, ShieldCheck, Zap, BookOpen, Clock, Loader2, X } from 'lucide-react';

interface LevelChangeConfirmModalProps {
  isOpen: boolean;
  onClose: () => void;
  onConfirm: () => void;
  user: {
    id: string;
    username: string;
    level: number;
    override_level?: number | null;
  } | null;
  targetLevel: number | null;
  loading?: boolean;
}

export default function LevelChangeConfirmModal({
  isOpen,
  onClose,
  onConfirm,
  user,
  targetLevel,
  loading = false,
}: LevelChangeConfirmModalProps) {
  if (!isOpen || !user) return null;

  const isDynamic = targetLevel === null;
  const currentLevel = user.override_level ?? user.level;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-slate-950/70 backdrop-blur-sm animate-fade-in">
      <div className="relative w-full max-w-lg bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl shadow-2xl overflow-hidden animate-scale-up">
        {/* Header */}
        <div className="p-6 border-b border-slate-100 dark:border-slate-800 flex items-center justify-between bg-amber-500/5">
          <div className="flex items-center space-x-3">
            <div className="w-10 h-10 rounded-2xl bg-amber-500/15 border border-amber-500/30 flex items-center justify-center text-amber-600 dark:text-amber-400 shrink-0">
              <AlertTriangle className="w-5 h-5" />
            </div>
            <div>
              <h3 className="text-base font-extrabold text-slate-800 dark:text-slate-100">
                Konfirmasi Perubahan Level
              </h3>
              <p className="text-3xs text-slate-500 dark:text-slate-400 mt-0.5">
                Pastikan perubahan level dan progres materi sudah sesuai
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
        <div className="p-6 space-y-5">
          {/* User Target Card */}
          <div className="bg-slate-50 dark:bg-slate-950/60 p-4 rounded-2xl border border-slate-200/80 dark:border-slate-800/80 flex items-center justify-between">
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
              <span className="text-xs font-black text-slate-600 dark:text-slate-400">
                Lvl {currentLevel}
              </span>
              <ArrowRight className="w-3.5 h-3.5 text-slate-400" />
              <span className={`text-xs font-black ${isDynamic ? 'text-indigo-600 dark:text-indigo-400' : 'text-amber-600 dark:text-amber-400'}`}>
                {isDynamic ? '⚡ Dinamis' : `🔒 Lvl ${targetLevel}`}
              </span>
            </div>
          </div>

          {/* Impact Explanations */}
          {!isDynamic ? (
            <div className="space-y-3">
              <h5 className="text-xs font-extrabold text-slate-700 dark:text-slate-300 flex items-center space-x-1.5">
                <span>Dampak Aksi Ini:</span>
              </h5>

              <div className="space-y-2 text-xs">
                <div className="p-3 bg-purple-500/10 border border-purple-500/20 rounded-2xl flex items-start space-x-2.5">
                  <div className="w-5 h-5 rounded-lg bg-purple-500/20 flex items-center justify-center text-purple-600 dark:text-purple-400 shrink-0 mt-0.5">
                    <Zap className="w-3.5 h-3.5" />
                  </div>
                  <div className="text-slate-700 dark:text-slate-300 leading-relaxed text-3xs font-medium">
                    <strong className="text-purple-700 dark:text-purple-300 font-bold block mb-0.5">
                      Upgrade ke SRS Level 5 (Guru 1)
                    </strong>
                    Semua materi (Radikal, Kanji, Kosakata) dari Level 1 s/d Level {targetLevel - 1} yang belum mencapai Guru akan dinaikkan statusnya ke <strong>SRS Level 5</strong>. Materi yang sudah Guru/Master/Burned tidak akan di-downgrade.
                  </div>
                </div>

                <div className="p-3 bg-rose-500/10 border border-rose-500/20 rounded-2xl flex items-start space-x-2.5">
                  <div className="w-5 h-5 rounded-lg bg-rose-500/20 flex items-center justify-center text-rose-600 dark:text-rose-400 shrink-0 mt-0.5">
                    <Clock className="w-3.5 h-3.5" />
                  </div>
                  <div className="text-slate-700 dark:text-slate-300 leading-relaxed text-3xs font-medium">
                    <strong className="text-rose-700 dark:text-rose-300 font-bold block mb-0.5">
                      Langsung Siap Review
                    </strong>
                    Materi yang baru dinaikkan ke Guru akan langsung dijadwalkan untuk review saat ini juga di dashboard pengguna.
                  </div>
                </div>

                <div className="p-3 bg-teal-500/10 border border-teal-500/20 rounded-2xl flex items-start space-x-2.5">
                  <div className="w-5 h-5 rounded-lg bg-teal-500/20 flex items-center justify-center text-teal-600 dark:text-teal-400 shrink-0 mt-0.5">
                    <BookOpen className="w-3.5 h-3.5" />
                  </div>
                  <div className="text-slate-700 dark:text-slate-300 leading-relaxed text-3xs font-medium">
                    <strong className="text-teal-700 dark:text-teal-300 font-bold block mb-0.5">
                      Buka Radikal Level {targetLevel}
                    </strong>
                    Radikal pada Level {targetLevel} akan otomatis dibuka siap untuk dipelajari (Lesson). Kanji dan kosakata Level {targetLevel} tetap terkunci normal.
                  </div>
                </div>

                <div className="p-3 bg-emerald-500/10 border border-emerald-500/20 rounded-2xl flex items-start space-x-2.5">
                  <div className="w-5 h-5 rounded-lg bg-emerald-500/20 flex items-center justify-center text-emerald-600 dark:text-emerald-400 shrink-0 mt-0.5">
                    <ShieldCheck className="w-3.5 h-3.5" />
                  </div>
                  <div className="text-slate-700 dark:text-slate-300 leading-relaxed text-3xs font-medium">
                    <strong className="text-emerald-700 dark:text-emerald-300 font-bold block mb-0.5">
                      Dapat Dibatalkan Kapan Saja (Revert Snapshot)
                    </strong>
                    Sistem otomatis menyimpan snapshot status awal. Anda dapat menekan tombol <strong>&ldquo;Revert&rdquo;</strong> nanti jika terjadi kesalahan.
                  </div>
                </div>
              </div>
            </div>
          ) : (
            <div className="p-4 bg-indigo-500/10 border border-indigo-500/20 rounded-2xl flex items-start space-x-3">
              <Zap className="w-5 h-5 text-indigo-500 shrink-0 mt-0.5" />
              <div className="text-3xs text-slate-700 dark:text-slate-300 leading-relaxed font-medium">
                <strong className="text-indigo-700 dark:text-indigo-300 font-bold block mb-1">
                  Kembali ke Perhitungan Dinamis
                </strong>
                Level pengguna akan dihitung otomatis kembali berdasarkan pencapaian kanji Guru (90%). Status materi yang sudah ada tidak akan diubah.
              </div>
            </div>
          )}
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
                <span>Menerapkan Perubahan...</span>
              </>
            ) : (
              <span>Ya, Terapkan Level {isDynamic ? 'Dinamis' : targetLevel}</span>
            )}
          </button>
        </div>
      </div>
    </div>
  );
}
