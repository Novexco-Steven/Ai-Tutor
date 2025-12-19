import { cn } from '@/utils/helpers';

interface LoadingProps {
  fullScreen?: boolean;
  size?: 'sm' | 'md' | 'lg';
  message?: string;
}

export default function Loading({ fullScreen = false, size = 'md', message }: LoadingProps) {
  const sizeClasses = {
    sm: 'w-8 h-8',
    md: 'w-12 h-12',
    lg: 'w-16 h-16',
  };

  const content = (
    <div className="flex flex-col items-center justify-center gap-4">
      <div className={cn('spinner', sizeClasses[size])} />
      {message && (
        <p className="text-gray-600 dark:text-gray-300 text-center">
          {message}
        </p>
      )}
    </div>
  );

  if (fullScreen) {
    return (
      <div className="fixed inset-0 flex items-center justify-center bg-white dark:bg-gray-900">
        {content}
      </div>
    );
  }

  return content;
}
