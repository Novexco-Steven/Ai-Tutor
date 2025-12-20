import { useState } from 'react';
import { Sparkles, Loader2 } from 'lucide-react';
import { useUser } from '@/contexts/UserContext';
import { generateTopicOutline } from '@/services/ai';
import { cn } from '@/utils/helpers';
import type { AIGenerateTopicOutlineResponse } from '@/types';

interface CustomTopicInputProps {
  onOutlineGenerated: (outline: AIGenerateTopicOutlineResponse, prompt: string) => void;
  variant?: 'compact' | 'expanded';
  placeholder?: string;
  className?: string;
}

export default function CustomTopicInput({
  onOutlineGenerated,
  variant = 'expanded',
  placeholder = "What would you like to learn about?",
  className
}: CustomTopicInputProps) {
  const { profile } = useUser();
  const [prompt, setPrompt] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!prompt.trim() || loading) return;

    setLoading(true);
    setError(null);

    try {
      const outline = await generateTopicOutline({
        userPrompt: prompt.trim(),
        gradeLevel: profile?.grade_level || 5
      });
      onOutlineGenerated(outline, prompt.trim());
      setPrompt('');
    } catch (err) {
      console.error('Error generating outline:', err);
      setError('Failed to generate topic outline. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  const isCompact = variant === 'compact';

  return (
    <div className={cn(
      'rounded-xl border transition-all',
      isCompact
        ? 'bg-gradient-to-r from-primary-50 to-purple-50 dark:from-primary-900/20 dark:to-purple-900/20 border-primary-200 dark:border-primary-800 p-4'
        : 'bg-gradient-to-br from-primary-50 via-purple-50 to-pink-50 dark:from-primary-900/30 dark:via-purple-900/30 dark:to-pink-900/30 border-primary-200 dark:border-primary-700 p-6',
      className
    )}>
      {!isCompact && (
        <div className="flex items-center gap-3 mb-4">
          <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-primary-500 to-purple-600 flex items-center justify-center">
            <Sparkles className="w-5 h-5 text-white" />
          </div>
          <div>
            <h3 className="font-semibold text-gray-900 dark:text-white">
              Create Custom Topic
            </h3>
            <p className="text-sm text-gray-600 dark:text-gray-400">
              Learn about anything you want with AI
            </p>
          </div>
        </div>
      )}

      <form onSubmit={handleSubmit} className={cn(
        'flex gap-3',
        isCompact ? 'items-center' : 'flex-col sm:flex-row sm:items-end'
      )}>
        <div className="flex-1">
          {isCompact && (
            <div className="flex items-center gap-2 mb-2">
              <Sparkles className="w-4 h-4 text-primary-500" />
              <span className="text-sm font-medium text-gray-700 dark:text-gray-300">
                Create Custom Topic
              </span>
            </div>
          )}
          <input
            type="text"
            value={prompt}
            onChange={(e) => setPrompt(e.target.value)}
            placeholder={placeholder}
            disabled={loading}
            className={cn(
              'w-full rounded-lg border transition-all',
              'bg-white dark:bg-gray-800',
              'border-gray-300 dark:border-gray-600',
              'text-gray-900 dark:text-white',
              'placeholder-gray-500 dark:placeholder-gray-400',
              'focus:ring-2 focus:ring-primary-500 focus:border-primary-500',
              'disabled:opacity-50 disabled:cursor-not-allowed',
              isCompact ? 'px-3 py-2 text-sm' : 'px-4 py-3'
            )}
          />
          {!isCompact && (
            <p className="text-xs text-gray-500 dark:text-gray-400 mt-2">
              Examples: "How do volcanoes work", "The history of ancient Rome", "Introduction to fractions"
            </p>
          )}
        </div>

        <button
          type="submit"
          disabled={!prompt.trim() || loading}
          className={cn(
            'flex items-center justify-center gap-2 rounded-lg font-medium transition-all',
            'bg-gradient-to-r from-primary-600 to-purple-600 hover:from-primary-700 hover:to-purple-700',
            'text-white shadow-lg shadow-primary-500/25',
            'disabled:opacity-50 disabled:cursor-not-allowed disabled:shadow-none',
            isCompact ? 'px-4 py-2 text-sm' : 'px-6 py-3'
          )}
        >
          {loading ? (
            <>
              <Loader2 className="w-4 h-4 animate-spin" />
              {!isCompact && <span>Generating...</span>}
            </>
          ) : (
            <>
              <Sparkles className="w-4 h-4" />
              {!isCompact && <span>Generate</span>}
            </>
          )}
        </button>
      </form>

      {error && (
        <p className="text-sm text-red-500 mt-3">
          {error}
        </p>
      )}
    </div>
  );
}
