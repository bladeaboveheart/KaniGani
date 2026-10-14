'use client';

import { useState, useEffect, useRef } from 'react';
import { Plus, Edit2, Trash2, Check, X, Loader2 } from 'lucide-react';
import FormattedText from '@/components/FormattedText';
import { saveUserNote, getUserItemData } from '@/services/userItemDataService';

interface UserNoteEditorProps {
  itemId: string;
  type: 'meaning' | 'reading';
  initialNote?: string | null;
  onNoteChange?: (note: string | null) => void;
  className?: string;
}

export default function UserNoteEditor({
  itemId,
  type,
  initialNote,
  onNoteChange,
  className = '',
}: UserNoteEditorProps) {
  const [note, setNote] = useState<string | null>(initialNote ?? null);
  const [isEditing, setIsEditing] = useState(false);
  const [editValue, setEditValue] = useState('');
  const [loading, setLoading] = useState(false);
  const [errorMsg, setErrorMsg] = useState('');

  const textareaRef = useRef<HTMLTextAreaElement>(null);

  const title = type === 'meaning' ? 'Mnemonic Pribadi (Arti)' : 'Mnemonic Pribadi (Cara Baca)';
  const badgeColor =
    type === 'meaning'
      ? 'text-teal-700 dark:text-teal-400 bg-teal-500/10 border-teal-500/20'
      : 'text-indigo-700 dark:text-indigo-400 bg-indigo-500/10 border-indigo-500/20';

  useEffect(() => {
    if (initialNote !== undefined) {
      setNote(initialNote);
      return;
    }

    let isMounted = true;
    getUserItemData(itemId).then((data) => {
      if (isMounted && data) {
        setNote(type === 'meaning' ? data.meaning_note : data.reading_note);
      }
    });

    return () => {
      isMounted = false;
    };
  }, [itemId, type, initialNote]);

  useEffect(() => {
    if (isEditing) {
      textareaRef.current?.focus();
      // Auto-resize textarea
      if (textareaRef.current) {
        textareaRef.current.style.height = 'auto';
        textareaRef.current.style.height = `${Math.max(64, textareaRef.current.scrollHeight)}px`;
      }
    }
  }, [isEditing]);

  const handleStartAdd = () => {
    setErrorMsg('');
    setIsEditing(true);
    setEditValue('');
  };

  const handleStartEdit = () => {
    setErrorMsg('');
    setIsEditing(true);
    setEditValue(note || '');
  };

  const handleCancel = () => {
    setIsEditing(false);
    setEditValue('');
    setErrorMsg('');
  };

  const handleSave = async () => {
    const trimmed = editValue.trim();
    setLoading(true);
    setErrorMsg('');
    try {
      const saved = await saveUserNote(itemId, type, trimmed || null);
      setNote(saved);
      setIsEditing(false);
      setEditValue('');
      onNoteChange?.(saved);
    } catch (err: any) {
      setErrorMsg(err?.message || 'Gagal menyimpan catatan');
    } finally {
      setLoading(false);
    }
  };

  const handleDelete = async () => {
    setLoading(true);
    setErrorMsg('');
    try {
      await saveUserNote(itemId, type, null);
      setNote(null);
      setIsEditing(false);
      setEditValue('');
      onNoteChange?.(null);
    } catch (err: any) {
      setErrorMsg(err?.message || 'Gagal menghapus catatan');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className={`mt-2 select-text ${className}`}>
      {/* Header bar */}
      <div className="flex items-center justify-between mb-1.5">
        <h6 className="text-2xs font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">
          {title}
        </h6>

        {!isEditing && note && (
          <div className="flex items-center space-x-1">
            <button
              type="button"
              onClick={handleStartEdit}
              disabled={loading}
              className="p-1 text-slate-400 hover:text-slate-700 dark:hover:text-slate-200 hover:bg-slate-100 dark:hover:bg-slate-800 rounded-md transition-colors cursor-pointer"
              title="Edit mnemonic pribadi"
            >
              <Edit2 className="w-3 h-3" />
            </button>
            <button
              type="button"
              onClick={handleDelete}
              disabled={loading}
              className="p-1 text-slate-400 hover:text-rose-600 dark:hover:text-rose-400 hover:bg-rose-50 dark:hover:bg-rose-950/30 rounded-md transition-colors cursor-pointer"
              title="Hapus mnemonic pribadi"
            >
              <Trash2 className="w-3 h-3" />
            </button>
          </div>
        )}

        {!isEditing && !note && (
          <button
            type="button"
            onClick={handleStartAdd}
            disabled={loading}
            className="flex items-center space-x-1 text-2xs font-bold text-slate-500 hover:text-slate-800 dark:text-slate-400 dark:hover:text-slate-200 transition-colors cursor-pointer px-1.5 py-0.5 rounded-md hover:bg-slate-100 dark:hover:bg-slate-800 active:scale-95"
            title="Tambah catatan / cerita mnemonic buatan sendiri"
          >
            <Plus className="w-3 h-3" />
            <span>Tambah Catatan</span>
          </button>
        )}
      </div>

      {/* Error message */}
      {errorMsg && (
        <p className="text-2xs text-rose-500 font-semibold mb-1.5 animate-shake">
          {errorMsg}
        </p>
      )}

      {/* Note view or inline editing */}
      {isEditing ? (
        <div className="space-y-2 bg-white dark:bg-slate-900 border border-slate-300 dark:border-slate-700 rounded-xl p-3 shadow-xs animate-fade-in">
          <textarea
            ref={textareaRef}
            value={editValue}
            onChange={(e) => {
              setEditValue(e.target.value);
              e.target.style.height = 'auto';
              e.target.style.height = `${Math.max(64, e.target.scrollHeight)}px`;
            }}
            onKeyDown={(e) => {
              if (e.key === 'Enter' && (e.ctrlKey || e.metaKey)) {
                e.preventDefault();
                handleSave();
              }
              if (e.key === 'Escape') {
                e.preventDefault();
                handleCancel();
              }
            }}
            placeholder={`Tulis cerita atau trik ingatan ${type === 'meaning' ? 'arti' : 'cara baca'} versi kamu sendiri... (Mendukung format tag semantik dan markdown)`}
            className="w-full text-xs font-normal bg-transparent border-none outline-none resize-none text-slate-800 dark:text-slate-200 placeholder:text-slate-400 dark:placeholder:text-slate-500 leading-relaxed"
            rows={2}
            disabled={loading}
          />
          <div className="flex items-center justify-between pt-1 border-t border-slate-100 dark:border-slate-800/80">
            <span className="text-3xs text-slate-400 dark:text-slate-500 select-none">
              Tekan <kbd className="px-1 py-0.5 rounded bg-slate-100 dark:bg-slate-800 text-3xs font-mono">Ctrl+Enter</kbd> untuk simpan
            </span>
            <div className="flex items-center space-x-1.5">
              <button
                type="button"
                onClick={handleCancel}
                disabled={loading}
                className="flex items-center space-x-1 px-2.5 py-1 rounded-lg text-2xs font-semibold text-slate-600 dark:text-slate-300 hover:bg-slate-100 dark:hover:bg-slate-800 transition-colors cursor-pointer"
              >
                <X className="w-3 h-3" />
                <span>Batal</span>
              </button>
              <button
                type="button"
                onClick={handleSave}
                disabled={loading}
                className="flex items-center space-x-1 px-2.5 py-1 rounded-lg text-2xs font-bold text-white bg-slate-900 dark:bg-slate-100 dark:text-slate-900 hover:bg-slate-800 dark:hover:bg-slate-200 transition-colors shadow-xs cursor-pointer active:scale-95"
              >
                {loading ? (
                  <Loader2 className="w-3 h-3 animate-spin" />
                ) : (
                  <Check className="w-3 h-3" />
                )}
                <span>Simpan</span>
              </button>
            </div>
          </div>
        </div>
      ) : note ? (
        <div className={`p-3 rounded-xl border border-dashed border-slate-300 dark:border-slate-700/80 bg-slate-50/60 dark:bg-slate-900/40 text-xs text-slate-750 dark:text-slate-250 leading-relaxed transition-all`}>
          <FormattedText text={note} />
        </div>
      ) : null}
    </div>
  );
}
