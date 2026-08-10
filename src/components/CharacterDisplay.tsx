import React from 'react';

interface CharacterDisplayProps {
  character: string;
  slug?: string;
  className?: string;
  imgClassName?: string;
}

export default function CharacterDisplay({
  character,
  slug = 'radikal',
  className = '',
  imgClassName = ''
}: CharacterDisplayProps) {
  if (!character) return null;

  const isSvg = character.startsWith('/') || character.startsWith('http') || character.endsWith('.svg');

  if (isSvg) {
    return (
      <span
        role="img"
        aria-label={slug}
        className={`inline-block bg-current shrink-0 align-middle ${imgClassName || 'w-[1.1em] h-[1.1em]'} ${className}`}
        style={{
          maskImage: `url(${character})`,
          maskRepeat: 'no-repeat',
          maskPosition: 'center',
          maskSize: 'contain',
          WebkitMaskImage: `url(${character})`,
          WebkitMaskRepeat: 'no-repeat',
          WebkitMaskPosition: 'center',
          WebkitMaskSize: 'contain',
        }}
      />
    );
  }

  return <span className={className}>{character}</span>;
}
