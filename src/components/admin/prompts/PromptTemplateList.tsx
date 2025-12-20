import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import {
  Plus,
  Search,
  Filter,
  Edit,
  Trash2,
  Eye,
  Copy,
  MoreVertical,
  Loader2,
  Globe,
  BookOpen,
  FileText,
  User,
  MessageSquare,
} from 'lucide-react';
import { getPromptTemplates, deletePromptTemplate, duplicatePromptTemplate } from '@/services/promptAdmin';
import { useUser } from '@/contexts/UserContext';
import type { PromptTemplate, PromptType, PromptTemplateFilters } from '@/types/prompts';

const PROMPT_TYPE_ICONS: Record<PromptType, React.ReactNode> = {
  user_profile: <User className="w-4 h-4" />,
  user_learning_preference: <User className="w-4 h-4" />,
  subject_global: <BookOpen className="w-4 h-4" />,
  subject_location: <Globe className="w-4 h-4" />,
  unit_global: <FileText className="w-4 h-4" />,
  unit_location: <Globe className="w-4 h-4" />,
  topic_global: <MessageSquare className="w-4 h-4" />,
  topic_location: <Globe className="w-4 h-4" />,
  user_customization: <User className="w-4 h-4" />,
};

const PROMPT_TYPE_LABELS: Record<PromptType, string> = {
  user_profile: 'User Profile',
  user_learning_preference: 'Learning Preference',
  subject_global: 'Subject (Global)',
  subject_location: 'Subject (Location)',
  unit_global: 'Unit (Global)',
  unit_location: 'Unit (Location)',
  topic_global: 'Topic (Global)',
  topic_location: 'Topic (Location)',
  user_customization: 'User Customization',
};

const PROMPT_TYPE_COLORS: Record<PromptType, string> = {
  user_profile: 'bg-purple-500/10 text-purple-400',
  user_learning_preference: 'bg-purple-500/10 text-purple-400',
  subject_global: 'bg-blue-500/10 text-blue-400',
  subject_location: 'bg-cyan-500/10 text-cyan-400',
  unit_global: 'bg-green-500/10 text-green-400',
  unit_location: 'bg-emerald-500/10 text-emerald-400',
  topic_global: 'bg-amber-500/10 text-amber-400',
  topic_location: 'bg-orange-500/10 text-orange-400',
  user_customization: 'bg-pink-500/10 text-pink-400',
};

