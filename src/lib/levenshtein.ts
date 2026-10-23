/**
 * Levenshtein distance & Typo tolerance algorithms.
 * Used across quiz evaluation and answer checking.
 */

/**
 * Calculates the Levenshtein edit distance between two strings.
 */
export function getLevenshteinDistance(a: string, b: string): number {
  const matrix: number[][] = [];
  for (let i = 0; i <= b.length; i++) matrix[i] = [i];
  for (let j = 0; j <= a.length; j++) matrix[0][j] = j;

  for (let i = 1; i <= b.length; i++) {
    for (let j = 1; j <= a.length; j++) {
      if (b.charAt(i - 1) === a.charAt(j - 1)) {
        matrix[i][j] = matrix[i - 1][j - 1];
      } else {
        matrix[i][j] = Math.min(
          matrix[i - 1][j - 1] + 1, // substitution
          Math.min(
            matrix[i][j - 1] + 1, // insertion
            matrix[i - 1][j] + 1 // deletion
          )
        );
      }
    }
  }
  return matrix[b.length][a.length];
}

/**
 * Typo tolerance checker:
 * - dist === 0 returns false (it is exactly correct, not "almost" correct).
 * - For words <= 5 chars, allows at most 1 typo.
 * - For longer words (> 5 chars), allows at most 2 typos.
 */
export function isAlmostCorrect(input: string, accepted: string): boolean {
  const dist = getLevenshteinDistance(input, accepted);
  if (dist === 0) return false;
  const len = accepted.length;
  if (len <= 3) return dist === 1;
  if (len <= 5) return dist <= 1;
  return dist <= 2;
}
