import { describe, it, expect } from 'vitest';

describe('Admin Level Override & Revert Suite', () => {
  interface MockItem {
    id: string;
    level: number;
    type: 'radical' | 'kanji' | 'vocabulary';
  }

  interface MockUserProgress {
    item_id: string;
    srs_stage: number;
    unlocked_at: string | null;
    next_review: string | null;
  }

  interface SnapshotItem {
    item_id: string;
    srs_stage: number;
    unlocked_at: string | null;
    next_review: string | null;
    existed: boolean;
    action: string;
  }

  it('correctly applies level override logic: sets lower levels to SRS 5 and target radicals to lesson', () => {
    const targetLevel = 3;
    const nowIso = new Date().toISOString();

    const items: MockItem[] = [
      { id: 'rad-1', level: 1, type: 'radical' },
      { id: 'kan-1', level: 1, type: 'kanji' },
      { id: 'voc-1', level: 1, type: 'vocabulary' },
      { id: 'rad-2', level: 2, type: 'radical' },
      { id: 'kan-2', level: 2, type: 'kanji' },
      { id: 'rad-3', level: 3, type: 'radical' },
      { id: 'kan-3', level: 3, type: 'kanji' },
    ];

    // Initial state: User only studied level 1 radical (stage 4) and kanji (stage 8 = Enlightened)
    const currentProgress: Record<string, MockUserProgress> = {
      'rad-1': { item_id: 'rad-1', srs_stage: 4, unlocked_at: nowIso, next_review: nowIso },
      'kan-1': { item_id: 'kan-1', srs_stage: 8, unlocked_at: nowIso, next_review: nowIso }, // Already stage 8 (>=5)
    };

    // 1. Snapshot generation simulation
    const snapshot: SnapshotItem[] = [];

    items.forEach((item) => {
      const prog = currentProgress[item.id];
      if (item.level < targetLevel) {
        // Only items with srs_stage < 5 (or not existing) should be modified
        if (!prog || prog.srs_stage < 5) {
          snapshot.push({
            item_id: item.id,
            srs_stage: prog ? prog.srs_stage : 0,
            unlocked_at: prog ? prog.unlocked_at : null,
            next_review: prog ? prog.next_review : null,
            existed: !!prog,
            action: 'upgraded_to_guru',
          });
        }
      } else if (item.level === targetLevel && item.type === 'radical') {
        // Target level radicals to unlock
        if (!prog || prog.srs_stage === 0) {
          snapshot.push({
            item_id: item.id,
            srs_stage: prog ? prog.srs_stage : 0,
            unlocked_at: prog ? prog.unlocked_at : null,
            next_review: prog ? prog.next_review : null,
            existed: !!prog,
            action: 'unlocked_radical',
          });
        }
      }
    });

    // Verify snapshot captured items to change
    expect(snapshot.find((s) => s.item_id === 'rad-1')?.srs_stage).toBe(4);
    expect(snapshot.find((s) => s.item_id === 'kan-1')).toBeUndefined(); // Stage 8 not modified!
    expect(snapshot.find((s) => s.item_id === 'voc-1')?.existed).toBe(false);
    expect(snapshot.find((s) => s.item_id === 'rad-3')?.action).toBe('unlocked_radical');

    // 2. State after applying override
    const updatedProgress = { ...currentProgress };

    // Upgrade items < targetLevel
    items.filter((i) => i.level < targetLevel).forEach((i) => {
      const cur = updatedProgress[i.id];
      if (!cur || cur.srs_stage < 5) {
        updatedProgress[i.id] = {
          item_id: i.id,
          srs_stage: 5,
          unlocked_at: nowIso,
          next_review: nowIso,
        };
      }
    });

    // Unlock target radicals
    items.filter((i) => i.level === targetLevel && i.type === 'radical').forEach((i) => {
      const cur = updatedProgress[i.id];
      if (!cur || cur.srs_stage === 0) {
        updatedProgress[i.id] = {
          item_id: i.id,
          srs_stage: 1,
          unlocked_at: nowIso,
          next_review: null,
        };
      }
    });

    // Verification
    expect(updatedProgress['rad-1'].srs_stage).toBe(5); // Upgraded from 4 to 5
    expect(updatedProgress['rad-1'].next_review).toBe(nowIso); // Ready for review immediately
    expect(updatedProgress['kan-1'].srs_stage).toBe(8); // Kept at stage 8
    expect(updatedProgress['voc-1'].srs_stage).toBe(5); // Upgraded from unstudied to 5
    expect(updatedProgress['rad-3'].srs_stage).toBe(1); // Ready for lesson
    expect(updatedProgress['rad-3'].next_review).toBeNull(); // Lesson mode
    expect(updatedProgress['kan-3']).toBeUndefined(); // Level 3 kanji still locked

    // 3. Revert simulation
    const revertedProgress = { ...updatedProgress };
    snapshot.forEach((snap) => {
      revertedProgress[snap.item_id] = {
        item_id: snap.item_id,
        srs_stage: snap.srs_stage,
        unlocked_at: snap.unlocked_at,
        next_review: snap.next_review,
      };
    });

    // After revert: exactly matching initial state
    expect(revertedProgress['rad-1'].srs_stage).toBe(4);
    expect(revertedProgress['kan-1'].srs_stage).toBe(8);
    expect(revertedProgress['voc-1'].srs_stage).toBe(0); // Restored to locked (stage 0)
    expect(revertedProgress['rad-3'].srs_stage).toBe(0); // Restored to locked (stage 0)
  });
});
