import { ItemType } from './types';

export type SrsLevelGroup = 'locked' | 'apprentice' | 'guru' | 'master' | 'enlightened' | 'burned';

/**
 * Returns human-readable label for an SRS stage in KaniGani theme.
 */
export function getSrsLabel(stage: number): string {
  if (stage === 0) return 'Terkunci';
  if (stage >= 1 && stage <= 4) return 'Pemula'; // Apprentice
  if (stage === 5 || stage === 6) return 'Lulus'; // Guru
  if (stage === 7) return 'Mahir'; // Master
  if (stage === 8) return 'Ahli'; // Enlightened
  return 'Tuntas'; // Burned (Stage 9+)
}

/**
 * Returns short / English-equivalent SRS group name.
 */
export function getSrsGroup(stage: number): SrsLevelGroup {
  if (stage === 0) return 'locked';
  if (stage >= 1 && stage <= 4) return 'apprentice';
  if (stage === 5 || stage === 6) return 'guru';
  if (stage === 7) return 'master';
  if (stage === 8) return 'enlightened';
  return 'burned';
}

/**
 * Returns CSS class for SRS stage badges adhering to KaniGani standardized 5 SRS stages.
 */
export function getSrsColorClass(stage: number): string {
  if (stage === 0) {
    return 'bg-slate-100 text-slate-500 border border-slate-200 dark:bg-slate-900/60 dark:text-slate-400 dark:border-slate-800';
  }
  if (stage >= 1 && stage <= 4) {
    return 'bg-rose-50 text-rose-600 border border-rose-200/60 dark:bg-rose-950/40 dark:text-rose-400 dark:border-rose-900/40';
  }
  if (stage === 5 || stage === 6) {
    return 'bg-purple-50 text-purple-600 border border-purple-200/60 dark:bg-purple-950/40 dark:text-purple-400 dark:border-purple-900/40';
  }
  if (stage === 7) {
    return 'bg-blue-50 text-blue-600 border border-blue-200/60 dark:bg-blue-950/40 dark:text-blue-400 dark:border-blue-900/40';
  }
  if (stage === 8) {
    return 'bg-teal-50 text-teal-600 border border-teal-200/60 dark:bg-teal-950/40 dark:text-teal-400 dark:border-teal-900/40';
  }
  return 'bg-slate-100 text-slate-700 border border-slate-300 dark:bg-slate-800 dark:text-slate-300 dark:border-slate-700';
}

export interface ItemThemeConfig {
  name: string;
  type: ItemType;
  title: string;
  subtitle: string;
  bannerGradient: string;
  accentColor: string;
  badgeBg: string;
  badgeText: string;
  hatchedBg: string;
  borderSolid: string;
  borderDashed: string;
  mainColorClass: string;
  hoverClass: string;
}

export const ITEM_THEMES: Record<ItemType, ItemThemeConfig> = {
  radical: {
    name: 'Radikal',
    type: 'radical',
    title: 'Kamus Radikal',
    subtitle: 'Radikal (dikenal sebagai bushu dalam bahasa Jepang) adalah komponen pembentuk huruf Kanji. Mempelajari dan mengenali radikal adalah langkah dasar krusial sebelum Anda mulai memahami huruf Kanji yang rumit.',
    bannerGradient: 'from-sky-500 to-blue-600',
    accentColor: '#5dade2',
    badgeBg: 'bg-radical/10 text-radical',
    badgeText: 'text-radical',
    hatchedBg: 'bg-hatched-radical',
    borderSolid: 'border-radical',
    borderDashed: 'border-radical/30 dark:border-radical/20',
    mainColorClass: 'bg-radical text-white',
    hoverClass: 'hover:bg-radical-hover',
  },
  kanji: {
    name: 'Kanji',
    type: 'kanji',
    title: 'Kamus Kanji',
    subtitle: 'Kanji adalah karakter logografis yang diadaptasi dari aksara Tionghoa. Pelajari makna, cara baca On\'yomi & Kun\'yomi, serta jembatan keledai untuk menguasai ribuan kanji secara sistematis.',
    bannerGradient: 'from-rose-500 to-pink-600',
    accentColor: '#FF6961',
    badgeBg: 'bg-kanji/10 text-kanji',
    badgeText: 'text-kanji',
    hatchedBg: 'bg-hatched-kanji',
    borderSolid: 'border-kanji',
    borderDashed: 'border-kanji/30 dark:border-kanji/20',
    mainColorClass: 'bg-kanji text-white',
    hoverClass: 'hover:bg-kanji-hover',
  },
  vocabulary: {
    name: 'Kosakata',
    type: 'vocabulary',
    title: 'Kamus Kosakata',
    subtitle: 'Kosakata menghubungkan kanji dan radikal menjadi kata nyata dalam bahasa Jepang. Pahami cara baca dan contoh kalimat konteks untuk memperkaya perbendaharaan kata Anda.',
    bannerGradient: 'from-teal-500 to-emerald-600',
    accentColor: '#48c9b0',
    badgeBg: 'bg-vocab/10 text-vocab',
    badgeText: 'text-vocab',
    hatchedBg: 'bg-hatched-vocab',
    borderSolid: 'border-vocab',
    borderDashed: 'border-vocab/30 dark:border-vocab/20',
    mainColorClass: 'bg-vocab text-white',
    hoverClass: 'hover:bg-vocab-hover',
  },
};
