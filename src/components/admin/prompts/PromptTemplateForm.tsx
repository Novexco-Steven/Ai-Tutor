import { useState, useEffect } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import {
  Save,
  X,
  Loader2,
  ChevronDown,
  HelpCircle,
  Eye,
} from 'lucide-react';
import {
  getPromptTemplate,
  createPromptTemplate,
  updatePromptTemplate,
  getLocations,
} from '@/services/promptAdmin';
import { useUser } from '@/contexts/UserContext';
import type {
  PromptTemplate,
  PromptType,
  CreatePromptTemplateInput,
  UpdatePromptTemplateInput,
  LocationMetadata,
} from '@/types/prompts';
import { supabase } from '@/services/supabase';

const PROMPT_TYPES: { value: PromptType; label: string; description: string }[] = [
  { value: 'subject_global', label: 'Subject (Global)', description: 'Teaching approach for a subject across all locations' },
  { value: 'subject_location', label: 'Subject (Location)', description: 'Regional variant for a subject' },
  { value: 'unit_global', label: 'Unit (Global)', description: 'Objectives for a unit across all locations' },
  { value: 'unit_location', label: 'Unit (Location)', description: 'Regional variant for a unit' },
  { value: 'topic_global', label: 'Topic (Global)', description: 'Methodology for teaching a topic' },
  { value: 'topic_location', label: 'Topic (Location)', description: 'Regional variant for a topic' },
];

interface Subject {
  id: string;
  name: string;
}

interface Unit {
  id: string;
  name: string;
  subject_id: string;
}

interface Topic {
  id: string;
  name: string;
  subject_id: string;
  unit_id?: string;
}

