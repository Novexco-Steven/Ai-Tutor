import { useState } from 'react';
import PricingCard from './PricingCard';

interface PricingTier {
  name: string;
  monthlyPrice: number | 'Custom';
  yearlyPrice: number | 'Custom';
  description: string;
  features: string[];
  highlighted?: boolean;
  ctaText: string;
  ctaHref: string;
}

const pricingTiers: PricingTier[] = [
  {
    name: 'Free',
    monthlyPrice: 0,
    yearlyPrice: 0,
    description: 'Perfect for trying out Tulomi',
    features: [
      '3 lessons per week',
      'Basic progress tracking',
      'Single subject access',
      'Community support',
    ],
    ctaText: 'Get Started Free',
    ctaHref: '/signup',
  },
  {
    name: 'Pro',
    monthlyPrice: 9.99,
    yearlyPrice: 99,
    description: 'Best for individual learners and families',
    features: [
      'Unlimited lessons',
      'All subjects included',
      'Advanced analytics',
      'Custom learning paths',
      'Priority support',
      'Offline mode',
      'No ads',
    ],
    highlighted: true,
    ctaText: 'Start Pro Trial',
    ctaHref: '/signup?plan=pro',
  },
  {
    name: 'Team',
    monthlyPrice: 'Custom',
    yearlyPrice: 'Custom',
    description: 'For schools and educational institutions',
    features: [
      'Everything in Pro',
      'Classroom management',
      'Teacher dashboard',
      'Student analytics',
      'LMS integration',
      'Custom curriculum',
      'Dedicated support',
      'Admin controls',
    ],
    ctaText: 'Contact Sales',
    ctaHref: '#',
  },
];

interface PricingTableProps {
  title?: string;
  subtitle?: string;
}

export default function PricingTable({ title, subtitle }: PricingTableProps) {
  const [isYearly, setIsYearly] = useState(false);

  return (
    <section className="py-20 bg-white dark:bg-gray-900">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        {(title || subtitle) && (
          <div className="text-center mb-12">
            {title && (
              <h2 className="text-3xl md:text-4xl font-bold text-gray-900 dark:text-white mb-4">
                {title}
              </h2>
            )}
            {subtitle && (
              <p className="text-xl text-gray-600 dark:text-gray-400 max-w-2xl mx-auto">
                {subtitle}
              </p>
            )}
          </div>
        )}

        {/* Toggle */}
        <div className="flex items-center justify-center gap-4 mb-12">
          <span className={`font-medium ${!isYearly ? 'text-gray-900 dark:text-white' : 'text-gray-500 dark:text-gray-400'}`}>
            Monthly
          </span>
          <button
            onClick={() => setIsYearly(!isYearly)}
            className={`relative w-14 h-8 rounded-full transition-colors ${
              isYearly ? 'bg-primary-600' : 'bg-gray-300 dark:bg-gray-600'
            }`}
          >
            <div
              className={`absolute top-1 w-6 h-6 bg-white rounded-full shadow transition-transform ${
                isYearly ? 'translate-x-7' : 'translate-x-1'
              }`}
            />
          </button>
          <span className={`font-medium ${isYearly ? 'text-gray-900 dark:text-white' : 'text-gray-500 dark:text-gray-400'}`}>
            Yearly
            <span className="ml-2 text-sm text-green-500 font-normal">Save 20%</span>
          </span>
        </div>

        {/* Pricing Cards */}
        <div className="grid md:grid-cols-3 gap-8 max-w-5xl mx-auto">
          {pricingTiers.map((tier) => (
            <PricingCard
              key={tier.name}
              name={tier.name}
              price={isYearly ? tier.yearlyPrice : tier.monthlyPrice}
              period={isYearly ? 'year' : 'month'}
              description={tier.description}
              features={tier.features}
              highlighted={tier.highlighted}
              ctaText={tier.ctaText}
              ctaHref={tier.ctaHref}
            />
          ))}
        </div>
      </div>
    </section>
  );
}
