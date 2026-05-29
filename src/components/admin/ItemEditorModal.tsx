'use client';

import { useState } from 'react';
import { X, Plus, Trash2, Languages, FileText, Layers, ChevronRight, Loader2, Save } from 'lucide-react';
import * as wanakana from 'wanakana';

// Type definitions
interface MeaningInput {
  id?: string;
  meaning: string;
  primary_meaning: boolean;
  accepted_answer: boolean;
}

interface ReadingInput {
  id?: string;
  reading: string;
  reading_type: 'onyomi' | 'kunyomi' | 'nanori' | null;
  primary_reading: boolean;
  accepted_answer: boolean;
}

interface SentenceInput {
  id?: string;
  japanese: string;
  indonesian: string;
}

interface ItemInput {
  id?: string;
  type: 'radical' | 'kanji' | 'vocabulary';
  character: string;
  slug: string;
  level: number;
  lesson_position: number;
  meaning_mnemonic: string;
  reading_mnemonic: string;
  description: string;
  meanings: MeaningInput[];
  readings: ReadingInput[];
  context_sentences: SentenceInput[];
  prerequisites: string[];
}

interface ItemEditorModalProps {
  isOpen: boolean;
  setIsOpen: (open: boolean) => void;
  formItem: ItemInput;
  setFormItem: React.Dispatch<React.SetStateAction<ItemInput>>;
  handleSaveItem: () => void;
  formLoading: boolean;
  items: any[];
}

