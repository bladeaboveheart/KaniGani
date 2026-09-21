import { describe, it, expect } from 'vitest';
import { getPartOfSpeechMeta, parsePartsOfSpeech } from '../partsOfSpeech';

describe('partsOfSpeech helper', () => {
  it('correctly maps transitivity verbs', () => {
    const transitive = getPartOfSpeechMeta('transitive verb');
    expect(transitive.label).toBe('Kata Kerja Transitif');
    expect(transitive.englishLabel).toContain('Transitive Verb');
    expect(transitive.isTransitivity).toBe(true);

    const intransitive = getPartOfSpeechMeta('intransitive verb');
    expect(intransitive.label).toBe('Kata Kerja Intransitif');
    expect(intransitive.isTransitivity).toBe(true);
  });

  it('correctly maps verb types (ichidan, godan, suru)', () => {
    expect(getPartOfSpeechMeta('ichidan verb').label).toBe('Kata Kerja Ichidan');
    expect(getPartOfSpeechMeta('godan verb').label).toBe('Kata Kerja Godan');
    expect(getPartOfSpeechMeta('suru verb').label).toBe('Kata Kerja Suru');
  });

  it('correctly maps adjectives and nouns', () => {
    expect(getPartOfSpeechMeta('い adjective').label).toBe('Kata Sifat-i');
    expect(getPartOfSpeechMeta('な adjective').label).toBe('Kata Sifat-na');
    expect(getPartOfSpeechMeta('noun').label).toBe('Kata Benda');
    expect(getPartOfSpeechMeta('adverb').label).toBe('Kata Keterangan');
    expect(getPartOfSpeechMeta('expression').label).toBe('Ungkapan / Frasa');
  });

  it('handles unknown fallback gracefully', () => {
    const unknown = getPartOfSpeechMeta('rare grammatical particle');
    expect(unknown.label).toBe('Rare Grammatical Particle');
    expect(unknown.englishLabel).toBe('Rare Grammatical Particle');
  });

  it('sorts transitivity first in parsePartsOfSpeech', () => {
    const result = parsePartsOfSpeech(['godan verb', 'transitive verb', 'noun']);
    expect(result.length).toBe(3);
    expect(result[0].label).toBe('Kata Kerja Transitif');
  });

  it('handles empty or null inputs', () => {
    expect(parsePartsOfSpeech(null)).toEqual([]);
    expect(parsePartsOfSpeech(undefined)).toEqual([]);
    expect(parsePartsOfSpeech([])).toEqual([]);
  });
});
