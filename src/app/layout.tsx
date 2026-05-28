import type { Metadata } from 'next';
import { Outfit } from 'next/font/google';
import './globals.css';

const outfit = Outfit({
  subsets: ['latin'],
  weight: ['300', '400', '500', '600', '700', '800'],
  variable: '--font-outfit',
});

export const metadata: Metadata = {
  title: 'KaniGani — Belajar Karakter Jepang Berbahasa Indonesia',
  description:
    'Aplikasi klon WaniKani terjemahan Bahasa Indonesia. Kuasai Kanji Jepang melalui alur linear Radical -> Kanji -> Kosakata dengan algoritma Spaced Repetition System (SRS) yang terbukti cerdas dan aman.',
  keywords: 'wanikani, kanji, bahasa indonesia, bahasa jepang, srs, spaced repetition, belajar jepang, vocabulary, radical',
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="id" className={`${outfit.variable} h-full antialiased`} suppressHydrationWarning>
      <head>
        {/* Anti-flicker Script to set dark class before HTML loads */}
        <script
          dangerouslySetInnerHTML={{
            __html: `
              (function() {
                try {
                  const theme = localStorage.getItem('theme');
                  if (theme === 'dark' || (!theme && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
                    document.documentElement.classList.add('dark');
                  } else {
                    document.documentElement.classList.remove('dark');
                  }
                } catch (e) {
                  console.error('Anti-flicker theme error:', e);
                }
              })()
            `,
          }}
        />
        {/* Favicon: Next.js auto-detects src/app/icon.png */}
      </head>
      <body className="min-h-full flex flex-col bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
        {children}
      </body>
    </html>
  );
}
