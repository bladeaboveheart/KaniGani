'use client';

import React, { useState, useEffect, useRef } from 'react';
import { Plus, Trash2, Check, X, Loader2 } from 'lucide-react';
import * as wanakana from 'wanakana';
import { supabase } from '@/lib/supabase';
import { addGanikaniReadingSynonym } from '@/services/ganikaniService';

interface GanikaniReadingSynonymsEditorProps {
  itemId: string;
  initialSynonyms?: string[];
  onSynonymAdded?: (synonym: string) => void;
  className?: string;
}

export default function GanikaniReadingSynonymsEditor({
  itemId,
  initialSynonyms,
  onSynonymAdded,
  className = '',
}: GanikaniReadingSynonymsEditorProps) {
  const [synonyms, setSynonyms] = useState<string[]>(initialSynonyms || []);
  const [isAdding, setIsAdding] = useState(false);
  const [inputValue, setInputValue] = useState('');
  const [loading, setLoading] = useState(false);
  const [errorMsg, setErrorMsg] = useState('');
  const [currentUserId, setCurrentUserId] = useState<string | null>(null);

  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    supabase.auth.getUser().then(({ data }) => {
      if (data?.user) {
        setCurrentUserId(data.user.id);
      }
    });
  }, []);

  useEffect(() => {
    if (initialSynonyms !== undefined) {
      setSynonyms(initialSynonyms);
      return;
    }

    if (!currentUserId || !itemId) return;

    let isMounted = true;
    supabase
      .from('user_item_data')
      .select('reading_synonyms')
      .eq('user_id', currentUserId)
      .eq('item_id', itemId)
      .maybeSingle()
      .then(({ data }) => {
        if (isMounted && data) {
          setSynonyms(data.reading_synonyms || []);
        }
      });

    return () => {
      isMounted = false;
    };
  }, [itemId, initialSynonyms, currentUserId]);

  useEffect(() => {
    if (isAdding) {
      inputRef.current?.focus();
    }
  }, [isAdding]);

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const val = e.target.value;
    // Auto-convert Romaji to Hiragana using wanakana
    const kanaVal = wanakana.toHiragana(val);
    setInputValue(kanaVal);
  };

  const handleStartAdd = () => {
    setErrorMsg('');
    setIsAdding(true);
    setInputValue('');
  };

  const handleCancelAdd = () => {
    setIsAdding(false);
    setInputValue('');
    setErrorMsg('');
  };

  const handleSaveAdd = async () => {
    const trimmed = inputValue.trim();
    if (!trimmed) {
      handleCancelAdd();
      return;
    }

    if (synonyms.includes(trimmed)) {
      setErrorMsg('Sinonim bacaan ini sudah ada');
      return;
    }

    if (!currentUserId) {
      setErrorMsg('Pengguna belum login');
      return;
    }

    setLoading(true);
    setErrorMsg('');
    try {
      const updated = await addGanikaniReadingSynonym(currentUserId, itemId, trimmed);
      setSynonyms(updated);
      setIsAdding(false);
      setInputValue('');
      onSynonymAdded?.(trimmed);
    } catch (err: any) {
      setErrorMsg(err?.message || 'Gagal menambahkan sinonim bacaan');
    } finally {
      setLoading(false);
    }
  };

  const handleDelete = async (synonymToDelete: string) => {
    if (!currentUserId) return;
    setLoading(true);
    try {
      const updated = synonyms.filter((s) => s !== synonymToDelete);
      await supabase
        .from('user_item_data')
        .upsert(
          {
            user_id: currentUserId,
            item_id: itemId,
            reading_synonyms: updated,
            updated_at: new Date().toISOString(),
          },
          { onConflict: 'user_id,item_id' }
        );
      setSynonyms(updated);
    } catch (err: any) {
      setErrorMsg(err?.message || 'Gagal menghapus sinonim');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className={`space-y-2 select-none ${className}`}>
      <div className="flex items-center justify-between">
        <span className="text-xxs font-extrabold text-amber-500 uppercase tracking-widest block">
          Sinonim Bacaan Privat (Kana)
        </span>
        {!isAdding && (
          <button
            type="button"
            onClick={handleStartAdd}
            className="flex items-center space-x-1 text-xs text-amber-500 hover:text-amber-400 font-bold transition-colors cursor-pointer"
          >
            <Plus className="w-3.5 h-3.5" />
            <span>Tambah</span>
          </button>
        )}
      </div>

      {errorMsg && (
        <p className="text-xs text-rose-500 font-medium">{errorMsg}</p>
      )}

      {/* Chip list */}
      <div className="flex flex-wrap gap-1.5 items-center">
        {synonyms.map((syn, idx) => (
          <span
            key={idx}
            className="inline-flex items-center gap-1.5 px-2.5 py-1 text-xs font-bold rounded-lg bg-amber-500/10 text-amber-600 dark:text-amber-300 border border-amber-500/25"
          >
            <span>{syn}</span>
            <button
              type="button"
              onClick={() => handleDelete(syn)}
              disabled={loading}
              className="text-amber-500/60 hover:text-rose-500 transition-colors cursor-pointer"
              title="Hapus sinonim ini"
            >
              <Trash2 className="w-3 h-3" />
            </button>
          </span>
        ))}

        {synonyms.length === 0 && !isAdding && (
          <span className="text-xs text-text-muted italic">
            Belum ada sinonim bacaan kustom.
          </span>
        )}
      </div>

      {/* Add Input */}
      {isAdding && (
        <div className="flex items-center gap-2 mt-2">
          <input
            ref={inputRef}
            type="text"
            value={inputValue}
            onChange={handleInputChange}
            onKeyDown={(e) => {
              if (e.key === 'Enter') {
                e.preventDefault();
                handleSaveAdd();
              } else if (e.key === 'Escape') {
                e.preventDefault();
                handleCancelAdd();
              }
            }}
            placeholder="Ketik bacaan Kana (romaji otomatis)..."
            className="flex-1 px-3 py-1.5 text-sm rounded-lg bg-card-muted border border-amber-500/40 text-text-primary focus:outline-none focus:ring-1 focus:ring-amber-500"
            disabled={loading}
          />
          <button
            type="button"
            onClick={handleSaveAdd}
            disabled={loading}
            className="p-1.5 rounded-lg bg-amber-500 text-white hover:bg-amber-600 transition-colors cursor-pointer"
            title="Simpan"
          >
            {loading ? <Loader2 className="w-4 h-4 animate-spin" /> : <Check className="w-4 h-4" />}
          </button>
          <button
            type="button"
            onClick={handleCancelAdd}
            disabled={loading}
            className="p-1.5 rounded-lg bg-card-muted text-text-muted hover:text-text-primary transition-colors cursor-pointer"
            title="Batal"
          >
            <X className="w-4 h-4" />
          </button>
        </div>
      )}
    </div>
  );
}
