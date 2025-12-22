import { Link } from 'react-router-dom';
import { ArrowRight } from 'lucide-react';
import Button from '../../shared/Button';

interface CTASectionProps {
  headline: string;
  subheadline?: string;
  ctaText: string;
  ctaHref: string;
  variant?: 'primary' | 'gradient' | 'dark';
}

const variantStyles = {
  primary: 'bg-primary-600',
  gradient: 'bg-gradient-to-r from-primary-600 to-cyan-500',
  dark: 'bg-gray-900 dark:bg-gray-800',
};

export default function CTASection({
  headline,
  subheadline,
  ctaText,
  ctaHref,
  variant = 'gradient',
}: CTASectionProps) {
  return (
    <section className={`relative py-20 ${variantStyles[variant]}`}>
      {/* Background Pattern */}
      <div className="absolute inset-0 opacity-10">
        <div className="absolute top-0 left-0 w-72 h-72 bg-white rounded-full filter blur-3xl" />
        <div className="absolute bottom-0 right-0 w-72 h-72 bg-white rounded-full filter blur-3xl" />
      </div>

      <div className="relative max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <h2 className="text-3xl md:text-4xl font-bold text-white mb-4">
          {headline}
        </h2>
        {subheadline && (
          <p className="text-xl text-white/80 mb-8 max-w-2xl mx-auto">
            {subheadline}
          </p>
        )}
        <Link to={ctaHref}>
          <Button
            size="lg"
            className="bg-white text-primary-600 hover:bg-gray-100 group"
          >
            {ctaText}
            <ArrowRight className="w-5 h-5 group-hover:translate-x-1 transition-transform" />
          </Button>
        </Link>
      </div>
    </section>
  );
}
