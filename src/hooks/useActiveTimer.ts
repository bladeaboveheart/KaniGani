import { useEffect, useRef } from 'react';

export function useActiveTimer() {
  const activeSecondsRef = useRef<number>(0);
  const lastInteractionTimeRef = useRef<number>(0);

  useEffect(() => {
    lastInteractionTimeRef.current = Date.now();
    const handleInteraction = () => {
      lastInteractionTimeRef.current = Date.now();
    };

    // Listen to standard mouse, keyboard, touch, and input events
    const events = ['keydown', 'click', 'mousedown', 'mousemove', 'touchstart', 'scroll', 'input'];
    events.forEach(event => {
      window.addEventListener(event, handleInteraction, { passive: true });
    });

    // Update active seconds every 1 second
    const interval = setInterval(() => {
      const elapsedSinceInteraction = Date.now() - lastInteractionTimeRef.current;
      // 10 minutes in milliseconds = 600,000 ms
      if (elapsedSinceInteraction <= 10 * 60 * 1000) {
        activeSecondsRef.current += 1;
      }
    }, 1000);

    return () => {
      events.forEach(event => {
        window.removeEventListener(event, handleInteraction);
      });
      clearInterval(interval);
    };
  }, []);

  /**
   * Retrieves the accumulated active seconds and resets the counter to 0.
   * Useful when submitting a task or finishing a batch.
   */
  const getAndResetSeconds = () => {
    const secs = activeSecondsRef.current;
    activeSecondsRef.current = 0;
    lastInteractionTimeRef.current = Date.now(); // reset idle time baseline
    return secs;
  };

  /**
   * Retrieves current active seconds without resetting the counter.
   */
  const getSeconds = () => {
    return activeSecondsRef.current;
  };

  return { getSeconds, getAndResetSeconds };
}
