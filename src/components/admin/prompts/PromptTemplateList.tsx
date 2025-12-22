import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import {
  Plus,
  Search,
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
  GraduationCap,
  ChevronDown,
  ChevronRight,
  Layers,
  FolderOpen,
} from 'lucide-react';
import { getPromptTemplates, deletePromptTemplate, duplicatePromptTemplate } from '@/services/promptAdmin';
import { supabase } from '@/services/supabase';
import { useUser } from '@/contexts/UserContext';
import type { PromptTemplate, PromptType, PromptTemplateFilters } from '@/types/prompts';

const PROMPT_TYPE_ICONS: Record<PromptType, React.ReactNode> = {
  grade_global: <GraduationCap className="w-4 h-4" />,
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
  grade_global: 'Grade (Global)',
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
  grade_global: 'bg-indigo-500/10 text-indigo-500 dark:text-indigo-400',
  user_profile: 'bg-purple-500/10 text-purple-500 dark:text-purple-400',
  user_learning_preference: 'bg-purple-500/10 text-purple-500 dark:text-purple-400',
  subject_global: 'bg-blue-500/10 text-blue-500 dark:text-blue-400',
  subject_location: 'bg-cyan-500/10 text-cyan-500 dark:text-cyan-400',
  unit_global: 'bg-green-500/10 text-green-500 dark:text-green-400',
  unit_location: 'bg-emerald-500/10 text-emerald-500 dark:text-emerald-400',
  topic_global: 'bg-amber-500/10 text-amber-500 dark:text-amber-400',
  topic_location: 'bg-orange-500/10 text-orange-500 dark:text-orange-400',
  user_customization: 'bg-pink-500/10 text-pink-500 dark:text-pink-400',
};

type GroupByMode = 'type' | 'hierarchy';

interface Subject {
  id: string;
  name: string;
}

interface Unit {
  id: string;
  name: string;
  subject_id: string;
  grade_level: number;
}

interface Topic {
  id: string;
  name: string;
  unit_id: string;
}

// Hierarchical tree structure types
interface TopicNode {
  id: string;
  name: string;
  templates: PromptTemplate[];
}

interface UnitNode {
  id: string;
  name: string;
  topics: Map<string, TopicNode>;
  templates: PromptTemplate[]; // templates directly on unit
}

interface SubjectNode {
  id: string;
  name: string;
  units: Map<string, UnitNode>;
  templates: PromptTemplate[]; // templates directly on subject
}

interface GradeNode {
  grade: number | null;
  label: string;
  subjects: Map<string, SubjectNode>;
  templates: PromptTemplate[]; // templates directly on grade
}

