import React from 'react';

interface FormattedTextProps {
  text?: string | null;
  className?: string;
}

const TAG_TYPE_MAP: Record<string, 'radical' | 'kanji' | 'vocabulary' | 'reading' | 'ja' | 'italic'> = {
  radical: 'radical',
  radikal: 'radical',
  kanji: 'kanji',
  vocabulary: 'vocabulary',
  kosakata: 'vocabulary',
  reading: 'reading',
  read: 'reading',
  membaca: 'reading',
  baca: 'reading',
  bacaan: 'reading',
  ja: 'ja',
  em: 'italic',
  i: 'italic',
};

export default function FormattedText({ text, className = '' }: FormattedTextProps) {
  if (!text) return null;

  // Regex matches either:
  // 1. Anchor tag: <a ...href="...">content</a>
  // 2. Any supported semantic or formatting tag: <tagName>content</anyCloseTag>
  const tagRegex = /<a\s+[^>]*href=["']([^"']*)["'][^>]*>([\s\S]*?)<\/a>|<([a-zA-Z0-9_-]+)>([\s\S]*?)<\/(?:[a-zA-Z0-9_-]+)>/gi;
  const parts: React.ReactNode[] = [];
  let cursor = 0;
  let match;

  while ((match = tagRegex.exec(text)) !== null) {
    const [fullMatch, aHref, aContent, openTagName, tagContent] = match;
    const matchIndex = match.index;

    if (matchIndex > cursor) {
      parts.push(text.slice(cursor, matchIndex));
    }

    if (aHref !== undefined) {
      // 1. Hyperlink tag
      parts.push(
        <a
          key={`link-${matchIndex}`}
          href={aHref}
          target="_blank"
          rel="noopener noreferrer"
          className="underline text-teal-600 dark:text-teal-400 hover:text-teal-700 dark:hover:text-teal-300 font-medium inline transition-colors"
        >
          {aContent}
        </a>
      );
    } else if (openTagName !== undefined) {
      // 2. Semantic or style tag
      const normalizedType = TAG_TYPE_MAP[openTagName.toLowerCase()];

      if (!normalizedType) {
        // Unrecognized tag, output content or full match
        parts.push(tagContent || fullMatch);
      } else if (normalizedType === 'radical') {
        parts.push(
          <span
            key={`rad-${matchIndex}`}
            className="bg-[#00a0f0] text-white px-1.5 py-0.5 rounded-md font-bold text-[0.88em] shadow-3xs inline-block my-0.5 mx-0.5 leading-none select-text"
          >
            {tagContent}
          </span>
        );
      } else if (normalizedType === 'kanji') {
        parts.push(
          <span
            key={`kan-${matchIndex}`}
            className="bg-[#f03e64] text-white px-1.5 py-0.5 rounded-md font-bold text-[0.88em] shadow-3xs inline-block my-0.5 mx-0.5 leading-none select-text"
          >
            {tagContent}
          </span>
        );
      } else if (normalizedType === 'vocabulary') {
        parts.push(
          <span
            key={`voc-${matchIndex}`}
            className="bg-[#aa00ff] text-white px-1.5 py-0.5 rounded-md font-bold text-[0.88em] shadow-3xs inline-block my-0.5 mx-0.5 leading-none select-text"
          >
            {tagContent}
          </span>
        );
      } else if (normalizedType === 'reading') {
        parts.push(
          <span
            key={`read-${matchIndex}`}
            className="bg-slate-700 dark:bg-slate-600 text-white px-1.5 py-0.5 rounded-md font-bold text-[0.88em] shadow-3xs inline-block my-0.5 mx-0.5 leading-none select-text"
          >
            {tagContent}
          </span>
        );
      } else if (normalizedType === 'ja') {
        parts.push(
          <span
            key={`ja-${matchIndex}`}
            className="font-japanese font-black text-[0.95em] px-1 py-0.5 rounded bg-slate-200 dark:bg-slate-800 text-slate-900 dark:text-slate-100 inline-block my-0.5 mx-0.5 select-text"
          >
            {tagContent}
          </span>
        );
      } else if (normalizedType === 'italic') {
        parts.push(
          <em key={`em-${matchIndex}`} className="italic font-medium not-italic-font">
            {tagContent}
          </em>
        );
      }
    }

    cursor = matchIndex + fullMatch.length;
  }

  if (cursor < text.length) {
    parts.push(text.slice(cursor));
  }

  return <span className={className}>{parts}</span>;
}
