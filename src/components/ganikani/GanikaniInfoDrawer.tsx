'use client';

import React from 'react';
import { Item } from '@/lib/types';
import FormattedText from '@/components/FormattedText';
import AudioPlayerButton from '@/components/audio/AudioPlayerButton';
import { PartOfSpeechList } from '@/components/ui/PartOfSpeechBadge';
import GanikaniReadingSynonymsEditor from './GanikaniReadingSynonymsEditor';
import { X, BookOpen } from 'lucide-react';

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
    <div className="border-t border-card-border bg-card-muted/40 p-6 sm:p-8 animate-fade-in space-y-6 text-sm leading-relaxed text-left select-text">
      {/* Header Bar: Title & Close Button */}
      <div className="flex items-center justify-between pb-3 border-b border-card-border">
        <div className="flex items-center space-x-2">
          <BookOpen className="w-4 h-4 text-amber-500" />
          <h3 className="font-bold text-text-primary text-sm sm:text-base">Detail Kosakata</h3>
        </div>
        <button
          type="button"
          onClick={onClose}
          className="flex items-center space-x-1 px-2.5 py-1 rounded-xl text-text-muted hover:text-text-primary hover:bg-card-muted text-xs font-semibold transition-colors cursor-pointer"
          aria-label="Tutup Detail"
        >
          <X className="w-4 h-4" />
          <span>Tutup</span>
        </button>
      </div>

      {/* Hero Kanji & Kana */}
      <div className="flex items-center justify-between pb-4 border-b border-card-border">
        <div className="flex flex-col">
          <span className="text-3xl sm:text-4xl font-black text-text-primary tracking-wide">
            {item.character}
          </span>
          <span className="text-lg sm:text-xl font-bold text-amber-500 dark:text-amber-400 mt-0.5">
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
        <span className="text-xxs font-extrabold text-text-muted uppercase tracking-widest block mb-1">
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
                className="p-3.5 rounded-xl bg-card border border-card-border space-y-1"
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

      {/* Footer shortcut reminder */}
      <div className="pt-2 text-center text-xs text-text-muted">
        Tekan <kbd className="px-1.5 py-0.5 rounded bg-card border border-card-border text-[10px] font-bold">F</kbd> atau klik Tutup untuk menyembunyikan detail.
      </div>
    </div>
  );
}
