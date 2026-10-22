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

  it('expands only Cara Baca and collapses Meaning when cardType is reading', () => {
    const kanjiItem: Item = {
      id: 'kj-8',
      type: 'kanji',
      character: '八',
      slug: 'delapan',
      level: 1,
      lesson_position: 8,
      meaning_mnemonic: 'Bentuknya menyerupai gunung atau angka delapan.',
      reading_mnemonic: 'Bayangkan seseorang memakai topi hachi (hachi = 8).',
      meanings: [{ id: 'm-8', meaning: 'Delapan', primary_meaning: true, accepted_answer: true }],
      primary_meaning: 'Delapan',
      readings: [
        { id: 'r-8', reading: 'はち', reading_type: 'onyomi', primary_reading: true, accepted_answer: true },
      ],
      primary_reading: 'はち',
    };

    const html = renderToStaticMarkup(
      <QuizInfoDrawer item={kanjiItem} cardType="reading" />
    );

    // Reading section is expanded
    expect(html).toContain('Mnemonic (Cara Baca)');
    expect(html).toContain('Bayangkan seseorang memakai topi hachi');
    expect(html).toContain('はち');

    // Meaning section header is rendered but inner meaning content is collapsed
    expect(html).toContain('Informasi &amp; Mnemonic Arti');
    expect(html).not.toContain('Mnemonic (Arti)');
    expect(html).not.toContain('Bentuknya menyerupai gunung atau angka delapan');
  });

  it('expands only Meaning and collapses Cara Baca when cardType is meaning', () => {
    const kanjiItem: Item = {
      id: 'kj-8',
      type: 'kanji',
      character: '八',
      slug: 'delapan',
      level: 1,
      lesson_position: 8,
      meaning_mnemonic: 'Bentuknya menyerupai gunung atau angka delapan.',
      reading_mnemonic: 'Bayangkan seseorang memakai topi hachi (hachi = 8).',
      meanings: [{ id: 'm-8', meaning: 'Delapan', primary_meaning: true, accepted_answer: true }],
      primary_meaning: 'Delapan',
      readings: [
        { id: 'r-8', reading: 'はち', reading_type: 'onyomi', primary_reading: true, accepted_answer: true },
      ],
      primary_reading: 'はち',
    };

    const html = renderToStaticMarkup(
      <QuizInfoDrawer item={kanjiItem} cardType="meaning" />
    );

    // Meaning section is expanded
    expect(html).toContain('Mnemonic (Arti)');
    expect(html).toContain('Bentuknya menyerupai gunung atau angka delapan');
    expect(html).toContain('Delapan');

    // Reading section header is rendered but inner reading content is collapsed
    expect(html).toContain('Cara Baca Jepang (Onyomi)');
    expect(html).not.toContain('Mnemonic (Cara Baca)');
    expect(html).not.toContain('Bayangkan seseorang memakai topi hachi');
  });
});
