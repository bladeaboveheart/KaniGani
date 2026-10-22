import { describe, it, expect, beforeEach } from 'vitest';
import { isReadingMatch, isAnyReadingMatch, expandAcceptedReadings } from '../kanaHelper';
import { useQuizStore } from '@/store/useQuizStore';
import { Item } from '@/lib/types';

describe('kanaHelper Unit Tests', () => {
  it('correctly matches Katakana words answered in Hiragana (e.g. ビル and タバコ)', () => {
    expect(isReadingMatch('びる', 'ビル')).toBe(true);
    expect(isReadingMatch('たばこ', 'タバコ')).toBe(true);
    expect(isReadingMatch('あめりか', 'アメリカ')).toBe(true);
    expect(isReadingMatch('ほてる', 'ホテル')).toBe(true);
  });

  it('correctly matches Katakana words answered in Katakana', () => {
    expect(isReadingMatch('ビル', 'ビル')).toBe(true);
    expect(isReadingMatch('タバコ', 'タバコ')).toBe(true);
  });

  it('correctly matches Hiragana words answered in Katakana', () => {
    expect(isReadingMatch('タベル', 'たべる')).toBe(true);
    expect(isReadingMatch('ノム', 'のむ')).toBe(true);
  });

  it('handles words with chōonpu / prolonged sound mark (e.g. コーヒー, ケーキ)', () => {
    expect(isReadingMatch('こーひー', 'コーヒー')).toBe(true);
    expect(isReadingMatch('こうひい', 'コーヒー')).toBe(true);
    expect(isReadingMatch('けーき', 'ケーキ')).toBe(true);
  });

  it('matches Romaji inputs directly converted to Kana', () => {
    expect(isReadingMatch('biru', 'ビル')).toBe(true);
    expect(isReadingMatch('tabako', 'タバコ')).toBe(true);
  });

  it('returns false for mismatched readings', () => {
    expect(isReadingMatch('びる', 'たべる')).toBe(false);
    expect(isReadingMatch('たばこ', 'ビル')).toBe(false);
    expect(isReadingMatch('', 'ビル')).toBe(false);
    expect(isReadingMatch('びる', '')).toBe(false);
  });

  it('isAnyReadingMatch checks across an array of accepted readings', () => {
    expect(isAnyReadingMatch('びる', ['ビル'])).toBe(true);
    expect(isAnyReadingMatch('たばこ', ['タバコ'])).toBe(true);
    expect(isAnyReadingMatch('ビル', ['びる'])).toBe(true);
    expect(isAnyReadingMatch('りんご', ['ビル', 'タバコ'])).toBe(false);
  });

  it('expandAcceptedReadings expands readings into both Hiragana and Katakana variants', () => {
    const expandedBiru = expandAcceptedReadings(['ビル']);
    expect(expandedBiru).toContain('ビル');
    expect(expandedBiru).toContain('びる');

    const expandedTabako = expandAcceptedReadings(['タバコ']);
    expect(expandedTabako).toContain('タバコ');
    expect(expandedTabako).toContain('たばこ');

    const expandedTaberu = expandAcceptedReadings(['たべる']);
    expect(expandedTaberu).toContain('たべる');
    expect(expandedTaberu).toContain('タベル');
  });
});

describe('useQuizStore with Katakana Reading Items', () => {
  beforeEach(() => {
    useQuizStore.getState().resetStore();
  });

  it('accepts Hiragana "びる" for Katakana vocabulary "ビル"', () => {
    const itemBiru: Item = {
      id: 'vocab-biru',
      type: 'vocabulary',
      character: 'ビル',
      slug: 'gedung',
      level: 1,
      lesson_position: 1,
      primary_reading: 'ビル',
      accepted_readings: ['ビル'],
      primary_meaning: 'Gedung',
      accepted_meanings: ['gedung', 'bangunan'],
    };

    useQuizStore.getState().initializeSession([itemBiru], 'review');

    // Find the reading card
    const readingCard = useQuizStore.getState().queue.find(c => c.cardType === 'reading');
    expect(readingCard).toBeDefined();

    // Set active card to reading card
    useQuizStore.setState({ activeCard: readingCard });

    // Submit "びる" (Hiragana)
    useQuizStore.getState().setUserInput('びる');
    useQuizStore.getState().submitAnswer();

    const state = useQuizStore.getState();
    expect(state.isCorrect).toBe(true);
    expect(state.showFeedback).toBe(true);
    expect(state.incorrectActive).toBe(false);
  });

  it('accepts Hiragana "たばこ" for Katakana vocabulary "タバコ"', () => {
    const itemTabako: Item = {
      id: 'vocab-tabako',
      type: 'vocabulary',
      character: 'タバコ',
      slug: 'rokok',
      level: 1,
      lesson_position: 2,
      primary_reading: 'タバコ',
      accepted_readings: ['タバコ'],
      primary_meaning: 'Rokok',
      accepted_meanings: ['rokok', 'tembakau'],
    };

    useQuizStore.getState().initializeSession([itemTabako], 'review');

    const readingCard = useQuizStore.getState().queue.find(c => c.cardType === 'reading');
    expect(readingCard).toBeDefined();

    useQuizStore.setState({ activeCard: readingCard });

    // Submit "たばこ" (Hiragana)
    useQuizStore.getState().setUserInput('たばこ');
    useQuizStore.getState().submitAnswer();

    const state = useQuizStore.getState();
    expect(state.isCorrect).toBe(true);
    expect(state.showFeedback).toBe(true);
    expect(state.incorrectActive).toBe(false);
  });
});
