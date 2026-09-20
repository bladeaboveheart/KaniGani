export interface WaniKaniUser {
  id: string;
  username: string;
  level: number;
  profile_url: string;
  started_at: string;
  subscription: {
    active: boolean;
    type: string;
    max_level_granted: number;
    period_ends_at: string | null;
  };
}

export interface WaniKaniAssignment {
  id: number;
  object: string;
  data: {
    subject_id: number;
    subject_type: 'radical' | 'kanji' | 'vocabulary' | 'kana_vocabulary';
    srs_stage: number;
    unlocked_at: string | null;
    started_at: string | null;
    passed_at: string | null;
    burned_at: string | null;
    available_at: string | null;
    hidden: boolean;
  };
}

export interface WaniKaniPreviewStats {
  user: {
    username: string;
    level: number;
    subscriptionType: string;
  };
  totalAssignments: number;
  byStage: {
    initiated: number; // 0
    apprentice: number; // 1-4
    guru: number; // 5-6
    master: number; // 7
    enlightened: number; // 8
    burned: number; // 9
  };
  byType: {
    radical: number;
    kanji: number;
    vocabulary: number;
  };
  reviewsDueNow: number;
}

const WANIKANI_BASE_URL = 'https://api.wanikani.com/v2';

/**
 * Memvalidasi API Token WaniKani dan mengambil informasi profil pengguna.
 */
export async function verifyWaniKaniToken(token: string): Promise<{ valid: boolean; user?: WaniKaniUser; error?: string }> {
  try {
    const res = await fetch(`${WANIKANI_BASE_URL}/user`, {
      headers: {
        Authorization: `Bearer ${token.trim()}`,
        'Wanikani-Revision': '20170710',
      },
    });

    if (!res.ok) {
      if (res.status === 401) {
        return { valid: false, error: 'Token API WaniKani tidak valid atau sudah kedaluwarsa.' };
      }
      return { valid: false, error: `Gagal menghubungi server WaniKani (${res.status} ${res.statusText})` };
    }

    const json = await res.json();
    return { valid: true, user: json.data as WaniKaniUser };
  } catch (err: any) {
    return { valid: false, error: err.message || 'Terjadi kesalahan saat verifikasi token.' };
  }
}

/**
 * Mengambil semua assignment aktif pengguna dari WaniKani dengan pagination otomatis.
 */
export async function fetchAllWaniKaniAssignments(token: string): Promise<WaniKaniAssignment[]> {
  const allAssignments: WaniKaniAssignment[] = [];
  let nextUrl: string | null = `${WANIKANI_BASE_URL}/assignments`;

  while (nextUrl) {
    const res: Response = await fetch(nextUrl, {
      headers: {
        Authorization: `Bearer ${token.trim()}`,
        'Wanikani-Revision': '20170710',
      },
    });

    if (!res.ok) {
      throw new Error(`WaniKani API error: ${res.status} ${res.statusText}`);
    }

    const json: any = await res.json();
    if (json.data && Array.isArray(json.data)) {
      allAssignments.push(...(json.data as WaniKaniAssignment[]));
    }

    nextUrl = json.pages?.next_url || null;
  }

  return allAssignments;
}

/**
 * Menghitung ringkasan statistik assignment WaniKani untuk tampilan modal preview.
 */
export function calculatePreviewStats(
  user: WaniKaniUser,
  assignments: WaniKaniAssignment[]
): WaniKaniPreviewStats {
  const stats: WaniKaniPreviewStats = {
    user: {
      username: user.username,
      level: user.level,
      subscriptionType: user.subscription?.type || 'free',
    },
    totalAssignments: assignments.length,
    byStage: {
      initiated: 0,
      apprentice: 0,
      guru: 0,
      master: 0,
      enlightened: 0,
      burned: 0,
    },
    byType: {
      radical: 0,
      kanji: 0,
      vocabulary: 0,
    },
    reviewsDueNow: 0,
  };

  const now = new Date();

  for (const item of assignments) {
    const d = item.data;
    const stage = d.srs_stage;

    // Stage grouping
    if (stage === 0) stats.byStage.initiated++;
    else if (stage >= 1 && stage <= 4) stats.byStage.apprentice++;
    else if (stage >= 5 && stage <= 6) stats.byStage.guru++;
    else if (stage === 7) stats.byStage.master++;
    else if (stage === 8) stats.byStage.enlightened++;
    else if (stage === 9) stats.byStage.burned++;

    // Type grouping
    if (d.subject_type === 'radical') stats.byType.radical++;
    else if (d.subject_type === 'kanji') stats.byType.kanji++;
    else stats.byType.vocabulary++;

    // Reviews due now
    if (d.available_at && stage >= 1 && stage <= 8) {
      if (new Date(d.available_at) <= now) {
        stats.reviewsDueNow++;
      }
    }
  }

  return stats;
}

export interface WaniKaniReviewStatistic {
  id: number;
  object: string;
  data: {
    subject_id: number;
    subject_type: string;
    meaning_correct: number;
    meaning_incorrect: number;
    meaning_max_streak: number;
    meaning_current_streak: number;
    reading_correct: number;
    reading_incorrect: number;
    reading_max_streak: number;
    reading_current_streak: number;
    percentage_correct: number;
    hidden: boolean;
  };
}

/**
 * Mengambil seluruh review_statistics dari WaniKani API v2 dengan paginasi
 */
export async function fetchAllWaniKaniReviewStatistics(token: string): Promise<WaniKaniReviewStatistic[]> {
  const allStats: WaniKaniReviewStatistic[] = [];
  let nextUrl: string | null = `${WANIKANI_BASE_URL}/review_statistics`;

  while (nextUrl) {
    const res: Response = await fetch(nextUrl, {
      headers: {
        Authorization: `Bearer ${token.trim()}`,
        'Wanikani-Revision': '20170710',
      },
    });

    if (!res.ok) {
      throw new Error(`WaniKani review_statistics API error: ${res.status} ${res.statusText}`);
    }

    const json: any = await res.json();
    if (json.data && Array.isArray(json.data)) {
      allStats.push(...(json.data as WaniKaniReviewStatistic[]));
    }

    nextUrl = json.pages?.next_url || null;
  }

  return allStats;
}

