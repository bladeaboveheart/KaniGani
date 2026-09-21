export interface PartOfSpeechMeta {
  raw: string;
  label: string;
  englishLabel: string;
  description?: string;
  isTransitivity?: boolean;
}

const POS_DICTIONARY: Record<string, Omit<PartOfSpeechMeta, 'raw'>> = {
  // Verbs & Transitivity
  'transitive verb': {
    label: 'Kata Kerja Transitif',
    englishLabel: 'Transitive Verb (他動詞)',
    description: 'Membutuhkan objek langsung (partikel を / wo)',
    isTransitivity: true,
  },
  'intransitive verb': {
    label: 'Kata Kerja Intransitif',
    englishLabel: 'Intransitive Verb (自動詞)',
    description: 'Tidak memerlukan objek langsung (partikel が / ga)',
    isTransitivity: true,
  },
  'ichidan verb': {
    label: 'Kata Kerja Ichidan',
    englishLabel: 'Ichidan Verb (一段動詞 / Ru-verb)',
    description: 'Konjugasi berakhiran -iru / -eru',
  },
  'godan verb': {
    label: 'Kata Kerja Godan',
    englishLabel: 'Godan Verb (五段動詞 / U-verb)',
    description: 'Konjugasi 5 baris vokal',
  },
  'suru verb': {
    label: 'Kata Kerja Suru',
    englishLabel: 'Suru Verb (する動詞)',
    description: 'Kata kerja bentukan dengan する (melakukan)',
  },
  'する verb': {
    label: 'Kata Kerja Suru',
    englishLabel: 'Suru Verb (する動詞)',
    description: 'Kata kerja bentukan dengan する (melakukan)',
  },
  'verbal noun': {
    label: 'Nomina Verbal',
    englishLabel: 'Verbal Noun (サ変名詞)',
    description: 'Kata benda yang dapat berfungsi sebagai kata kerja dengan する',
  },
  'こそあど word': {
    label: 'Kata Tunjuk (Kosoado)',
    englishLabel: 'Demonstrative Word (こそあど言葉)',
    description: 'Sistem kata penunjuk / demonstratif (ko/so/a/do)',
  },
  'オノマトペ': {
    label: 'Onomatope',
    englishLabel: 'Onomatopoeia (オノマトペ)',
    description: 'Tiruan bunyi, suara, atau gambaran keadaan (giseigo/gitaigo)',
  },
  'たる adjective': {
    label: 'Kata Sifat-taru',
    englishLabel: 'taru-Adjective (たる形容詞)',
    description: 'Bentuk kata sifat sastra klasik dengan akhiran たる',
  },
  'kuru verb': {
    label: 'Kata Kerja Kuru',
    englishLabel: 'Kuru Verb (くる動詞 / 来る)',
    description: 'Kata kerja tidak beraturan 来る (datang)',
  },
  'irregular verb': {
    label: 'Kata Kerja Tak Beraturan',
    englishLabel: 'Irregular Verb (不規則動詞)',
    description: 'Konjugasi bentuk khusus',
  },

  // Nouns
  'noun': {
    label: 'Kata Benda',
    englishLabel: 'Noun (名詞)',
    description: 'Nomina / Kata benda',
  },
  'independent noun': {
    label: 'Kata Benda Mandiri',
    englishLabel: 'Independent Noun (独立名詞)',
    description: 'Kata benda yang dapat berdiri sendiri tanpa partikel khusus',
  },
  'proper noun': {
    label: 'Nama Khusus',
    englishLabel: 'Proper Noun (固有名詞)',
    description: 'Nama orang, lokasi, institusi, atau entitas unik',
  },
  'pronoun': {
    label: 'Kata Ganti',
    englishLabel: 'Pronoun (代名詞)',
    description: 'Kata ganti orang, penunjuk, atau tempat',
  },

  // Adjectives
  'adjective': {
    label: 'Kata Sifat',
    englishLabel: 'Adjective (形容詞)',
    description: 'Kata yang menerangkan sifat benda atau keadaan',
  },
  'い adjective': {
    label: 'Kata Sifat-i',
    englishLabel: 'i-Adjective (い形容詞)',
    description: 'Kata sifat berakhiran vokal ~い',
  },
  'i adjective': {
    label: 'Kata Sifat-i',
    englishLabel: 'i-Adjective (い形容詞)',
    description: 'Kata sifat berakhiran vokal ~い',
  },
  'な adjective': {
    label: 'Kata Sifat-na',
    englishLabel: 'na-Adjective (な形容詞 / 形容動詞)',
    description: 'Memerlukan partikel な sebelum kata benda',
  },
  'na adjective': {
    label: 'Kata Sifat-na',
    englishLabel: 'na-Adjective (な形容詞 / 形容動詞)',
    description: 'Memerlukan partikel な sebelum kata benda',
  },
  'の adjective': {
    label: 'Kata Sifat-no',
    englishLabel: 'no-Adjective (の形容詞)',
    description: 'Kata sifat yang dihubungkan dengan partikel の',
  },
  'no adjective': {
    label: 'Kata Sifat-no',
    englishLabel: 'no-Adjective (の形容詞)',
    description: 'Kata sifat yang dihubungkan dengan partikel の',
  },

  // Adverbs, Expressions & Others
  'adverb': {
    label: 'Kata Keterangan',
    englishLabel: 'Adverb (副詞)',
    description: 'Menerangkan kata kerja, kata sifat, atau klausa',
  },
  'expression': {
    label: 'Ungkapan / Frasa',
    englishLabel: 'Expression / Idiom (慣用句)',
    description: 'Ungkapan lazim, idiom, atau salam',
  },
  'numeral': {
    label: 'Bilangan / Angka',
    englishLabel: 'Numeral (数詞)',
    description: 'Menyatakan angka, hitungan, atau kuantitas',
  },
  'counter': {
    label: 'Kata Bantu Hitung',
    englishLabel: 'Counter (助数詞)',
    description: 'Satuan bantu hitung untuk benda, waktu, atau urutan',
  },
  'prefix': {
    label: 'Awalan (Prefiks)',
    englishLabel: 'Prefix (接頭辞)',
    description: 'Imbuhan di depan kata dasar',
  },
  'suffix': {
    label: 'Akhiran (Sufiks)',
    englishLabel: 'Suffix (接尾辞)',
    description: 'Imbuhan di belakang kata dasar',
  },
  'conjunction': {
    label: 'Kata Hubung',
    englishLabel: 'Conjunction (接続詞)',
    description: 'Menghubungkan antarkata, frasa, atau kalimat',
  },
  'interjection': {
    label: 'Kata Seru',
    englishLabel: 'Interjection (感動詞)',
    description: 'Seruan emosi, panggilan, atau sapaan',
  },
  'particle': {
    label: 'Partikel',
    englishLabel: 'Particle (助詞)',
    description: 'Partikel penanda gramatikal tata bahasa',
  },
};

