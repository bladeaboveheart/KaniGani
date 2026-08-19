import { ItemType } from './types';

export type SrsLevelGroup = 'locked' | 'apprentice' | 'guru' | 'master' | 'enlightened' | 'burned';

/**
 * Returns human-readable label for an SRS stage in KaniGani theme.
 */
export function getSrsLabel(stage: number): string {
  if (stage === 0) return 'Terkunci';
  if (stage >= 1 && stage <= 4) return 'Kepiting Cilik'; // Apprentice
  if (stage === 5 || stage === 6) return 'Kepiting Guru'; // Guru
  if (stage === 7) return 'Kepiting Suhu'; // Master
  if (stage === 8) return 'Kepiting Sakti'; // Enlightened
  return 'Kepiting Rebus'; // Burned (Stage 9+)
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
 * Returns CSS class for SRS stage badges (Radical / Generic blue palette).
 */
export function getSrsColorClass(stage: number): string {
  if (stage === 0) return 'bg-slate-200/50 text-slate-400 dark:bg-slate-800/40 dark:text-slate-500 border border-slate-350/10';
  if (stage === 1) return 'bg-blue-100 text-blue-400 dark:bg-blue-950 dark:text-blue-300';
  if (stage === 2) return 'bg-blue-200 text-blue-500 dark:bg-blue-900 dark:text-blue-300';
  if (stage === 3) return 'bg-blue-300 text-blue-700 dark:bg-blue-800 dark:text-blue-200';
  if (stage === 4) return 'bg-blue-400 text-white dark:bg-blue-700 dark:text-white';
  if (stage === 5) return 'bg-blue-500 text-white dark:bg-blue-600 dark:text-white';
  if (stage === 6) return 'bg-blue-600 text-white dark:bg-blue-500 dark:text-white';
  if (stage === 7) return 'bg-blue-700 text-white dark:bg-blue-400 dark:text-blue-950';
  if (stage === 8) return 'bg-blue-800 text-white dark:bg-blue-300 dark:text-blue-950';
  return 'bg-blue-900 text-white dark:bg-blue-200 dark:text-blue-950';
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
    bannerGradient: 'from-cyan-600 to-teal-600',
    accentColor: '#00AAFF',
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
    bannerGradient: 'from-pink-600 to-rose-600',
    accentColor: '#FF00AA',
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
    bannerGradient: 'from-purple-600 to-indigo-600',
    accentColor: '#AA00FF',
    badgeBg: 'bg-vocab/10 text-vocab',
    badgeText: 'text-vocab',
    hatchedBg: 'bg-hatched-vocab',
    borderSolid: 'border-vocab',
    borderDashed: 'border-vocab/30 dark:border-vocab/20',
    mainColorClass: 'bg-vocab text-white',
    hoverClass: 'hover:bg-vocab-hover',
  },
};
