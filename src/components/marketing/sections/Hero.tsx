import { Link } from 'react-router-dom';
import { ArrowRight, Play } from 'lucide-react';
import Button from '../../shared/Button';

interface HeroProps {
  headline: string;
  subheadline: string;
  primaryCTA: { text: string; href: string };
  secondaryCTA?: { text: string; href: string };
  variant?: 'home' | 'parents' | 'teachers' | 'students';
  children?: React.ReactNode;
}

const variantStyles = {
  home: 'bg-gradient-to-br from-primary-50 via-white to-cyan-50 dark:from-gray-900 dark:via-gray-900 dark:to-primary-900/20',
  parents: 'bg-gradient-to-br from-green-50 via-white to-emerald-50 dark:from-gray-900 dark:via-gray-900 dark:to-green-900/20',
  teachers: 'bg-gradient-to-br from-purple-50 via-white to-violet-50 dark:from-gray-900 dark:via-gray-900 dark:to-purple-900/20',
  students: 'bg-gradient-to-br from-orange-50 via-white to-yellow-50 dark:from-gray-900 dark:via-gray-900 dark:to-orange-900/20',
};

export default function Hero({
  headline,
  subheadline,
  primaryCTA,
  secondaryCTA,
  variant = 'home',
  children,
}: HeroProps) {
  return (
    <section className={`relative overflow-hidden ${variantStyles[variant]}`}>
      {/* Background Pattern */}
      <div className="absolute inset-0 opacity-30 dark:opacity-10">
        <div className="absolute top-0 left-1/4 w-96 h-96 bg-primary-300 rounded-full filter blur-3xl" />
        <div className="absolute bottom-0 right-1/4 w-96 h-96 bg-cyan-300 rounded-full filter blur-3xl" />
      </div>

      <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-20 md:py-32">
        <div className="grid md:grid-cols-2 gap-12 items-center">
          {/* Content */}
          <div className="text-center md:text-left">
            <h1 className="text-4xl md:text-5xl lg:text-6xl font-bold text-gray-900 dark:text-white leading-tight mb-6">
              {headline}
            </h1>
            <p className="text-xl text-gray-600 dark:text-gray-300 mb-8 max-w-lg mx-auto md:mx-0">
              {subheadline}
            </p>
            <div className="flex flex-col sm:flex-row items-center gap-4 justify-center md:justify-start">
              <Link to={primaryCTA.href}>
                <Button size="lg" className="group">
                  {primaryCTA.text}
                  <ArrowRight className="w-5 h-5 group-hover:translate-x-1 transition-transform" />
                </Button>
              </Link>
              {secondaryCTA && (
                <Link to={secondaryCTA.href}>
                  <Button variant="secondary" size="lg" className="group">
                    <Play className="w-5 h-5" />
                    {secondaryCTA.text}
                  </Button>
                </Link>
              )}
            </div>
          </div>

          {/* Illustration Area */}
          <div className="relative">
            {children || (
              <div className="relative aspect-square max-w-md mx-auto">
                {/* Placeholder illustration - will be replaced with actual images */}
                <div className="absolute inset-0 bg-gradient-to-br from-primary-400 to-primary-600 rounded-3xl rotate-3 opacity-20" />
                <div className="absolute inset-0 bg-gradient-to-br from-primary-400 to-primary-600 rounded-3xl -rotate-3 opacity-20" />
                <div className="relative bg-white dark:bg-gray-800 rounded-3xl shadow-2xl p-8 h-full flex items-center justify-center">
                  <div className="text-center">
                    <div className="text-6xl mb-4">📚</div>
                    <p className="text-gray-500 dark:text-gray-400">Interactive Learning</p>
                  </div>
                </div>
              </div>
            )}
          </div>
        </div>
      </div>
    </section>
  );
}
