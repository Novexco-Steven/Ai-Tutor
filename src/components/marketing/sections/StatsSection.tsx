interface Stat {
  value: string;
  label: string;
  icon?: string;
}

interface StatsSectionProps {
  stats: Stat[];
  variant?: 'light' | 'dark';
}

export default function StatsSection({ stats, variant = 'light' }: StatsSectionProps) {
  return (
    <section className={`py-16 ${variant === 'dark' ? 'bg-gray-900' : 'bg-white dark:bg-gray-900'}`}>
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="grid grid-cols-2 md:grid-cols-4 gap-8">
          {stats.map((stat, index) => (
            <div key={index} className="text-center">
              {stat.icon && <div className="text-4xl mb-2">{stat.icon}</div>}
              <div className={`text-4xl md:text-5xl font-bold mb-2 ${
                variant === 'dark' ? 'text-white' : 'text-primary-600 dark:text-primary-400'
              }`}>
                {stat.value}
              </div>
              <div className={`text-sm md:text-base ${
                variant === 'dark' ? 'text-gray-400' : 'text-gray-600 dark:text-gray-400'
              }`}>
                {stat.label}
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
