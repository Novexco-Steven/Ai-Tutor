import { ReactNode, ComponentProps } from 'react';
import FeatureCard from './FeatureCard';
import Illustration from '@/components/shared/Illustration';

type IllustrationType = ComponentProps<typeof Illustration>['type'];

interface Feature {
  icon: ReactNode;
  title: string;
  description: string;
  highlight?: boolean;
  illustration?: IllustrationType;
}

interface FeatureGridProps {
  title: string;
  subtitle?: string;
  features: Feature[];
  columns?: 2 | 3 | 4;
}

export default function FeatureGrid({ title, subtitle, features, columns = 3 }: FeatureGridProps) {
  const gridCols = {
    2: 'md:grid-cols-2',
    3: 'md:grid-cols-3',
    4: 'md:grid-cols-2 lg:grid-cols-4',
  };

  return (
    <section className="py-20 bg-gray-50 dark:bg-gray-900/50">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-12">
          <h2 className="text-3xl md:text-4xl font-bold text-gray-900 dark:text-white mb-4">
            {title}
          </h2>
          {subtitle && (
            <p className="text-xl text-gray-600 dark:text-gray-400 max-w-2xl mx-auto">
              {subtitle}
            </p>
          )}
        </div>

        <div className={`grid gap-6 ${gridCols[columns]}`}>
          {features.map((feature, index) => (
            <FeatureCard key={index} {...feature} />
          ))}
        </div>
      </div>
    </section>
  );
}
