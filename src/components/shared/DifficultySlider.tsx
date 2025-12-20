import { useState, useEffect, useRef } from 'react';
import { ChevronDown, ChevronUp } from 'lucide-react';
import { useUser } from '@/contexts/UserContext';
import { cn } from '@/utils/helpers';

interface DifficultySliderProps {
  className?: string;
  variant?: 'default' | 'dark';
}

export default function DifficultySlider({ className, variant = 'default' }: DifficultySliderProps) {
  const { profile, updateProfile } = useUser();
  const [showSlider, setShowSlider] = useState(false);
  const [localDifficulty, setLocalDifficulty] = useState(profile?.difficulty_level ?? 5);
  const dropdownRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (profile?.difficulty_level) {
      setLocalDifficulty(profile.difficulty_level);
    }
  }, [profile?.difficulty_level]);

  // Close dropdown when clicking outside
  useEffect(() => {
    const handleClickOutside = (event: MouseEvent) => {
      if (dropdownRef.current && !dropdownRef.current.contains(event.target as Node)) {
        setShowSlider(false);
      }
    };

    if (showSlider) {
      document.addEventListener('mousedown', handleClickOutside);
    }

    return () => {
      document.removeEventListener('mousedown', handleClickOutside);
    };
  }, [showSlider]);

  const handleDifficultyChange = async (newDifficulty: number) => {
    setLocalDifficulty(newDifficulty);
    try {
      await updateProfile({ difficulty_level: newDifficulty });
    } catch (error) {
      console.error('Error updating difficulty:', error);
    }
  };

  const isDark = variant === 'dark';

  return (
    <div className={cn('relative', className)} ref={dropdownRef}>
      <button
        onClick={() => setShowSlider(!showSlider)}
        className={cn(
          'flex items-center gap-1 px-3 py-1 rounded-full transition-colors text-sm',
          isDark
            ? 'bg-slate-700/50 text-slate-300 hover:bg-slate-600/50 border border-slate-600/50'
            : 'bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-300 hover:bg-gray-200 dark:hover:bg-gray-600'
        )}
      >
        Difficulty {localDifficulty}/10
        {showSlider ? (
          <ChevronUp className="w-3 h-3" />
        ) : (
          <ChevronDown className="w-3 h-3" />
        )}
      </button>
      {showSlider && (
        <div
          className={cn(
            'absolute top-full left-0 mt-2 p-4 rounded-lg shadow-lg border z-20 min-w-[200px]',
            isDark
              ? 'bg-slate-800 border-slate-700'
              : 'bg-white dark:bg-gray-800 border-gray-200 dark:border-gray-700'
          )}
        >
          <div className={cn(
            'flex justify-between text-xs mb-2',
            isDark ? 'text-slate-400' : 'text-gray-500 dark:text-gray-400'
          )}>
            <span>Easier</span>
            <span>Harder</span>
          </div>
          <input
            type="range"
            min="1"
            max="10"
            value={localDifficulty}
            onChange={(e) => handleDifficultyChange(Number(e.target.value))}
            className={cn(
              'w-full h-2 rounded-lg appearance-none cursor-pointer accent-primary-600',
              isDark ? 'bg-slate-700' : 'bg-gray-200 dark:bg-gray-700'
            )}
          />
          <div className="flex justify-between mt-2">
            {[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((n) => (
              <button
                key={n}
                onClick={() => handleDifficultyChange(n)}
                className={cn(
                  'w-6 h-6 rounded-full text-xs font-medium transition-colors',
                  localDifficulty === n
                    ? 'bg-primary-600 text-white'
                    : isDark
                      ? 'bg-slate-700 text-slate-400 hover:bg-slate-600'
                      : 'bg-gray-100 dark:bg-gray-700 text-gray-600 dark:text-gray-400 hover:bg-gray-200 dark:hover:bg-gray-600'
                )}
              >
                {n}
              </button>
            ))}
          </div>
        </div>
      )}
    </div>
  );
}
