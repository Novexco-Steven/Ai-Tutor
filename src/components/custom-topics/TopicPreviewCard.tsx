import { useState } from 'react';
import { ChevronDown, ChevronUp, Clock, BookOpen, Target, X, Save, Loader2 } from 'lucide-react';
import { useUser } from '@/contexts/UserContext';
import { db } from '@/services/supabase';
import { cn } from '@/utils/helpers';
import Button from '../shared/Button';
import Card from '../shared/Card';
import type { AIGenerateTopicOutlineResponse } from '@/types';

interface TopicPreviewCardProps {
  outline: AIGenerateTopicOutlineResponse;
  originalPrompt: string;
  onSave: (topicId: string) => void;
  onCancel: () => void;
}

export default function TopicPreviewCard({
  outline,
  originalPrompt,
  onSave,
  onCancel
}: TopicPreviewCardProps) {
  const { profile } = useUser();
  const [gradeLevel, setGradeLevel] = useState(profile?.grade_level || 5);
  const [difficultyLevel, setDifficultyLevel] = useState(outline.suggestedDifficulty);
  const [showSections, setShowSections] = useState(false);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const handleSave = async () => {
    if (!profile?.id) {
      setError('You must be logged in to save a custom topic');
      return;
    }

    setSaving(true);
    setError(null);

    try {
      const customTopic = await db.createCustomTopic({
        created_by: profile.id,
        name: outline.name,
        description: outline.description,
        grade_level: gradeLevel,
        difficulty_level: difficultyLevel,
        estimated_time: outline.estimatedTime,
        topic_outline: outline.outline as unknown as Record<string, unknown>,
        ai_prompt: originalPrompt,
        status: 'published'
      });

      onSave(customTopic.id);
    } catch (err) {
      console.error('Error saving custom topic:', err);
      setError('Failed to save topic. Please try again.');
    } finally {
      setSaving(false);
    }
  };

  return (
    <Card className="border-2 border-primary-200 dark:border-primary-700 bg-gradient-to-br from-white to-primary-50/30 dark:from-gray-800 dark:to-primary-900/20">
      {/* Header */}
      <div className="flex items-start justify-between mb-4">
        <div className="flex-1">
          <div className="flex items-center gap-2 text-sm text-primary-600 dark:text-primary-400 font-medium mb-1">
            <Target className="w-4 h-4" />
            <span>Custom Topic Preview</span>
          </div>
          <h2 className="text-2xl font-bold text-gray-900 dark:text-white">
            {outline.name}
          </h2>
          <p className="text-gray-600 dark:text-gray-300 mt-2">
            {outline.description}
          </p>
        </div>
        <button
          onClick={onCancel}
          className="p-2 rounded-lg hover:bg-gray-100 dark:hover:bg-gray-700 transition-colors"
          aria-label="Cancel"
        >
          <X className="w-5 h-5 text-gray-500" />
        </button>
      </div>

      {/* Quick Info */}
      <div className="flex flex-wrap gap-4 mb-6">
        <div className="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400">
          <Clock className="w-4 h-4" />
          <span>{outline.estimatedTime} min</span>
        </div>
        <div className="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400">
          <BookOpen className="w-4 h-4" />
          <span>{outline.outline.sections.length} sections</span>
        </div>
        <span className="px-2 py-1 text-xs font-medium rounded-full bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-300">
          {outline.suggestedSubject}
        </span>
      </div>

      {/* Collapsible Sections */}
      <div className="mb-6">
        <button
          onClick={() => setShowSections(!showSections)}
          className="flex items-center gap-2 text-sm font-medium text-gray-700 dark:text-gray-300 hover:text-primary-600 dark:hover:text-primary-400 transition-colors"
        >
          {showSections ? <ChevronUp className="w-4 h-4" /> : <ChevronDown className="w-4 h-4" />}
          <span>View Course Outline</span>
        </button>

        {showSections && (
          <div className="mt-4 space-y-4">
            {outline.outline.sections.map((section, idx) => (
              <div
                key={idx}
                className="p-4 bg-white dark:bg-gray-800 rounded-lg border border-gray-200 dark:border-gray-700"
              >
                <h4 className="font-semibold text-gray-900 dark:text-white mb-2">
                  {idx + 1}. {section.title}
                </h4>
                <p className="text-sm text-gray-600 dark:text-gray-400 mb-3">
                  {section.summary}
                </p>
                <div className="space-y-1">
                  {section.learningObjectives.map((objective, objIdx) => (
                    <div key={objIdx} className="flex items-start gap-2 text-sm">
                      <span className="text-primary-500">•</span>
                      <span className="text-gray-700 dark:text-gray-300">{objective}</span>
                    </div>
                  ))}
                </div>
              </div>
            ))}
          </div>
        )}
      </div>

      {/* Key Concepts */}
      <div className="mb-6">
        <h4 className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
          Key Concepts
        </h4>
        <div className="flex flex-wrap gap-2">
          {outline.outline.concepts.map((concept, idx) => (
            <span
              key={idx}
              className="px-3 py-1 text-sm rounded-full bg-primary-100 dark:bg-primary-900/30 text-primary-700 dark:text-primary-300"
            >
              {concept}
            </span>
          ))}
        </div>
      </div>

      {/* Configuration */}
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 p-4 bg-gray-50 dark:bg-gray-800/50 rounded-lg mb-6">
        {/* Grade Level */}
        <div>
          <label className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2 block">
            Grade Level
          </label>
          <select
            value={gradeLevel}
            onChange={(e) => setGradeLevel(Number(e.target.value))}
            className="w-full px-3 py-2 rounded-lg border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:ring-2 focus:ring-primary-500"
          >
            {[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12].map((grade) => (
              <option key={grade} value={grade}>
                Grade {grade}
              </option>
            ))}
          </select>
        </div>

        {/* Difficulty Level */}
        <div>
          <label className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2 block">
            Difficulty: {difficultyLevel}/10
          </label>
          <input
            type="range"
            min="1"
            max="10"
            value={difficultyLevel}
            onChange={(e) => setDifficultyLevel(Number(e.target.value))}
            className="w-full h-2 bg-gray-200 dark:bg-gray-700 rounded-lg appearance-none cursor-pointer accent-primary-600"
          />
          <div className="flex justify-between text-xs text-gray-500 dark:text-gray-400 mt-1">
            <span>Easier</span>
            <span>Harder</span>
          </div>
        </div>
      </div>

      {/* Error */}
      {error && (
        <p className="text-sm text-red-500 mb-4">
          {error}
        </p>
      )}

      {/* Actions */}
      <div className="flex gap-3">
        <Button
          variant="secondary"
          onClick={onCancel}
          disabled={saving}
          className="flex-1"
        >
          Cancel
        </Button>
        <Button
          variant="primary"
          onClick={handleSave}
          disabled={saving}
          className={cn(
            'flex-1',
            'bg-gradient-to-r from-primary-600 to-purple-600 hover:from-primary-700 hover:to-purple-700'
          )}
        >
          {saving ? (
            <>
              <Loader2 className="w-4 h-4 mr-2 animate-spin" />
              Saving...
            </>
          ) : (
            <>
              <Save className="w-4 h-4 mr-2" />
              Save Course
            </>
          )}
        </Button>
      </div>
    </Card>
  );
}
