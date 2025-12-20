import { useNavigate } from 'react-router-dom';
import { CheckCircle, Lock, PlayCircle, Clock, BarChart3 } from 'lucide-react';
import Card from '../shared/Card';
import type { Topic, UserProgress } from '@/types';

interface TopicCardProps {
  topic: Topic;
  index: number;
  progress?: UserProgress;
  isLocked?: boolean;
  subjectColor?: string;
}

export default function TopicCard({
  topic,
  index,
  progress,
  isLocked = false,
  subjectColor = '#3b82f6',
}: TopicCardProps) {
  const navigate = useNavigate();

  const isCompleted = progress?.status === 'completed';
  const isInProgress = progress?.status === 'in_progress';

  const getStatusIcon = () => {
    if (isLocked) return <Lock className="w-5 h-5 text-gray-400" />;
    if (isCompleted) return <CheckCircle className="w-5 h-5 text-green-600" />;
    if (isInProgress) return <PlayCircle className="w-5 h-5 text-primary-600" />;
    return null;
  };

  const getStatusBadge = () => {
    if (isLocked) {
      return (
        <span className="px-2 py-1 text-xs font-medium bg-gray-100 dark:bg-gray-700 text-gray-500 rounded-full">
          Locked
        </span>
      );
    }
    if (isCompleted) {
      return (
        <span className="px-2 py-1 text-xs font-medium bg-green-100 dark:bg-green-900/30 text-green-700 dark:text-green-400 rounded-full">
          Completed
        </span>
      );
    }
    if (isInProgress) {
      return (
        <span className="px-2 py-1 text-xs font-medium bg-primary-100 dark:bg-primary-900/30 text-primary-700 dark:text-primary-400 rounded-full">
          In Progress
        </span>
      );
    }
    return null;
  };

  return (
    <Card
      interactive={!isLocked}
      onClick={() => !isLocked && navigate(`/lesson/${topic.id}`)}
      className={`transition-all duration-200 ${
        isLocked ? 'opacity-50 cursor-not-allowed' : 'hover:shadow-md'
      } ${isInProgress ? 'ring-2 ring-primary-300 dark:ring-primary-700' : ''}`}
    >
      <div className="flex items-center gap-4">
        {/* Topic Number */}
        <div
          className="w-10 h-10 rounded-full flex items-center justify-center text-white font-bold text-sm flex-shrink-0"
          style={{ backgroundColor: isLocked ? '#9ca3af' : subjectColor }}
        >
          {index + 1}
        </div>

        {/* Topic Info */}
        <div className="flex-1 min-w-0">
          <div className="flex items-center gap-2 mb-1">
            <h4 className="font-semibold text-gray-900 dark:text-white truncate">
              {topic.name}
            </h4>
            {getStatusIcon()}
          </div>
          <p className="text-sm text-gray-600 dark:text-gray-400 line-clamp-1">
            {topic.description}
          </p>
          <div className="flex items-center gap-4 mt-2">
            <span className="flex items-center gap-1 text-xs text-gray-500">
              <Clock className="w-3 h-3" />
              {topic.estimated_time} min
            </span>
            <span className="flex items-center gap-1 text-xs text-gray-500">
              <BarChart3 className="w-3 h-3" />
              Level {topic.difficulty_level}
            </span>
          </div>
        </div>

        {/* Status & Score */}
        <div className="flex flex-col items-end gap-2 flex-shrink-0">
          {getStatusBadge()}
          {isInProgress && progress?.assessment_score !== undefined && (
            <div className="text-right">
              <div className="text-lg font-bold text-primary-600">
                {progress.assessment_score}%
              </div>
            </div>
          )}
          {isCompleted && progress?.assessment_score !== undefined && (
            <div className="text-right">
              <div className="text-lg font-bold text-green-600">
                {progress.assessment_score}%
              </div>
            </div>
          )}
        </div>
      </div>
    </Card>
  );
}
