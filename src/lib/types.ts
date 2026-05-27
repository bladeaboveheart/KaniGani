export type ItemType = 'radical' | 'kanji' | 'vocabulary';

export interface Item {
  id: string;
  type: ItemType;
  character: string;
  slug?: string;
  level: number;
  lesson_position: number;
  meaning_mnemonic?: string;
  reading_mnemonic?: string;
  description?: string;
  srs_stage?: number;
  
  // Merged detailed properties
  meanings?: ItemMeaning[];
  readings?: ItemReading[];
  context_sentences?: ItemContextSentence[];
  
  // Shortcuts for quick UI rendering
  primary_meaning?: string;
  primary_reading?: string | null;
  accepted_meanings?: string[];
  accepted_readings?: string[];
}

export interface ItemMeaning {
  id: string;
  item_id: string;
  meaning: string;
  primary_meaning: boolean;
  accepted_answer: boolean;
}

export interface ItemReading {
  id: string;
  item_id: string;
  reading: string;
  reading_type: 'onyomi' | 'kunyomi' | 'nanori' | null;
  primary_reading: boolean;
  accepted_answer: boolean;
}

export interface ItemContextSentence {
  id: string;
  item_id: string;
  japanese: string;
  indonesian: string;
}

export interface ItemPrerequisite {
  item_id: string;
  requires_item_id: string;
}

export interface UserProgress {
  user_id: string;
  item_id: string;
  srs_stage: number;
  unlocked_at: string | null;
  next_review: string | null;
  items?: Item;
}

export interface DashboardStats {
  lessonsAvailable: number;
  reviewsDue: number;
  distribution: Record<number, number>;
  byType: {
    radical: { total: number; guru: number };
    kanji: { total: number; guru: number };
    vocabulary: { total: number; burned: number };
  };
  level: number;
  kanjiPassedInLevel: number;
  kanjiTotalInLevel: number;
}
