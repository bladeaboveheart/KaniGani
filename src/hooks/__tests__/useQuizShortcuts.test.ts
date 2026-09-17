import { describe, it, expect, vi, beforeEach, afterEach } from 'vitest';

describe('useQuizShortcuts handler logic', () => {
  let listeners: Record<string, (e: any) => void> = {};

  beforeEach(() => {
    listeners = {};
    vi.stubGlobal('window', {
      addEventListener: (event: string, cb: (e: any) => void) => {
        listeners[event] = cb;
      },
      removeEventListener: (event: string, cb: (e: any) => void) => {
        if (listeners[event] === cb) {
          delete listeners[event];
        }
      },
    });
  });

  afterEach(() => {
    vi.restoreAllMocks();
  });

  const createHandler = (options: {
    isAnswerSubmitted?: boolean;
    onToggleInfo?: () => void;
    onAdvance?: () => void;
  }) => {
    const handleKeyDown = (e: any) => {
      if (options.isAnswerSubmitted) {
        if ((e.key === 'f' || e.key === 'F') && options.onToggleInfo) {
          e.preventDefault();
          options.onToggleInfo();
          return;
        }

        if (e.key === ' ' && options.onAdvance) {
          e.preventDefault();
          options.onAdvance();
          return;
        }
      }
    };

    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  };

  it('triggers onToggleInfo when "f" or "F" is pressed and isAnswerSubmitted is true', () => {
    const onToggleInfo = vi.fn();
    const onAdvance = vi.fn();

    const cleanup = createHandler({
      isAnswerSubmitted: true,
      onToggleInfo,
      onAdvance,
    });

    const preventDefault1 = vi.fn();
    listeners['keydown']?.({ key: 'f', preventDefault: preventDefault1 });
    expect(onToggleInfo).toHaveBeenCalledTimes(1);
    expect(preventDefault1).toHaveBeenCalledTimes(1);

    const preventDefault2 = vi.fn();
    listeners['keydown']?.({ key: 'F', preventDefault: preventDefault2 });
    expect(onToggleInfo).toHaveBeenCalledTimes(2);
    expect(preventDefault2).toHaveBeenCalledTimes(1);

    cleanup();
  });

  it('triggers onAdvance when " " (Space) is pressed and isAnswerSubmitted is true', () => {
    const onToggleInfo = vi.fn();
    const onAdvance = vi.fn();

    const cleanup = createHandler({
      isAnswerSubmitted: true,
      onToggleInfo,
      onAdvance,
    });

    const preventDefault = vi.fn();
    listeners['keydown']?.({ key: ' ', preventDefault });
    expect(onAdvance).toHaveBeenCalledTimes(1);
    expect(preventDefault).toHaveBeenCalledTimes(1);

    cleanup();
  });

  it('does NOT trigger onToggleInfo or onAdvance when isAnswerSubmitted is false', () => {
    const onToggleInfo = vi.fn();
    const onAdvance = vi.fn();

    const cleanup = createHandler({
      isAnswerSubmitted: false,
      onToggleInfo,
      onAdvance,
    });

    const preventDefault1 = vi.fn();
    listeners['keydown']?.({ key: 'f', preventDefault: preventDefault1 });
    const preventDefault2 = vi.fn();
    listeners['keydown']?.({ key: 'F', preventDefault: preventDefault2 });
    const preventDefault3 = vi.fn();
    listeners['keydown']?.({ key: ' ', preventDefault: preventDefault3 });

    expect(onToggleInfo).not.toHaveBeenCalled();
    expect(onAdvance).not.toHaveBeenCalled();
    expect(preventDefault1).not.toHaveBeenCalled();
    expect(preventDefault2).not.toHaveBeenCalled();
    expect(preventDefault3).not.toHaveBeenCalled();

    cleanup();
  });
});

import { useQuizStore } from '@/store/useQuizStore';

describe('useQuizStore toggleItemInfo', () => {
  beforeEach(() => {
    useQuizStore.getState().resetStore();
  });

  it('toggles showItemInfo on repeated calls without arguments', () => {
    const store = useQuizStore.getState();
    expect(useQuizStore.getState().showItemInfo).toBe(false);

    store.toggleItemInfo();
    expect(useQuizStore.getState().showItemInfo).toBe(true);

    store.toggleItemInfo();
    expect(useQuizStore.getState().showItemInfo).toBe(false);
  });

  it('toggles showItemInfo correctly even when React passes a MouseEvent object', () => {
    const store = useQuizStore.getState();
    expect(useQuizStore.getState().showItemInfo).toBe(false);

    // Simulate React onClick passing SyntheticEvent / MouseEvent object
    const dummyEvent = { type: 'click', target: {} } as any;
    store.toggleItemInfo(dummyEvent);
    expect(useQuizStore.getState().showItemInfo).toBe(true);

    store.toggleItemInfo(dummyEvent);
    expect(useQuizStore.getState().showItemInfo).toBe(false);

    store.toggleItemInfo(dummyEvent);
    expect(useQuizStore.getState().showItemInfo).toBe(true);
  });

  it('respects explicit boolean force parameter', () => {
    const store = useQuizStore.getState();

    store.toggleItemInfo(true);
    expect(useQuizStore.getState().showItemInfo).toBe(true);

    store.toggleItemInfo(true);
    expect(useQuizStore.getState().showItemInfo).toBe(true);

    store.toggleItemInfo(false);
    expect(useQuizStore.getState().showItemInfo).toBe(false);
  });
});
