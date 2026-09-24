'use client';

import React, { useState } from 'react';
import Image from 'next/image';
import { Eye } from 'lucide-react';

interface MnemonicVisualProps {
  slug?: string;
  character?: string;
  type?: string;
  className?: string;
}

// Registry of supported visual mnemonics
const VISUAL_MAPPINGS: Record<string, string> = {
  // Pilot Batch Level 1
  'tujuh': '/mnemonics/tujuh.svg',
  '7': '/mnemonics/tujuh.svg',
  '七': '/mnemonics/tujuh.svg',
  'perosotan': '/mnemonics/perosotan.svg',
  'slide': '/mnemonics/perosotan.svg',
  '丿': '/mnemonics/perosotan.svg',
  'jari-kaki': '/mnemonics/jari-kaki.svg',
  'toe': '/mnemonics/jari-kaki.svg',
  'ト': '/mnemonics/jari-kaki.svg',
  'mulut': '/mnemonics/mulut.svg',
  'mouth': '/mnemonics/mulut.svg',
  '口': '/mnemonics/mulut.svg',
  'gunung': '/mnemonics/gunung.svg',
  'mountain': '/mnemonics/gunung.svg',
  '山': '/mnemonics/gunung.svg',
  'sungai': '/mnemonics/sungai.svg',
  'river': '/mnemonics/sungai.svg',
  '川': '/mnemonics/sungai.svg',
};

export const MnemonicVisual: React.FC<MnemonicVisualProps> = ({
  slug,
  character,
  className = '',
}) => {
  const [hasError, setHasError] = useState(false);

  // Normalize key from slug or character
  const normalizedKey = (slug || '').toLowerCase().trim();
  const visualSrc =
    (normalizedKey && VISUAL_MAPPINGS[normalizedKey]) ||
    (character && VISUAL_MAPPINGS[character]);

  if (!visualSrc || hasError) {
    return null;
  }

  return (
    <div
      className={`my-3 flex flex-col items-center justify-center p-3 rounded-2xl bg-white/70 dark:bg-slate-900/60 border border-slate-200/80 dark:border-slate-800/80 shadow-sm transition-all duration-200 ${className}`}
    >
      <div className="flex items-center gap-1.5 self-start text-[10px] font-bold uppercase tracking-wider text-teal-600 dark:text-teal-400 mb-2 select-none">
        <Eye className="w-3.5 h-3.5" />
        <span>Visual Mnemonic</span>
      </div>

      <div className="relative w-full max-w-[260px] sm:max-w-[280px] aspect-[3/2] overflow-hidden rounded-xl border border-slate-100 dark:border-slate-800 bg-slate-50 dark:bg-slate-950 flex items-center justify-center">
        {/* eslint-disable-next-line @next/next/no-img-element */}
        <img
          src={visualSrc}
          alt={`Visual Mnemonic untuk ${character || slug || 'item'}`}
          className="w-full h-full object-contain pointer-events-none select-none"
          onError={() => setHasError(true)}
          loading="lazy"
        />
      </div>
    </div>
  );
};

export default MnemonicVisual;
