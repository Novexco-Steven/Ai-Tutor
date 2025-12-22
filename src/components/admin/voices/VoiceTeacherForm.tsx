import { useState, useEffect } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import {
  ArrowLeft,
  Save,
  Volume2,
  Loader2,
  AlertCircle,
} from 'lucide-react';
import {
  getVoiceTeacher,
  createVoiceTeacher,
  updateVoiceTeacher,
} from '@/services/voiceTeacher';
import { speakText, isTTSAvailable } from '@/services/googleTTS';
import { useAuth } from '@/contexts/AuthContext';
import { GOOGLE_TTS_VOICES } from '@/types';
import type { VoiceTeacher, VoiceTeacherInput } from '@/types';

const EMOJI_OPTIONS = ['🎙️', '🏀', '☀️', '🌳', '⚡', '🤝', '🔮', '🎯', '🌸', '📚', '🎓', '🧪', '🎨', '🎵', '🌟'];

const COLOR_OPTIONS = [
  '#ef4444', // red
  '#f59e0b', // amber
  '#22c55e', // green
  '#3b82f6', // blue
  '#8b5cf6', // violet
  '#ec4899', // pink
  '#14b8a6', // teal
  '#6366f1', // indigo
  '#f97316', // orange
  '#84cc16', // lime
];

