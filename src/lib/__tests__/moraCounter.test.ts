import { describe, it, expect } from 'vitest';
import { calculateMoraCount, formatMoraLabel } from '../moraCounter';

describe('moraCounter', () => {
  it('correctly calculates basic kana morae', () => {
    expect(calculateMoraCount('たべる')).toBe(3);
    expect(formatMoraLabel('たべる')).toBe('3音');
    expect(calculateMoraCount('いぬ')).toBe(2);
    expect(calculateMoraCount('みず')).toBe(2);
  });

  it('correctly calculates morae with small combining digraphs (youon)', () => {
    // べんきょう = べ(1) + ん(1) + きょ(1) + う(1) = 4
    expect(calculateMoraCount('べんきょう')).toBe(4);
    expect(formatMoraLabel('べんきょう')).toBe('4音');

    // おちゃ = お(1) + ちゃ(1) = 2
    expect(calculateMoraCount('おちゃ')).toBe(2);
    expect(formatMoraLabel('おちゃ')).toBe('2音');
  });

  it('correctly calculates sokuon (っ) and long vowels (ー)', () => {
    // がっこう = が(1) + っ(1) + こ(1) + う(1) = 4
    expect(calculateMoraCount('がっこう')).toBe(4);

    // ちょっと = ちょ(1) + っ(1) + と(1) = 3
    expect(calculateMoraCount('ちょっと')).toBe(3);

    // コーヒー = コ(1) + ー(1) + ヒ(1) + ー(1) = 4
    expect(calculateMoraCount('コーヒー')).toBe(4);
  });

  it('handles empty or null inputs', () => {
    expect(calculateMoraCount('')).toBe(0);
    expect(calculateMoraCount(null)).toBe(0);
    expect(formatMoraLabel(undefined)).toBe('');
  });
});
