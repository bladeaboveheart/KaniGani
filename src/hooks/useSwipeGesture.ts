import { useRef, useCallback } from 'react';

export interface SwipeHandlers {
  onSwipeLeft?: () => void;
  onSwipeRight?: () => void;
}

export interface SwipeOptions {
  /**
   * Minimum distance in pixels required to register a swipe.
   * Default: 45
   */
  minDistance?: number;
  /**
   * Ratio of horizontal distance to vertical distance.
   * Ensures vertical scrolling isn't mistaken for a horizontal swipe.
   * Default: 1.3
   */
  ratioThreshold?: number;
  /**
   * Maximum duration in milliseconds for a gesture to count as a swipe.
   * Default: 700
   */
  maxTimeMs?: number;
}

export function detectSwipeDirection(
  startX: number,
  startY: number,
  startTime: number,
  endX: number,
  endY: number,
  endTime: number,
  options: SwipeOptions = {}
): 'left' | 'right' | null {
  const { minDistance = 45, ratioThreshold = 1.3, maxTimeMs = 700 } = options;
  const elapsed = endTime - startTime;
  if (elapsed > maxTimeMs) return null;

  const diffX = endX - startX;
  const diffY = endY - startY;
  const absX = Math.abs(diffX);
  const absY = Math.abs(diffY);

  if (absX < minDistance) return null;
  if (absX < absY * ratioThreshold) return null;

  return diffX < 0 ? 'left' : 'right';
}

export function useSwipeGesture(
  handlers: SwipeHandlers,
  options: SwipeOptions = {}
) {
  const { minDistance = 45, ratioThreshold = 1.3, maxTimeMs = 700 } = options;
  const touchStartRef = useRef<{ x: number; y: number; time: number } | null>(null);

  const onTouchStart = useCallback((e: React.TouchEvent) => {
    if (e.touches.length !== 1) return;
    const touch = e.touches[0];
    touchStartRef.current = {
      x: touch.clientX,
      y: touch.clientY,
      time: Date.now(),
    };
  }, []);

  const onTouchEnd = useCallback(
    (e: React.TouchEvent) => {
      if (!touchStartRef.current || e.changedTouches.length === 0) return;
      const touch = e.changedTouches[0];
      const start = touchStartRef.current;
      touchStartRef.current = null;

      const direction = detectSwipeDirection(
        start.x,
        start.y,
        start.time,
        touch.clientX,
        touch.clientY,
        Date.now(),
        { minDistance, ratioThreshold, maxTimeMs }
      );

      if (direction === 'left') {
        handlers.onSwipeLeft?.();
      } else if (direction === 'right') {
        handlers.onSwipeRight?.();
      }
    },
    [handlers, minDistance, ratioThreshold, maxTimeMs]
  );

  return {
    onTouchStart,
    onTouchEnd,
  };
}

export default useSwipeGesture;
