'use client';

import { useState, useEffect, useRef } from 'react';
import { Plus, Edit2, Trash2, Check, X, Loader2 } from 'lucide-react';
import {
  addUserSynonym,
  updateUserSynonym,
  removeUserSynonym,
  getUserItemData,
} from '@/services/userItemDataService';

interface UserSynonymsEditorProps {
  itemId: string;
  initialSynonyms?: string[];
  onSynonymAdded?: (synonym: string) => void;
  onSynonymsChange?: (synonyms: string[]) => void;
  className?: string;
}

export default function UserSynonymsEditor({
  itemId,
  initialSynonyms,
  onSynonymAdded,
  onSynonymsChange,
  className = '',
}: UserSynonymsEditorProps) {
  const [synonyms, setSynonyms] = useState<string[]>(initialSynonyms || []);
  const [isAdding, setIsAdding] = useState(false);
  const [newSynonym, setNewSynonym] = useState('');
  const [editingIndex, setEditingIndex] = useState<number | null>(null);
  const [editValue, setEditValue] = useState('');
  const [loading, setLoading] = useState(false);
  const [errorMsg, setErrorMsg] = useState('');

  const addInputRef = useRef<HTMLInputElement>(null);
  const editInputRef = useRef<HTMLInputElement>(null);

  // If initialSynonyms was not provided, load from database
  useEffect(() => {
    if (initialSynonyms !== undefined) {
      setSynonyms(initialSynonyms);
      return;
    }

    let isMounted = true;
    getUserItemData(itemId).then((data) => {
      if (isMounted && data) {
        setSynonyms(data.meaning_synonyms || []);
      }
    });

    return () => {
      isMounted = false;
    };
  }, [itemId, initialSynonyms]);

  useEffect(() => {
    if (isAdding) {
      addInputRef.current?.focus();
    }
  }, [isAdding]);

  useEffect(() => {
    if (editingIndex !== null) {
      editInputRef.current?.focus();
    }
  }, [editingIndex]);

  const handleStartAdd = () => {
    setErrorMsg('');
    setIsAdding(true);
    setNewSynonym('');
    setEditingIndex(null);
  };

  const handleCancelAdd = () => {
    setIsAdding(false);
    setNewSynonym('');
    setErrorMsg('');
  };

  const handleSaveAdd = async () => {
    const trimmed = newSynonym.trim();
    if (!trimmed) {
      handleCancelAdd();
      return;
    }

    if (synonyms.some((s) => s.toLowerCase() === trimmed.toLowerCase())) {
      setErrorMsg('Sinonim ini sudah ada');
      return;
    }

    setLoading(true);
    setErrorMsg('');
    try {
      const updated = await addUserSynonym(itemId, trimmed);
      setSynonyms(updated);
      setIsAdding(false);
      setNewSynonym('');
      onSynonymAdded?.(trimmed);
      onSynonymsChange?.(updated);
    } catch (err: any) {
      setErrorMsg(err?.message || 'Gagal menambahkan sinonim');
    } finally {
      setLoading(false);
    }
  };

  const handleStartEdit = (index: number) => {
    setErrorMsg('');
    setEditingIndex(index);
    setEditValue(synonyms[index]);
    setIsAdding(false);
  };

  const handleCancelEdit = () => {
    setEditingIndex(null);
    setEditValue('');
    setErrorMsg('');
  };

  const handleSaveEdit = async () => {
    if (editingIndex === null) return;
    const oldVal = synonyms[editingIndex];
    const trimmed = editValue.trim();

    if (!trimmed) {
      handleCancelEdit();
      return;
    }

    if (trimmed.toLowerCase() === oldVal.toLowerCase()) {
      handleCancelEdit();
      return;
    }

    setLoading(true);
    setErrorMsg('');
    try {
      const updated = await updateUserSynonym(itemId, oldVal, trimmed);
      setSynonyms(updated);
      setEditingIndex(null);
      setEditValue('');
      onSynonymsChange?.(updated);
    } catch (err: any) {
      setErrorMsg(err?.message || 'Gagal mengubah sinonim');
    } finally {
      setLoading(false);
    }
  };

  const handleDelete = async (synonym: string) => {
    setLoading(true);
    setErrorMsg('');
    try {
      const updated = await removeUserSynonym(itemId, synonym);
      setSynonyms(updated);
      onSynonymsChange?.(updated);
    } catch (err: any) {
      setErrorMsg(err?.message || 'Gagal menghapus sinonim');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className={`space-y-2 select-text ${className}`}>
      <div className="flex items-center justify-between">
        <span className="text-2xs font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest flex items-center space-x-1">
          <span>Sinonim Pengguna</span>
          {synonyms.length > 0 && (
            <span className="text-3xs px-1.5 py-0.2 rounded-full bg-teal-500/10 text-teal-600 dark:text-teal-400 font-bold">
              {synonyms.length}
            </span>
          )}
        </span>

        {!isAdding && editingIndex === null && (
          <button
            type="button"
            onClick={handleStartAdd}
            disabled={loading}
            className="flex items-center space-x-1 text-2xs font-bold text-teal-600 dark:text-teal-400 hover:text-teal-700 dark:hover:text-teal-300 transition-colors cursor-pointer px-1.5 py-0.5 rounded-md hover:bg-teal-50 dark:hover:bg-teal-950/30 active:scale-95"
            title="Tambah sinonim pribadi untuk item ini"
          >
            <Plus className="w-3 h-3" />
            <span>Tambah</span>
          </button>
        )}
      </div>

      {/* Error message */}
      {errorMsg && (
        <p className="text-2xs text-rose-500 font-semibold animate-shake">
          {errorMsg}
        </p>
      )}

      {/* Synonym Chips List */}
      <div className="flex flex-wrap items-center gap-1.5 min-h-[26px]">
        {synonyms.map((syn, idx) => {
          if (editingIndex === idx) {
            return (
              <div
                key={idx}
                className="flex items-center space-x-1 bg-white dark:bg-slate-800 border border-teal-500 rounded-lg px-2 py-0.5 shadow-sm"
              >
                <input
                  ref={editInputRef}
                  type="text"
                  value={editValue}
                  onChange={(e) => setEditValue(e.target.value)}
                  onKeyDown={(e) => {
                    if (e.key === 'Enter') handleSaveEdit();
                    if (e.key === 'Escape') handleCancelEdit();
                  }}
                  className="text-xs font-semibold bg-transparent border-none outline-none text-slate-900 dark:text-slate-100 w-24 sm:w-28"
                  placeholder="Ketik sinonim..."
                  disabled={loading}
                />
                <button
                  type="button"
                  onClick={handleSaveEdit}
                  disabled={loading}
                  className="text-teal-600 hover:text-teal-700 dark:text-teal-400 p-0.5 hover:bg-teal-50 dark:hover:bg-teal-900/30 rounded cursor-pointer"
                  title="Simpan"
                >
                  <Check className="w-3 h-3" />
                </button>
                <button
                  type="button"
                  onClick={handleCancelEdit}
                  disabled={loading}
                  className="text-slate-400 hover:text-slate-600 dark:hover:text-slate-200 p-0.5 hover:bg-slate-100 dark:hover:bg-slate-700 rounded cursor-pointer"
                  title="Batal"
                >
                  <X className="w-3 h-3" />
                </button>
              </div>
            );
          }

          return (
            <div
              key={idx}
              className="group flex items-center space-x-1.5 px-2.5 py-1 rounded-lg text-xs font-semibold bg-teal-50/80 dark:bg-teal-950/30 border border-teal-200/80 dark:border-teal-800/60 text-teal-800 dark:text-teal-300 transition-all hover:border-teal-400 dark:hover:border-teal-600"
            >
              <span>{syn}</span>
              <div className="flex items-center space-x-0.5 opacity-60 group-hover:opacity-100 transition-opacity">
                <button
                  type="button"
                  onClick={() => handleStartEdit(idx)}
                  disabled={loading}
                  className="p-0.5 hover:text-teal-900 dark:hover:text-teal-100 hover:bg-teal-100 dark:hover:bg-teal-900/50 rounded cursor-pointer"
                  title="Edit sinonim"
                >
                  <Edit2 className="w-2.5 h-2.5" />
                </button>
                <button
                  type="button"
                  onClick={() => handleDelete(syn)}
                  disabled={loading}
                  className="p-0.5 hover:text-rose-600 dark:hover:text-rose-400 hover:bg-rose-50 dark:hover:bg-rose-950/30 rounded cursor-pointer"
                  title="Hapus sinonim"
                >
                  <Trash2 className="w-2.5 h-2.5" />
                </button>
              </div>
            </div>
          );
        })}

        {/* Inline Add Input */}
        {isAdding && (
          <div className="flex items-center space-x-1 bg-white dark:bg-slate-800 border border-teal-500 rounded-lg px-2 py-0.5 shadow-sm animate-fade-in">
            <input
              ref={addInputRef}
              type="text"
              value={newSynonym}
              onChange={(e) => setNewSynonym(e.target.value)}
              onKeyDown={(e) => {
                if (e.key === 'Enter') handleSaveAdd();
                if (e.key === 'Escape') handleCancelAdd();
              }}
              className="text-xs font-semibold bg-transparent border-none outline-none text-slate-900 dark:text-slate-100 w-24 sm:w-28"
              placeholder="Sinonim baru..."
              disabled={loading}
            />
            <button
              type="button"
              onClick={handleSaveAdd}
              disabled={loading}
              className="text-teal-600 hover:text-teal-700 dark:text-teal-400 p-0.5 hover:bg-teal-50 dark:hover:bg-teal-900/30 rounded cursor-pointer"
              title="Simpan"
            >
              {loading ? (
                <Loader2 className="w-3 h-3 animate-spin text-teal-600" />
              ) : (
                <Check className="w-3 h-3" />
              )}
            </button>
            <button
              type="button"
              onClick={handleCancelAdd}
              disabled={loading}
              className="text-slate-400 hover:text-slate-600 dark:hover:text-slate-200 p-0.5 hover:bg-slate-100 dark:hover:bg-slate-700 rounded cursor-pointer"
              title="Batal"
            >
              <X className="w-3 h-3" />
            </button>
          </div>
        )}

        {/* Empty placeholder if no synonyms and not adding */}
        {synonyms.length === 0 && !isAdding && (
          <span className="text-2xs italic text-slate-400 dark:text-slate-500 select-none">
            Belum ada arti alternatif kustom.
          </span>
        )}
      </div>
    </div>
  );
}
