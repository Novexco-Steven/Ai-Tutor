import { useState } from 'react';
import { ChevronDown, ChevronRight, BookOpen, Target, Clock } from 'lucide-react';
import Card from '../shared/Card';
import TopicCard from './TopicCard';
import type { UserProgress, UnitWithTopics } from '@/types';

interface UnitCardProps {
  unit: UnitWithTopics;
  unitIndex: number;
  progress: UserProgress[];
  subjectColor?: string;
  defaultExpanded?: boolean;
}

export default function UnitCard({
  unit,
  unitIndex,
  progress,
  subjectColor = '#3b82f6',
  defaultExpanded = false,
}: UnitCardProps) {
  const [isExpanded, setIsExpanded] = useState(defaultExpanded);

  // Calculate unit progress
  const topics = unit.topics || [];
  const completedTopics = topics.filter(topic =>
    progress.some(p => p.topic_id === topic.id && p.status === 'completed')
  ).length;
  const progressPercentage = topics.length > 0 ? Math.round((completedTopics / topics.length) * 100) : 0;

  // Calculate total estimated time
  const totalTime = topics.reduce((sum, topic) => sum + (topic.estimated_time || 0), 0);

  const getTopicProgress = (topicId: string): UserProgress | undefined => {
    return progress.find(p => p.topic_id === topicId);
  };

  return (
    <div className="mb-4">
      {/* Unit Header */}
      <Card
        interactive
        onClick={() => setIsExpanded(!isExpanded)}
        className="transition-all duration-200"
      >
        <div className="flex items-start gap-4">
          {/* Unit Icon & Number */}
          <div
            className="w-14 h-14 rounded-xl flex items-center justify-center text-2xl flex-shrink-0"
            style={{ backgroundColor: `${subjectColor}20` }}
          >
            {unit.icon || `${unitIndex + 1}`}
          </div>

          {/* Unit Info */}
          <div className="flex-1 min-w-0">
            <div className="flex items-center gap-2 mb-1">
              <span
                className="text-sm font-semibold px-2 py-0.5 rounded"
                style={{ backgroundColor: `${subjectColor}20`, color: subjectColor }}
              >
                Unit {unitIndex + 1}
              </span>
              {completedTopics === topics.length && topics.length > 0 && (
                <span className="text-xs font-medium px-2 py-0.5 bg-green-100 dark:bg-green-900/30 text-green-700 dark:text-green-400 rounded-full">
                  Complete
                </span>
              )}
            </div>
            <h3 className="text-xl font-bold text-gray-900 dark:text-white mb-1">
              {unit.name}
            </h3>
            <p className="text-sm text-gray-600 dark:text-gray-400 line-clamp-2">
              {unit.description}
            </p>

            {/* Stats Row */}
            <div className="flex flex-wrap items-center gap-4 mt-3">
              <span className="flex items-center gap-1.5 text-sm text-gray-500">
                <BookOpen className="w-4 h-4" />
                {topics.length} topics
              </span>
              <span className="flex items-center gap-1.5 text-sm text-gray-500">
                <Clock className="w-4 h-4" />
                ~{totalTime} min
              </span>
              {unit.learning_objectives && unit.learning_objectives.length > 0 && (
                <span className="flex items-center gap-1.5 text-sm text-gray-500">
                  <Target className="w-4 h-4" />
                  {unit.learning_objectives.length} objectives
                </span>
              )}
            </div>

            {/* Progress Bar */}
            <div className="mt-3">
              <div className="flex items-center justify-between text-xs text-gray-500 mb-1">
                <span>{completedTopics} of {topics.length} completed</span>
                <span>{progressPercentage}%</span>
              </div>
              <div className="w-full h-2 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden">
                <div
                  className="h-full rounded-full transition-all duration-500"
                  style={{
                    width: `${progressPercentage}%`,
                    backgroundColor: progressPercentage === 100 ? '#10b981' : subjectColor,
                  }}
                />
              </div>
            </div>
          </div>

          {/* Expand/Collapse Button */}
          <button
            className="p-2 rounded-full hover:bg-gray-100 dark:hover:bg-gray-700 transition-colors flex-shrink-0"
            aria-label={isExpanded ? 'Collapse' : 'Expand'}
          >
            {isExpanded ? (
              <ChevronDown className="w-5 h-5 text-gray-500" />
            ) : (
              <ChevronRight className="w-5 h-5 text-gray-500" />
            )}
          </button>
        </div>

        {/* Learning Objectives (shown in header when collapsed) */}
        {!isExpanded && unit.learning_objectives && unit.learning_objectives.length > 0 && (
          <div className="mt-4 pt-4 border-t border-gray-100 dark:border-gray-700">
            <p className="text-xs font-medium text-gray-500 uppercase mb-2">Learning Objectives</p>
            <ul className="grid grid-cols-1 md:grid-cols-2 gap-1">
              {unit.learning_objectives.slice(0, 4).map((objective, idx) => (
                <li key={idx} className="flex items-start gap-2 text-sm text-gray-600 dark:text-gray-400">
                  <span className="text-primary-500">•</span>
                  <span className="line-clamp-1">{objective}</span>
                </li>
              ))}
            </ul>
          </div>
        )}
      </Card>

      {/* Expanded Topics List */}
      {isExpanded && (
        <div className="mt-2 ml-4 pl-4 border-l-2 space-y-2" style={{ borderColor: `${subjectColor}40` }}>
          {/* Learning Objectives */}
          {unit.learning_objectives && unit.learning_objectives.length > 0 && (
            <div className="bg-gray-50 dark:bg-gray-800/50 rounded-lg p-4 mb-4">
              <p className="text-xs font-semibold text-gray-500 uppercase mb-2 flex items-center gap-2">
                <Target className="w-4 h-4" />
                Learning Objectives
              </p>
              <ul className="space-y-1">
                {unit.learning_objectives.map((objective, idx) => (
                  <li key={idx} className="flex items-start gap-2 text-sm text-gray-600 dark:text-gray-300">
                    <span style={{ color: subjectColor }}>✓</span>
                    <span>{objective}</span>
                  </li>
                ))}
              </ul>
            </div>
          )}

          {/* Topics */}
          {topics.map((topic, idx) => (
            <TopicCard
              key={topic.id}
              topic={topic}
              index={idx}
              progress={getTopicProgress(topic.id)}
              subjectColor={subjectColor}
            />
          ))}

          {topics.length === 0 && (
            <div className="text-center py-6 text-gray-500">
              No topics in this unit yet.
            </div>
          )}
        </div>
      )}
    </div>
  );
}
