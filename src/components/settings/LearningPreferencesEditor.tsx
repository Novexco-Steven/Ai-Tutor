import { useState, useEffect } from 'react';
import {
  Brain,
  Loader2,
  ChevronDown,
  Check,
  User,
  MessageSquare,
  HelpCircle,
} from 'lucide-react';
import { useUser } from '@/contexts/UserContext';
import { getLearningPreferences, saveLearningPreferences } from '@/services/promptAdmin';
import {
  TEACHER_PERSONAS,
  TEACHING_METHODS,
  FEEDBACK_METHODS,
} from '@/services/prompts';
import type {
  LearningPreferences,
  SaveLearningPreferencesInput,
  CustomLearningPreferences,
} from '@/types/prompts';

/**
 * Learning Preferences Editor
 *
 * Allows users to customize how they want to learn:
 * - Preferred teacher persona
 * - Teaching method preference
 * - Feedback style
 * - Custom learning preferences
 */
export default function LearningPreferencesEditor() {
  const { profile } = useUser();
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [saved, setSaved] = useState(false);
  const [error, setError] = useState<string | null>(null);

  // Preferences
  const [teacherPersona, setTeacherPersona] = useState<string>('');
  const [teachingMethod, setTeachingMethod] = useState<string>('');
  const [feedbackMethod, setFeedbackMethod] = useState<string>('');
  const [learningStyle, setLearningStyle] = useState<LearningPreferences['learning_style']>();
  const [customPrefs, setCustomPrefs] = useState<CustomLearningPreferences>({});

  // Expanded sections
  const [expandedSection, setExpandedSection] = useState<string | null>('teacher');

  // Load preferences
  useEffect(() => {
    if (profile?.id) {
      loadPreferences();
    }
  }, [profile?.id]);

  async function loadPreferences() {
    if (!profile?.id) return;

    try {
      const prefs = await getLearningPreferences(profile.id);
      if (prefs) {
        setTeacherPersona(prefs.preferred_teacher_persona || '');
        setTeachingMethod(prefs.preferred_teaching_method || '');
        setFeedbackMethod(prefs.preferred_feedback_method || '');
        setLearningStyle(prefs.learning_style);
        setCustomPrefs(prefs.custom_preferences || {});
      }
    } catch (err) {
      console.error('Failed to load preferences:', err);
    } finally {
      setLoading(false);
    }
  }

  async function handleSave() {
    if (!profile?.id) return;

    setSaving(true);
    setError(null);
    setSaved(false);

    try {
      const input: SaveLearningPreferencesInput = {
        preferred_teacher_persona: teacherPersona || undefined,
        preferred_teaching_method: teachingMethod || undefined,
        preferred_feedback_method: feedbackMethod || undefined,
        learning_style: learningStyle,
        custom_preferences: customPrefs,
      };

      await saveLearningPreferences(profile.id, input);
      setSaved(true);
      setTimeout(() => setSaved(false), 3000);
    } catch (err) {
      setError('Failed to save preferences');
      console.error(err);
    } finally {
      setSaving(false);
    }
  }

  const updateCustomPref = (key: keyof CustomLearningPreferences, value: string) => {
    setCustomPrefs((prev) => ({ ...prev, [key]: value }));
  };

  if (loading) {
    return (
      <div className="bg-slate-800 rounded-xl p-6 border border-slate-700">
        <div className="flex items-center justify-center py-8">
          <Loader2 className="w-6 h-6 animate-spin text-blue-400" />
        </div>
      </div>
    );
  }

  return (
    <div className="bg-slate-800 rounded-xl border border-slate-700 overflow-hidden">
      {/* Header */}
      <div className="p-4 border-b border-slate-700 flex items-center justify-between">
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 bg-purple-500/10 rounded-lg flex items-center justify-center">
            <Brain className="w-5 h-5 text-purple-400" />
          </div>
          <div>
            <h2 className="text-lg font-semibold text-white">Learning Preferences</h2>
            <p className="text-sm text-slate-400">Customize how you want to learn</p>
          </div>
        </div>

        <button
          onClick={handleSave}
          disabled={saving}
          className="inline-flex items-center gap-2 px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600 transition-colors disabled:opacity-50"
        >
          {saving ? (
            <Loader2 className="w-4 h-4 animate-spin" />
          ) : saved ? (
            <Check className="w-4 h-4" />
          ) : null}
          {saving ? 'Saving...' : saved ? 'Saved!' : 'Save'}
        </button>
      </div>

      {error && (
        <div className="m-4 p-3 bg-red-500/10 border border-red-500/20 rounded-lg text-red-400 text-sm">
          {error}
        </div>
      )}

      <div className="divide-y divide-slate-700">
        {/* Teacher Persona Section */}
        <div>
          <button
            onClick={() => setExpandedSection(expandedSection === 'teacher' ? null : 'teacher')}
            className="w-full p-4 flex items-center justify-between hover:bg-slate-750 transition-colors"
          >
            <div className="flex items-center gap-3">
              <User className="w-5 h-5 text-slate-400" />
              <div className="text-left">
                <div className="font-medium text-white">Teacher Persona</div>
                <div className="text-sm text-slate-400">
                  {teacherPersona
                    ? TEACHER_PERSONAS[teacherPersona]?.name || 'Custom'
                    : 'Default (adaptive)'}
                </div>
              </div>
            </div>
            <ChevronDown
              className={`w-5 h-5 text-slate-400 transition-transform ${
                expandedSection === 'teacher' ? 'rotate-180' : ''
              }`}
            />
          </button>

          {expandedSection === 'teacher' && (
            <div className="px-4 pb-4">
              <p className="text-sm text-slate-400 mb-4">
                Choose a teaching style that matches your learning preferences
              </p>
              <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
                {/* Default option */}
                <button
                  onClick={() => setTeacherPersona('')}
                  className={`p-3 rounded-lg border text-left transition-colors ${
                    !teacherPersona
                      ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                      : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                  }`}
                >
                  <div className="font-medium mb-1">Default</div>
                  <div className="text-xs opacity-75">
                    Adapts to the content and your needs
                  </div>
                </button>

                {Object.values(TEACHER_PERSONAS).map((persona) => (
                  <button
                    key={persona.id}
                    onClick={() => setTeacherPersona(persona.id)}
                    className={`p-3 rounded-lg border text-left transition-colors ${
                      teacherPersona === persona.id
                        ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    <div className="font-medium mb-1">{persona.name}</div>
                    <div className="text-xs opacity-75 line-clamp-2">
                      {persona.description}
                    </div>
                  </button>
                ))}
              </div>

              {teacherPersona && TEACHER_PERSONAS[teacherPersona] && (
                <div className="mt-4 p-3 bg-slate-700/50 rounded-lg">
                  <div className="text-sm text-slate-300">
                    <strong>Teaching Style:</strong>{' '}
                    {TEACHER_PERSONAS[teacherPersona].teachingStyle}
                  </div>
                  <div className="text-sm text-slate-400 mt-1">
                    <strong>Feedback:</strong>{' '}
                    {TEACHER_PERSONAS[teacherPersona].feedbackStyle}
                  </div>
                </div>
              )}
            </div>
          )}
        </div>

        {/* Teaching Method Section */}
        <div>
          <button
            onClick={() => setExpandedSection(expandedSection === 'method' ? null : 'method')}
            className="w-full p-4 flex items-center justify-between hover:bg-slate-750 transition-colors"
          >
            <div className="flex items-center gap-3">
              <MessageSquare className="w-5 h-5 text-slate-400" />
              <div className="text-left">
                <div className="font-medium text-white">Teaching Method</div>
                <div className="text-sm text-slate-400">
                  {teachingMethod
                    ? TEACHING_METHODS[teachingMethod as keyof typeof TEACHING_METHODS]?.name ||
                      'Custom'
                    : 'Default (mixed)'}
                </div>
              </div>
            </div>
            <ChevronDown
              className={`w-5 h-5 text-slate-400 transition-transform ${
                expandedSection === 'method' ? 'rotate-180' : ''
              }`}
            />
          </button>

          {expandedSection === 'method' && (
            <div className="px-4 pb-4">
              <p className="text-sm text-slate-400 mb-4">
                Choose how you prefer to learn new concepts
              </p>
              <div className="grid gap-3 sm:grid-cols-2">
                {/* Default option */}
                <button
                  onClick={() => setTeachingMethod('')}
                  className={`p-3 rounded-lg border text-left transition-colors ${
                    !teachingMethod
                      ? 'bg-green-500/10 border-green-500/50 text-green-400'
                      : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                  }`}
                >
                  <div className="font-medium mb-1">Default</div>
                  <div className="text-xs opacity-75">Uses a mix of teaching approaches</div>
                </button>

                {Object.values(TEACHING_METHODS).map((method) => (
                  <button
                    key={method.id}
                    onClick={() => setTeachingMethod(method.id)}
                    className={`p-3 rounded-lg border text-left transition-colors ${
                      teachingMethod === method.id
                        ? 'bg-green-500/10 border-green-500/50 text-green-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    <div className="font-medium mb-1">{method.name}</div>
                    <div className="text-xs opacity-75 line-clamp-2">{method.description}</div>
                  </button>
                ))}
              </div>
            </div>
          )}
        </div>

        {/* Custom Preferences Section */}
        <div>
          <button
            onClick={() => setExpandedSection(expandedSection === 'custom' ? null : 'custom')}
            className="w-full p-4 flex items-center justify-between hover:bg-slate-750 transition-colors"
          >
            <div className="flex items-center gap-3">
              <HelpCircle className="w-5 h-5 text-slate-400" />
              <div className="text-left">
                <div className="font-medium text-white">Custom Preferences</div>
                <div className="text-sm text-slate-400">Fine-tune your learning experience</div>
              </div>
            </div>
            <ChevronDown
              className={`w-5 h-5 text-slate-400 transition-transform ${
                expandedSection === 'custom' ? 'rotate-180' : ''
              }`}
            />
          </button>

          {expandedSection === 'custom' && (
            <div className="px-4 pb-4 space-y-4">
              {/* Explanation Detail */}
              <div>
                <label className="block text-sm font-medium text-slate-300 mb-2">
                  Explanation Detail
                </label>
                <div className="flex gap-2">
                  <button
                    onClick={() => updateCustomPref('explanation_detail', 'concise')}
                    className={`flex-1 py-2 px-3 rounded-lg border transition-colors ${
                      customPrefs.explanation_detail === 'concise'
                        ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    Concise
                  </button>
                  <button
                    onClick={() => updateCustomPref('explanation_detail', 'thorough')}
                    className={`flex-1 py-2 px-3 rounded-lg border transition-colors ${
                      customPrefs.explanation_detail === 'thorough'
                        ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    Thorough
                  </button>
                </div>
              </div>

              {/* Example Quantity */}
              <div>
                <label className="block text-sm font-medium text-slate-300 mb-2">
                  Number of Examples
                </label>
                <div className="flex gap-2">
                  <button
                    onClick={() => updateCustomPref('example_quantity', 'few')}
                    className={`flex-1 py-2 px-3 rounded-lg border transition-colors ${
                      customPrefs.example_quantity === 'few'
                        ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    Few
                  </button>
                  <button
                    onClick={() => updateCustomPref('example_quantity', 'many')}
                    className={`flex-1 py-2 px-3 rounded-lg border transition-colors ${
                      customPrefs.example_quantity === 'many'
                        ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    Many
                  </button>
                </div>
              </div>

              {/* Encouragement Level */}
              <div>
                <label className="block text-sm font-medium text-slate-300 mb-2">
                  Encouragement Level
                </label>
                <div className="flex gap-2">
                  <button
                    onClick={() => updateCustomPref('encouragement_level', 'minimal')}
                    className={`flex-1 py-2 px-3 rounded-lg border transition-colors text-sm ${
                      customPrefs.encouragement_level === 'minimal'
                        ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    Minimal
                  </button>
                  <button
                    onClick={() => updateCustomPref('encouragement_level', 'moderate')}
                    className={`flex-1 py-2 px-3 rounded-lg border transition-colors text-sm ${
                      customPrefs.encouragement_level === 'moderate'
                        ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    Moderate
                  </button>
                  <button
                    onClick={() => updateCustomPref('encouragement_level', 'high')}
                    className={`flex-1 py-2 px-3 rounded-lg border transition-colors text-sm ${
                      customPrefs.encouragement_level === 'high'
                        ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    High
                  </button>
                </div>
              </div>

              {/* Challenge Preference */}
              <div>
                <label className="block text-sm font-medium text-slate-300 mb-2">
                  Challenge Approach
                </label>
                <div className="flex gap-2">
                  <button
                    onClick={() => updateCustomPref('challenge_preference', 'guided')}
                    className={`flex-1 py-2 px-3 rounded-lg border transition-colors ${
                      customPrefs.challenge_preference === 'guided'
                        ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    <div className="text-sm font-medium">Guided</div>
                    <div className="text-xs opacity-75">Step-by-step help</div>
                  </button>
                  <button
                    onClick={() => updateCustomPref('challenge_preference', 'struggle_first')}
                    className={`flex-1 py-2 px-3 rounded-lg border transition-colors ${
                      customPrefs.challenge_preference === 'struggle_first'
                        ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    <div className="text-sm font-medium">Try First</div>
                    <div className="text-xs opacity-75">Attempt before hints</div>
                  </button>
                </div>
              </div>

              {/* Pace Preference */}
              <div>
                <label className="block text-sm font-medium text-slate-300 mb-2">
                  Learning Pace
                </label>
                <div className="flex gap-2">
                  <button
                    onClick={() => updateCustomPref('pace_preference', 'slow')}
                    className={`flex-1 py-2 px-3 rounded-lg border transition-colors ${
                      customPrefs.pace_preference === 'slow'
                        ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    Slow
                  </button>
                  <button
                    onClick={() => updateCustomPref('pace_preference', 'moderate')}
                    className={`flex-1 py-2 px-3 rounded-lg border transition-colors ${
                      customPrefs.pace_preference === 'moderate'
                        ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    Moderate
                  </button>
                  <button
                    onClick={() => updateCustomPref('pace_preference', 'fast')}
                    className={`flex-1 py-2 px-3 rounded-lg border transition-colors ${
                      customPrefs.pace_preference === 'fast'
                        ? 'bg-blue-500/10 border-blue-500/50 text-blue-400'
                        : 'bg-slate-700 border-slate-600 text-slate-300 hover:border-slate-500'
                    }`}
                  >
                    Fast
                  </button>
                </div>
              </div>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
