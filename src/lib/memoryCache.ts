/**
 * Lightweight Client-side In-Memory Cache with TTL & Stale-While-Revalidate support.
 * Keeps dictionary catalogs, profile stats, and level items persistent in memory across route transitions.
 */

interface CacheEntry<T> {
  data: T;
  expiresAt: number;
}

class MemoryCache {
  private cache = new Map<string, CacheEntry<any>>();

  /**
   * Retrieves an item from cache if it exists and hasn't expired.
   */
  get<T>(key: string): T | null {
    const entry = this.cache.get(key);
    if (!entry) return null;

    if (Date.now() > entry.expiresAt) {
      this.cache.delete(key);
      return null;
    }

    return entry.data as T;
  }

  /**
   * Retrieves an item from cache even if slightly stale (for SWR pattern),
   * returns { data, isStale }.
   */
  getStale<T>(key: string): { data: T | null; isStale: boolean } {
    const entry = this.cache.get(key);
    if (!entry) return { data: null, isStale: true };

    const isStale = Date.now() > entry.expiresAt;
    return { data: entry.data as T, isStale };
  }

  /**
   * Stores an item with a time-to-live in milliseconds (default 15 minutes).
   */
  set<T>(key: string, data: T, ttlMs: number = 15 * 60 * 1000): void {
    this.cache.set(key, {
      data,
      expiresAt: Date.now() + ttlMs,
    });
  }

  has(key: string): boolean {
    const entry = this.cache.get(key);
    if (!entry) return false;
    if (Date.now() > entry.expiresAt) {
      this.cache.delete(key);
      return false;
    }
    return true;
  }

  delete(key: string): void {
    this.cache.delete(key);
  }

  clear(): void {
    this.cache.clear();
  }

  /**
   * Invalidates any cache key that starts with or matches a given prefix/pattern.
   * e.g., memoryCache.invalidatePrefix('user_progress:')
   */
  invalidatePrefix(prefix: string): void {
    for (const key of this.cache.keys()) {
      if (key.startsWith(prefix)) {
        this.cache.delete(key);
      }
    }
  }
}

export const memoryCache = new MemoryCache();
