/**
 * Menghitung jumlah mora (ketukan suara / 音) dari bacaan Kana bahasa Jepang.
 * Contoh:
 * - "たべる" -> 3音
 * - "べんきょう" -> 4音 (きょ dihitung 1 mora)
 * - "がっこう" -> 4音 (っ dihitung 1 mora)
 * - "ちょっと" -> 3音 (ちょ=1, っ=1, と=1)
 */

const COMBINING_SMALL_KANA = new Set([
  'ゃ', 'ゅ', 'ょ', 'ぁ', 'ぃ', 'ぅ', 'ぇ', 'ぉ', 'ゎ',
  'ャ', 'ュ', 'ョ', 'ァ', 'ィ', 'ゥ', 'ェ', 'ォ', 'ヮ'
]);

export function calculateMoraCount(kana: string | null | undefined): number {
  if (!kana) return 0;

  // Bersihkan spasi, tanda baca, dan karakter non-kana
  const cleaned = kana.replace(/[\s\.\,\-\~\!\?\/・]/g, '');
  if (!cleaned) return 0;

  let morae = 0;
  for (let i = 0; i < cleaned.length; i++) {
    const char = cleaned[i];
    // Karakter kombinasi kecil tidak menambah mora baru
    if (COMBINING_SMALL_KANA.has(char)) {
      continue;
    }
    morae++;
  }

  return morae;
}

export function formatMoraLabel(kana: string | null | undefined): string {
  const count = calculateMoraCount(kana);
  return count > 0 ? `${count}音` : '';
}
