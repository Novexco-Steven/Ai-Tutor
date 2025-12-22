import { useState, useEffect } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import {
  Volume2,
  Plus,
  Edit,
  Trash2,
  Star,
  StarOff,
  ToggleLeft,
  ToggleRight,
  ChevronUp,
  ChevronDown,
  RefreshCw,
  AlertCircle,
} from 'lucide-react';
import {
  getAllVoiceTeachers,
  deleteVoiceTeacher,
  toggleVoiceTeacherActive,
  setDefaultVoiceTeacher,
  reorderVoiceTeachers,
} from '@/services/voiceTeacher';
import { speakText, getVoicePreviewText, isTTSAvailable } from '@/services/googleTTS';
import type { VoiceTeacher } from '@/types';

export default function VoiceTeacherList() {
  const navigate = useNavigate();
  const [voiceTeachers, setVoiceTeachers] = useState<VoiceTeacher[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [previewingId, setPreviewingId] = useState<string | null>(null);
  const [actionLoading, setActionLoading] = useState<string | null>(null);

  useEffect(() => {
    loadVoiceTeachers();
  }, []);

  const loadVoiceTeachers = async () => {
    try {
      setLoading(true);
      setError(null);
      const teachers = await getAllVoiceTeachers();
      setVoiceTeachers(teachers);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to load voice teachers');
    } finally {
      setLoading(false);
    }
  };

  const handlePreview = async (teacher: VoiceTeacher) => {
    if (previewingId === teacher.id) {
      setPreviewingId(null);
      return;
    }

    try {
      setPreviewingId(teacher.id);
      const previewText = getVoicePreviewText(teacher);
      await speakText(previewText, teacher);
    } catch (err) {
      console.error('Preview failed:', err);
    } finally {
      setPreviewingId(null);
    }
  };

  const handleToggleActive = async (teacher: VoiceTeacher) => {
    try {
      setActionLoading(teacher.id);
      await toggleVoiceTeacherActive(teacher.id, !teacher.is_active);
      await loadVoiceTeachers();
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to toggle status');
    } finally {
      setActionLoading(null);
    }
  };

  const handleSetDefault = async (teacher: VoiceTeacher) => {
    try {
      setActionLoading(teacher.id);
      await setDefaultVoiceTeacher(teacher.id);
      await loadVoiceTeachers();
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to set default');
    } finally {
      setActionLoading(null);
    }
  };

  const handleDelete = async (teacher: VoiceTeacher) => {
    if (!confirm(`Are you sure you want to delete "${teacher.name}"?`)) {
      return;
    }

    try {
      setActionLoading(teacher.id);
      await deleteVoiceTeacher(teacher.id);
      await loadVoiceTeachers();
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to delete');
    } finally {
      setActionLoading(null);
    }
  };

  const handleMoveUp = async (index: number) => {
    if (index === 0) return;
    const newOrder = [...voiceTeachers];
    [newOrder[index - 1], newOrder[index]] = [newOrder[index], newOrder[index - 1]];
    const orderedIds = newOrder.map(t => t.id);

    try {
      setVoiceTeachers(newOrder);
      await reorderVoiceTeachers(orderedIds);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to reorder');
      await loadVoiceTeachers();
    }
  };

  const handleMoveDown = async (index: number) => {
    if (index === voiceTeachers.length - 1) return;
    const newOrder = [...voiceTeachers];
    [newOrder[index], newOrder[index + 1]] = [newOrder[index + 1], newOrder[index]];
    const orderedIds = newOrder.map(t => t.id);

    try {
      setVoiceTeachers(newOrder);
      await reorderVoiceTeachers(orderedIds);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to reorder');
      await loadVoiceTeachers();
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
    <div className="max-w-6xl mx-auto space-y-6">
      {/* Header */}
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900 dark:text-white">Voice Teachers</h1>
          <p className="text-gray-500 dark:text-slate-400 mt-1">
            Manage AI voice personas for the Read Aloud feature
          </p>
        </div>
        <div className="flex items-center gap-2">
          <button
            onClick={loadVoiceTeachers}
            className="p-2 text-gray-500 hover:text-gray-700 dark:text-slate-400 dark:hover:text-white transition-colors"
            title="Refresh"
          >
            <RefreshCw className="w-5 h-5" />
          </button>
          <Link
            to="/admin/voices/new"
            className="flex items-center gap-2 px-4 py-2 bg-blue-600 hover:bg-blue-700 text-white rounded-lg transition-colors"
          >
            <Plus className="w-5 h-5" />
            <span>Add Voice Teacher</span>
          </Link>
        </div>
      </div>

      {/* TTS Status Warning */}
      {!isTTSAvailable() && (
        <div className="bg-amber-50 dark:bg-amber-900/20 border border-amber-200 dark:border-amber-700 rounded-lg p-4 flex items-start gap-3">
          <AlertCircle className="w-5 h-5 text-amber-600 dark:text-amber-400 flex-shrink-0 mt-0.5" />
          <div>
            <p className="font-medium text-amber-800 dark:text-amber-200">
              Google Cloud TTS not configured
            </p>
            <p className="text-sm text-amber-700 dark:text-amber-300 mt-1">
              Add <code className="bg-amber-200 dark:bg-amber-800 px-1 rounded">VITE_GOOGLE_CLOUD_TTS_API_KEY</code> to your environment to enable voice previews.
            </p>
          </div>
        </div>
      )}

      {/* Error */}
      {error && (
        <div className="bg-red-50 dark:bg-red-900/20 border border-red-200 dark:border-red-700 rounded-lg p-4">
          <p className="text-red-700 dark:text-red-400">{error}</p>
        </div>
      )}

      {/* Voice Teachers List */}
      <div className="bg-white dark:bg-slate-800 rounded-xl border border-gray-200 dark:border-slate-700 overflow-hidden">
        {voiceTeachers.length === 0 ? (
          <div className="p-8 text-center">
            <Volume2 className="w-12 h-12 text-gray-300 dark:text-slate-600 mx-auto mb-4" />
            <h3 className="text-lg font-medium text-gray-900 dark:text-white mb-2">
              No Voice Teachers
            </h3>
            <p className="text-gray-500 dark:text-slate-400 mb-4">
              Create your first voice teacher to enable the Read Aloud feature.
            </p>
            <Link
              to="/admin/voices/new"
              className="inline-flex items-center gap-2 px-4 py-2 bg-blue-600 hover:bg-blue-700 text-white rounded-lg transition-colors"
            >
              <Plus className="w-5 h-5" />
              <span>Create Voice Teacher</span>
            </Link>
          </div>
        ) : (
          <div className="divide-y divide-gray-200 dark:divide-slate-700">
            {voiceTeachers.map((teacher, index) => (
              <div
                key={teacher.id}
                className={`p-4 flex items-center gap-4 ${
                  !teacher.is_active ? 'bg-gray-50 dark:bg-slate-900/50 opacity-60' : ''
                }`}
              >
                {/* Order Controls */}
                <div className="flex flex-col gap-1">
                  <button
                    onClick={() => handleMoveUp(index)}
                    disabled={index === 0}
                    className="p-1 text-gray-400 hover:text-gray-600 dark:hover:text-white disabled:opacity-30"
                    title="Move up"
                  >
                    <ChevronUp className="w-4 h-4" />
                  </button>
                  <button
                    onClick={() => handleMoveDown(index)}
                    disabled={index === voiceTeachers.length - 1}
                    className="p-1 text-gray-400 hover:text-gray-600 dark:hover:text-white disabled:opacity-30"
                    title="Move down"
                  >
                    <ChevronDown className="w-4 h-4" />
                  </button>
                </div>

                {/* Icon */}
                <div
                  className="w-12 h-12 rounded-xl flex items-center justify-center text-2xl flex-shrink-0"
                  style={{ backgroundColor: `${teacher.color || '#3b82f6'}20` }}
                >
                  {teacher.icon || '🎙️'}
                </div>

                {/* Info */}
                <div className="flex-1 min-w-0">
                  <div className="flex items-center gap-2">
                    <span className="font-semibold text-gray-900 dark:text-white">
                      {teacher.name}
                    </span>
                    {teacher.is_default && (
                      <span className="text-xs px-2 py-0.5 bg-green-100 text-green-700 dark:bg-green-900/30 dark:text-green-400 rounded-full">
                        Default
                      </span>
                    )}
                    {!teacher.is_active && (
                      <span className="text-xs px-2 py-0.5 bg-gray-100 text-gray-500 dark:bg-slate-700 dark:text-slate-400 rounded-full">
                        Inactive
                      </span>
                    )}
                  </div>
                  {teacher.description && (
                    <p className="text-sm text-gray-500 dark:text-slate-400 line-clamp-1 mt-0.5">
                      {teacher.description}
                    </p>
                  )}
                  <div className="flex items-center gap-4 mt-1 text-xs text-gray-400 dark:text-slate-500">
                    <span>Voice: {teacher.voice_name}</span>
                    <span>Rate: {teacher.speaking_rate}x</span>
                    <span>Pitch: {teacher.pitch > 0 ? '+' : ''}{teacher.pitch}</span>
                    {teacher.target_audience && (
                      <span>For: {teacher.target_audience}</span>
                    )}
                  </div>
                </div>

                {/* Actions */}
                <div className="flex items-center gap-1">
                  {/* Preview */}
                  {isTTSAvailable() && (
                    <button
                      onClick={() => handlePreview(teacher)}
                      disabled={previewingId !== null}
                      className={`p-2 rounded-lg transition-colors ${
                        previewingId === teacher.id
                          ? 'bg-blue-100 text-blue-600 dark:bg-blue-900/30 dark:text-blue-400'
                          : 'text-gray-400 hover:text-gray-600 hover:bg-gray-100 dark:hover:text-white dark:hover:bg-slate-700'
                      }`}
                      title="Preview voice"
                    >
                      <Volume2 className={`w-5 h-5 ${previewingId === teacher.id ? 'animate-pulse' : ''}`} />
                    </button>
                  )}

                  {/* Toggle Active */}
                  <button
                    onClick={() => handleToggleActive(teacher)}
                    disabled={actionLoading === teacher.id}
                    className="p-2 text-gray-400 hover:text-gray-600 hover:bg-gray-100 dark:hover:text-white dark:hover:bg-slate-700 rounded-lg transition-colors"
                    title={teacher.is_active ? 'Deactivate' : 'Activate'}
                  >
                    {teacher.is_active ? (
                      <ToggleRight className="w-5 h-5 text-green-600" />
                    ) : (
                      <ToggleLeft className="w-5 h-5" />
                    )}
                  </button>

                  {/* Set Default */}
                  <button
                    onClick={() => handleSetDefault(teacher)}
                    disabled={actionLoading === teacher.id || teacher.is_default}
                    className="p-2 text-gray-400 hover:text-gray-600 hover:bg-gray-100 dark:hover:text-white dark:hover:bg-slate-700 rounded-lg transition-colors disabled:opacity-30"
                    title="Set as default"
                  >
                    {teacher.is_default ? (
                      <Star className="w-5 h-5 text-amber-500 fill-amber-500" />
                    ) : (
                      <StarOff className="w-5 h-5" />
                    )}
                  </button>

                  {/* Edit */}
                  <button
                    onClick={() => navigate(`/admin/voices/${teacher.id}`)}
                    className="p-2 text-gray-400 hover:text-gray-600 hover:bg-gray-100 dark:hover:text-white dark:hover:bg-slate-700 rounded-lg transition-colors"
                    title="Edit"
                  >
                    <Edit className="w-5 h-5" />
                  </button>

                  {/* Delete */}
                  <button
                    onClick={() => handleDelete(teacher)}
                    disabled={actionLoading === teacher.id}
                    className="p-2 text-gray-400 hover:text-red-600 hover:bg-red-50 dark:hover:text-red-400 dark:hover:bg-red-900/20 rounded-lg transition-colors"
                    title="Delete"
                  >
                    <Trash2 className="w-5 h-5" />
                  </button>
                </div>
              </div>
            ))}
          </div>
        )}
      </div>

      {/* Help Section */}
      <div className="bg-blue-50 dark:bg-blue-900/20 rounded-xl p-6 border border-blue-200 dark:border-blue-700">
        <h3 className="font-semibold text-blue-900 dark:text-blue-200 mb-2">
          About Voice Teachers
        </h3>
        <p className="text-sm text-blue-800 dark:text-blue-300 mb-4">
          Voice teachers are AI personas used for the Read Aloud feature. Each teacher has unique voice
          characteristics (speed, pitch) and a teaching style suited for different learner types.
        </p>
        <ul className="text-sm text-blue-700 dark:text-blue-400 space-y-1">
          <li>• <strong>Speaking Rate:</strong> 0.25 (very slow) to 4.0 (very fast), 1.0 is normal</li>
          <li>• <strong>Pitch:</strong> -20.0 (deep) to +20.0 (high), 0.0 is normal</li>
          <li>• <strong>Target Audience:</strong> Helps users find appropriate voices for their learning level</li>
        </ul>
      </div>
    </div>
  );
}
