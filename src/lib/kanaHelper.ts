import * as wanakana from 'wanakana';

/**
 * Checks if a user's input matches an accepted Japanese reading,
 * allowing full script interchangeability between Hiragana and Katakana
 * (e.g., 'びる' matches 'ビル', 'たばこ' matches 'タバコ', 'こーひー' matches 'コーヒー').
 */
export function isReadingMatch(userInput: string, targetReading: string): boolean {
  const cleanInput = userInput.trim().toLowerCase();
  const cleanTarget = targetReading.trim().toLowerCase();
  if (!cleanInput || !cleanTarget) return false;

  if (cleanInput === cleanTarget) return true;

  const inputHira = wanakana.toHiragana(cleanInput);
  const targetHira = wanakana.toHiragana(cleanTarget);
  if (inputHira === targetHira) return true;

  const inputKata = wanakana.toKatakana(cleanInput);
  const targetKata = wanakana.toKatakana(cleanTarget);
  if (inputKata === targetKata) return true;

  return false;
}

/**
 * Checks if user input matches any of the accepted readings.
 */
export function isAnyReadingMatch(userInput: string, acceptedReadings: string[]): boolean {
  if (!userInput || !acceptedReadings || acceptedReadings.length === 0) return false;
  return acceptedReadings.some(target => isReadingMatch(userInput, target));
}

/**
 * Expands a list of readings to include both their Hiragana and Katakana equivalents,
 * preserving original order and eliminating duplicates.
 */
export function expandAcceptedReadings(readings: string[]): string[] {
  if (!readings || readings.length === 0) return [];
  const result: string[] = [];
  const seen = new Set<string>();

  for (const r of readings) {
    const clean = r.trim();
    if (!clean) continue;

    if (!seen.has(clean.toLowerCase())) {
      seen.add(clean.toLowerCase());
      result.push(clean);
    }

    const hira = wanakana.toHiragana(clean);
    if (hira && !seen.has(hira.toLowerCase())) {
      seen.add(hira.toLowerCase());
      result.push(hira);
    }

    const kata = wanakana.toKatakana(clean);
    if (kata && !seen.has(kata.toLowerCase())) {
      seen.add(kata.toLowerCase());
      result.push(kata);
    }
  }

  return result;
}
