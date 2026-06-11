/**
 * Determines whether a vocabulary reading is Onyomi or Kunyomi.
 *
 * Rules:
 * 1. If the character contains hiragana/katakana (e.g. has okurigana like 大きい, 行く),
 *    it is Kunyomi (native Japanese word/Wago).
 * 2. If it is a single kanji (e.g. 山, 本), we match the reading against the component
 *    kanji's readings. If it matches a reading of the kanji, we use that reading's type.
 * 3. If it is a multi-kanji compound without okurigana (e.g. 九州, 学校), it defaults to
 *    Onyomi (Sino-Japanese word/Kango).
 */
export function getVocabularyReadingType(
  character: string,
  primaryReading: string,
  kanjis?: any[]
): 'onyomi' | 'kunyomi' {
  // 1. If it contains hiragana/okurigana, it is Kunyomi (native Japanese)
  const hasKana = /[\u3040-\u309F\u30A0-\u30FF]/.test(character);
  if (hasKana) {
    return 'kunyomi';
  }

  // 2. If it is a single kanji, try to match with the kanji component's readings
  if (character.length === 1 && kanjis && kanjis.length > 0) {
    const compKanji = kanjis.find((k) => k.character === character);
    if (compKanji && compKanji.readings) {
      const match = compKanji.readings.find((r: any) => r.reading === primaryReading);
      if (match && match.reading_type) {
        return match.reading_type;
      }
    }
  }

  // 3. For multi-kanji compounds, default to onyomi.
  return character.length > 1 ? 'onyomi' : 'kunyomi';
}
