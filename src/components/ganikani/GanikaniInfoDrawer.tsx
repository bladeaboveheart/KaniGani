'use client';

import React from 'react';
import { Item } from '@/lib/types';
import FormattedText from '@/components/FormattedText';
import AudioPlayerButton from '@/components/audio/AudioPlayerButton';
import { PartOfSpeechList } from '@/components/ui/PartOfSpeechBadge';
import MnemonicVisual from '@/components/mnemonic/MnemonicVisual';
import GanikaniReadingSynonymsEditor from './GanikaniReadingSynonymsEditor';
import { X, Volume2, BookOpen } from 'lucide-react';

interface GanikaniInfoDrawerProps {
  item: Item | null;
  isOpen: boolean;
  onClose: () => void;
  onReadingSynonymAdded?: (synonym: string) => void;
}

export default function GanikaniInfoDrawer({
  item,
  isOpen,
  onClose,
  onReadingSynonymAdded,
}: GanikaniInfoDrawerProps) {
  if (!isOpen || !item) return null;

  return (
    <div className="fixed inset-0 z-50 flex items-end sm:items-center justify-center p-0 sm:p-4 bg-black/60 backdrop-blur-xs animate-fade-in">
      <div
        className="w-full max-w-2xl bg-card border border-card-border rounded-t-3xl sm:rounded-3xl shadow-2xl overflow-hidden max-h-[88vh] flex flex-col animate-slide-up"
        role="dialog"
        aria-modal="true"
      >
        {/* Header bar */}
        <div className="flex items-center justify-between px-6 py-4 border-b border-card-border bg-card-muted/50">
          <div className="flex items-center space-x-2">
            <BookOpen className="w-5 h-5 text-amber-500" />
            <h3 className="font-bold text-text-primary text-base">Detail Kosakata</h3>
          </div>
          <button
            onClick={onClose}
            className="p-1.5 rounded-xl text-text-muted hover:text-text-primary hover:bg-card-muted transition-colors cursor-pointer"
            aria-label="Tutup Detail"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Scrollable Content */}
        <div className="p-6 overflow-y-auto space-y-6 text-left">
          {/* Hero Kanji & Kana */}
          <div className="flex items-center justify-between pb-6 border-b border-card-border">
            <div className="flex flex-col">
              <span className="text-4xl sm:text-5xl font-black text-text-primary tracking-wide">
                {item.character}
              </span>
              <span className="text-xl font-bold text-amber-500 dark:text-amber-400 mt-1">
                {item.primary_reading}
              </span>
            </div>

            {item.audios && item.audios.length > 0 && (
              <div className="flex items-center">
                <AudioPlayerButton audios={item.audios} variant="compact" />
              </div>
            )}
          </div>

          {/* Parts of Speech */}
          {item.parts_of_speech && item.parts_of_speech.length > 0 && (
            <div>
              <span className="text-xxs font-extrabold text-text-muted uppercase tracking-widest block mb-2">
                Jenis Kata
              </span>
              <PartOfSpeechList partsOfSpeech={item.parts_of_speech} size="sm" />
            </div>
          )}

          {/* Reading Synonyms Editor (Private) */}
          <div className="p-4 rounded-2xl bg-amber-500/5 border border-amber-500/20">
            <GanikaniReadingSynonymsEditor
              itemId={item.id}
              initialSynonyms={item.accepted_readings?.filter(
                (r) => !item.readings?.some((ir) => ir.reading === r)
              )}
              onSynonymAdded={onReadingSynonymAdded}
            />
          </div>

          {/* Meanings */}
          <div>
            <span className="text-xxs font-extrabold text-text-muted uppercase tracking-widest block mb-2">
              Arti & Terjemahan
            </span>
            <div className="space-y-1">
              <p className="text-base font-bold text-text-primary">
                {item.primary_meaning}
              </p>
              {item.meanings && item.meanings.length > 1 && (
                <p className="text-xs text-text-secondary">
                  Alternatif:{' '}
                  {item.meanings
                    .filter((m) => !m.primary_meaning)
                    .map((m) => m.meaning)
                    .join(', ')}
                </p>
              )}
            </div>
          </div>

          {/* Mnemonics */}
          {item.reading_mnemonic && (
            <div className="p-4 rounded-2xl bg-indigo-500/10 border border-indigo-500/20">
              <span className="text-xxs font-extrabold text-indigo-400 uppercase tracking-widest block mb-1">
                Mnemonic Bacaan (Reading)
              </span>
              <div className="text-sm text-text-primary leading-relaxed">
                <FormattedText text={item.reading_mnemonic} />
              </div>
            </div>
          )}

          {item.meaning_mnemonic && (
            <div className="p-4 rounded-2xl bg-emerald-500/10 border border-emerald-500/20">
              <span className="text-xxs font-extrabold text-emerald-400 uppercase tracking-widest block mb-1">
                Mnemonic Arti (Meaning)
              </span>
              <div className="text-sm text-text-primary leading-relaxed">
                <FormattedText text={item.meaning_mnemonic} />
              </div>
            </div>
          )}

          {/* Context Sentences */}
          {item.context_sentences && item.context_sentences.length > 0 && (
            <div className="space-y-3">
              <span className="text-xxs font-extrabold text-text-muted uppercase tracking-widest block">
                Contoh Kalimat
              </span>
              <div className="space-y-2">
                {item.context_sentences.map((sent, i) => (
                  <div
                    key={i}
                    className="p-3.5 rounded-xl bg-card-muted/60 border border-card-border space-y-1"
                  >
                    <p className="text-base font-semibold text-text-primary">
                      {sent.japanese}
                    </p>
                    <p className="text-xs text-text-secondary">
                      {sent.indonesian}
                    </p>
                  </div>
                ))}
              </div>
            </div>
          )}
        </div>

        {/* Footer info */}
        <div className="px-6 py-3 border-t border-card-border bg-card-muted/40 text-center">
          <p className="text-xs text-text-muted">
            Tekan <kbd className="px-1.5 py-0.5 rounded bg-card border border-card-border text-[10px] font-bold">F</kbd> atau klik tombol tutup untuk kembali ke kuis.
          </p>
        </div>
      </div>
    </div>
  );
}
