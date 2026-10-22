import React from 'react';
import { describe, it, expect, vi } from 'vitest';
import { renderToStaticMarkup } from 'react-dom/server';
import QuizInfoDrawer from '../quiz/QuizInfoDrawer';
import { Item } from '@/lib/types';

// Mock Supabase
vi.mock('@/lib/supabase', () => ({
  supabase: {
    from: () => ({
      select: () => ({
        eq: () => Promise.resolve({ data: [] }),
        in: () => Promise.resolve({ data: [] }),
      }),
    }),
  },
}));

describe('QuizInfoDrawer Component', () => {
  it('renders radical explanation when meaning_mnemonic is null but description is present (e.g. 辰 and Paus)', () => {
    const radicalItem: Item = {
      id: 'rad-123',
      type: 'radical',
      character: '辰',
      slug: 'tanah-longsor',
      level: 10,
      lesson_position: 5,
      description: 'Jika Anda menendang tebing dua kali, Anda akan memulai <radikal>longsor</radikal>! Oh tidak!',
      meanings: [{ id: 'm-1', meaning: 'Tanah longsor', primary_meaning: true, accepted_answer: true }],
      primary_meaning: 'Tanah longsor',
    };

    const html = renderToStaticMarkup(
      <QuizInfoDrawer item={radicalItem} cardType="meaning" />
    );

    expect(html).toContain('Penjelasan &amp; Mnemonic Radikal');
    expect(html).toContain('Jika Anda menendang tebing dua kali');
    expect(html).toContain('longsor');
  });

  it('renders radical pope.svg explanation when character is an svg path', () => {
    const radicalPaus: Item = {
      id: 'rad-pope',
      type: 'radical',
      character: '/radicals/pope.svg',
      slug: 'paus',
      level: 10,
      lesson_position: 15,
      description: 'Ini adalah radikal <radikal>paus</radikal>. Mengapa? Karena bentuknya seperti topi paus! Yang ini mempunyai salib tua yang besar di atasnya, dan hanya dapat dipakai oleh Paus.',
      meanings: [{ id: 'm-2', meaning: 'Paus', primary_meaning: true, accepted_answer: true }],
      primary_meaning: 'Paus',
    };

    const html = renderToStaticMarkup(
      <QuizInfoDrawer item={radicalPaus} cardType="meaning" />
    );

    expect(html).toContain('Penjelasan &amp; Mnemonic Radikal');
    expect(html).toContain('bentuknya seperti topi paus');
    expect(html).toContain('Paus');
  });

  it('renders Mnemonic (Arti) for kanji items with meaning_mnemonic', () => {
    const kanjiItem: Item = {
      id: 'kj-1',
      type: 'kanji',
      character: '直',
      slug: 'lurus',
      level: 10,
      lesson_position: 20,
      meaning_mnemonic: 'Kanji ini sama dengan kanji radikal — <kanji>lurus</kanji>.',
      reading_mnemonic: 'Masukkan makanan langsung ke kerongkongan Anda...',
      meanings: [{ id: 'm-3', meaning: 'Lurus', primary_meaning: true, accepted_answer: true }],
      primary_meaning: 'Lurus',
    };

    const html = renderToStaticMarkup(
      <QuizInfoDrawer item={kanjiItem} cardType="meaning" />
    );

    expect(html).toContain('Mnemonic (Arti)');
    expect(html).toContain('Kanji ini sama dengan kanji radikal');
  });
});
