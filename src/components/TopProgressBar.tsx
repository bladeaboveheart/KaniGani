'use client';

import { useEffect, useState, useRef } from 'react';
import { usePathname, useSearchParams } from 'next/navigation';

export function TopProgressBar() {
  const pathname = usePathname();
  const searchParams = useSearchParams();
  const [active, setActive] = useState(false);
  const [progress, setProgress] = useState(0);
  const timerRef = useRef<NodeJS.Timeout | null>(null);

  // Complete progress on pathname or searchParams change
  useEffect(() => {
    if (active) {
      setProgress(100);
      const doneTimer = setTimeout(() => {
        setActive(false);
        setProgress(0);
      }, 250);
      return () => clearTimeout(doneTimer);
    }
  }, [pathname, searchParams]);

  // Intercept clicks on internal links to provide instant navigation feedback
  useEffect(() => {
    const handleClick = (e: MouseEvent) => {
      const target = (e.target as HTMLElement)?.closest('a');
      if (!target) return;

      const href = target.getAttribute('href');
      if (!href) return;

      // Ignore external links, hash anchors, new tabs, or modified clicks
      if (
        href.startsWith('http') ||
        href.startsWith('//') ||
        href.startsWith('#') ||
        target.target === '_blank' ||
        e.metaKey ||
        e.ctrlKey ||
        e.shiftKey ||
        e.altKey
      ) {
        return;
      }

      // Check if navigating to a different page or query
      const currentUrl = window.location.pathname + window.location.search;
      if (href === currentUrl || href === window.location.pathname) return;

      // Start progress bar immediately
      setActive(true);
      setProgress(30);

      if (timerRef.current) clearInterval(timerRef.current);
      timerRef.current = setInterval(() => {
        setProgress(prev => {
          if (prev >= 85) {
            if (timerRef.current) clearInterval(timerRef.current);
            return 85;
          }
          return prev + Math.random() * 15;
        });
      }, 100);
    };

    document.addEventListener('click', handleClick, { capture: true });

    return () => {
      document.removeEventListener('click', handleClick, { capture: true });
      if (timerRef.current) clearInterval(timerRef.current);
    };
  }, []);

  if (!active && progress === 0) return null;

  return (
    <div
      className="fixed top-0 left-0 right-0 z-[9999] pointer-events-none h-[2.5px] bg-transparent"
      aria-hidden="true"
    >
      <div
        className="h-full bg-gradient-to-r from-teal-400 via-emerald-400 to-indigo-500 transition-all duration-200 ease-out shadow-[0_0_8px_rgba(45,212,191,0.6)]"
        style={{
          width: `${progress}%`,
          opacity: progress === 100 ? 0 : 1,
          transition: progress === 100 ? 'width 150ms ease-out, opacity 250ms ease-in' : 'width 200ms ease-out',
        }}
      />
    </div>
  );
}