/**
 * Normalizes raw part of speech string into a localized metadata object.
 */
export function getPartOfSpeechMeta(raw: string): PartOfSpeechMeta {
  const normalizedKey = raw.trim().toLowerCase();
  const entry = POS_DICTIONARY[normalizedKey];

  if (entry) {
    return {
      raw,
      label: entry.label,
      englishLabel: entry.englishLabel,
      description: entry.description,
      isTransitivity: entry.isTransitivity,
    };
  }

  // Fallback for unmapped terms: capitalize words
  const fallbackLabel = raw
    .split(' ')
    .map(w => w.charAt(0).toUpperCase() + w.slice(1))
    .join(' ');

  return {
    raw,
    label: fallbackLabel,
    englishLabel: fallbackLabel,
  };
}

/**
 * Formats an array of raw parts of speech into sorted, deduplicated PartOfSpeechMeta list.
 * Prioritizes transitivity and primary category first.
 */
export function parsePartsOfSpeech(partsOfSpeech?: string[] | null): PartOfSpeechMeta[] {
  if (!partsOfSpeech || !Array.isArray(partsOfSpeech) || partsOfSpeech.length === 0) {
    return [];
  }

  const metas = partsOfSpeech.map(p => getPartOfSpeechMeta(p));

  // Sort order: Transitivity first (e.g. Kata Kerja Transitif), then Verbs, Adjectives, Nouns, others
  return metas.sort((a, b) => {
    if (a.isTransitivity && !b.isTransitivity) return -1;
    if (!a.isTransitivity && b.isTransitivity) return 1;
    return a.label.localeCompare(b.label);
  });
}
