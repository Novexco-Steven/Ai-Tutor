import { Link } from 'react-router-dom';
import { Check } from 'lucide-react';
import Button from '../../shared/Button';

interface PricingCardProps {
  name: string;
  price: number | 'Custom';
  period?: 'month' | 'year';
  description: string;
  features: string[];
  highlighted?: boolean;
  ctaText: string;
  ctaHref: string;
}

export default function PricingCard({
  name,
  price,
  period = 'month',
  description,
  features,
  highlighted,
  ctaText,
  ctaHref,
}: PricingCardProps) {
  return (
    <div
      className={`relative rounded-2xl p-8 ${
        highlighted
          ? 'bg-primary-600 text-white ring-4 ring-primary-600 ring-offset-2 dark:ring-offset-gray-900'
          : 'bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700'
      }`}
    >
      {highlighted && (
        <div className="absolute -top-4 left-1/2 -translate-x-1/2 bg-yellow-400 text-yellow-900 text-sm font-semibold px-4 py-1 rounded-full">
          Most Popular
        </div>
      )}

      <div className="mb-6">
        <h3 className={`text-xl font-bold mb-2 ${highlighted ? 'text-white' : 'text-gray-900 dark:text-white'}`}>
          {name}
        </h3>
        <p className={`text-sm ${highlighted ? 'text-primary-100' : 'text-gray-600 dark:text-gray-400'}`}>
          {description}
        </p>
      </div>

      <div className="mb-6">
        {price === 'Custom' ? (
          <div className={`text-4xl font-bold ${highlighted ? 'text-white' : 'text-gray-900 dark:text-white'}`}>
            Custom
          </div>
        ) : (
          <div className="flex items-baseline gap-1">
            <span className={`text-4xl font-bold ${highlighted ? 'text-white' : 'text-gray-900 dark:text-white'}`}>
              ${price}
            </span>
            <span className={highlighted ? 'text-primary-100' : 'text-gray-500 dark:text-gray-400'}>
              /{period}
            </span>
          </div>
        )}
      </div>

      <ul className="space-y-3 mb-8">
        {features.map((feature, index) => (
          <li key={index} className="flex items-start gap-3">
            <Check className={`w-5 h-5 flex-shrink-0 mt-0.5 ${
              highlighted ? 'text-primary-200' : 'text-green-500'
            }`} />
            <span className={highlighted ? 'text-primary-50' : 'text-gray-600 dark:text-gray-400'}>
              {feature}
            </span>
          </li>
        ))}
      </ul>

      <Link to={ctaHref}>
        <Button
          fullWidth
          size="lg"
          variant={highlighted ? 'secondary' : 'primary'}
          className={highlighted ? 'bg-white text-primary-600 hover:bg-gray-100' : ''}
        >
          {ctaText}
        </Button>
      </Link>
    </div>
  );
}