export default function PromptTemplateList() {
  const { profile } = useUser();
  const [templates, setTemplates] = useState<PromptTemplate[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [typeFilter, setTypeFilter] = useState<PromptType | ''>('');
  const [showInactive, setShowInactive] = useState(false);
  const [actionMenuOpen, setActionMenuOpen] = useState<string | null>(null);

  // New state for grouping and filtering
  const [groupBy, setGroupBy] = useState<GroupByMode>('hierarchy');
  const [gradeFilter, setGradeFilter] = useState<number | ''>('');
  const [subjectFilter, setSubjectFilter] = useState<string>('');
  const [expandedGroups, setExpandedGroups] = useState<Set<string>>(new Set());

  // Lookup data
  const [subjects, setSubjects] = useState<Subject[]>([]);
  const [subjectMap, setSubjectMap] = useState<Map<string, Subject>>(new Map());
  const [unitMap, setUnitMap] = useState<Map<string, Unit>>(new Map());
  const [topicMap, setTopicMap] = useState<Map<string, Topic>>(new Map());

  // Fetch lookup data
  useEffect(() => {
    async function fetchLookupData() {
      try {
        const [subjectsRes, unitsRes, topicsRes] = await Promise.all([
          supabase.from('subjects').select('id, name').order('name'),
          supabase.from('units').select('id, name, subject_id, grade_level').order('name'),
          supabase.from('topics').select('id, name, unit_id').order('name'),
        ]);

        if (subjectsRes.data) {
          setSubjects(subjectsRes.data);
          const map = new Map<string, Subject>();
          subjectsRes.data.forEach(s => map.set(s.id, s));
          setSubjectMap(map);
        }

        if (unitsRes.data) {
          const map = new Map<string, Unit>();
          unitsRes.data.forEach(u => map.set(u.id, u));
          setUnitMap(map);
        }

        if (topicsRes.data) {
          const map = new Map<string, Topic>();
          topicsRes.data.forEach(t => map.set(t.id, t));
          setTopicMap(map);
        }
      } catch (err) {
        console.error('Error fetching lookup data:', err);
      }
    }

    fetchLookupData();
  }, []);

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

      if (gradeFilter !== '') {
        filters.grade_level = gradeFilter;
      }

      if (subjectFilter) {
        filters.subject_id = subjectFilter;
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
  }, [typeFilter, showInactive, gradeFilter, subjectFilter]);

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

  // Toggle group expansion
  const toggleGroup = (groupKey: string) => {
    setExpandedGroups(prev => {
      const newSet = new Set(prev);
      if (newSet.has(groupKey)) {
        newSet.delete(groupKey);
      } else {
        newSet.add(groupKey);
      }
      return newSet;
    });
  };

  // Expand all groups
  const expandAll = () => {
    const allKeys = new Set<string>();

    if (groupBy === 'hierarchy') {
      // Add all hierarchy keys
      hierarchyTree.forEach((gradeNode, gradeKey) => {
        allKeys.add(`grade-${gradeKey}`);
        gradeNode.subjects.forEach((subjectNode, subjectKey) => {
          allKeys.add(`subject-${gradeKey}-${subjectKey}`);
          subjectNode.units.forEach((unitNode, unitKey) => {
            allKeys.add(`unit-${gradeKey}-${subjectKey}-${unitKey}`);
            unitNode.topics.forEach((_, topicKey) => {
              allKeys.add(`topic-${gradeKey}-${subjectKey}-${unitKey}-${topicKey}`);
            });
          });
        });
      });
    } else {
      Object.keys(groupedTemplates).forEach(key => allKeys.add(key));
    }

    setExpandedGroups(allKeys);
  };

  // Collapse all groups
  const collapseAll = () => {
    setExpandedGroups(new Set());
  };

  // Count templates in hierarchy node
  const countTemplatesInGrade = (gradeNode: GradeNode): number => {
    let count = gradeNode.templates.length;
    gradeNode.subjects.forEach(subject => {
      count += subject.templates.length;
      subject.units.forEach(unit => {
        count += unit.templates.length;
        unit.topics.forEach(topic => {
          count += topic.templates.length;
        });
      });
    });
    return count;
  };

  const countTemplatesInSubject = (subjectNode: SubjectNode): number => {
    let count = subjectNode.templates.length;
    subjectNode.units.forEach(unit => {
      count += unit.templates.length;
      unit.topics.forEach(topic => {
        count += topic.templates.length;
      });
    });
    return count;
  };

  const countTemplatesInUnit = (unitNode: UnitNode): number => {
    let count = unitNode.templates.length;
    unitNode.topics.forEach(topic => {
      count += topic.templates.length;
    });
    return count;
  };

  // Get grade label
  const getGradeLabel = (grade: number | null | undefined): string => {
    if (grade === null || grade === undefined) return 'No Grade';
    if (grade === 0) return 'Kindergarten';
    return `Grade ${grade}`;
  };

  // Get grade from template - derive from topic's unit if not set directly
  const getTemplateGrade = (template: PromptTemplate): number | null => {
    // First check if template has grade_level set directly
    if (template.grade_level !== null && template.grade_level !== undefined) {
      return template.grade_level;
    }

    // Try to derive from topic's unit
    if (template.topic_id) {
      const topic = topicMap.get(template.topic_id);
      if (topic) {
        const unit = unitMap.get(topic.unit_id);
        if (unit) {
          return unit.grade_level;
        }
      }
    }

    // Try to derive from unit directly
    if (template.unit_id) {
      const unit = unitMap.get(template.unit_id);
      if (unit) {
        return unit.grade_level;
      }
    }

    return null;
  };

  // Build hierarchical tree structure
  const buildHierarchy = (): Map<string, GradeNode> => {
    const tree = new Map<string, GradeNode>();

    templates.forEach(template => {
      const grade = getTemplateGrade(template);
      const gradeKey = grade !== null ? String(grade) : 'none';
      const gradeLabel = getGradeLabel(grade);

      // Get or create grade node
      if (!tree.has(gradeKey)) {
        tree.set(gradeKey, {
          grade,
          label: gradeLabel,
          subjects: new Map(),
          templates: [],
        });
      }
      const gradeNode = tree.get(gradeKey)!;

      // Get subject info
      let subjectId = template.subject_id;
      let subjectName = 'No Subject';

      // Try to derive subject from unit or topic
      if (!subjectId && template.unit_id) {
        const unit = unitMap.get(template.unit_id);
        if (unit) {
          subjectId = unit.subject_id;
        }
      }
      if (!subjectId && template.topic_id) {
        const topic = topicMap.get(template.topic_id);
        if (topic) {
          const unit = unitMap.get(topic.unit_id);
          if (unit) {
            subjectId = unit.subject_id;
          }
        }
      }

      if (subjectId && subjectMap.has(subjectId)) {
        subjectName = subjectMap.get(subjectId)!.name;
      }

      const subjectKey = subjectId || 'none';

      // If no subject, add directly to grade
      if (!subjectId) {
        gradeNode.templates.push(template);
        return;
      }

      // Get or create subject node
      if (!gradeNode.subjects.has(subjectKey)) {
        gradeNode.subjects.set(subjectKey, {
          id: subjectId,
          name: subjectName,
          units: new Map(),
          templates: [],
        });
      }
      const subjectNode = gradeNode.subjects.get(subjectKey)!;

      // Get unit info
      let unitId = template.unit_id;
      let unitName = 'No Unit';

      // Try to derive unit from topic
      if (!unitId && template.topic_id) {
        const topic = topicMap.get(template.topic_id);
        if (topic) {
          unitId = topic.unit_id;
        }
      }

      if (unitId && unitMap.has(unitId)) {
        unitName = unitMap.get(unitId)!.name;
      }

      const unitKey = unitId || 'none';

      // If no unit, add directly to subject
      if (!unitId) {
        subjectNode.templates.push(template);
        return;
      }

      // Get or create unit node
      if (!subjectNode.units.has(unitKey)) {
        subjectNode.units.set(unitKey, {
          id: unitId,
          name: unitName,
          topics: new Map(),
          templates: [],
        });
      }
      const unitNode = subjectNode.units.get(unitKey)!;

      // Get topic info
      const topicId = template.topic_id;
      let topicName = 'No Topic';

      if (topicId && topicMap.has(topicId)) {
        topicName = topicMap.get(topicId)!.name;
      }

      const topicKey = topicId || 'none';

      // If no topic, add directly to unit
      if (!topicId) {
        unitNode.templates.push(template);
        return;
      }

      // Get or create topic node
      if (!unitNode.topics.has(topicKey)) {
        unitNode.topics.set(topicKey, {
          id: topicId,
          name: topicName,
          templates: [],
        });
      }
      const topicNode = unitNode.topics.get(topicKey)!;
      topicNode.templates.push(template);
    });

    return tree;
  };

  // Group templates based on groupBy mode (for flat type view)
  const getGroupedTemplates = (): Record<string, PromptTemplate[]> => {
    return templates.reduce((acc, template) => {
      const key = PROMPT_TYPE_LABELS[template.prompt_type] || template.prompt_type;

      if (!acc[key]) {
        acc[key] = [];
      }
      acc[key].push(template);
      return acc;
    }, {} as Record<string, PromptTemplate[]>);
  };

  // Sort grade keys
  const getSortedGradeKeys = (tree: Map<string, GradeNode>): string[] => {
    const keys = Array.from(tree.keys());
    return keys.sort((a, b) => {
      if (a === 'none') return 1;
      if (b === 'none') return -1;
      return parseInt(a) - parseInt(b);
    });
  };

  const hierarchyTree = buildHierarchy();
  const sortedGradeKeys = getSortedGradeKeys(hierarchyTree);
  const groupedTemplates = getGroupedTemplates();
  const sortedTypeKeys = Object.keys(groupedTemplates).sort();

  // Render a single template row
  const renderTemplate = (template: PromptTemplate) => {
    return (
      <div
        key={template.id}
        className={`p-3 hover:bg-gray-50 dark:hover:bg-slate-750 transition-colors ${
          !template.is_active ? 'opacity-50' : ''
        }`}
      >
        <div className="flex items-start justify-between gap-4">
          <div className="flex-1 min-w-0">
            <div className="flex items-center gap-2 mb-1 flex-wrap">
              <span className={`p-1 rounded ${PROMPT_TYPE_COLORS[template.prompt_type]}`}>
                {PROMPT_TYPE_ICONS[template.prompt_type]}
              </span>
              <h4 className="font-medium text-gray-900 dark:text-white text-sm truncate">
                {template.name}
              </h4>
              <span className="text-xs text-gray-500 dark:text-slate-400 bg-gray-100 dark:bg-slate-700 px-2 py-0.5 rounded">
                {PROMPT_TYPE_LABELS[template.prompt_type]}
              </span>
              {!template.is_active && (
                <span className="text-xs text-gray-500 dark:text-slate-500 bg-gray-200 dark:bg-slate-700 px-2 py-0.5 rounded">
                  Inactive
                </span>
              )}
              {template.country_code && (
                <span className="text-xs text-cyan-600 dark:text-cyan-400 bg-cyan-50 dark:bg-cyan-500/10 px-2 py-0.5 rounded">
                  {template.country_code}
                  {template.province_state && ` / ${template.province_state}`}
                </span>
              )}
            </div>
            {template.description && (
              <p className="text-xs text-gray-600 dark:text-slate-400 line-clamp-1">
                {template.description}
              </p>
            )}
          </div>

          {/* Actions */}
          <div className="relative">
            <button
              onClick={(e) => {
                e.stopPropagation();
                setActionMenuOpen(actionMenuOpen === template.id ? null : template.id);
              }}
              className="p-1.5 text-gray-400 dark:text-slate-400 hover:text-gray-900 dark:hover:text-white hover:bg-gray-100 dark:hover:bg-slate-700 rounded-lg transition-colors"
            >
              <MoreVertical className="w-4 h-4" />
            </button>

            {actionMenuOpen === template.id && (
              <>
                <div
                  className="fixed inset-0 z-10"
                  onClick={() => setActionMenuOpen(null)}
                />
                <div className="absolute right-0 mt-1 w-48 bg-white dark:bg-slate-700 rounded-lg shadow-lg z-20 py-1 border border-gray-200 dark:border-slate-600">
                  <Link
                    to={`/admin/prompts/${template.id}`}
                    className="flex items-center gap-2 px-4 py-2 text-sm text-gray-700 dark:text-slate-200 hover:bg-gray-100 dark:hover:bg-slate-600"
                    onClick={() => setActionMenuOpen(null)}
                  >
                    <Edit className="w-4 h-4" />
                    Edit
                  </Link>
                  <Link
                    to={`/admin/prompts/${template.id}/versions`}
                    className="flex items-center gap-2 px-4 py-2 text-sm text-gray-700 dark:text-slate-200 hover:bg-gray-100 dark:hover:bg-slate-600"
                    onClick={() => setActionMenuOpen(null)}
                  >
                    <Eye className="w-4 h-4" />
                    Version History
                  </Link>
                  <button
                    onClick={() => handleDuplicate(template.id)}
                    className="w-full flex items-center gap-2 px-4 py-2 text-sm text-gray-700 dark:text-slate-200 hover:bg-gray-100 dark:hover:bg-slate-600"
                  >
                    <Copy className="w-4 h-4" />
                    Duplicate
                  </button>
                  <div className="border-t border-gray-200 dark:border-slate-600 my-1" />
                  <button
                    onClick={() => handleDelete(template.id)}
                    className="w-full flex items-center gap-2 px-4 py-2 text-sm text-red-500 dark:text-red-400 hover:bg-gray-100 dark:hover:bg-slate-600"
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
    );
  };

  return (
    <div className="max-w-6xl mx-auto">
      {/* Header */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 mb-6">
        <div>
          <h1 className="text-2xl font-bold text-gray-900 dark:text-white">Prompt Templates</h1>
          <p className="text-gray-600 dark:text-slate-400 text-sm mt-1">
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

      {/* Group By Selector */}
      <div className="bg-white dark:bg-slate-800 rounded-xl p-4 mb-4 border border-gray-200 dark:border-slate-700">
        <div className="flex flex-col sm:flex-row sm:items-center gap-4">
          <div className="flex items-center gap-2">
            <Layers className="w-4 h-4 text-gray-500 dark:text-slate-400" />
            <span className="text-sm font-medium text-gray-700 dark:text-slate-300">View:</span>
          </div>
          <div className="flex gap-2">
            {[
              { value: 'hierarchy', label: 'Hierarchy', icon: Layers },
              { value: 'type', label: 'By Type', icon: FolderOpen },
            ].map(({ value, label, icon: Icon }) => (
              <button
                key={value}
                onClick={() => setGroupBy(value as GroupByMode)}
                className={`inline-flex items-center gap-2 px-3 py-1.5 rounded-lg text-sm font-medium transition-colors ${
                  groupBy === value
                    ? 'bg-blue-500 text-white'
                    : 'bg-gray-100 dark:bg-slate-700 text-gray-600 dark:text-slate-300 hover:bg-gray-200 dark:hover:bg-slate-600'
                }`}
              >
                <Icon className="w-4 h-4" />
                {label}
              </button>
            ))}
          </div>
          <div className="sm:ml-auto flex gap-2">
            <button
              onClick={expandAll}
              className="px-3 py-1.5 text-sm text-gray-600 dark:text-slate-300 hover:text-gray-900 dark:hover:text-white"
            >
              Expand All
            </button>
            <button
              onClick={collapseAll}
              className="px-3 py-1.5 text-sm text-gray-600 dark:text-slate-300 hover:text-gray-900 dark:hover:text-white"
            >
              Collapse All
            </button>
          </div>
        </div>
      </div>

      {/* Filters */}
      <div className="bg-white dark:bg-slate-800 rounded-xl p-4 mb-6 border border-gray-200 dark:border-slate-700">
        <div className="flex flex-col sm:flex-row gap-4">
          {/* Search */}
          <div className="relative flex-1">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400 dark:text-slate-400" />
            <input
              type="text"
              placeholder="Search prompts..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full pl-10 pr-4 py-2 bg-gray-50 dark:bg-slate-700 border border-gray-200 dark:border-slate-600 rounded-lg text-gray-900 dark:text-white placeholder-gray-400 dark:placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
          </div>

          {/* Grade filter */}
          <select
            value={gradeFilter}
            onChange={(e) => setGradeFilter(e.target.value === '' ? '' : parseInt(e.target.value))}
            className="px-3 py-2 bg-gray-50 dark:bg-slate-700 border border-gray-200 dark:border-slate-600 rounded-lg text-gray-900 dark:text-white focus:outline-none focus:ring-2 focus:ring-blue-500"
          >
            <option value="">All Grades</option>
            <option value="0">Kindergarten</option>
            {Array.from({ length: 12 }, (_, i) => (
              <option key={i + 1} value={i + 1}>Grade {i + 1}</option>
            ))}
          </select>

          {/* Subject filter */}
          <select
            value={subjectFilter}
            onChange={(e) => setSubjectFilter(e.target.value)}
            className="px-3 py-2 bg-gray-50 dark:bg-slate-700 border border-gray-200 dark:border-slate-600 rounded-lg text-gray-900 dark:text-white focus:outline-none focus:ring-2 focus:ring-blue-500"
          >
            <option value="">All Subjects</option>
            {subjects.map((subject) => (
              <option key={subject.id} value={subject.id}>
                {subject.name}
              </option>
            ))}
          </select>

          {/* Type filter */}
          <select
            value={typeFilter}
            onChange={(e) => setTypeFilter(e.target.value as PromptType | '')}
            className="px-3 py-2 bg-gray-50 dark:bg-slate-700 border border-gray-200 dark:border-slate-600 rounded-lg text-gray-900 dark:text-white focus:outline-none focus:ring-2 focus:ring-blue-500"
          >
            <option value="">All Types</option>
            {Object.entries(PROMPT_TYPE_LABELS).map(([type, label]) => (
              <option key={type} value={type}>
                {label}
              </option>
            ))}
          </select>

          {/* Show inactive */}
          <label className="flex items-center gap-2 text-gray-600 dark:text-slate-300 cursor-pointer whitespace-nowrap">
            <input
              type="checkbox"
              checked={showInactive}
              onChange={(e) => setShowInactive(e.target.checked)}
              className="w-4 h-4 rounded bg-gray-50 dark:bg-slate-700 border-gray-200 dark:border-slate-600 text-blue-500 focus:ring-blue-500"
            />
            <span>Show inactive</span>
          </label>
        </div>
      </div>

      {/* Content */}
      {loading ? (
        <div className="flex items-center justify-center py-12">
          <Loader2 className="w-8 h-8 animate-spin text-blue-500 dark:text-blue-400" />
        </div>
      ) : error ? (
        <div className="text-center py-12">
          <p className="text-red-500 dark:text-red-400 mb-4">{error}</p>
          <button
            onClick={fetchTemplates}
            className="px-4 py-2 bg-gray-100 dark:bg-slate-700 text-gray-900 dark:text-white rounded-lg hover:bg-gray-200 dark:hover:bg-slate-600"
          >
            Try Again
          </button>
        </div>
      ) : templates.length === 0 ? (
        <div className="text-center py-12 bg-white dark:bg-slate-800 rounded-xl border border-gray-200 dark:border-slate-700">
          <MessageSquare className="w-12 h-12 text-gray-300 dark:text-slate-500 mx-auto mb-4" />
          <p className="text-gray-500 dark:text-slate-400 mb-4">No prompt templates found</p>
          <Link
            to="/admin/prompts/new"
            className="inline-flex items-center gap-2 px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600"
          >
            <Plus className="w-4 h-4" />
            Create your first prompt
          </Link>
        </div>
      ) : groupBy === 'hierarchy' ? (
        /* Hierarchical View */
        <div className="space-y-2">
          <p className="text-sm text-gray-500 dark:text-slate-400 mb-4">
            {templates.length} template{templates.length !== 1 ? 's' : ''} across {sortedGradeKeys.length} grade{sortedGradeKeys.length !== 1 ? 's' : ''}
          </p>

          {sortedGradeKeys.map((gradeKey) => {
            const gradeNode = hierarchyTree.get(gradeKey)!;
            const gradeExpandKey = `grade-${gradeKey}`;
            const isGradeExpanded = expandedGroups.has(gradeExpandKey);
            const gradeCount = countTemplatesInGrade(gradeNode);

            return (
              <div key={gradeKey} className="bg-white dark:bg-slate-800 rounded-xl border border-gray-200 dark:border-slate-700 overflow-hidden">
                {/* Grade header */}
                <button
                  onClick={() => toggleGroup(gradeExpandKey)}
                  className="w-full px-4 py-3 bg-indigo-50 dark:bg-indigo-500/10 border-b border-gray-200 dark:border-slate-700 flex items-center gap-3 hover:bg-indigo-100 dark:hover:bg-indigo-500/20 transition-colors"
                >
                  {isGradeExpanded ? (
                    <ChevronDown className="w-5 h-5 text-indigo-500 dark:text-indigo-400" />
                  ) : (
                    <ChevronRight className="w-5 h-5 text-indigo-500 dark:text-indigo-400" />
                  )}
                  <span className="p-1.5 rounded bg-indigo-100 dark:bg-indigo-500/20 text-indigo-600 dark:text-indigo-400">
                    <GraduationCap className="w-4 h-4" />
                  </span>
                  <h3 className="font-semibold text-indigo-900 dark:text-indigo-200">
                    {gradeNode.label}
                  </h3>
                  <span className="text-xs text-indigo-600 dark:text-indigo-400 bg-indigo-100 dark:bg-indigo-500/20 px-2 py-0.5 rounded">
                    {gradeCount}
                  </span>
                </button>

                {isGradeExpanded && (
                  <div className="divide-y divide-gray-100 dark:divide-slate-700">
                    {/* Grade-level templates */}
                    {gradeNode.templates.length > 0 && (
                      <div className="pl-8">
                        {gradeNode.templates.map(template => renderTemplate(template))}
                      </div>
                    )}

                    {/* Subjects */}
                    {Array.from(gradeNode.subjects.entries()).sort((a, b) => a[1].name.localeCompare(b[1].name)).map(([subjectKey, subjectNode]) => {
                      const subjectExpandKey = `subject-${gradeKey}-${subjectKey}`;
                      const isSubjectExpanded = expandedGroups.has(subjectExpandKey);
                      const subjectCount = countTemplatesInSubject(subjectNode);

                      return (
                        <div key={subjectKey} className="border-l-2 border-indigo-200 dark:border-indigo-500/30 ml-4">
                          {/* Subject header */}
                          <button
                            onClick={() => toggleGroup(subjectExpandKey)}
                            className="w-full px-4 py-2.5 bg-blue-50/50 dark:bg-blue-500/5 flex items-center gap-3 hover:bg-blue-100/50 dark:hover:bg-blue-500/10 transition-colors"
                          >
                            {isSubjectExpanded ? (
                              <ChevronDown className="w-4 h-4 text-blue-500 dark:text-blue-400" />
                            ) : (
                              <ChevronRight className="w-4 h-4 text-blue-500 dark:text-blue-400" />
                            )}
                            <span className="p-1 rounded bg-blue-100 dark:bg-blue-500/20 text-blue-600 dark:text-blue-400">
                              <BookOpen className="w-3.5 h-3.5" />
                            </span>
                            <h4 className="font-medium text-blue-900 dark:text-blue-200 text-sm">
                              {subjectNode.name}
                            </h4>
                            <span className="text-xs text-blue-600 dark:text-blue-400 bg-blue-100 dark:bg-blue-500/20 px-1.5 py-0.5 rounded">
                              {subjectCount}
                            </span>
                          </button>

                          {isSubjectExpanded && (
                            <div>
                              {/* Subject-level templates */}
                              {subjectNode.templates.length > 0 && (
                                <div className="pl-8">
                                  {subjectNode.templates.map(template => renderTemplate(template))}
                                </div>
                              )}

                              {/* Units */}
                              {Array.from(subjectNode.units.entries()).sort((a, b) => a[1].name.localeCompare(b[1].name)).map(([unitKey, unitNode]) => {
                                const unitExpandKey = `unit-${gradeKey}-${subjectKey}-${unitKey}`;
                                const isUnitExpanded = expandedGroups.has(unitExpandKey);
                                const unitCount = countTemplatesInUnit(unitNode);

                                return (
                                  <div key={unitKey} className="border-l-2 border-blue-200 dark:border-blue-500/30 ml-4">
                                    {/* Unit header */}
                                    <button
                                      onClick={() => toggleGroup(unitExpandKey)}
                                      className="w-full px-4 py-2 bg-green-50/50 dark:bg-green-500/5 flex items-center gap-3 hover:bg-green-100/50 dark:hover:bg-green-500/10 transition-colors"
                                    >
                                      {isUnitExpanded ? (
                                        <ChevronDown className="w-4 h-4 text-green-500 dark:text-green-400" />
                                      ) : (
                                        <ChevronRight className="w-4 h-4 text-green-500 dark:text-green-400" />
                                      )}
                                      <span className="p-1 rounded bg-green-100 dark:bg-green-500/20 text-green-600 dark:text-green-400">
                                        <FileText className="w-3 h-3" />
                                      </span>
                                      <h5 className="font-medium text-green-900 dark:text-green-200 text-sm">
                                        {unitNode.name}
                                      </h5>
                                      <span className="text-xs text-green-600 dark:text-green-400 bg-green-100 dark:bg-green-500/20 px-1.5 py-0.5 rounded">
                                        {unitCount}
                                      </span>
                                    </button>

                                    {isUnitExpanded && (
                                      <div>
                                        {/* Unit-level templates */}
                                        {unitNode.templates.length > 0 && (
                                          <div className="pl-8">
                                            {unitNode.templates.map(template => renderTemplate(template))}
                                          </div>
                                        )}

                                        {/* Topics */}
                                        {Array.from(unitNode.topics.entries()).sort((a, b) => a[1].name.localeCompare(b[1].name)).map(([topicKey, topicNode]) => {
                                          const topicExpandKey = `topic-${gradeKey}-${subjectKey}-${unitKey}-${topicKey}`;
                                          const isTopicExpanded = expandedGroups.has(topicExpandKey);

                                          return (
                                            <div key={topicKey} className="border-l-2 border-green-200 dark:border-green-500/30 ml-4">
                                              {/* Topic header */}
                                              <button
                                                onClick={() => toggleGroup(topicExpandKey)}
                                                className="w-full px-4 py-1.5 bg-amber-50/50 dark:bg-amber-500/5 flex items-center gap-3 hover:bg-amber-100/50 dark:hover:bg-amber-500/10 transition-colors"
                                              >
                                                {isTopicExpanded ? (
                                                  <ChevronDown className="w-3.5 h-3.5 text-amber-500 dark:text-amber-400" />
                                                ) : (
                                                  <ChevronRight className="w-3.5 h-3.5 text-amber-500 dark:text-amber-400" />
                                                )}
                                                <span className="p-0.5 rounded bg-amber-100 dark:bg-amber-500/20 text-amber-600 dark:text-amber-400">
                                                  <MessageSquare className="w-3 h-3" />
                                                </span>
                                                <h6 className="font-medium text-amber-900 dark:text-amber-200 text-xs">
                                                  {topicNode.name}
                                                </h6>
                                                <span className="text-xs text-amber-600 dark:text-amber-400 bg-amber-100 dark:bg-amber-500/20 px-1.5 py-0.5 rounded">
                                                  {topicNode.templates.length}
                                                </span>
                                              </button>

                                              {isTopicExpanded && (
                                                <div className="pl-8 border-l-2 border-amber-200 dark:border-amber-500/30 ml-4">
                                                  {topicNode.templates.map(template => renderTemplate(template))}
                                                </div>
                                              )}
                                            </div>
                                          );
                                        })}
                                      </div>
                                    )}
                                  </div>
                                );
                              })}
                            </div>
                          )}
                        </div>
                      );
                    })}
                  </div>
                )}
              </div>
            );
          })}
        </div>
      ) : (
        /* Type-based View */
        <div className="space-y-4">
          <p className="text-sm text-gray-500 dark:text-slate-400">
            {templates.length} template{templates.length !== 1 ? 's' : ''} in {sortedTypeKeys.length} type{sortedTypeKeys.length !== 1 ? 's' : ''}
          </p>

          {sortedTypeKeys.map((typeKey) => {
            const typeTemplates = groupedTemplates[typeKey];
            const isExpanded = expandedGroups.has(typeKey);

            return (
              <div key={typeKey} className="bg-white dark:bg-slate-800 rounded-xl border border-gray-200 dark:border-slate-700 overflow-hidden">
                <button
                  onClick={() => toggleGroup(typeKey)}
                  className="w-full px-4 py-3 bg-gray-50 dark:bg-slate-750 border-b border-gray-200 dark:border-slate-700 flex items-center gap-3 hover:bg-gray-100 dark:hover:bg-slate-700 transition-colors"
                >
                  {isExpanded ? (
                    <ChevronDown className="w-5 h-5 text-gray-500 dark:text-slate-400" />
                  ) : (
                    <ChevronRight className="w-5 h-5 text-gray-500 dark:text-slate-400" />
                  )}
                  <span className="p-1.5 rounded bg-purple-100 dark:bg-purple-500/10 text-purple-600 dark:text-purple-400">
                    <FolderOpen className="w-4 h-4" />
                  </span>
                  <h3 className="font-medium text-gray-900 dark:text-white">
                    {typeKey}
                  </h3>
                  <span className="text-xs text-gray-500 dark:text-slate-500 bg-gray-200 dark:bg-slate-700 px-2 py-0.5 rounded">
                    {typeTemplates.length}
                  </span>
                </button>

                {isExpanded && (
                  <div className="divide-y divide-gray-100 dark:divide-slate-700">
                    {typeTemplates.map(template => renderTemplate(template))}
                  </div>
                )}
              </div>
            );
          })}
        </div>
      )}
    </div>
  );
}
