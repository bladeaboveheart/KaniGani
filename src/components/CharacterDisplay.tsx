import React from 'react';
import { Item } from '@/lib/types';

interface CharacterDisplayProps {
  item: Partial<Item> & { character?: string; svg_filename?: string; slug?: string; type?: string };
  className?: string;
  size?: number | string;
}

export const CharacterDisplay: React.FC<CharacterDisplayProps> = ({ item, className = '', size }) => {
  if ((!item.character || item.character.trim() === '') && item.svg_filename) {
    return (
      <img
        src={`/radicals/${item.svg_filename}`}
        alt={item.slug || 'radical'}
        className={`inline-block filter invert dark:invert-0 ${className}`}
        style={{
          width: size ? (typeof size === 'number' ? `${size}px` : size) : '1em',
          height: size ? (typeof size === 'number' ? `${size}px` : size) : '1em',
          objectFit: 'contain'
        }}
      />
    );
  }
  return <span className={className}>{item.character || item.slug || ''}</span>;
};
