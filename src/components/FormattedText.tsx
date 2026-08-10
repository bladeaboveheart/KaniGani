import React from 'react';

interface FormattedTextProps {
  text?: string | null;
  className?: string;
}

export default function FormattedText({ text, className = '' }: FormattedTextProps) {
  if (!text) return null;

  const tagRegex = /<(radical|radikal|kanji|reading|vocabulary|kosakata|ja)>(.*?)<\/\1>/gi;
  const parts: React.ReactNode[] = [];
  let cursor = 0;
  let match;

  while ((match = tagRegex.exec(text)) !== null) {
    const [fullMatch, tagName, content] = match;
    const matchIndex = match.index;

    if (matchIndex > cursor) {
      parts.push(text.slice(cursor, matchIndex));
    }

    const tag = tagName.toLowerCase();
    let badgeClass = '';

    if (tag === 'radical' || tag === 'radikal') {
      badgeClass = 'bg-[#00a0f0] text-white px-1.5 py-0.5 rounded-md font-bold text-[0.88em] shadow-3xs inline-block my-0.5 mx-0.5 leading-none select-text';
    } else if (tag === 'kanji') {
      badgeClass = 'bg-[#f03e64] text-white px-1.5 py-0.5 rounded-md font-bold text-[0.88em] shadow-3xs inline-block my-0.5 mx-0.5 leading-none select-text';
    } else if (tag === 'vocabulary' || tag === 'kosakata') {
      badgeClass = 'bg-[#aa00ff] text-white px-1.5 py-0.5 rounded-md font-bold text-[0.88em] shadow-3xs inline-block my-0.5 mx-0.5 leading-none select-text';
    } else if (tag === 'reading') {
      badgeClass = 'bg-slate-700 dark:bg-slate-600 text-white px-1.5 py-0.5 rounded-md font-bold text-[0.88em] shadow-3xs inline-block my-0.5 mx-0.5 leading-none select-text';
    } else if (tag === 'ja') {
      badgeClass = 'font-japanese font-black text-[0.95em] px-1 py-0.5 rounded bg-slate-200 dark:bg-slate-800 text-slate-900 dark:text-slate-100 inline-block my-0.5 mx-0.5 select-text';
    }

    parts.push(
      <span key={matchIndex} className={badgeClass}>
        {content}
      </span>
    );

    cursor = matchIndex + fullMatch.length;
  }

  if (cursor < text.length) {
    parts.push(text.slice(cursor));
  }

  return <span className={className}>{parts}</span>;
}