export default function VoiceTeacherForm() {
  const navigate = useNavigate();
  const { id } = useParams<{ id: string }>();
  const { user } = useAuth();
  const isEditing = !!id && id !== 'new';

  const [loading, setLoading] = useState(isEditing);
  const [saving, setSaving] = useState(false);
  const [previewing, setPreviewing] = useState(false);
  const [error, setError] = useState<string | null>(null);

  // Form state
  const [name, setName] = useState('');
  const [description, setDescription] = useState('');
  const [voiceName, setVoiceName] = useState('en-US-Neural2-D');
  const [languageCode, setLanguageCode] = useState('en-US');
  const [speakingRate, setSpeakingRate] = useState(1.0);
  const [pitch, setPitch] = useState(0.0);
  const [volumeGainDb, setVolumeGainDb] = useState(0.0);
  const [personalityPrompt, setPersonalityPrompt] = useState('');
  const [targetAudience, setTargetAudience] = useState('');
  const [teachingStyle, setTeachingStyle] = useState('');
  const [icon, setIcon] = useState('🎙️');
  const [color, setColor] = useState('#3b82f6');
  const [isActive, setIsActive] = useState(true);
  const [isDefault, setIsDefault] = useState(false);

  useEffect(() => {
    if (isEditing) {
      loadVoiceTeacher();
    }
  }, [id, isEditing]);

  const loadVoiceTeacher = async () => {
    try {
      setLoading(true);
      setError(null);
      const teacher = await getVoiceTeacher(id!);
      if (!teacher) {
        setError('Voice teacher not found');
        return;
      }
      populateForm(teacher);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to load voice teacher');
    } finally {
      setLoading(false);
    }
  };

  const populateForm = (teacher: VoiceTeacher) => {
    setName(teacher.name);
    setDescription(teacher.description || '');
    setVoiceName(teacher.voice_name);
    setLanguageCode(teacher.language_code);
    setSpeakingRate(teacher.speaking_rate);
    setPitch(teacher.pitch);
    setVolumeGainDb(teacher.volume_gain_db);
    setPersonalityPrompt(teacher.personality_prompt || '');
    setTargetAudience(teacher.target_audience || '');
    setTeachingStyle(teacher.teaching_style || '');
    setIcon(teacher.icon || '🎙️');
    setColor(teacher.color || '#3b82f6');
    setIsActive(teacher.is_active);
    setIsDefault(teacher.is_default);
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    if (!name.trim()) {
      setError('Name is required');
      return;
    }

    if (!voiceName) {
      setError('Voice is required');
      return;
    }

    const input: VoiceTeacherInput = {
      name: name.trim(),
      description: description.trim() || undefined,
      voice_name: voiceName,
      language_code: languageCode,
      speaking_rate: speakingRate,
      pitch,
      volume_gain_db: volumeGainDb,
      personality_prompt: personalityPrompt.trim() || undefined,
      target_audience: targetAudience.trim() || undefined,
      teaching_style: teachingStyle.trim() || undefined,
      icon,
      color,
      is_active: isActive,
      is_default: isDefault,
    };

    try {
      setSaving(true);
      setError(null);

      if (isEditing) {
        await updateVoiceTeacher(id!, input);
      } else {
        await createVoiceTeacher(input, user?.id);
      }

      navigate('/admin/voices');
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to save voice teacher');
    } finally {
      setSaving(false);
    }
  };

  const handlePreview = async () => {
    if (!isTTSAvailable()) {
      setError('Google Cloud TTS not configured');
      return;
    }

    try {
      setPreviewing(true);
      const previewTeacher: VoiceTeacher = {
        id: 'preview',
        name,
        voice_name: voiceName,
        language_code: languageCode,
        speaking_rate: speakingRate,
        pitch,
        volume_gain_db: volumeGainDb,
        is_active: true,
        is_default: false,
        display_order: 0,
      };
      const previewText = `Hello! I'm ${name || 'your voice teacher'}, and I'll be your guide today. Let's learn something amazing together!`;
      await speakText(previewText, previewTeacher);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Preview failed');
    } finally {
      setPreviewing(false);
    }
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center py-20">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-600 dark:border-blue-400" />
      </div>
    );
  }

  return (
    <div className="max-w-3xl mx-auto space-y-6">
      {/* Header */}
      <div className="flex items-center gap-4">
        <button
          onClick={() => navigate('/admin/voices')}
          className="p-2 text-gray-500 hover:text-gray-700 dark:text-slate-400 dark:hover:text-white transition-colors"
        >
          <ArrowLeft className="w-5 h-5" />
        </button>
        <div>
          <h1 className="text-2xl font-bold text-gray-900 dark:text-white">
            {isEditing ? 'Edit Voice Teacher' : 'Create Voice Teacher'}
          </h1>
          <p className="text-gray-500 dark:text-slate-400 mt-1">
            {isEditing ? 'Update voice teacher settings' : 'Add a new voice persona for Read Aloud'}
          </p>
        </div>
      </div>

      {/* Error */}
      {error && (
        <div className="bg-red-50 dark:bg-red-900/20 border border-red-200 dark:border-red-700 rounded-lg p-4 flex items-start gap-3">
          <AlertCircle className="w-5 h-5 text-red-600 dark:text-red-400 flex-shrink-0 mt-0.5" />
          <p className="text-red-700 dark:text-red-400">{error}</p>
        </div>
      )}

      {/* Form */}
      <form onSubmit={handleSubmit} className="space-y-6">
        {/* Basic Info */}
        <div className="bg-white dark:bg-slate-800 rounded-xl p-6 border border-gray-200 dark:border-slate-700">
          <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">Basic Information</h2>

          <div className="grid gap-4 sm:grid-cols-2">
            {/* Name */}
            <div className="sm:col-span-2">
              <label className="block text-sm font-medium text-gray-700 dark:text-slate-300 mb-1">
                Name *
              </label>
              <input
                type="text"
                value={name}
                onChange={(e) => setName(e.target.value)}
                placeholder="e.g., Coach Carter"
                className="w-full px-4 py-2 rounded-lg border border-gray-300 dark:border-slate-600 bg-white dark:bg-slate-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                required
              />
            </div>

            {/* Description */}
            <div className="sm:col-span-2">
              <label className="block text-sm font-medium text-gray-700 dark:text-slate-300 mb-1">
                Description
              </label>
              <textarea
                value={description}
                onChange={(e) => setDescription(e.target.value)}
                placeholder="A brief description of this voice teacher's personality..."
                rows={2}
                className="w-full px-4 py-2 rounded-lg border border-gray-300 dark:border-slate-600 bg-white dark:bg-slate-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-blue-500 focus:border-transparent"
              />
            </div>

            {/* Icon */}
            <div>
              <label className="block text-sm font-medium text-gray-700 dark:text-slate-300 mb-1">
                Icon
              </label>
              <div className="flex flex-wrap gap-2">
                {EMOJI_OPTIONS.map((emoji) => (
                  <button
                    key={emoji}
                    type="button"
                    onClick={() => setIcon(emoji)}
                    className={`w-10 h-10 text-xl rounded-lg border-2 transition-colors ${
                      icon === emoji
                        ? 'border-blue-500 bg-blue-50 dark:bg-blue-900/30'
                        : 'border-gray-200 dark:border-slate-600 hover:border-gray-300 dark:hover:border-slate-500'
                    }`}
                  >
                    {emoji}
                  </button>
                ))}
              </div>
            </div>

            {/* Color */}
            <div>
              <label className="block text-sm font-medium text-gray-700 dark:text-slate-300 mb-1">
                Theme Color
              </label>
              <div className="flex flex-wrap gap-2">
                {COLOR_OPTIONS.map((c) => (
                  <button
                    key={c}
                    type="button"
                    onClick={() => setColor(c)}
                    className={`w-8 h-8 rounded-lg border-2 transition-transform ${
                      color === c
                        ? 'border-gray-900 dark:border-white scale-110'
                        : 'border-transparent'
                    }`}
                    style={{ backgroundColor: c }}
                  />
                ))}
              </div>
            </div>
          </div>
        </div>

        {/* Voice Settings */}
        <div className="bg-white dark:bg-slate-800 rounded-xl p-6 border border-gray-200 dark:border-slate-700">
          <div className="flex items-center justify-between mb-4">
            <h2 className="text-lg font-semibold text-gray-900 dark:text-white">Voice Settings</h2>
            <button
              type="button"
              onClick={handlePreview}
              disabled={previewing || !isTTSAvailable()}
              className="flex items-center gap-2 px-3 py-1.5 bg-blue-100 text-blue-700 dark:bg-blue-900/30 dark:text-blue-400 rounded-lg hover:bg-blue-200 dark:hover:bg-blue-900/50 transition-colors disabled:opacity-50"
            >
              {previewing ? (
                <Loader2 className="w-4 h-4 animate-spin" />
              ) : (
                <Volume2 className="w-4 h-4" />
              )}
              <span>Preview</span>
            </button>
          </div>

          <div className="grid gap-4 sm:grid-cols-2">
            {/* Voice */}
            <div className="sm:col-span-2">
              <label className="block text-sm font-medium text-gray-700 dark:text-slate-300 mb-1">
                Voice *
              </label>
              <select
                value={voiceName}
                onChange={(e) => {
                  setVoiceName(e.target.value);
                  // Auto-set language code based on voice
                  const lang = e.target.value.startsWith('en-GB') ? 'en-GB' : 'en-US';
                  setLanguageCode(lang);
                }}
                className="w-full px-4 py-2 rounded-lg border border-gray-300 dark:border-slate-600 bg-white dark:bg-slate-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-blue-500 focus:border-transparent"
              >
                {GOOGLE_TTS_VOICES.map((voice) => (
                  <option key={voice.name} value={voice.name}>
                    {voice.name} ({voice.gender}) - {voice.description}
                  </option>
                ))}
              </select>
            </div>

            {/* Speaking Rate */}
            <div>
              <label className="block text-sm font-medium text-gray-700 dark:text-slate-300 mb-1">
                Speaking Rate: {speakingRate.toFixed(2)}x
              </label>
              <input
                type="range"
                min="0.25"
                max="4.0"
                step="0.05"
                value={speakingRate}
                onChange={(e) => setSpeakingRate(parseFloat(e.target.value))}
                className="w-full h-2 bg-gray-200 dark:bg-slate-600 rounded-lg appearance-none cursor-pointer accent-blue-600"
              />
              <div className="flex justify-between text-xs text-gray-500 mt-1">
                <span>Slow (0.25x)</span>
                <span>Normal (1.0x)</span>
                <span>Fast (4.0x)</span>
              </div>
            </div>

            {/* Pitch */}
            <div>
              <label className="block text-sm font-medium text-gray-700 dark:text-slate-300 mb-1">
                Pitch: {pitch > 0 ? '+' : ''}{pitch.toFixed(1)}
              </label>
              <input
                type="range"
                min="-20"
                max="20"
                step="0.5"
                value={pitch}
                onChange={(e) => setPitch(parseFloat(e.target.value))}
                className="w-full h-2 bg-gray-200 dark:bg-slate-600 rounded-lg appearance-none cursor-pointer accent-blue-600"
              />
              <div className="flex justify-between text-xs text-gray-500 mt-1">
                <span>Deep (-20)</span>
                <span>Normal (0)</span>
                <span>High (+20)</span>
              </div>
            </div>

            {/* Volume Gain */}
            <div className="sm:col-span-2">
              <label className="block text-sm font-medium text-gray-700 dark:text-slate-300 mb-1">
                Volume Gain: {volumeGainDb > 0 ? '+' : ''}{volumeGainDb.toFixed(1)} dB
              </label>
              <input
                type="range"
                min="-10"
                max="10"
                step="0.5"
                value={volumeGainDb}
                onChange={(e) => setVolumeGainDb(parseFloat(e.target.value))}
                className="w-full h-2 bg-gray-200 dark:bg-slate-600 rounded-lg appearance-none cursor-pointer accent-blue-600"
              />
            </div>
          </div>
        </div>

        {/* Persona Settings */}
        <div className="bg-white dark:bg-slate-800 rounded-xl p-6 border border-gray-200 dark:border-slate-700">
          <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">Persona Settings</h2>

          <div className="grid gap-4 sm:grid-cols-2">
            {/* Target Audience */}
            <div>
              <label className="block text-sm font-medium text-gray-700 dark:text-slate-300 mb-1">
                Target Audience
              </label>
              <input
                type="text"
                value={targetAudience}
                onChange={(e) => setTargetAudience(e.target.value)}
                placeholder="e.g., K-2, struggling learners"
                className="w-full px-4 py-2 rounded-lg border border-gray-300 dark:border-slate-600 bg-white dark:bg-slate-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-blue-500 focus:border-transparent"
              />
            </div>

            {/* Teaching Style */}
            <div>
              <label className="block text-sm font-medium text-gray-700 dark:text-slate-300 mb-1">
                Teaching Style
              </label>
              <input
                type="text"
                value={teachingStyle}
                onChange={(e) => setTeachingStyle(e.target.value)}
                placeholder="e.g., Slow, patient, encouraging"
                className="w-full px-4 py-2 rounded-lg border border-gray-300 dark:border-slate-600 bg-white dark:bg-slate-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-blue-500 focus:border-transparent"
              />
            </div>

            {/* Personality Prompt */}
            <div className="sm:col-span-2">
              <label className="block text-sm font-medium text-gray-700 dark:text-slate-300 mb-1">
                Personality Prompt
              </label>
              <textarea
                value={personalityPrompt}
                onChange={(e) => setPersonalityPrompt(e.target.value)}
                placeholder="Instructions for how the AI should adapt content for this voice..."
                rows={3}
                className="w-full px-4 py-2 rounded-lg border border-gray-300 dark:border-slate-600 bg-white dark:bg-slate-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-blue-500 focus:border-transparent"
              />
              <p className="text-xs text-gray-500 dark:text-slate-400 mt-1">
                Optional: Describes how the AI should modify content to match this teacher's style.
              </p>
            </div>
          </div>
        </div>

        {/* Status */}
        <div className="bg-white dark:bg-slate-800 rounded-xl p-6 border border-gray-200 dark:border-slate-700">
          <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">Status</h2>

          <div className="space-y-4">
            <label className="flex items-center gap-3 cursor-pointer">
              <input
                type="checkbox"
                checked={isActive}
                onChange={(e) => setIsActive(e.target.checked)}
                className="w-5 h-5 rounded border-gray-300 text-blue-600 focus:ring-blue-500"
              />
              <span className="text-gray-700 dark:text-slate-300">Active</span>
              <span className="text-sm text-gray-500 dark:text-slate-400">
                (Visible to users in the voice teacher dropdown)
              </span>
            </label>

            <label className="flex items-center gap-3 cursor-pointer">
              <input
                type="checkbox"
                checked={isDefault}
                onChange={(e) => setIsDefault(e.target.checked)}
                className="w-5 h-5 rounded border-gray-300 text-blue-600 focus:ring-blue-500"
              />
              <span className="text-gray-700 dark:text-slate-300">Default Voice Teacher</span>
              <span className="text-sm text-gray-500 dark:text-slate-400">
                (Used when users haven't set a preference)
              </span>
            </label>
          </div>
        </div>

        {/* Actions */}
        <div className="flex items-center justify-end gap-3">
          <button
            type="button"
            onClick={() => navigate('/admin/voices')}
            className="px-4 py-2 text-gray-700 dark:text-slate-300 hover:bg-gray-100 dark:hover:bg-slate-700 rounded-lg transition-colors"
          >
            Cancel
          </button>
          <button
            type="submit"
            disabled={saving}
            className="flex items-center gap-2 px-4 py-2 bg-blue-600 hover:bg-blue-700 text-white rounded-lg transition-colors disabled:opacity-50"
          >
            {saving ? (
              <Loader2 className="w-5 h-5 animate-spin" />
            ) : (
              <Save className="w-5 h-5" />
            )}
            <span>{isEditing ? 'Save Changes' : 'Create Voice Teacher'}</span>
          </button>
        </div>
      </form>
    </div>
  );
}
