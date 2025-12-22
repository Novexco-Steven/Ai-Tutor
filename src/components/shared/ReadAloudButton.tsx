import { useState, useEffect, useRef } from 'react';
import { Volume2, VolumeX, Loader2, ChevronDown } from 'lucide-react';
import { cn } from '@/utils/helpers';
import { useSettings } from '@/contexts/SettingsContext';
import {
  speakLongText,
  stopAudio,
  isTTSAvailable,
  getVoicePreviewText,
} from '@/services/googleTTS';
import {
  getActiveVoiceTeachers,
  getVoiceTeacher,
  getDefaultVoiceTeacher,
} from '@/services/voiceTeacher';
import type { VoiceTeacher } from '@/types';

interface ReadAloudButtonProps {
  text: string;
  label?: string;
  className?: string;
  compact?: boolean;
  showDropdown?: boolean;
  onStart?: () => void;
  onStop?: () => void;
  onProgress?: (chunkIndex: number, totalChunks: number) => void;
}

export default function ReadAloudButton({
  text,
  label = 'Read Aloud',
  className,
  compact = false,
  showDropdown = true,
  onStart,
  onStop,
  onProgress,
}: ReadAloudButtonProps) {
  const { settings } = useSettings();
  const [isPlaying, setIsPlaying] = useState(false);
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [voiceTeachers, setVoiceTeachers] = useState<VoiceTeacher[]>([]);
  const [selectedTeacher, setSelectedTeacher] = useState<VoiceTeacher | null>(null);
  const [isDropdownOpen, setIsDropdownOpen] = useState(false);
  const dropdownRef = useRef<HTMLDivElement>(null);

  // Load voice teachers on mount
  useEffect(() => {
    loadVoiceTeachers();
  }, []);

  // Load user's default voice teacher from settings
  useEffect(() => {
    if (settings.audio.defaultVoiceTeacherId && !selectedTeacher) {
      loadUserDefaultTeacher();
    }
  }, [settings.audio.defaultVoiceTeacherId]);

  // Close dropdown when clicking outside
  useEffect(() => {
    function handleClickOutside(event: MouseEvent) {
      if (dropdownRef.current && !dropdownRef.current.contains(event.target as Node)) {
        setIsDropdownOpen(false);
      }
    }

    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  const loadVoiceTeachers = async () => {
    try {
      const teachers = await getActiveVoiceTeachers();
      setVoiceTeachers(teachers);

      // Set initial teacher if none selected
      if (!selectedTeacher && teachers.length > 0) {
        const defaultTeacher = await getDefaultVoiceTeacher();
        setSelectedTeacher(defaultTeacher || teachers[0]);
      }
    } catch (err) {
      console.error('Failed to load voice teachers:', err);
    }
  };

  const loadUserDefaultTeacher = async () => {
    try {
      if (settings.audio.defaultVoiceTeacherId) {
        const teacher = await getVoiceTeacher(settings.audio.defaultVoiceTeacherId);
        if (teacher) {
          setSelectedTeacher(teacher);
        }
      }
    } catch (err) {
      console.error('Failed to load user default teacher:', err);
    }
  };

  const handlePlayStop = async () => {
    if (isPlaying) {
      stopAudio();
      setIsPlaying(false);
      onStop?.();
      return;
    }

    if (!selectedTeacher) {
      setError('No voice teacher selected');
      return;
    }

    if (!text.trim()) {
      setError('No content to read');
      return;
    }

    setError(null);
    setIsLoading(true);
    onStart?.();

    try {
      setIsPlaying(true);
      await speakLongText(text, selectedTeacher, (chunkIndex, totalChunks) => {
        onProgress?.(chunkIndex, totalChunks);
      });
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to play audio');
    } finally {
      setIsPlaying(false);
      setIsLoading(false);
      onStop?.();
    }
  };

  const handleSelectTeacher = async (teacher: VoiceTeacher) => {
    setSelectedTeacher(teacher);
    setIsDropdownOpen(false);

    // If playing, switch voice
    if (isPlaying) {
      stopAudio();
      setIsPlaying(false);
    }
  };

  const handlePreviewTeacher = async (teacher: VoiceTeacher, e: React.MouseEvent) => {
    e.stopPropagation();

    // Stop current playback
    if (isPlaying) {
      stopAudio();
      setIsPlaying(false);
    }

    try {
      const previewText = getVoicePreviewText(teacher);
      await speakLongText(previewText, teacher);
    } catch (err) {
      console.error('Preview failed:', err);
    }
  };

  if (!isTTSAvailable()) {
    return null; // Don't show button if TTS not configured
  }

  return (
    <div className={cn('relative inline-flex items-center', className)} ref={dropdownRef}>
      {/* Main Button */}
      <button
        onClick={handlePlayStop}
        disabled={isLoading || !selectedTeacher}
        className={cn(
          'flex items-center gap-2 rounded-lg font-medium transition-all',
          compact
            ? 'px-2 py-1.5 text-sm'
            : 'px-4 py-2',
          isPlaying
            ? 'bg-red-100 text-red-700 hover:bg-red-200 dark:bg-red-900/30 dark:text-red-400'
            : 'bg-blue-100 text-blue-700 hover:bg-blue-200 dark:bg-blue-900/30 dark:text-blue-400',
          (isLoading || !selectedTeacher) && 'opacity-50 cursor-not-allowed'
        )}
        title={isPlaying ? 'Stop reading' : label}
      >
        {isLoading ? (
          <Loader2 className="w-4 h-4 animate-spin" />
        ) : isPlaying ? (
          <VolumeX className="w-4 h-4" />
        ) : (
          <Volume2 className="w-4 h-4" />
        )}
        {!compact && (
          <span>{isPlaying ? 'Stop' : label}</span>
        )}
      </button>

      {/* Voice Teacher Dropdown */}
      {showDropdown && selectedTeacher && (
        <div className="relative">
          <button
            onClick={() => setIsDropdownOpen(!isDropdownOpen)}
            className={cn(
              'flex items-center gap-1 ml-1 rounded-lg font-medium transition-all',
              compact ? 'px-2 py-1.5 text-sm' : 'px-3 py-2',
              'bg-gray-100 text-gray-700 hover:bg-gray-200 dark:bg-gray-700 dark:text-gray-300 dark:hover:bg-gray-600'
            )}
            title={`Voice: ${selectedTeacher.name}`}
          >
            <span className="text-lg">{selectedTeacher.icon || '🎙️'}</span>
            {!compact && (
              <span className="max-w-[100px] truncate">{selectedTeacher.name}</span>
            )}
            <ChevronDown className={cn(
              'w-4 h-4 transition-transform',
              isDropdownOpen && 'rotate-180'
            )} />
          </button>

          {/* Dropdown Menu */}
          {isDropdownOpen && (
            <div className="absolute right-0 top-full mt-1 z-50 w-72 bg-white dark:bg-gray-800 rounded-lg shadow-xl border border-gray-200 dark:border-gray-700 overflow-hidden">
              <div className="p-2 border-b border-gray-200 dark:border-gray-700">
                <p className="text-xs font-medium text-gray-500 dark:text-gray-400 uppercase">
                  Choose Voice Teacher
                </p>
              </div>
              <div className="max-h-64 overflow-y-auto">
                {voiceTeachers.map((teacher) => (
                  <button
                    key={teacher.id}
                    onClick={() => handleSelectTeacher(teacher)}
                    className={cn(
                      'w-full px-3 py-2 flex items-start gap-3 hover:bg-gray-100 dark:hover:bg-gray-700 transition-colors text-left',
                      selectedTeacher?.id === teacher.id && 'bg-blue-50 dark:bg-blue-900/20'
                    )}
                  >
                    {/* Icon */}
                    <div
                      className="w-10 h-10 rounded-full flex items-center justify-center text-xl flex-shrink-0"
                      style={{ backgroundColor: `${teacher.color || '#3b82f6'}20` }}
                    >
                      {teacher.icon || '🎙️'}
                    </div>

                    {/* Info */}
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center gap-2">
                        <span className="font-medium text-gray-900 dark:text-white">
                          {teacher.name}
                        </span>
                        {teacher.is_default && (
                          <span className="text-xs px-1.5 py-0.5 bg-green-100 text-green-700 dark:bg-green-900/30 dark:text-green-400 rounded">
                            Default
                          </span>
                        )}
                      </div>
                      {teacher.target_audience && (
                        <p className="text-xs text-gray-500 dark:text-gray-400">
                          For: {teacher.target_audience}
                        </p>
                      )}
                      {teacher.teaching_style && (
                        <p className="text-xs text-gray-400 dark:text-gray-500 truncate">
                          {teacher.teaching_style}
                        </p>
                      )}
                    </div>

                    {/* Preview Button */}
                    <button
                      onClick={(e) => handlePreviewTeacher(teacher, e)}
                      className="p-1.5 rounded hover:bg-gray-200 dark:hover:bg-gray-600 text-gray-500 dark:text-gray-400 flex-shrink-0"
                      title="Preview voice"
                    >
                      <Volume2 className="w-4 h-4" />
                    </button>
                  </button>
                ))}
              </div>
            </div>
          )}
        </div>
      )}

      {/* Error Message */}
      {error && (
        <div className="absolute top-full left-0 mt-1 px-3 py-1 bg-red-100 text-red-700 text-xs rounded whitespace-nowrap">
          {error}
        </div>
      )}
    </div>
  );
}

/**
 * Hook to get voice teacher state for external components
 */
export function useVoiceTeachers() {
  const [voiceTeachers, setVoiceTeachers] = useState<VoiceTeacher[]>([]);
  const [defaultTeacher, setDefaultTeacher] = useState<VoiceTeacher | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      try {
        const [teachers, defaultT] = await Promise.all([
          getActiveVoiceTeachers(),
          getDefaultVoiceTeacher(),
        ]);
        setVoiceTeachers(teachers);
        setDefaultTeacher(defaultT);
      } catch (err) {
        console.error('Failed to load voice teachers:', err);
      } finally {
        setLoading(false);
      }
    }
    load();
  }, []);

  return { voiceTeachers, defaultTeacher, loading };
}
