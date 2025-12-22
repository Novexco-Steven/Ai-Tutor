import { cn } from '@/utils/helpers';

interface TulomiLogoProps {
  size?: 'sm' | 'md' | 'lg' | 'xl';
  variant?: 'icon' | 'full' | 'wordmark';
  className?: string;
  showText?: boolean;
  textColor?: 'light' | 'dark' | 'auto';
}

const sizes = {
  sm: { icon: 24, text: 'text-lg' },
  md: { icon: 32, text: 'text-xl' },
  lg: { icon: 40, text: 'text-2xl' },
  xl: { icon: 56, text: 'text-3xl' },
};

export default function TulomiLogo({
  size = 'md',
  variant = 'full',
  className,
  showText = true,
  textColor = 'auto',
}: TulomiLogoProps) {
  const { icon: iconSize, text: textSize } = sizes[size];

  const textColorClass = {
    light: 'text-white',
    dark: 'text-slate-900',
    auto: 'text-slate-900 dark:text-white',
  }[textColor];

  if (variant === 'icon') {
    return (
      <div className={cn('flex items-center', className)}>
        <TulomiIcon size={iconSize} />
      </div>
    );
  }

  if (variant === 'wordmark') {
    return (
      <div className={cn('flex items-center gap-2', className)}>
        <TulomiIcon size={iconSize} />
        {showText && (
          <span className={cn('font-bold tracking-tight', textSize, textColorClass)}>
            Tulomi
          </span>
        )}
      </div>
    );
  }

  // Default: full logo
  return (
    <div className={cn('flex items-center gap-2', className)}>
      <TulomiIcon size={iconSize} />
      {showText && (
        <span className={cn('font-bold tracking-tight', textSize, textColorClass)}>
          Tulomi
        </span>
      )}
    </div>
  );
}

interface TulomiIconProps {
  size?: number;
  className?: string;
}

export function TulomiIcon({ size = 32, className }: TulomiIconProps) {
  return (
    <svg
      width={size}
      height={size}
      viewBox="0 0 200 200"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      className={className}
    >
      <defs>
        <linearGradient id="tulomiGradient" x1="50" y1="180" x2="150" y2="20" gradientUnits="userSpaceOnUse">
          <stop offset="0%" stopColor="#0ea5e9" />
          <stop offset="100%" stopColor="#38bdf8" />
        </linearGradient>
      </defs>

      {/* Left flowing curve */}
      <path
        d="M60 160 Q40 120 50 80 Q60 50 85 40"
        stroke="url(#tulomiGradient)"
        strokeWidth="18"
        strokeLinecap="round"
        fill="none"
      />

      {/* Right flowing curve */}
      <path
        d="M140 160 Q160 120 150 80 Q140 50 115 40"
        stroke="url(#tulomiGradient)"
        strokeWidth="18"
        strokeLinecap="round"
        fill="none"
      />

      {/* Center connecting curves */}
      <path
        d="M75 120 Q100 90 100 55"
        stroke="url(#tulomiGradient)"
        strokeWidth="14"
        strokeLinecap="round"
        fill="none"
      />
      <path
        d="M125 120 Q100 90 100 55"
        stroke="url(#tulomiGradient)"
        strokeWidth="14"
        strokeLinecap="round"
        fill="none"
      />

      {/* Spark at top */}
      <circle cx="100" cy="35" r="14" fill="#38bdf8" />
      <circle cx="100" cy="20" r="5" fill="#7dd3fc" opacity="0.8" />
    </svg>
  );
}
