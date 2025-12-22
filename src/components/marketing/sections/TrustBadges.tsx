import { Shield, Award, Users, Lock } from 'lucide-react';

interface TrustBadge {
  icon: React.ReactNode;
  label: string;
}

const defaultBadges: TrustBadge[] = [
  { icon: <Shield className="w-6 h-6" />, label: 'COPPA Compliant' },
  { icon: <Lock className="w-6 h-6" />, label: 'Bank-Level Security' },
  { icon: <Award className="w-6 h-6" />, label: 'Award Winning' },
  { icon: <Users className="w-6 h-6" />, label: '50K+ Students' },
];

interface TrustBadgesProps {
  badges?: TrustBadge[];
  title?: string;
}

export default function TrustBadges({ badges = defaultBadges, title }: TrustBadgesProps) {
  return (
    <section className="py-8 bg-gray-50 dark:bg-gray-800/50 border-y border-gray-200 dark:border-gray-700">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        {title && (
          <p className="text-center text-sm text-gray-500 dark:text-gray-400 mb-6">
            {title}
          </p>
        )}
        <div className="flex flex-wrap items-center justify-center gap-8 md:gap-16">
          {badges.map((badge, index) => (
            <div
              key={index}
              className="flex items-center gap-2 text-gray-600 dark:text-gray-400"
            >
              <span className="text-primary-600 dark:text-primary-400">
                {badge.icon}
              </span>
              <span className="font-medium">{badge.label}</span>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
