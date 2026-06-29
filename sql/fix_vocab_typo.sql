-- Migration to fix vocabulary typos in items table
UPDATE items SET character = '書く', slug = '書く' WHERE character = '書k' AND type = 'vocabulary';