export default function PromptTemplateForm() {
  const { id } = useParams<{ id: string }>();
  const navigate = useNavigate();
  const { profile } = useUser();
  const isEditing = Boolean(id);

  // Form state
  const [loading, setLoading] = useState(isEditing);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);

  // Form values
  const [promptType, setPromptType] = useState<PromptType>('subject_global');
  const [name, setName] = useState('');
  const [description, setDescription] = useState('');
  const [promptContent, setPromptContent] = useState('');
  const [overrideSections, setOverrideSections] = useState<Record<string, string>>({});
  const [priority, setPriority] = useState(0);
  const [isActive, setIsActive] = useState(true);

  // Scope
  const [subjectId, setSubjectId] = useState<string>('');
  const [unitId, setUnitId] = useState<string>('');
  const [topicId, setTopicId] = useState<string>('');
  const [countryCode, setCountryCode] = useState<string>('');
  const [provinceState, setProvinceState] = useState<string>('');

  // Reference data
  const [subjects, setSubjects] = useState<Subject[]>([]);
  const [units, setUnits] = useState<Unit[]>([]);
  const [topics, setTopics] = useState<Topic[]>([]);
  const [locations, setLocations] = useState<LocationMetadata[]>([]);

  // Show preview panel
  const [showPreview, setShowPreview] = useState(false);

  // Load template if editing
  useEffect(() => {
    if (isEditing && id) {
      loadTemplate(id);
    }
  }, [id, isEditing]);

  // Load reference data
  useEffect(() => {
    loadReferenceData();
  }, []);

  // Filter units when subject changes
  useEffect(() => {
    if (subjectId) {
      loadUnits(subjectId);
    } else {
      setUnits([]);
      setUnitId('');
    }
  }, [subjectId]);

  // Filter topics when subject/unit changes
  useEffect(() => {
    if (subjectId) {
      loadTopics(subjectId, unitId || undefined);
    } else {
      setTopics([]);
      setTopicId('');
    }
  }, [subjectId, unitId]);

  // Filter provinces when country changes
  const provinces = locations.filter(
    (loc) => loc.country_code === countryCode && loc.province_state
  );

  async function loadTemplate(templateId: string) {
    try {
      const template = await getPromptTemplate(templateId);
      if (!template) {
        setError('Template not found');
        return;
      }

      setPromptType(template.prompt_type);
      setName(template.name);
      setDescription(template.description || '');
      setPromptContent(template.prompt_content);
      setOverrideSections(template.override_sections || {});
      setPriority(template.priority);
      setIsActive(template.is_active);
      setSubjectId(template.subject_id || '');
      setUnitId(template.unit_id || '');
      setTopicId(template.topic_id || '');
      setCountryCode(template.country_code || '');
      setProvinceState(template.province_state || '');
    } catch (err) {
      setError('Failed to load template');
      console.error(err);
    } finally {
      setLoading(false);
    }
  }

  async function loadReferenceData() {
    try {
      const [subjectsRes, locationsData] = await Promise.all([
        supabase.from('subjects').select('id, name').order('name'),
        getLocations(),
      ]);

      if (subjectsRes.data) {
        setSubjects(subjectsRes.data);
      }

      setLocations(locationsData);
    } catch (err) {
      console.error('Failed to load reference data:', err);
    }
  }

  async function loadUnits(subId: string) {
    try {
      const { data } = await supabase
        .from('units')
        .select('id, name, subject_id')
        .eq('subject_id', subId)
        .order('order_index');

      setUnits(data || []);
    } catch (err) {
      console.error('Failed to load units:', err);
    }
  }

  async function loadTopics(subId: string, unitIdFilter?: string) {
    try {
      let query = supabase
        .from('topics')
        .select('id, name, subject_id, unit_id')
        .eq('subject_id', subId)
        .order('order_index');

      if (unitIdFilter) {
        query = query.eq('unit_id', unitIdFilter);
      }

      const { data } = await query;
      setTopics(data || []);
    } catch (err) {
      console.error('Failed to load topics:', err);
    }
  }

  // Determine which scope fields to show based on prompt type
  const showLocationFields = promptType.endsWith('_location');
  const showSubjectField = promptType.startsWith('subject') || promptType.startsWith('unit') || promptType.startsWith('topic');
  const showUnitField = promptType.startsWith('unit') || promptType.startsWith('topic');
  const showTopicField = promptType.startsWith('topic');

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();

    if (!profile?.id) {
      setError('You must be logged in');
      return;
    }

    if (!name.trim()) {
      setError('Name is required');
      return;
    }

    if (!promptContent.trim()) {
      setError('Prompt content is required');
      return;
    }

    setSaving(true);
    setError(null);

    try {
      if (isEditing && id) {
        const input: UpdatePromptTemplateInput = {
          name,
          description: description || undefined,
          prompt_content: promptContent,
          override_sections: Object.keys(overrideSections).length > 0 ? overrideSections : undefined,
          priority,
          is_active: isActive,
        };

        await updatePromptTemplate(id, input, profile.id);
      } else {
        const input: CreatePromptTemplateInput = {
          prompt_type: promptType,
          name,
          description: description || undefined,
          prompt_content: promptContent,
          override_sections: Object.keys(overrideSections).length > 0 ? overrideSections : undefined,
          priority,
          subject_id: subjectId || undefined,
          unit_id: unitId || undefined,
          topic_id: topicId || undefined,
          country_code: countryCode || undefined,
          province_state: provinceState || undefined,
        };

        await createPromptTemplate(input, profile.id);
      }

      navigate('/admin/prompts');
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to save template');
      console.error(err);
    } finally {
      setSaving(false);
    }
  }

  if (loading) {
    return (
      <div className="flex items-center justify-center py-12">
        <Loader2 className="w-8 h-8 animate-spin text-blue-400" />
      </div>
    );
  }

  return (
    <div className="max-w-4xl mx-auto">
      <form onSubmit={handleSubmit}>
        {/* Header */}
        <div className="flex items-center justify-between mb-6">
          <h1 className="text-2xl font-bold text-white">
            {isEditing ? 'Edit Prompt Template' : 'New Prompt Template'}
          </h1>
          <div className="flex items-center gap-2">
            <button
              type="button"
              onClick={() => navigate('/admin/prompts')}
              className="px-4 py-2 text-slate-300 hover:text-white transition-colors"
            >
              Cancel
            </button>
            <button
              type="submit"
              disabled={saving}
              className="inline-flex items-center gap-2 px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600 transition-colors disabled:opacity-50"
            >
              {saving ? (
                <Loader2 className="w-4 h-4 animate-spin" />
              ) : (
                <Save className="w-4 h-4" />
              )}
              {saving ? 'Saving...' : 'Save'}
            </button>
          </div>
        </div>

        {/* Error message */}
        {error && (
          <div className="mb-6 p-4 bg-red-500/10 border border-red-500/20 rounded-lg text-red-400">
            {error}
          </div>
        )}

        <div className="space-y-6">
          {/* Basic Info */}
          <div className="bg-slate-800 rounded-xl p-6 border border-slate-700">
            <h2 className="text-lg font-semibold text-white mb-4">Basic Information</h2>

            <div className="space-y-4">
              {/* Prompt Type (only for new) */}
              {!isEditing && (
                <div>
                  <label className="block text-sm font-medium text-slate-300 mb-2">
                    Prompt Type
                  </label>
                  <select
                    value={promptType}
                    onChange={(e) => setPromptType(e.target.value as PromptType)}
                    className="w-full px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white focus:outline-none focus:ring-2 focus:ring-blue-500"
                  >
                    {PROMPT_TYPES.map((type) => (
                      <option key={type.value} value={type.value}>
                        {type.label}
                      </option>
                    ))}
                  </select>
                  <p className="text-sm text-slate-400 mt-1">
                    {PROMPT_TYPES.find((t) => t.value === promptType)?.description}
                  </p>
                </div>
              )}

              {/* Name */}
              <div>
                <label className="block text-sm font-medium text-slate-300 mb-2">
                  Name <span className="text-red-400">*</span>
                </label>
                <input
                  type="text"
                  value={name}
                  onChange={(e) => setName(e.target.value)}
                  placeholder="e.g., Math - Elementary Approach"
                  className="w-full px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
              </div>

              {/* Description */}
              <div>
                <label className="block text-sm font-medium text-slate-300 mb-2">
                  Description
                </label>
                <input
                  type="text"
                  value={description}
                  onChange={(e) => setDescription(e.target.value)}
                  placeholder="Brief description of this prompt's purpose"
                  className="w-full px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
              </div>

              {/* Priority */}
              <div>
                <label className="block text-sm font-medium text-slate-300 mb-2">
                  Priority
                </label>
                <input
                  type="number"
                  value={priority}
                  onChange={(e) => setPriority(parseInt(e.target.value) || 0)}
                  className="w-32 px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
                <p className="text-sm text-slate-400 mt-1">
                  Higher priority prompts take precedence when multiple match
                </p>
              </div>

              {/* Active */}
              {isEditing && (
                <div>
                  <label className="flex items-center gap-2 cursor-pointer">
                    <input
                      type="checkbox"
                      checked={isActive}
                      onChange={(e) => setIsActive(e.target.checked)}
                      className="w-4 h-4 rounded bg-slate-700 border-slate-600 text-blue-500 focus:ring-blue-500"
                    />
                    <span className="text-slate-300">Active</span>
                  </label>
                </div>
              )}
            </div>
          </div>

          {/* Scope Selection */}
          {!isEditing && (showSubjectField || showLocationFields) && (
            <div className="bg-slate-800 rounded-xl p-6 border border-slate-700">
              <h2 className="text-lg font-semibold text-white mb-4">Scope</h2>

              <div className="grid gap-4 md:grid-cols-2">
                {/* Subject */}
                {showSubjectField && (
                  <div>
                    <label className="block text-sm font-medium text-slate-300 mb-2">
                      Subject
                    </label>
                    <select
                      value={subjectId}
                      onChange={(e) => setSubjectId(e.target.value)}
                      className="w-full px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white focus:outline-none focus:ring-2 focus:ring-blue-500"
                    >
                      <option value="">Select a subject</option>
                      {subjects.map((subject) => (
                        <option key={subject.id} value={subject.id}>
                          {subject.name}
                        </option>
                      ))}
                    </select>
                  </div>
                )}

                {/* Unit */}
                {showUnitField && (
                  <div>
                    <label className="block text-sm font-medium text-slate-300 mb-2">
                      Unit
                    </label>
                    <select
                      value={unitId}
                      onChange={(e) => setUnitId(e.target.value)}
                      disabled={!subjectId}
                      className="w-full px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white focus:outline-none focus:ring-2 focus:ring-blue-500 disabled:opacity-50"
                    >
                      <option value="">Select a unit (optional)</option>
                      {units.map((unit) => (
                        <option key={unit.id} value={unit.id}>
                          {unit.name}
                        </option>
                      ))}
                    </select>
                  </div>
                )}

                {/* Topic */}
                {showTopicField && (
                  <div>
                    <label className="block text-sm font-medium text-slate-300 mb-2">
                      Topic
                    </label>
                    <select
                      value={topicId}
                      onChange={(e) => setTopicId(e.target.value)}
                      disabled={!subjectId}
                      className="w-full px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white focus:outline-none focus:ring-2 focus:ring-blue-500 disabled:opacity-50"
                    >
                      <option value="">Select a topic</option>
                      {topics.map((topic) => (
                        <option key={topic.id} value={topic.id}>
                          {topic.name}
                        </option>
                      ))}
                    </select>
                  </div>
                )}

                {/* Country */}
                {showLocationFields && (
                  <div>
                    <label className="block text-sm font-medium text-slate-300 mb-2">
                      Country
                    </label>
                    <select
                      value={countryCode}
                      onChange={(e) => {
                        setCountryCode(e.target.value);
                        setProvinceState('');
                      }}
                      className="w-full px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white focus:outline-none focus:ring-2 focus:ring-blue-500"
                    >
                      <option value="">Select a country</option>
                      {[...new Set(locations.map((l) => l.country_code))].map((code) => (
                        <option key={code} value={code}>
                          {locations.find((l) => l.country_code === code && !l.province_state)?.display_name || code}
                        </option>
                      ))}
                    </select>
                  </div>
                )}

                {/* Province/State */}
                {showLocationFields && countryCode && provinces.length > 0 && (
                  <div>
                    <label className="block text-sm font-medium text-slate-300 mb-2">
                      Province/State
                    </label>
                    <select
                      value={provinceState}
                      onChange={(e) => setProvinceState(e.target.value)}
                      className="w-full px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white focus:outline-none focus:ring-2 focus:ring-blue-500"
                    >
                      <option value="">All (country-wide)</option>
                      {provinces.map((loc) => (
                        <option key={loc.province_state} value={loc.province_state || ''}>
                          {loc.display_name}
                        </option>
                      ))}
                    </select>
                  </div>
                )}
              </div>
            </div>
          )}

          {/* Prompt Content */}
          <div className="bg-slate-800 rounded-xl p-6 border border-slate-700">
            <div className="flex items-center justify-between mb-4">
              <h2 className="text-lg font-semibold text-white">Prompt Content</h2>
              <button
                type="button"
                onClick={() => setShowPreview(!showPreview)}
                className="flex items-center gap-1 text-sm text-slate-400 hover:text-white transition-colors"
              >
                <Eye className="w-4 h-4" />
                {showPreview ? 'Hide Preview' : 'Show Preview'}
              </button>
            </div>

            <div className="space-y-4">
              <div>
                <label className="block text-sm font-medium text-slate-300 mb-2">
                  Prompt Text <span className="text-red-400">*</span>
                </label>
                <textarea
                  value={promptContent}
                  onChange={(e) => setPromptContent(e.target.value)}
                  rows={12}
                  placeholder="Enter the prompt content here...

You can use override markers like [[section_name]]...[[/section_name]] to create sections that can be overridden by more specific prompts."
                  className="w-full px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-blue-500 font-mono text-sm"
                />
                <p className="text-sm text-slate-400 mt-2 flex items-start gap-1">
                  <HelpCircle className="w-4 h-4 mt-0.5 flex-shrink-0" />
                  <span>
                    Use <code className="bg-slate-600 px-1 rounded">[[section_name]]content[[/section_name]]</code> to create overridable sections
                  </span>
                </p>
              </div>

              {/* Preview */}
              {showPreview && (
                <div className="bg-slate-900 rounded-lg p-4 border border-slate-600">
                  <h3 className="text-sm font-medium text-slate-400 mb-2">Preview</h3>
                  <pre className="text-sm text-slate-300 whitespace-pre-wrap font-mono">
                    {promptContent || 'Enter content to see preview...'}
                  </pre>
                </div>
              )}
            </div>
          </div>
        </div>
      </form>
    </div>
  );
}