export default function PromptTemplateList() {
  const { profile } = useUser();
  const [templates, setTemplates] = useState<PromptTemplate[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [typeFilter, setTypeFilter] = useState<PromptType | ''>('');
  const [showInactive, setShowInactive] = useState(false);
  const [actionMenuOpen, setActionMenuOpen] = useState<string | null>(null);

  // Fetch templates
  const fetchTemplates = async () => {
    setLoading(true);
    setError(null);

    try {
      const filters: PromptTemplateFilters = {};

      if (searchQuery) {
        filters.search = searchQuery;
      }

      if (typeFilter) {
        filters.prompt_type = typeFilter;
      }

      if (!showInactive) {
        filters.is_active = true;
      }

      const data = await getPromptTemplates(filters);
      setTemplates(data);
    } catch (err) {
      setError('Failed to load prompt templates');
      console.error(err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchTemplates();
  }, [typeFilter, showInactive]);

  // Handle search with debounce
  useEffect(() => {
    const timer = setTimeout(() => {
      fetchTemplates();
    }, 300);

    return () => clearTimeout(timer);
  }, [searchQuery]);

  // Handle delete
  const handleDelete = async (id: string) => {
    if (!confirm('Are you sure you want to deactivate this prompt template?')) {
      return;
    }

    try {
      await deletePromptTemplate(id);
      await fetchTemplates();
    } catch (err) {
      alert('Failed to delete template');
      console.error(err);
    }

    setActionMenuOpen(null);
  };

  // Handle duplicate
  const handleDuplicate = async (id: string) => {
    if (!profile?.id) return;

    try {
      await duplicatePromptTemplate(id, profile.id);
      await fetchTemplates();
    } catch (err) {
      alert('Failed to duplicate template');
      console.error(err);
    }

    setActionMenuOpen(null);
  };

  // Group templates by type
  const groupedTemplates = templates.reduce(
    (acc, template) => {
      const type = template.prompt_type;
      if (!acc[type]) {
        acc[type] = [];
      }
      acc[type].push(template);
      return acc;
    },
    {} as Record<PromptType, PromptTemplate[]>
  );

  return (
    <div className="max-w-6xl mx-auto">
      {/* Header */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 mb-6">
        <div>
          <h1 className="text-2xl font-bold text-white">Prompt Templates</h1>
          <p className="text-slate-400 text-sm mt-1">
            Manage AI prompts for lessons, quizzes, and feedback
          </p>
        </div>

        <Link
          to="/admin/prompts/new"
          className="inline-flex items-center gap-2 px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600 transition-colors"
        >
          <Plus className="w-4 h-4" />
          <span>New Prompt</span>
        </Link>
      </div>

      {/* Filters */}
      <div className="bg-slate-800 rounded-xl p-4 mb-6 border border-slate-700">
        <div className="flex flex-col sm:flex-row gap-4">
          {/* Search */}
          <div className="relative flex-1">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400" />
            <input
              type="text"
              placeholder="Search prompts..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full pl-10 pr-4 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
          </div>

          {/* Type filter */}
          <select
            value={typeFilter}
            onChange={(e) => setTypeFilter(e.target.value as PromptType | '')}
            className="px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white focus:outline-none focus:ring-2 focus:ring-blue-500"
          >
            <option value="">All Types</option>
            {Object.entries(PROMPT_TYPE_LABELS).map(([type, label]) => (
              <option key={type} value={type}>
                {label}
              </option>
            ))}
          </select>

          {/* Show inactive */}
          <label className="flex items-center gap-2 text-slate-300 cursor-pointer whitespace-nowrap">
            <input
              type="checkbox"
              checked={showInactive}
              onChange={(e) => setShowInactive(e.target.checked)}
              className="w-4 h-4 rounded bg-slate-700 border-slate-600 text-blue-500 focus:ring-blue-500"
            />
            <span>Show inactive</span>
          </label>
        </div>
      </div>

      {/* Content */}
      {loading ? (
        <div className="flex items-center justify-center py-12">
          <Loader2 className="w-8 h-8 animate-spin text-blue-400" />
        </div>
      ) : error ? (
        <div className="text-center py-12">
          <p className="text-red-400 mb-4">{error}</p>
          <button
            onClick={fetchTemplates}
            className="px-4 py-2 bg-slate-700 text-white rounded-lg hover:bg-slate-600"
          >
            Try Again
          </button>
        </div>
      ) : templates.length === 0 ? (
        <div className="text-center py-12 bg-slate-800 rounded-xl border border-slate-700">
          <MessageSquare className="w-12 h-12 text-slate-500 mx-auto mb-4" />
          <p className="text-slate-400 mb-4">No prompt templates found</p>
          <Link
            to="/admin/prompts/new"
            className="inline-flex items-center gap-2 px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600"
          >
            <Plus className="w-4 h-4" />
            Create your first prompt
          </Link>
        </div>
      ) : (
        <div className="space-y-6">
          {Object.entries(groupedTemplates).map(([type, typeTemplates]) => (
            <div key={type} className="bg-slate-800 rounded-xl border border-slate-700 overflow-hidden">
              {/* Type header */}
              <div className="px-4 py-3 bg-slate-750 border-b border-slate-700 flex items-center gap-3">
                <span className={`p-1.5 rounded ${PROMPT_TYPE_COLORS[type as PromptType]}`}>
                  {PROMPT_TYPE_ICONS[type as PromptType]}
                </span>
                <h3 className="font-medium text-white">
                  {PROMPT_TYPE_LABELS[type as PromptType]}
                </h3>
                <span className="text-xs text-slate-500 bg-slate-700 px-2 py-0.5 rounded">
                  {typeTemplates.length}
                </span>
              </div>

              {/* Templates list */}
              <div className="divide-y divide-slate-700">
                {typeTemplates.map((template) => (
                  <div
                    key={template.id}
                    className={`p-4 hover:bg-slate-750 transition-colors ${
                      !template.is_active ? 'opacity-50' : ''
                    }`}
                  >
                    <div className="flex items-start justify-between gap-4">
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-2 mb-1">
                          <h4 className="font-medium text-white truncate">
                            {template.name}
                          </h4>
                          {!template.is_active && (
                            <span className="text-xs text-slate-500 bg-slate-700 px-2 py-0.5 rounded">
                              Inactive
                            </span>
                          )}
                          {template.country_code && (
                            <span className="text-xs text-cyan-400 bg-cyan-500/10 px-2 py-0.5 rounded">
                              {template.country_code}
                              {template.province_state && ` / ${template.province_state}`}
                            </span>
                          )}
                        </div>
                        {template.description && (
                          <p className="text-sm text-slate-400 line-clamp-1">
                            {template.description}
                          </p>
                        )}
                        <p className="text-xs text-slate-500 mt-1 line-clamp-1 font-mono">
                          {template.prompt_content.substring(0, 100)}...
                        </p>
                      </div>

                      {/* Actions */}
                      <div className="relative">
                        <button
                          onClick={() =>
                            setActionMenuOpen(actionMenuOpen === template.id ? null : template.id)
                          }
                          className="p-2 text-slate-400 hover:text-white hover:bg-slate-700 rounded-lg transition-colors"
                        >
                          <MoreVertical className="w-5 h-5" />
                        </button>

                        {actionMenuOpen === template.id && (
                          <>
                            <div
                              className="fixed inset-0 z-10"
                              onClick={() => setActionMenuOpen(null)}
                            />
                            <div className="absolute right-0 mt-1 w-48 bg-slate-700 rounded-lg shadow-lg z-20 py-1 border border-slate-600">
                              <Link
                                to={`/admin/prompts/${template.id}`}
                                className="flex items-center gap-2 px-4 py-2 text-sm text-slate-200 hover:bg-slate-600"
                                onClick={() => setActionMenuOpen(null)}
                              >
                                <Edit className="w-4 h-4" />
                                Edit
                              </Link>
                              <Link
                                to={`/admin/prompts/${template.id}/versions`}
                                className="flex items-center gap-2 px-4 py-2 text-sm text-slate-200 hover:bg-slate-600"
                                onClick={() => setActionMenuOpen(null)}
                              >
                                <Eye className="w-4 h-4" />
                                Version History
                              </Link>
                              <button
                                onClick={() => handleDuplicate(template.id)}
                                className="w-full flex items-center gap-2 px-4 py-2 text-sm text-slate-200 hover:bg-slate-600"
                              >
                                <Copy className="w-4 h-4" />
                                Duplicate
                              </button>
                              <div className="border-t border-slate-600 my-1" />
                              <button
                                onClick={() => handleDelete(template.id)}
                                className="w-full flex items-center gap-2 px-4 py-2 text-sm text-red-400 hover:bg-slate-600"
                              >
                                <Trash2 className="w-4 h-4" />
                                Deactivate
                              </button>
                            </div>
                          </>
                        )}
                      </div>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
