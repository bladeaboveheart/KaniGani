import { describe, it, expect } from 'vitest';
import { detectSwipeDirection } from '../useSwipeGesture';

describe('detectSwipeDirection helper', () => {
  it('detects swipe left when horizontal movement is negative and meets threshold', () => {
    const start = { x: 200, y: 100, time: 1000 };
    const end = { x: 120, y: 110, time: 1200 }; // 80px left, 10px down in 200ms

    const result = detectSwipeDirection(
      start.x,
      start.y,
      start.time,
      end.x,
      end.y,
      end.time
    );

    expect(result).toBe('left');
  });

  it('detects swipe right when horizontal movement is positive and meets threshold', () => {
    const start = { x: 100, y: 100, time: 1000 };
    const end = { x: 180, y: 105, time: 1250 }; // 80px right, 5px down in 250ms

    const result = detectSwipeDirection(
      start.x,
      start.y,
      start.time,
      end.x,
      end.y,
      end.time
    );

    expect(result).toBe('right');
  });

  it('rejects swipe when vertical movement dominates (vertical scrolling)', () => {
    const start = { x: 100, y: 100, time: 1000 };
    const end = { x: 120, y: 220, time: 1200 }; // 20px right, 120px down

    const result = detectSwipeDirection(
      start.x,
      start.y,
      start.time,
      end.x,
      end.y,
      end.time
    );

    expect(result).toBeNull();
  });

  it('rejects swipe when distance is below minDistance threshold', () => {
    const start = { x: 100, y: 100, time: 1000 };
    const end = { x: 75, y: 100, time: 1100 }; // only 25px left

    const result = detectSwipeDirection(
      start.x,
      start.y,
      start.time,
      end.x,
      end.y,
      end.time,
      { minDistance: 45 }
    );

    expect(result).toBeNull();
  });

  it('rejects swipe if duration exceeds maxTimeMs', () => {
    const start = { x: 200, y: 100, time: 1000 };
    const end = { x: 100, y: 100, time: 2000 }; // 1000ms duration (too slow)

    const result = detectSwipeDirection(
      start.x,
      start.y,
      start.time,
      end.x,
      end.y,
      end.time,
      { maxTimeMs: 700 }
    );

    expect(result).toBeNull();
  });
});
