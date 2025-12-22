import { ReactNode } from 'react';
import Illustration from '@/components/shared/Illustration';
import type { ComponentProps } from 'react';

type IllustrationType = ComponentProps<typeof Illustration>['type'];

interface FeatureCardProps {
  icon: ReactNode;
  title: string;
  description: string;
  highlight?: boolean;
  illustration?: IllustrationType;
}

export default function FeatureCard({ icon, title, description, highlight, illustration }: FeatureCardProps) {
  return (
    <div
      className={`relative p-6 rounded-2xl transition-all duration-300 hover:shadow-lg hover:-translate-y-1 ${
        highlight
          ? 'bg-primary-50 dark:bg-primary-900/20 border-2 border-primary-200 dark:border-primary-800'
          : 'bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700'
      }`}
    >
      {illustration ? (
        <div className="mb-4 flex justify-center">
          <Illustration type={illustration} size="sm" />
        </div>
      ) : (
        <div className={`w-12 h-12 rounded-xl flex items-center justify-center mb-4 ${
          highlight
            ? 'bg-primary-500 text-white'
            : 'bg-primary-100 dark:bg-primary-900/30 text-primary-600 dark:text-primary-400'
        }`}>
          {icon}
        </div>
      )}
      <h3 className="text-lg font-semibold text-gray-900 dark:text-white mb-2">
        {title}
      </h3>
      <p className="text-gray-600 dark:text-gray-400">
        {description}
      </p>
    </div>
  );
}
