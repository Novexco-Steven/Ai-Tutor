import { Sun, Moon } from 'lucide-react';
import { useSettings } from '@/contexts/SettingsContext';
import { cn } from '@/utils/helpers';

interface ThemeToggleProps {
  className?: string;
}

export default function ThemeToggle({ className }: ThemeToggleProps) {
  const { settings, updateDisplaySettings } = useSettings();

  const toggleDarkMode = () => {
    updateDisplaySettings({ darkMode: !settings.display.darkMode });
  };

  return (
    <button
      onClick={toggleDarkMode}
      className={cn(
        'p-3 rounded-full transition-all duration-200',
        settings.display.darkMode
          ? 'bg-gray-700 text-yellow-400 hover:bg-gray-600'
          : 'bg-gray-200 text-gray-700 hover:bg-gray-300',
        className
      )}
      aria-label={settings.display.darkMode ? 'Switch to light mode' : 'Switch to dark mode'}
      title={settings.display.darkMode ? 'Dark mode' : 'Light mode'}
    >
      {settings.display.darkMode ? (
        <Moon className="w-5 h-5" />
      ) : (
        <Sun className="w-5 h-5" />
      )}
    </button>
  );
}
