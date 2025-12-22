import { useNavigate } from 'react-router-dom';
import { useSpacedRepetition } from '@/contexts/SpacedRepetitionContext';
import Card from '../shared/Card';
import { Brain, Clock, ChevronRight, Sparkles } from 'lucide-react';

interface ReviewReminderCardProps {
  className?: string;
  variant?: 'compact' | 'full';
}

export default function ReviewReminderCard({ className = '', variant = 'compact' }: ReviewReminderCardProps) {
  const navigate = useNavigate();
  const { dueReviews, stats, loading, getMemoryStrengthLabel, getMemoryStrengthColor } = useSpacedRepetition();

  if (loading) {
    return (
      <Card className={`animate-pulse ${className}`}>
        <div className="h-24 bg-gray-200 dark:bg-gray-700 rounded" />
      </Card>
    );
  }

  // No reviews due
  if (stats.dueNow === 0) {
    return (
      <Card className={`bg-gradient-to-br from-green-50 to-emerald-50 dark:from-green-900/20 dark:to-emerald-900/20 border-green-200 dark:border-green-800 ${className}`}>
        <div className="flex items-center gap-3">
          <div className="p-2 bg-green-100 dark:bg-green-900/30 rounded-lg">
            <Sparkles className="w-5 h-5 text-green-600 dark:text-green-400" />
          </div>
          <div>
            <p className="font-medium text-green-800 dark:text-green-200">All caught up!</p>
            <p className="text-sm text-green-600 dark:text-green-400">
              {stats.dueThisWeek > 0
                ? `${stats.dueThisWeek} review${stats.dueThisWeek > 1 ? 's' : ''} coming this week`
                : 'No reviews scheduled'}
            </p>
          </div>
        </div>
      </Card>
    );
  }

  // Compact variant - just shows count
  if (variant === 'compact') {
    return (
      <Card
        interactive
        onClick={() => navigate('/review')}
        className={`bg-gradient-to-br from-amber-50 to-orange-50 dark:from-amber-900/20 dark:to-orange-900/20 border-amber-200 dark:border-amber-800 ${className}`}
      >
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <div className="p-2 bg-amber-100 dark:bg-amber-900/30 rounded-lg">
              <Brain className="w-5 h-5 text-amber-600 dark:text-amber-400" />
            </div>
            <div>
              <p className="font-medium text-amber-800 dark:text-amber-200">
                {stats.dueNow} topic{stats.dueNow > 1 ? 's' : ''} ready for review
              </p>
              <p className="text-sm text-amber-600 dark:text-amber-400">
                Keep your memory strong!
              </p>
            </div>
          </div>
          <ChevronRight className="w-5 h-5 text-amber-600 dark:text-amber-400" />
        </div>
      </Card>
    );
  }

  // Full variant - shows topic previews
  return (
    <Card className={`${className}`}>
      <div className="flex items-center justify-between mb-4">
        <div className="flex items-center gap-3">
          <div className="p-2 bg-amber-100 dark:bg-amber-900/30 rounded-lg">
            <Brain className="w-5 h-5 text-amber-600 dark:text-amber-400" />
          </div>
          <div>
            <h3 className="font-semibold text-gray-900 dark:text-white">
              Time to Review
            </h3>
            <p className="text-sm text-gray-600 dark:text-gray-400">
              {stats.dueNow} topic{stats.dueNow > 1 ? 's' : ''} ready
            </p>
          </div>
        </div>
        <button
          onClick={() => navigate('/review')}
          className="btn-primary text-sm px-4 py-2"
        >
          Start Review
        </button>
      </div>

      {/* Topic preview list */}
      <div className="space-y-2">
        {dueReviews.slice(0, 3).map((item) => (
          <div
            key={item.id}
            className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-800/50 rounded-lg"
          >
            <div className="flex items-center gap-3 min-w-0">
              {item.topic?.subject && (
                <span
                  className="text-xl flex-shrink-0"
                  title={item.topic.subject.name}
                >
                  {item.topic.subject.icon}
                </span>
              )}
              <div className="min-w-0">
                <p className="font-medium text-gray-900 dark:text-white truncate">
                  {item.topic?.name || 'Unknown Topic'}
                </p>
                <div className="flex items-center gap-2 text-xs">
                  <span className={getMemoryStrengthColor(item.memoryStrength)}>
                    {getMemoryStrengthLabel(item.memoryStrength)}
                  </span>
                  <span className="text-gray-400">|</span>
                  <span className="text-gray-500 dark:text-gray-400 flex items-center gap-1">
                    <Clock className="w-3 h-3" />
                    {formatDueTime(item.nextReviewDate)}
                  </span>
                </div>
              </div>
            </div>

            {/* Memory strength indicator */}
            <div className="flex-shrink-0 ml-2">
              <MemoryStrengthBar strength={item.memoryStrength} />
            </div>
          </div>
        ))}

        {dueReviews.length > 3 && (
          <button
            onClick={() => navigate('/review')}
            className="w-full py-2 text-sm text-primary-600 dark:text-primary-400 hover:underline"
          >
            +{dueReviews.length - 3} more topic{dueReviews.length - 3 > 1 ? 's' : ''}
          </button>
        )}
      </div>
    </Card>
  );
}

// Helper component for memory strength visualization
function MemoryStrengthBar({ strength }: { strength: number }) {
  const percentage = Math.round(strength * 100);

  let colorClass = 'bg-red-500';
  if (strength >= 0.8) colorClass = 'bg-green-500';
  else if (strength >= 0.6) colorClass = 'bg-lime-500';
  else if (strength >= 0.4) colorClass = 'bg-yellow-500';
  else if (strength >= 0.2) colorClass = 'bg-orange-500';

  return (
    <div className="w-16">
      <div className="h-2 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden">
        <div
          className={`h-full ${colorClass} transition-all duration-300`}
          style={{ width: `${percentage}%` }}
        />
      </div>
      <p className="text-xs text-center text-gray-500 dark:text-gray-400 mt-0.5">
        {percentage}%
      </p>
    </div>
  );
}

// Format due time relative to now
function formatDueTime(date: Date): string {
  const now = new Date();
  const diffMs = date.getTime() - now.getTime();
  const diffDays = Math.floor(diffMs / (1000 * 60 * 60 * 24));
  const diffHours = Math.floor(diffMs / (1000 * 60 * 60));

  if (diffMs < 0) {
    // Overdue
    const overdueDays = Math.abs(diffDays);
    if (overdueDays === 0) return 'Due now';
    if (overdueDays === 1) return '1 day overdue';
    return `${overdueDays} days overdue`;
  }

  if (diffDays === 0) {
    if (diffHours <= 1) return 'Due soon';
    return `In ${diffHours}h`;
  }
  if (diffDays === 1) return 'Tomorrow';
  if (diffDays < 7) return `In ${diffDays} days`;
  return date.toLocaleDateString();
}
