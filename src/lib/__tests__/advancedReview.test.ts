import { describe, it, expect } from 'vitest';

describe('Advanced Review Filter Logic', () => {
  it('parses valid minLevel, maxLevel, and item types from URL parameters', () => {
    const params = new URLSearchParams('minLevel=5&maxLevel=15&types=kanji,vocabulary');
    const minLevel = parseInt(params.get('minLevel') || '1', 10);
    const maxLevel = parseInt(params.get('maxLevel') || '60', 10);
    const types = (params.get('types') || '').split(',').map(s => s.trim()).filter(Boolean);

    expect(minLevel).toBe(5);
    expect(maxLevel).toBe(15);
    expect(types).toEqual(['kanji', 'vocabulary']);
  });

  it('determines if filter is active correctly', () => {
    const isFilterActive = (min: number | null, max: number | null, types: string[] | null) => {
      return (min !== null && !isNaN(min)) ||
             (max !== null && !isNaN(max)) ||
             (types !== null && types.length > 0 && types.length < 3);
    };

    expect(isFilterActive(1, 10, ['radical', 'kanji', 'vocabulary'])).toBe(true);
    expect(isFilterActive(null, null, ['kanji'])).toBe(true);
    expect(isFilterActive(null, null, ['radical', 'kanji', 'vocabulary'])).toBe(false);
  });

  it('clamps level range bounds logically', () => {
    const clampLevels = (min: number, max: number) => {
      const effectiveMin = Math.max(1, Math.min(60, Math.min(min, max)));
      const effectiveMax = Math.max(1, Math.min(60, Math.max(min, max)));
      return { min: effectiveMin, max: effectiveMax };
    };

    expect(clampLevels(10, 5)).toEqual({ min: 5, max: 10 });
    expect(clampLevels(-5, 100)).toEqual({ min: 1, max: 60 });
  });
});
