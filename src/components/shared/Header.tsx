import { ReactNode } from 'react';
import { useNavigate } from 'react-router-dom';
import { ArrowLeft, Settings, X } from 'lucide-react';
import { useUser } from '@/contexts/UserContext';
import { cn } from '@/utils/helpers';
import Button from './Button';
import ThemeToggle from './ThemeToggle';
import VoiceToggle from './VoiceToggle';
import DifficultySlider from './DifficultySlider';

interface ProgressBarProps {
  current: number;
  total: number;
  showLabels?: boolean;
  variant?: 'default' | 'gradient';
}

interface HeaderProps {
  // Navigation
  showBackButton?: boolean;
  backButtonLabel?: string;
  onBackClick?: () => void;
  exitButton?: boolean; // Shows X instead of arrow

  // Title Section
  title?: string | ReactNode;
  subtitle?: string;
  titleIcon?: ReactNode;

  // Dashboard Features (toggleable)
  showGradeBadge?: boolean;
  showDifficultySlider?: boolean;
  showThemeToggle?: boolean;
  showVoiceToggle?: boolean;
  showSettingsButton?: boolean;

  // Progress Bar
  progressBar?: ProgressBarProps;

  // Custom Elements (for page-specific content)
  leftContent?: ReactNode;
  rightContent?: ReactNode;
  bottomContent?: ReactNode;

  // Styling
  variant?: 'default' | 'dark';
  sticky?: boolean;
  className?: string;
}

export default function Header({
  showBackButton = false,
  backButtonLabel = 'Back',
  onBackClick,
  exitButton = false,
  title,
  subtitle,
  titleIcon,
  showGradeBadge = false,
  showDifficultySlider = false,
  showThemeToggle = false,
  showVoiceToggle = false,
  showSettingsButton = false,
  progressBar,
  leftContent,
  rightContent,
  bottomContent,
  variant = 'default',
  sticky = false,
  className,
}: HeaderProps) {
  const navigate = useNavigate();
  const { profile } = useUser();

  const isDark = variant === 'dark';

  const handleBackClick = () => {
    if (onBackClick) {
      onBackClick();
    } else {
      navigate(-1);
    }
  };

  const variantStyles = {
    default: 'bg-white dark:bg-gray-800 shadow-sm',
    dark: 'bg-slate-800/80 backdrop-blur-md border-b border-slate-700/50',
  };

  const progressBarStyles = {
    default: {
      track: 'bg-gray-200 dark:bg-gray-700',
      fill: 'bg-primary-600',
    },
    gradient: {
      track: 'bg-slate-700',
      fill: 'bg-gradient-to-r from-blue-500 to-purple-500',
    },
  };

  return (
    <header
      className={cn(
        variantStyles[variant],
        sticky && 'sticky top-0 z-10',
        className
      )}
    >
      <div className="container-app py-4">
        {/* Main Row */}
        <div className="flex items-center justify-between">
          {/* Left Section */}
          <div className="flex items-center gap-4 flex-1 min-w-0">
            {showBackButton && (
              <Button
                variant="ghost"
                onClick={handleBackClick}
                className={cn(
                  'flex-shrink-0',
                  isDark && 'text-white hover:bg-slate-700/50'
                )}
              >
                {exitButton ? (
                  <X className="w-5 h-5" />
                ) : (
                  <ArrowLeft className="w-4 h-4 mr-2" />
                )}
                {!exitButton && backButtonLabel}
              </Button>
            )}

            {titleIcon && (
              <div className="flex-shrink-0">
                {titleIcon}
              </div>
            )}

            {(title || subtitle) && (
              <div className="min-w-0">
                {title && (
                  <h1 className={cn(
                    'text-xl font-bold truncate',
                    isDark ? 'text-white' : 'text-gray-900 dark:text-white'
                  )}>
                    {title}
                  </h1>
                )}
                {subtitle && (
                  <p className={cn(
                    'text-sm truncate',
                    isDark ? 'text-slate-400' : 'text-gray-600 dark:text-gray-300'
                  )}>
                    {subtitle}
                  </p>
                )}
              </div>
            )}

            {showGradeBadge && (
              <span className="px-3 py-1 bg-primary-100 dark:bg-primary-900/20 text-primary-700 dark:text-primary-300 rounded-full font-medium text-sm flex-shrink-0">
                Grade {profile?.grade_level ?? 5}
              </span>
            )}

            {showDifficultySlider && (
              <DifficultySlider variant={variant} className="flex-shrink-0" />
            )}

            {leftContent}
          </div>

          {/* Right Section */}
          <div className="flex items-center gap-3 flex-shrink-0">
            {rightContent}
            {showThemeToggle && <ThemeToggle />}
            {showVoiceToggle && <VoiceToggle />}
            {showSettingsButton && (
              <Button
                variant="ghost"
                onClick={() => navigate('/settings')}
                aria-label="Settings"
              >
                <Settings className="w-5 h-5" />
              </Button>
            )}
          </div>
        </div>

        {/* Bottom Content */}
        {bottomContent && (
          <div className="mt-4">
            {bottomContent}
          </div>
        )}

        {/* Progress Bar */}
        {progressBar && (
          <div className="mt-4">
            {progressBar.showLabels && (
              <div className={cn(
                'flex justify-between text-sm mb-2',
                isDark ? 'text-slate-400' : 'text-gray-600 dark:text-gray-400'
              )}>
                <span>{Math.round((progressBar.current / progressBar.total) * 100)}% Complete</span>
                <span>Question {progressBar.current} of {progressBar.total}</span>
              </div>
            )}
            <div className={cn(
              'w-full h-2 rounded-full overflow-hidden',
              progressBarStyles[progressBar.variant || 'default'].track
            )}>
              <div
                className={cn(
                  'h-full rounded-full transition-all duration-300',
                  progressBarStyles[progressBar.variant || 'default'].fill
                )}
                style={{ width: `${(progressBar.current / progressBar.total) * 100}%` }}
              />
            </div>
          </div>
        )}
      </div>
    </header>
  );
}
