'use client';

import React, { useState, useEffect, useRef } from 'react';
import { Volume2, VolumeX, Loader2, User } from 'lucide-react';
import { ItemAudio } from '@/lib/types';

interface AudioPlayerButtonProps {
  audios?: ItemAudio[];
  variant?: 'hero' | 'compact' | 'minimal';
  className?: string;
  autoPlay?: boolean;
}

export default function AudioPlayerButton({
  audios = [],
  variant = 'compact',
  className = '',
  autoPlay = false,
}: AudioPlayerButtonProps) {
  const [preferredActor, setPreferredActor] = useState<'Kyoko' | 'Kenichi'>('Kyoko');
  const [isPlaying, setIsPlaying] = useState<boolean>(false);
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const audioRef = useRef<HTMLAudioElement | null>(null);

  // Load preferred voice actor from localStorage
  useEffect(() => {
    if (typeof window !== 'undefined') {
      const saved = localStorage.getItem('kanigani-preferred-voice');
      if (saved === 'Kenichi' || saved === 'Kyoko') {
        setPreferredActor(saved);
      }
    }
  }, []);

  // Filter available voice actors
  const kyokoAudio = audios.find(
    (a) => a.voice_actor_name?.toLowerCase() === 'kyoko' || a.gender === 'female'
  );
  const kenichiAudio = audios.find(
    (a) => a.voice_actor_name?.toLowerCase() === 'kenichi' || a.gender === 'male'
  );

  const currentAudio = preferredActor === 'Kyoko' ? (kyokoAudio || kenichiAudio) : (kenichiAudio || kyokoAudio);

  const handleToggleActor = (actor: 'Kyoko' | 'Kenichi', e?: React.MouseEvent) => {
    if (e) e.stopPropagation();
    setPreferredActor(actor);
    if (typeof window !== 'undefined') {
      localStorage.setItem('kanigani-preferred-voice', actor);
    }
  };

  const playAudio = (e?: React.MouseEvent) => {
    if (e) e.stopPropagation();
    if (!currentAudio?.url) return;

    try {
      if (!audioRef.current) {
        audioRef.current = new Audio();
      }

      const audio = audioRef.current;
      audio.src = currentAudio.url;
      setIsLoading(true);

      audio.onplaying = () => {
        setIsLoading(false);
        setIsPlaying(true);
      };

      audio.onended = () => {
        setIsPlaying(false);
        setIsLoading(false);
      };

      audio.onerror = () => {
        setIsPlaying(false);
        setIsLoading(false);
      };

      audio.play().catch((err) => {
        console.error('Playback error:', err);
        setIsPlaying(false);
        setIsLoading(false);
      });
    } catch (err) {
      console.error('Audio init error:', err);
      setIsPlaying(false);
      setIsLoading(false);
    }
  };

  useEffect(() => {
    if (autoPlay && currentAudio?.url) {
      playAudio();
    }
    return () => {
      if (audioRef.current) {
        audioRef.current.pause();
        audioRef.current = null;
      }
    };
  }, [autoPlay, currentAudio?.url]);

  if (!audios || audios.length === 0 || !currentAudio) {
    return null;
  }

  // Variant: Minimal (only speaker icon)
  if (variant === 'minimal') {
    return (
      <button
        type="button"
        onClick={playAudio}
        disabled={isLoading}
        title={`Putar Pengucapan (${preferredActor})`}
        className={`p-1.5 rounded-full hover:bg-black/10 dark:hover:bg-white/10 transition-colors flex items-center justify-center ${
          isPlaying ? 'text-amber-400 animate-pulse' : 'text-slate-400 hover:text-slate-600 dark:hover:text-slate-200'
        } ${className}`}
      >
        {isLoading ? (
          <Loader2 className="w-4 h-4 animate-spin" />
        ) : (
          <Volume2 className="w-4 h-4" />
        )}
      </button>
    );
  }

  // Variant: Hero (large stylish banner on full page)
  if (variant === 'hero') {
    return (
      <div className={`inline-flex items-center gap-2 bg-white/15 backdrop-blur-md border border-white/20 px-3 py-1.5 rounded-2xl ${className}`}>
        <button
          type="button"
          onClick={playAudio}
          disabled={isLoading}
          className="flex items-center space-x-1.5 hover:opacity-90 active:scale-95 transition-all text-white font-bold text-xs"
          title={`Putar Pengucapan (${preferredActor})`}
        >
          {isLoading ? (
            <Loader2 className="w-4 h-4 animate-spin" />
          ) : (
            <Volume2 className={`w-4 h-4 ${isPlaying ? 'text-amber-300 animate-pulse' : 'text-white'}`} />
          )}
          <span>Suara</span>
        </button>

        {/* Voice Actor Selector Pills */}
        <div className="flex items-center bg-black/20 rounded-xl p-0.5 text-4xs font-bold">
          {kyokoAudio && (
            <button
              type="button"
              onClick={(e) => handleToggleActor('Kyoko', e)}
              className={`px-2 py-0.5 rounded-lg transition-colors ${
                preferredActor === 'Kyoko'
                  ? 'bg-pink-500 text-white shadow-xs'
                  : 'text-white/70 hover:text-white'
              }`}
              title="Kyoko (Suara Wanita)"
            >
              Kyoko
            </button>
          )}
          {kenichiAudio && (
            <button
              type="button"
              onClick={(e) => handleToggleActor('Kenichi', e)}
              className={`px-2 py-0.5 rounded-lg transition-colors ${
                preferredActor === 'Kenichi'
                  ? 'bg-sky-500 text-white shadow-xs'
                  : 'text-white/70 hover:text-white'
              }`}
              title="Kenichi (Suara Pria)"
            >
              Kenichi
            </button>
          )}
        </div>
      </div>
    );
  }

  // Variant: Compact (modal & readings list)
  return (
    <div className={`inline-flex items-center space-x-2 bg-slate-100 dark:bg-slate-800/60 border border-slate-200/80 dark:border-slate-700/60 px-2.5 py-1 rounded-xl text-xs ${className}`}>
      <button
        type="button"
        onClick={playAudio}
        disabled={isLoading}
        className="flex items-center space-x-1 font-bold text-slate-700 dark:text-slate-200 hover:text-vocab transition-colors"
        title={`Putar Pengucapan (${preferredActor})`}
      >
        {isLoading ? (
          <Loader2 className="w-3.5 h-3.5 animate-spin text-vocab" />
        ) : (
          <Volume2 className={`w-3.5 h-3.5 ${isPlaying ? 'text-vocab animate-pulse' : 'text-slate-500'}`} />
        )}
        <span className="text-3xs uppercase tracking-wider">Audio</span>
      </button>

      <div className="h-3 w-px bg-slate-300 dark:bg-slate-700" />

      {/* Voice Toggle */}
      <div className="flex items-center space-x-1 text-4xs font-bold">
        {kyokoAudio && (
          <button
            type="button"
            onClick={(e) => handleToggleActor('Kyoko', e)}
            className={`px-1.5 py-0.5 rounded transition-colors ${
              preferredActor === 'Kyoko'
                ? 'bg-pink-500 text-white font-extrabold'
                : 'text-slate-500 hover:text-slate-800 dark:hover:text-slate-200'
            }`}
          >
            Kyo
          </button>
        )}
        {kenichiAudio && (
          <button
            type="button"
            onClick={(e) => handleToggleActor('Kenichi', e)}
            className={`px-1.5 py-0.5 rounded transition-colors ${
              preferredActor === 'Kenichi'
                ? 'bg-sky-500 text-white font-extrabold'
                : 'text-slate-500 hover:text-slate-800 dark:hover:text-slate-200'
            }`}
          >
            Ken
          </button>
        )}
      </div>
    </div>
  );
}
