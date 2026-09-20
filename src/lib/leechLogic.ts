export interface LeechItem {
  id: string;
  item_id: string;
  character: string;
  type: 'radical' | 'kanji' | 'vocabulary';
  level: number;
  meaning: string;
  reading?: string;
  srs_stage: number;
  incorrect_count: number;
  correct_count: number;
  current_streak: number;
  max_streak: number;
  meaning_incorrect: number;
  reading_incorrect: number;
  accuracy: number;
  leech_score: number;
  severity: 'low' | 'medium' | 'high' | 'critical';
}

/**
 * Menghitung Leech Score menggunakan rumus standar komunitas WaniKani:
 * score = incorrect_count / (max(1, current_streak) ^ 1.5)
 */
export function calculateLeechScore(incorrectCount: number, currentStreak: number): number {
  if (incorrectCount <= 0) return 0;
  const effectiveStreak = Math.max(1, currentStreak);
  const score = incorrectCount / Math.pow(effectiveStreak, 1.5);
  return Math.round(score * 100) / 100;
}

/**
 * Menentukan tingkat keparahan leech berdasarkan score
 */
export function getLeechSeverity(score: number): 'low' | 'medium' | 'high' | 'critical' {
  if (score >= 4.0) return 'critical';
  if (score >= 2.0) return 'high';
  if (score >= 1.0) return 'medium';
  return 'low';
}

/**
 * Memeriksa apakah suatu item tergolong sebagai Leech:
 * - Item sudah mulai dipelajari (srs_stage >= 1)
 * - Item belum tuntas/burned (srs_stage <= 8, fokus utama di tahap aktif 1–6)
 * - Akumulasi salah minimal 2 kali (incorrectCount >= 2)
 */
export function isLeech(srsStage: number, incorrectCount: number): boolean {
  if (srsStage < 1 || srsStage > 8) return false;
  return incorrectCount >= 2;
}

/**
 * Menghitung persentase akurasi jawaban (0 - 100)
 */
export function calculateAccuracy(correctCount: number, incorrectCount: number): number {
  const total = correctCount + incorrectCount;
  if (total <= 0) return 100;
  return Math.round((correctCount / total) * 100);
}

/**
 * Memfilter dan mengurutkan daftar progres menjadi daftar Leech terparah
 */
export function processLeechList(rawItems: any[]): LeechItem[] {
  const leeches: LeechItem[] = [];

  for (const row of rawItems) {
    const srsStage = Number(row.srs_stage ?? 0);
    const incorrect = Number(row.incorrect_count ?? 0);
    const correct = Number(row.correct_count ?? 0);
    const streak = Number(row.current_streak ?? 0);
    const maxStreak = Number(row.max_streak ?? 0);
    const meaningIncorrect = Number(row.meaning_incorrect ?? 0);
    const readingIncorrect = Number(row.reading_incorrect ?? 0);

    if (!isLeech(srsStage, incorrect)) {
      continue;
    }

    const item = row.items || row;
    const score = calculateLeechScore(incorrect, streak);
    const severity = getLeechSeverity(score);
    const accuracy = calculateAccuracy(correct, incorrect);

    // Ambil makna utama
    let primaryMeaning = '';
    if (Array.isArray(item.item_meanings) && item.item_meanings.length > 0) {
      const primary = item.item_meanings.find((m: any) => m.is_primary) || item.item_meanings[0];
      primaryMeaning = primary?.meaning || '';
    } else if (item.meaning) {
      primaryMeaning = item.meaning;
    }

    // Ambil bacaan utama jika ada
    let primaryReading = '';
    if (Array.isArray(item.item_readings) && item.item_readings.length > 0) {
      const primary = item.item_readings.find((r: any) => r.is_primary) || item.item_readings[0];
      primaryReading = primary?.reading || '';
    } else if (item.reading) {
      primaryReading = item.reading;
    }

    leeches.push({
      id: String(row.id || item.id),
      item_id: String(row.item_id || item.id),
      character: item.character || '',
      type: item.type || 'kanji',
      level: Number(item.level || 1),
      meaning: primaryMeaning,
      reading: primaryReading || undefined,
      srs_stage: srsStage,
      incorrect_count: incorrect,
      correct_count: correct,
      current_streak: streak,
      max_streak: maxStreak,
      meaning_incorrect: meaningIncorrect,
      reading_incorrect: readingIncorrect,
      accuracy,
      leech_score: score,
      severity,
    });
  }

  // Urutkan dari leech score tertinggi (paling parah) ke terendah
  return leeches.sort((a, b) => {
    if (b.leech_score !== a.leech_score) {
      return b.leech_score - a.leech_score;
    }
    return b.incorrect_count - a.incorrect_count;
  });
}
