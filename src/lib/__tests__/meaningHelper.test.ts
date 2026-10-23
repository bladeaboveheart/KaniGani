import { describe, it, expect } from 'vitest';
import { expandAcceptedMeanings } from '../meaningHelper';

describe('expandAcceptedMeanings', () => {
  it('handles basic single words and downcases them', () => {
    expect(expandAcceptedMeanings(['Kucing', 'ANJING'])).toEqual(['kucing', 'anjing']);
  });

  it('splits slash and comma-separated meanings', () => {
    const result = expandAcceptedMeanings(['Unggul / Berbakat / Jenius', 'apel, jeruk']);
    expect(result).toContain('unggul');
    expect(result).toContain('berbakat');
    expect(result).toContain('jenius');
    expect(result).toContain('apel');
    expect(result).toContain('jeruk');
  });

  it('handles parenthetical expressions and inner components', () => {
    const result = expandAcceptedMeanings(['Pengar (Mabuk Pasca Minum / Hangover)']);
    expect(result).toContain('pengar');
    expect(result).toContain('mabuk pasca minum');
    expect(result).toContain('hangover');
  });

  it('strips terminal punctuation like ! or ? or .', () => {
    const result = expandAcceptedMeanings(['Ayo pergi!', 'Benarkah?']);
    expect(result).toContain('ayo pergi');
    expect(result).toContain('benarkah');
  });
});
