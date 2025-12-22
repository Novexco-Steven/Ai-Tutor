import { cn } from '@/utils/helpers';

type IllustrationType =
  | 'tutor-welcome'
  | 'tutor-celebrate'
  | 'tutor-teaching'
  | 'tutor-thinking'
  | 'empty-state'
  | 'feature-ai-learning'
  | 'feature-gamified'
  | 'feature-curriculum'
  | 'feature-parent-dashboard'
  | 'feature-analytics'
  | 'feature-security'
  | 'step-choose-subject'
  | 'step-learn-pace'
  | 'step-track-progress'
  // Parent features
  | 'parent-progress-tracking'
  | 'parent-screen-time'
  | 'parent-safe-environment'
  | 'parent-weekly-reports'
  | 'parent-multi-child'
  | 'parent-interest-learning'
  // Educator features
  | 'educator-classroom'
  | 'educator-analytics'
  | 'educator-curriculum'
  | 'educator-differentiation'
  | 'educator-time-saver'
  | 'educator-lms'
  // Student features
  | 'student-interests'
  | 'student-badges'
  | 'student-streak'
  | 'student-games'
  | 'student-ai-tutor'
  | 'student-level-up';

interface IllustrationProps {
  type: IllustrationType;
  size?: 'sm' | 'md' | 'lg' | 'xl';
  className?: string;
  alt?: string;
}

const sizes = {
  sm: 'w-24 h-24',
  md: 'w-40 h-40',
  lg: 'w-60 h-60',
  xl: 'w-80 h-80',
};

const defaultAlts: Record<IllustrationType, string> = {
  'tutor-welcome': 'Tulomi tutor waving hello',
  'tutor-celebrate': 'Tulomi tutor celebrating',
  'tutor-teaching': 'Tulomi tutor explaining',
  'tutor-thinking': 'Tulomi tutor thinking',
  'empty-state': 'No content yet',
  'feature-ai-learning': 'AI-powered personalized learning',
  'feature-gamified': 'Gamified learning experience',
  'feature-curriculum': 'K-12 curriculum aligned content',
  'feature-parent-dashboard': 'Parent dashboard and monitoring',
  'feature-analytics': 'Detailed learning analytics',
  'feature-security': 'Safe and secure platform',
  'step-choose-subject': 'Choose your learning subject',
  'step-learn-pace': 'Learn at your own pace',
  'step-track-progress': 'Track your learning progress',
  // Parent features
  'parent-progress-tracking': 'Real-time progress tracking',
  'parent-screen-time': 'Screen time controls',
  'parent-safe-environment': 'Safe learning environment',
  'parent-weekly-reports': 'Weekly progress reports',
  'parent-multi-child': 'Multi-child support',
  'parent-interest-learning': 'Interest-based learning',
  // Educator features
  'educator-classroom': 'Classroom management',
  'educator-analytics': 'Student analytics',
  'educator-curriculum': 'Curriculum alignment',
  'educator-differentiation': 'Auto-differentiation',
  'educator-time-saver': 'Time saver',
  'educator-lms': 'LMS integration',
  // Student features
  'student-interests': 'Learn what you love',
  'student-badges': 'Earn badges and rewards',
  'student-streak': 'Keep your streak',
  'student-games': 'Fun practice games',
  'student-ai-tutor': 'Your personal AI tutor',
  'student-level-up': 'Level up your skills',
};

export default function Illustration({
  type,
  size = 'md',
  className,
  alt,
}: IllustrationProps) {
  return (
    <img
      src={`/illustrations/${type}.svg`}
      alt={alt || defaultAlts[type]}
      className={cn(sizes[size], 'object-contain', className)}
    />
  );
}

// Export a component specifically for empty states with text
interface EmptyStateProps {
  title?: string;
  message?: string;
  illustrationType?: IllustrationType;
  action?: React.ReactNode;
  className?: string;
}

export function EmptyState({
  title = 'Nothing here yet',
  message = "Let's get started!",
  illustrationType = 'empty-state',
  action,
  className,
}: EmptyStateProps) {
  return (
    <div className={cn('flex flex-col items-center justify-center py-12 text-center', className)}>
      <Illustration type={illustrationType} size="lg" className="mb-6" />
      <h3 className="text-lg font-semibold text-gray-900 dark:text-white mb-2">
        {title}
      </h3>
      <p className="text-gray-600 dark:text-gray-400 max-w-sm mb-6">
        {message}
      </p>
      {action && <div>{action}</div>}
    </div>
  );
}
