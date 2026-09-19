import React from 'react';
import { describe, it, expect } from 'vitest';
import { renderToStaticMarkup } from 'react-dom/server';
import FormattedText from '../FormattedText';

describe('FormattedText Component', () => {
  it('renders plain text unchanged', () => {
    const html = renderToStaticMarkup(<FormattedText text="Ini adalah teks biasa." />);
    expect(html).toContain('Ini adalah teks biasa.');
  });

  it('renders standard Wanikani tags with proper styles', () => {
    const html = renderToStaticMarkup(
      <FormattedText text="Lihat <radical>cabai</radical> dan <kanji>matahari</kanji> serta <vocabulary>menarik</vocabulary> dengan <reading>palka</reading>." />
    );
    expect(html).toContain('cabai');
    expect(html).toContain('matahari');
    expect(html).toContain('menarik');
    expect(html).toContain('palka');
    expect(html).toContain('bg-[#00a0f0]'); // radical
    expect(html).toContain('bg-[#f03e64]'); // kanji
    expect(html).toContain('bg-[#aa00ff]'); // vocabulary
    expect(html).toContain('bg-slate-700'); // reading
  });

  it('tolerates mismatched opening/closing tags like <kosakata>...</vocabulary> and <radical>...</radikal>', () => {
    const html = renderToStaticMarkup(
      <FormattedText text="Ada <radical>cabai</radikal> dan <kosakata>menarik</vocabulary>!" />
    );
    expect(html).toContain('cabai');
    expect(html).toContain('menarik');
    expect(html).toContain('bg-[#00a0f0]');
    expect(html).toContain('bg-[#aa00ff]');
  });

  it('renders <i> and <em> as italics', () => {
    const html = renderToStaticMarkup(
      <FormattedText text="Berdasarkan <i>bukti objektif</i> dan <em>bukti subjektif</em>." />
    );
    expect(html).toContain('<em class="italic font-medium not-italic-font">bukti objektif</em>');
    expect(html).toContain('<em class="italic font-medium not-italic-font">bukti subjektif</em>');
  });

  it('renders <a> tags as secure external links', () => {
    const html = renderToStaticMarkup(
      <FormattedText text='Kunjungi <a href="https://youtube.com" target="_blank">YouTube</a>.' />
    );
    expect(html).toContain('href="https://youtube.com"');
    expect(html).toContain('target="_blank"');
    expect(html).toContain('rel="noopener noreferrer"');
    expect(html).toContain('YouTube');
  });
});
