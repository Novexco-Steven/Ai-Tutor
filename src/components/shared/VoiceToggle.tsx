import { Volume2, VolumeX } from 'lucide-react';
import { useSettings } from '@/contexts/SettingsContext';
import { cn } from '@/utils/helpers';

interface VoiceToggleProps {
  className?: string;
}

export default function VoiceToggle({ className }: VoiceToggleProps) {
  // Voice features temporarily disabled - will be enabled in a future update
  return null;

  const { settings, updateAudioSettings } = useSettings();

  const toggleVoiceMode = () => {
    updateAudioSettings({ voiceMode: !settings.audio.voiceMode });
  };

  return (
    <button
      onClick={toggleVoiceMode}
      className={cn(
        'p-3 rounded-full transition-all duration-200',
        settings.audio.voiceMode
          ? 'bg-primary-600 text-white shadow-lg'
          : 'bg-gray-200 dark:bg-gray-700 text-gray-700 dark:text-gray-300 hover:bg-gray-300 dark:hover:bg-gray-600',
        className
      )}
      aria-label={settings.audio.voiceMode ? 'Disable voice mode' : 'Enable voice mode'}
      title={settings.audio.voiceMode ? 'Voice mode on' : 'Voice mode off'}
    >
      {settings.audio.voiceMode ? (
        <Volume2 className="w-5 h-5" />
      ) : (
        <VolumeX className="w-5 h-5" />
      )}
    </button>
  );
}
