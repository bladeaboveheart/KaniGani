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
  wanikani_id?: number;
  parts_of_speech?: string[] | null;
  
  // Merged detailed properties
  meanings?: ItemMeaning[];
  readings?: ItemReading[];
  context_sentences?: ItemContextSentence[];
  audios?: ItemAudio[];
  
  // Shortcuts for quick UI rendering
  primary_meaning?: string;
  primary_reading?: string | null;
  accepted_meanings?: string[];
  accepted_readings?: string[];

  // Related items
  kanjis?: Array<{ id: string; character: string; slug?: string; level?: number; type?: string }>;
  similar_kanjis?: SimilarKanji[];
}

export interface SimilarKanji {
  id: string;
  character: string;
  slug?: string;
  level: number;
  type?: string;
  primary_meaning?: string;
  primary_reading?: string | null;
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

export interface ItemAudio {
  id: string;
  item_id: string;
  url: string;
  content_type: string;
  voice_actor_name: 'Kyoko' | 'Kenichi' | string;
  gender: 'female' | 'male' | string;
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
  daysSinceLevelUp?: number;
}

export interface UserIntegration {
  user_id: string;
  wanikani_api_key?: string;
  wanikani_username?: string;
  wanikani_level?: number;
  last_synced_at?: string;
  created_at?: string;
  updated_at?: string;
}

export interface MeaningInput {
  id?: string;
  meaning: string;
  primary_meaning: boolean;
  accepted_answer: boolean;
}

export interface ReadingInput {
  id?: string;
  reading: string;
  reading_type: 'onyomi' | 'kunyomi' | 'nanori' | null;
  primary_reading: boolean;
  accepted_answer: boolean;
}

export interface SentenceInput {
  id?: string;
  japanese: string;
  indonesian: string;
}

export interface ItemInput {
  id?: string;
  type: 'radical' | 'kanji' | 'vocabulary';
  character: string;
  slug: string;
  level: number;
  lesson_position: number;
  meaning_mnemonic: string;
  reading_mnemonic: string;
  description: string;
  meanings: MeaningInput[];
  readings: ReadingInput[];
  context_sentences: SentenceInput[];
  prerequisites: string[];
  found_in_kanjis?: string[];
}

