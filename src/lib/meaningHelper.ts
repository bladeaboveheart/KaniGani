/**
 * Meaning Helper Utilities
 * Resilient parsing and expansion for quiz answer validation.
 */

/**
 * Expands accepted meanings to be extremely resilient during typing review:
 * - Splits combined options like "Unggul / Berbakat / Jenius" into separate answers ("unggul", "berbakat", "jenius").
 * - Strips explanations in parentheses like "Pengar (Mabuk Pasca Minum / Hangover)" -> "pengar", "mabuk pasca minum", "hangover".
 * - Ignores terminal punctuation like exclamation marks or dots ("kamu brengsek!" -> "kamu brengsek").
 */
export function expandAcceptedMeanings(meanings: string[]): string[] {
  const result = new Set<string>();

  const addCandidate = (val: string) => {
    const v = val.toLowerCase().trim();
    if (!v) return;
    result.add(v);
    const noPunct = v.replace(/[!?,.]/g, '').trim();
    if (noPunct && noPunct !== v) {
      result.add(noPunct);
    }
  };

  for (const raw of meanings) {
    const trimmed = raw.toLowerCase().trim();
    if (!trimmed) continue;
    addCandidate(trimmed);

    // 1. Extract without parenthesis & extract contents inside parentheses
    if (trimmed.includes('(') && trimmed.includes(')')) {
      const withoutParen = trimmed.replace(/\(.*?\)/g, '').replace(/\s+/g, ' ').trim();
      if (withoutParen) addCandidate(withoutParen);

      const matches = trimmed.matchAll(/\((.*?)\)/g);
      for (const match of matches) {
        const inner = match[1].trim();
        if (inner) {
          inner.split(/[/,]/).forEach(part => {
            addCandidate(part);
          });
        }
      }
    }

    // 2. Split by slash '/' or comma ','
    if (trimmed.includes('/') || trimmed.includes(',')) {
      const parts = trimmed.split(/[/,]/);
      for (const part of parts) {
        const cleanPart = part.replace(/\(.*?\)/g, '').replace(/\s+/g, ' ').trim();
        if (cleanPart) addCandidate(cleanPart);
      }
    }
  }

  return Array.from(result);
}
