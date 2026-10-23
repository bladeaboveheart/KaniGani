import { describe, it, expect } from 'vitest';
import { getLevenshteinDistance, isAlmostCorrect } from '../levenshtein';

describe('getLevenshteinDistance', () => {
  it('returns 0 for identical strings', () => {
    expect(getLevenshteinDistance('', '')).toBe(0);
    expect(getLevenshteinDistance('kanji', 'kanji')).toBe(0);
  });

  it('calculates insertions correctly', () => {
    expect(getLevenshteinDistance('cat', 'cats')).toBe(1);
    expect(getLevenshteinDistance('', 'abc')).toBe(3);
  });

  it('calculates deletions correctly', () => {
    expect(getLevenshteinDistance('water', 'watr')).toBe(1);
    expect(getLevenshteinDistance('hello', '')).toBe(5);
  });

  it('calculates substitutions correctly', () => {
    expect(getLevenshteinDistance('tree', 'free')).toBe(1);
    expect(getLevenshteinDistance('book', 'back')).toBe(2);
  });
});

describe('isAlmostCorrect', () => {
  it('returns false for exact matches (dist 0)', () => {
    expect(isAlmostCorrect('tree', 'tree')).toBe(false);
    expect(isAlmostCorrect('berbakat', 'berbakat')).toBe(false);
  });

  it('allows 1-character typo for short words (len <= 3)', () => {
    expect(isAlmostCorrect('ca', 'cat')).toBe(true);
    expect(isAlmostCorrect('cxt', 'cat')).toBe(true);
    expect(isAlmostCorrect('c', 'cat')).toBe(false); // dist 2
  });

  it('allows 1-character typo for medium words (len <= 5)', () => {
    expect(isAlmostCorrect('watr', 'water')).toBe(true);
    expect(isAlmostCorrect('wattr', 'water')).toBe(true);
    expect(isAlmostCorrect('wtr', 'water')).toBe(false); // dist 2
  });

  it('allows up to 2-character typos for longer words (len > 5)', () => {
    expect(isAlmostCorrect('berbakt', 'berbakat')).toBe(true); // dist 1
    expect(isAlmostCorrect('brbakt', 'berbakat')).toBe(true); // dist 2
    expect(isAlmostCorrect('bbakt', 'berbakat')).toBe(false); // dist 3
  });
});