export default function ItemEditorModal({
  isOpen,
  setIsOpen,
  formItem,
  setFormItem,
  handleSaveItem,
  formLoading,
  items
}: ItemEditorModalProps) {
  const [activeFormTab, setActiveFormTab] = useState<'basic' | 'mnemonics' | 'meanings' | 'readings' | 'sentences' | 'prerequisites'>('basic');

  if (!isOpen) return null;

  // Change type triggers updates to meaning/reading structure defaults
  const handleTypeChange = (type: 'radical' | 'kanji' | 'vocabulary') => {
    setFormItem(prev => {
      let readings = [...prev.readings];
      let sentences = [...prev.context_sentences];

      if (type === 'radical') {
        readings = [];
        sentences = [];
      } else if (type === 'kanji') {
        sentences = [];
        if (readings.length === 0) {
          readings = [{ reading: '', reading_type: 'onyomi', primary_reading: true, accepted_answer: true }];
        }
      } else if (type === 'vocabulary') {
        if (readings.length === 0) {
          readings = [{ reading: '', reading_type: null, primary_reading: true, accepted_answer: true }];
        }
        if (sentences.length === 0) {
          sentences = [{ japanese: '', indonesian: '' }];
        }
      }

      return {
        ...prev,
        type,
        readings,
        context_sentences: sentences,
        prerequisites: []
      };
    });
  };

  // Meanings List Managers
  const addMeaningRow = () => {
    setFormItem(prev => ({
      ...prev,
      meanings: [...prev.meanings, { meaning: '', primary_meaning: false, accepted_answer: true }]
    }));
  };

  const removeMeaningRow = (index: number) => {
    setFormItem(prev => {
      const meanings = prev.meanings.filter((_, i) => i !== index);
      if (prev.meanings[index]?.primary_meaning && meanings.length > 0) {
        meanings[0].primary_meaning = true;
      }
      return { ...prev, meanings };
    });
  };

  const updateMeaningField = (index: number, field: keyof MeaningInput, value: any) => {
    setFormItem(prev => {
      const meanings = prev.meanings.map((m, i) => {
        if (i !== index) {
          if (field === 'primary_meaning' && value === true) {
            return { ...m, primary_meaning: false };
          }
          return m;
        }
        return { ...m, [field]: value };
      });
      return { ...prev, meanings };
    });
  };

  // Readings List Managers
  const addReadingRow = () => {
    setFormItem(prev => ({
      ...prev,
      readings: [...prev.readings, {
        reading: '',
        reading_type: prev.type === 'kanji' ? 'onyomi' : null,
        primary_reading: prev.readings.length === 0,
        accepted_answer: true
      }]
    }));
  };

  const removeReadingRow = (index: number) => {
    setFormItem(prev => {
      const readings = prev.readings.filter((_, i) => i !== index);
      if (prev.readings[index]?.primary_reading && readings.length > 0) {
        readings[0].primary_reading = true;
      }
      return { ...prev, readings };
    });
  };

  const updateReadingField = (index: number, field: keyof ReadingInput, value: any) => {
    setFormItem(prev => {
      const readings = prev.readings.map((r, i) => {
        if (i !== index) {
          if (field === 'primary_reading' && value === true) {
            return { ...r, primary_reading: false };
          }
          return r;
        }

        if (field === 'reading') {
          const inputVal = value as string;
          const converted = wanakana.toKana(inputVal, { IMEMode: true });
          return { ...r, reading: converted };
        }

        return { ...r, [field]: value };
      });
      return { ...prev, readings };
    });
  };

  // Sentences List Managers
  const addSentenceRow = () => {
    setFormItem(prev => ({
      ...prev,
      context_sentences: [...prev.context_sentences, { japanese: '', indonesian: '' }]
    }));
  };

  const removeSentenceRow = (index: number) => {
    setFormItem(prev => ({
      ...prev,
      context_sentences: prev.context_sentences.filter((_, i) => i !== index)
    }));
  };

  const updateSentenceField = (index: number, field: keyof SentenceInput, value: string) => {
    setFormItem(prev => {
      const context_sentences = prev.context_sentences.map((s, i) => {
        if (i !== index) return s;
        return { ...s, [field]: value };
      });
      return { ...prev, context_sentences };
    });
  };

  return (
    <div className="fixed inset-0 z-50 overflow-y-auto bg-slate-950/70 backdrop-blur-md flex items-center justify-center p-4 sm:p-6 transition-all duration-300">
      <div className="bg-white dark:bg-slate-900 w-full max-w-3xl rounded-3xl border border-slate-200 dark:border-slate-800 shadow-2xl overflow-hidden flex flex-col max-h-[90vh] animate-fade-in">

        {/* Modal Colored Header Banner based on Item type */}
        <div className={`p-6 text-white flex items-center justify-between shrink-0 transition-colors duration-300 bg-gradient-to-r ${
          formItem.type === 'radical'
            ? 'from-[#00a0f0] to-[#0070c0]'
            : formItem.type === 'kanji'
              ? 'from-[#f03e64] to-[#c02e50]'
              : 'from-[#a000f0] to-[#7000c0]'
        }`}>
          <div className="flex items-center space-x-3">
            <div className="w-10 h-10 rounded-xl bg-white/20 backdrop-blur-sm flex items-center justify-center font-bold text-lg select-none">
              {formItem.character || '?'}
            </div>
            <div>
              <span className="text-4xs font-black uppercase tracking-widest block opacity-75 select-none">
                {formItem.id ? 'Mode Edit Item' : 'Mode Tambah Baru'}
              </span>
              <h3 className="text-lg font-black tracking-tight leading-tight select-all">
                {formItem.id ? `Edit ${formItem.slug}` : `Item Baru (${formItem.type})`}
              </h3>
            </div>
          </div>
          <button
            onClick={() => setIsOpen(false)}
            className="p-1.5 hover:bg-white/20 rounded-lg transition-colors text-white cursor-pointer"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Modal Internal Tabs list */}
        <div className="flex border-b border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-950 shrink-0 text-xs sm:text-sm font-semibold overflow-x-auto select-none">
          <button
            onClick={() => setActiveFormTab('basic')}
            className={`py-3.5 px-4 sm:px-6 border-b-2 transition-colors cursor-pointer ${activeFormTab === 'basic'
              ? 'border-indigo-500 text-indigo-500 dark:text-indigo-400 bg-white dark:bg-slate-900/50'
              : 'border-transparent text-slate-500 dark:text-slate-400 hover:text-slate-800 dark:hover:text-slate-200'
              }`}
          >
            Data Dasar
          </button>
          <button
            onClick={() => setActiveFormTab('mnemonics')}
            className={`py-3.5 px-4 sm:px-6 border-b-2 transition-colors cursor-pointer ${activeFormTab === 'mnemonics'
              ? 'border-indigo-500 text-indigo-500 dark:text-indigo-400 bg-white dark:bg-slate-900/50'
              : 'border-transparent text-slate-500 dark:text-slate-400 hover:text-slate-800 dark:hover:text-slate-200'
              }`}
          >
            Mnemonik
          </button>
          <button
            onClick={() => setActiveFormTab('meanings')}
            className={`py-3.5 px-4 sm:px-6 border-b-2 transition-colors cursor-pointer flex items-center space-x-1.5 ${activeFormTab === 'meanings'
              ? 'border-indigo-500 text-indigo-500 dark:text-indigo-400 bg-white dark:bg-slate-900/50'
              : 'border-transparent text-slate-500 dark:text-slate-400 hover:text-slate-800 dark:hover:text-slate-200'
              }`}
          >
            <span>Daftar Arti</span>
            <span className="px-1.5 py-0.5 bg-slate-200 dark:bg-slate-800 rounded-md text-3xs font-extrabold">
              {formItem.meanings.filter(m => m.meaning.trim() !== '').length}
            </span>
          </button>
 
          {formItem.type !== 'radical' && (
            <button
              onClick={() => setActiveFormTab('readings')}
              className={`py-3.5 px-4 sm:px-6 border-b-2 transition-colors cursor-pointer flex items-center space-x-1.5 ${activeFormTab === 'readings'
                ? 'border-indigo-500 text-indigo-500 dark:text-indigo-400 bg-white dark:bg-slate-900/50'
                : 'border-transparent text-slate-500 dark:text-slate-400 hover:text-slate-800 dark:hover:text-slate-200'
                }`}
            >
              <span>Cara Baca</span>
              <span className="px-1.5 py-0.5 bg-slate-200 dark:bg-slate-800 rounded-md text-3xs font-extrabold">
                {formItem.readings.filter(r => r.reading.trim() !== '').length}
              </span>
            </button>
          )}
 
          {formItem.type === 'vocabulary' && (
            <button
              onClick={() => setActiveFormTab('sentences')}
              className={`py-3.5 px-4 sm:px-6 border-b-2 transition-colors cursor-pointer flex items-center space-x-1.5 ${activeFormTab === 'sentences'
                ? 'border-indigo-500 text-indigo-500 dark:text-indigo-400 bg-white dark:bg-slate-900/50'
                : 'border-transparent text-slate-500 dark:text-slate-400 hover:text-slate-800 dark:hover:text-slate-200'
                }`}
            >
              <span>Kalimat Contoh</span>
              <span className="px-1.5 py-0.5 bg-slate-200 dark:bg-slate-800 rounded-md text-3xs font-extrabold">
                {formItem.context_sentences.filter(s => s.japanese.trim() !== '').length}
              </span>
            </button>
          )}
 
          {formItem.type !== 'radical' && (
            <button
              onClick={() => setActiveFormTab('prerequisites')}
              className={`py-3.5 px-4 sm:px-6 border-b-2 transition-colors cursor-pointer flex items-center space-x-1.5 ${activeFormTab === 'prerequisites'
                ? 'border-indigo-500 text-indigo-500 dark:text-indigo-400 bg-white dark:bg-slate-900/50'
                : 'border-transparent text-slate-500 dark:text-slate-400 hover:text-slate-800 dark:hover:text-slate-200'
                }`}
            >
              <span>Prasyarat</span>
              <span className="px-1.5 py-0.5 bg-slate-200 dark:bg-slate-800 rounded-md text-3xs font-extrabold">
                {formItem.prerequisites.length}
              </span>
            </button>
          )}
        </div>

        {/* TAB CONTAINER BODY */}
        <div className="flex-1 p-6 sm:p-8 overflow-y-auto space-y-6">

          {/* TAB 1: BASIC INFORMATION DATA */}
          {activeFormTab === 'basic' && (
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-6 animate-fade-in">
              {/* Item Type selection */}
              <div>
                <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Tipe Item Kamus</label>
                <select
                  value={formItem.type}
                  onChange={(e) => handleTypeChange(e.target.value as any)}
                  disabled={!!formItem.id} // Cannot change type on edit
                  className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500 disabled:opacity-50"
                >
                  <option value="radical">Radikal (Radical)</option>
                  <option value="kanji">Karakter Kanji</option>
                  <option value="vocabulary">Kosakata (Vocabulary)</option>
                </select>
              </div>
 
              {/* Character input */}
              <div>
                <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Karakter Jepang</label>
                <input
                  type="text"
                  placeholder="Contoh: 水, 魚, 食べる"
                  value={formItem.character}
                  onChange={(e) => setFormItem(prev => ({ ...prev, character: e.target.value }))}
                  className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500"
                />
              </div>
 
              {/* Slug / Primary meaning name */}
              <div>
                <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Slug / Nama Kunci</label>
                <input
                  type="text"
                  placeholder="Contoh: water, fish, to eat"
                  value={formItem.slug}
                  onChange={(e) => setFormItem(prev => ({ ...prev, slug: e.target.value }))}
                  className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500"
                />
              </div>
 
              {/* Level selection */}
              <div>
                <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Tingkatan Level (1 - 10)</label>
                <input
                  type="number"
                  min="1"
                  max="10"
                  value={formItem.level}
                  onChange={(e) => setFormItem(prev => ({ ...prev, level: Number(e.target.value) }))}
                  className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500"
                />
              </div>
 
              {/* Lesson Queue Position */}
              <div className="sm:col-span-2">
                <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Urutan Lesson (lesson_position)</label>
                <input
                  type="number"
                  min="0"
                  value={formItem.lesson_position}
                  onChange={(e) => setFormItem(prev => ({ ...prev, lesson_position: Number(e.target.value) }))}
                  className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500"
                />
                <span className="text-4xs text-slate-400 mt-1 block">Semakin kecil angkanya, semakin awal diajarkan pada lesson kelompok.</span>
              </div>
            </div>
          )}
 
          {/* TAB 2: MNEMONIC ORAL NOTES */}
          {activeFormTab === 'mnemonics' && (
            <div className="space-y-6 animate-fade-in">
              {/* Meaning Mnemonic */}
              <div>
                <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Mnemonic Arti Kata</label>
                <textarea
                  rows={3}
                  placeholder="Jembatan keledai untuk menghafal arti. Anda bisa mengaitkan radikal pembentuknya."
                  value={formItem.meaning_mnemonic}
                  onChange={(e) => setFormItem(prev => ({ ...prev, meaning_mnemonic: e.target.value }))}
                  className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-slate-800 dark:text-slate-100 text-xs font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500 leading-relaxed"
                />
              </div>
 
              {/* Reading Mnemonic (Not for radical) */}
              {formItem.type !== 'radical' && (
                <div>
                  <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Mnemonic Cara Baca</label>
                  <textarea
                     rows={3}
                    placeholder="Jembatan keledai untuk menghafal cara baca kanji atau kosakata (Kana)."
                    value={formItem.reading_mnemonic}
                    onChange={(e) => setFormItem(prev => ({ ...prev, reading_mnemonic: e.target.value }))}
                    className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-slate-800 dark:text-slate-100 text-xs font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500 leading-relaxed"
                  />
                </div>
              )}
 
              {/* Description detail */}
              <div>
                <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Deskripsi Detail Karakter</label>
                <textarea
                  rows={3}
                  placeholder="Penjelasan mendetail mengenai kegunaan radikal atau info bahasa dari kosakata ini."
                  value={formItem.description}
                  onChange={(e) => setFormItem(prev => ({ ...prev, description: e.target.value }))}
                  className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-slate-800 dark:text-slate-100 text-xs font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500 leading-relaxed"
                />
              </div>
            </div>
          )}

          {/* TAB 3: DYNAMIC LIST OF MEANINGS */}
          {activeFormTab === 'meanings' && (
            <div className="space-y-4 animate-fade-in">
              <div className="flex items-center justify-between">
                <div>
                  <h4 className="font-extrabold text-sm select-none">Daftar Arti Item</h4>
                  <p className="text-4xs text-slate-400 select-none">Tentukan satu makna sebagai *Primary* (makna utama diuji) dan centang *Accepted* untuk sinonim yang diterima.</p>
                </div>
                <button
                  onClick={addMeaningRow}
                  className="px-3.5 py-1.5 bg-indigo-50 hover:bg-indigo-100 dark:bg-indigo-950 dark:hover:bg-indigo-900 border border-indigo-200 dark:border-indigo-900 text-indigo-600 dark:text-indigo-400 text-xs font-bold rounded-xl flex items-center space-x-1.5 transition-colors cursor-pointer"
                >
                  <Plus className="w-4 h-4" />
                  <span>Tambah Arti</span>
                </button>
              </div>

              <div className="space-y-3.5 max-h-[300px] overflow-y-auto pr-2">
                {formItem.meanings.map((m, idx) => (
                  <div
                    key={idx}
                    className={`flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 p-3 bg-slate-50 dark:bg-slate-950 border rounded-2xl transition-colors ${m.primary_meaning ? 'border-emerald-500/30 bg-emerald-500/5' : 'border-slate-200 dark:border-slate-850'
                      }`}
                  >
                    {/* Meaning Text input */}
                    <div className="flex-1 w-full">
                      <input
                        type="text"
                        placeholder="Ketik terjemahan arti (Inggris/Indonesia)..."
                        value={m.meaning}
                        onChange={(e) => updateMeaningField(idx, 'meaning', e.target.value)}
                        className="w-full px-3 py-2 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 text-xs font-semibold rounded-xl focus:outline-none focus:ring-1 focus:ring-indigo-500"
                      />
                    </div>

                    {/* Control options checkboxes */}
                    <div className="flex items-center gap-4 text-xxs font-bold shrink-0 w-full sm:w-auto justify-end select-none">
                      <label className="flex items-center space-x-1.5 cursor-pointer">
                        <input
                          type="checkbox"
                          checked={m.primary_meaning}
                          onChange={(e) => updateMeaningField(idx, 'primary_meaning', e.target.checked)}
                          className="w-3.5 h-3.5 text-indigo-600 border-slate-300 rounded focus:ring-indigo-500 cursor-pointer"
                        />
                        <span className={m.primary_meaning ? 'text-emerald-500' : 'text-slate-450'}>Primary</span>
                      </label>

                      <label className="flex items-center space-x-1.5 cursor-pointer">
                        <input
                          type="checkbox"
                          checked={m.accepted_answer}
                          onChange={(e) => updateMeaningField(idx, 'accepted_answer', e.target.checked)}
                          className="w-3.5 h-3.5 text-indigo-600 border-slate-300 rounded focus:ring-indigo-500 cursor-pointer"
                        />
                        <span className="text-slate-450">Accepted</span>
                      </label>

                      <button
                        onClick={() => removeMeaningRow(idx)}
                        disabled={formItem.meanings.length <= 1}
                        className="p-1 text-slate-400 hover:text-rose-500 disabled:opacity-30 disabled:hover:text-slate-450 transition-colors cursor-pointer"
                      >
                        <Trash2 className="w-4 h-4" />
                      </button>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* TAB 4: DYNAMIC LIST OF READINGS (KANJI / VOCAB) */}
          {activeFormTab === 'readings' && formItem.type !== 'radical' && (
            <div className="space-y-4 animate-fade-in">
              <div className="flex items-center justify-between">
                <div>
                  <h4 className="font-extrabold text-sm flex items-center space-x-1.5 select-none">
                    <Languages className="w-4 h-4 text-indigo-500" />
                    <span>Daftar Cara Baca (Readings)</span>
                  </h4>
                  <p className="text-4xs text-slate-400 select-none">
                    Ketik dalam Romaji, sistem akan mengonversi ke **Kana** secara real-time! Tentukan tipe bacaan Onyomi/Kunyomi (untuk Kanji).
                  </p>
                </div>
                <button
                  onClick={addReadingRow}
                  className="px-3.5 py-1.5 bg-indigo-50 hover:bg-indigo-100 dark:bg-indigo-950 dark:hover:bg-indigo-900 border border-indigo-200 dark:border-indigo-900 text-indigo-600 dark:text-indigo-400 text-xs font-bold rounded-xl flex items-center space-x-1.5 transition-colors cursor-pointer"
                >
                  <Plus className="w-4 h-4" />
                  <span>Tambah Bacaan</span>
                </button>
              </div>

              <div className="space-y-3.5 max-h-[300px] overflow-y-auto pr-2">
                {formItem.readings.map((r, idx) => (
                  <div
                    key={idx}
                    className={`flex flex-col lg:flex-row items-start lg:items-center justify-between gap-3 p-3 bg-slate-55 dark:bg-slate-950 border rounded-2xl transition-colors ${r.primary_reading ? 'border-emerald-500/30 bg-emerald-500/5' : 'border-slate-200 dark:border-slate-850'
                      }`}
                  >
                    {/* Reading Input (Auto transliterated) */}
                    <div className="flex-1 w-full relative">
                      <input
                        type="text"
                        placeholder="Ketik Romaji (contoh: sakana)..."
                        value={r.reading}
                        onChange={(e) => updateReadingField(idx, 'reading', e.target.value)}
                        className="w-full pl-3 pr-10 py-2 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 text-xs font-bold rounded-xl focus:outline-none focus:ring-1 focus:ring-indigo-500 tracking-wider"
                      />
                      <span className="absolute right-3 top-1/2 -translate-y-1/2 text-4xs font-bold text-indigo-500 select-none">Kana</span>
                    </div>

                    {/* Reading Type Selector (Kanji Only) */}
                    {formItem.type === 'kanji' && (
                      <div className="w-full lg:w-32 shrink-0 select-none">
                        <select
                          value={r.reading_type || 'onyomi'}
                          onChange={(e) => updateReadingField(idx, 'reading_type', e.target.value)}
                          className="w-full px-2.5 py-2 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 text-3xs font-extrabold rounded-xl focus:outline-none"
                        >
                          <option value="onyomi">Onyomi</option>
                          <option value="kunyomi">Kunyomi</option>
                          <option value="nanori">Nanori</option>
                        </select>
                      </div>
                    )}

                    {/* Checkbox triggers */}
                    <div className="flex items-center gap-4 text-xxs font-bold shrink-0 w-full lg:w-auto justify-end select-none">
                      <label className="flex items-center space-x-1.5 cursor-pointer">
                        <input
                          type="checkbox"
                          checked={r.primary_reading}
                          onChange={(e) => updateReadingField(idx, 'primary_reading', e.target.checked)}
                          className="w-3.5 h-3.5 text-indigo-600 border-slate-300 rounded focus:ring-indigo-500 cursor-pointer"
                        />
                        <span className={r.primary_reading ? 'text-emerald-500' : 'text-slate-450'}>Primary</span>
                      </label>

                      <label className="flex items-center space-x-1.5 cursor-pointer">
                        <input
                          type="checkbox"
                          checked={r.accepted_answer}
                          onChange={(e) => updateReadingField(idx, 'accepted_answer', e.target.checked)}
                          className="w-3.5 h-3.5 text-indigo-600 border-slate-300 rounded focus:ring-indigo-500 cursor-pointer"
                        />
                        <span className="text-slate-455">Accepted</span>
                      </label>

                      <button
                        onClick={() => removeReadingRow(idx)}
                        className="p-1 text-slate-400 hover:text-rose-500 transition-colors cursor-pointer"
                      >
                        <Trash2 className="w-4 h-4" />
                      </button>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* TAB 5: DYNAMIC LIST OF CONTEXT SENTENCES (VOCAB ONLY) */}
          {activeFormTab === 'sentences' && formItem.type === 'vocabulary' && (
            <div className="space-y-4 animate-fade-in">
              <div className="flex items-center justify-between">
                <div>
                  <h4 className="font-extrabold text-sm flex items-center space-x-1.5 select-none">
                    <FileText className="w-4 h-4 text-indigo-505" />
                    <span>Kalimat Contoh Kontekstual</span>
                  </h4>
                  <p className="text-4xs text-slate-400 select-none">Tambahkan kalimat contoh beserta artinya untuk mempermudah pemahaman kosakata.</p>
                </div>
                <button
                  onClick={addSentenceRow}
                  className="px-3.5 py-1.5 bg-indigo-50 hover:bg-indigo-100 dark:bg-indigo-950 dark:hover:bg-indigo-900 border border-indigo-200 dark:border-indigo-900 text-indigo-600 dark:text-indigo-400 text-xs font-bold rounded-xl flex items-center space-x-1.5 transition-colors cursor-pointer"
                >
                  <Plus className="w-4 h-4" />
                  <span>Tambah Kalimat</span>
                </button>
              </div>

              <div className="space-y-4 max-h-[300px] overflow-y-auto pr-2">
                {formItem.context_sentences.map((s, idx) => (
                  <div key={idx} className="p-4 bg-slate-55 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 rounded-2xl space-y-3 relative group/row">
                    <button
                      onClick={() => removeSentenceRow(idx)}
                      className="absolute top-3 right-3 p-1 text-slate-400 hover:text-rose-500 transition-colors cursor-pointer"
                    >
                      <Trash2 className="w-4 h-4" />
                    </button>

                    <div>
                      <label className="text-4xs font-black text-slate-400 uppercase tracking-wider mb-1 block select-none">Kalimat Jepang</label>
                      <input
                        type="text"
                        placeholder="Contoh: 魚が水の中で泳いでいます。"
                        value={s.japanese}
                        onChange={(e) => updateSentenceField(idx, 'japanese', e.target.value)}
                        className="w-full px-3 py-2 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 text-xs font-bold rounded-xl focus:outline-none"
                      />
                    </div>

                    <div>
                      <label className="text-4xs font-black text-slate-400 uppercase tracking-wider mb-1 block select-none">Arti Terjemahan</label>
                      <input
                        type="text"
                        placeholder="Contoh: Ikan sedang berenang di dalam air."
                        value={s.indonesian}
                        onChange={(e) => updateSentenceField(idx, 'indonesian', e.target.value)}
                        className="w-full px-3 py-2 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 text-xs font-semibold rounded-xl focus:outline-none"
                      />
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* TAB 6: DYNAMIC LIST OF PREREQUISITES */}
          {activeFormTab === 'prerequisites' && formItem.type !== 'radical' && (
            <div className="space-y-4 animate-fade-in">
              <div>
                <h4 className="font-extrabold text-sm flex items-center space-x-1.5 select-none">
                  <Layers className="w-4 h-4 text-indigo-505" />
                  <span>Item Prasyarat (Prerequisites)</span>
                </h4>
                <p className="text-4xs text-slate-400 leading-normal select-none">
                  Tentukan item radikal atau kanji apa saja pembentuk item ini yang wajib dipelajari (mencapai status Guru) terlebih dahulu.
                  {formItem.type === 'kanji' ? ' (Pilih Radikal pembentuk)' : ' (Pilih Kanji pembentuk)'}
                </p>
              </div>

              <div className="grid grid-cols-2 sm:grid-cols-4 gap-3 max-h-[300px] overflow-y-auto pr-2">
                {items
                  .filter(i => {
                    if (formItem.type === 'kanji') return i.type === 'radical';
                    if (formItem.type === 'vocabulary') return i.type === 'kanji';
                    return false;
                  })
                  .map((item) => {
                    const isChecked = formItem.prerequisites.includes(item.id);
                    return (
                      <div
                        key={item.id}
                        onClick={() => {
                          setFormItem(prev => {
                            const exists = prev.prerequisites.includes(item.id);
                            const newPrereqs = exists
                              ? prev.prerequisites.filter(id => id !== item.id)
                              : [...prev.prerequisites, item.id];
                            return { ...prev, prerequisites: newPrereqs };
                          });
                        }}
                        className={`p-3 rounded-2xl border flex items-center justify-between cursor-pointer transition-all duration-200 select-none ${isChecked
                          ? formItem.type === 'kanji'
                            ? 'bg-radical/10 border-radical text-radical'
                            : 'bg-kanji/10 border-kanji text-kanji'
                          : 'bg-slate-50 dark:bg-slate-950 border-slate-200 dark:border-slate-850 opacity-60 hover:opacity-100 text-slate-700 dark:text-slate-350'
                          }`}
                      >
                        <div className="flex flex-col">
                          <span className="text-xl font-black">{item.character}</span>
                          <span className="text-4xs uppercase tracking-wider truncate max-w-[80px] font-semibold mt-0.5 text-slate-500 dark:text-slate-400">
                            {item.slug || 'item'}
                          </span>
                        </div>
                        <span className="px-1.5 py-0.5 text-4xs font-black bg-slate-900/5 dark:bg-white/5 rounded text-slate-505">
                          Lvl {item.level}
                        </span>
                      </div>
                    );
                  })}
              </div>
            </div>
          )}

        </div>

        {/* Modal Bottom Footer Actions */}
        <div className="p-4 border-t border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-950 flex items-center justify-between shrink-0 select-none">
          <div className="flex items-center text-4xs font-bold text-slate-400 space-x-1">
            <span>Tab: {activeFormTab.toUpperCase()}</span>
            <ChevronRight className="w-3 h-3" />
            <span>Format: {formItem.type.toUpperCase()}</span>
          </div>

          <div className="flex space-x-2.5">
            <button
              type="button"
              onClick={() => setIsOpen(false)}
              className="px-5 py-2.5 bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 font-bold rounded-xl text-xs text-slate-600 dark:text-slate-300 transition-colors cursor-pointer"
            >
              Batal
            </button>
            <button
              type="button"
              disabled={formLoading}
              onClick={handleSaveItem}
              className="px-6 py-2.5 bg-emerald-500 hover:bg-emerald-600 disabled:opacity-50 disabled:cursor-not-allowed font-black rounded-xl text-xs text-slate-950 flex items-center space-x-1.5 shadow-md shadow-emerald-500/10 transition-all cursor-pointer"
            >
              {formLoading ? (
                <>
                  <Loader2 className="w-4 h-4 animate-spin text-slate-950" />
                  <span>Menyimpan...</span>
                </>
              ) : (
                <>
                  <Save className="w-4 h-4" />
                  <span>Simpan Perubahan</span>
                </>
              )}
            </button>
          </div>
        </div>

      </div>
    </div>
  );
}
