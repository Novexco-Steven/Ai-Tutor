import { createContext, useContext, useEffect, useState, ReactNode } from 'react';
import { useUser } from './UserContext';
import type { UserSettings, DisplaySettings, AudioSettings, LearningSettings } from '@/types';
import { storage } from '@/utils/helpers';

interface SettingsContextType {
  settings: UserSettings;
  updateDisplaySettings: (settings: Partial<DisplaySettings>) => void;
  updateAudioSettings: (settings: Partial<AudioSettings>) => void;
  updateLearningSettings: (settings: Partial<LearningSettings>) => void;
  applySettings: () => void;
}

const defaultSettings: UserSettings = {
  display: {
    textSize: 'medium',
    darkMode: false,
    dyslexicFont: false,
  },
  audio: {
    voiceMode: false,
    soundEffects: true,
    autoReadQuestions: false,
    voiceSpeed: 1.0,
  },
  learning: {
    showHints: true,
    practiceQuestionCount: 10,
    autoAdvance: false,
    difficultyMode: 'auto',
  },
};

const SettingsContext = createContext<SettingsContextType | undefined>(undefined);

export function SettingsProvider({ children }: { children: ReactNode }) {
  const { profile, updateProfile } = useUser();
  const [settings, setSettings] = useState<UserSettings>(defaultSettings);

  // Load settings from profile or localStorage
  useEffect(() => {
    if (profile?.settings) {
      setSettings(profile.settings);
      applySettingsToDOM(profile.settings);
    } else {
      // Try localStorage for guest users
      const savedSettings = storage.get<UserSettings>('learnlit_settings', defaultSettings);
      setSettings(savedSettings);
      applySettingsToDOM(savedSettings);
    }
  }, [profile]);

  const applySettingsToDOM = (settings: UserSettings) => {
    const body = document.body;

    // Apply text size
    body.classList.remove('text-small', 'text-medium', 'text-large');
    body.classList.add(`text-${settings.display.textSize}`);

    // Apply dark mode
    if (settings.display.darkMode) {
      body.classList.add('dark');
    } else {
      body.classList.remove('dark');
    }

    // Apply dyslexic font
    if (settings.display.dyslexicFont) {
      body.classList.add('dyslexic-font');
    } else {
      body.classList.remove('dyslexic-font');
    }
  };

  const saveSettings = async (newSettings: UserSettings) => {
    setSettings(newSettings);
    applySettingsToDOM(newSettings);

    // Save to localStorage
    storage.set('learnlit_settings', newSettings);

    // Save to profile if logged in
    if (profile) {
      try {
        await updateProfile({ settings: newSettings });
      } catch (err) {
        console.error('Error saving settings to profile:', err);
      }
    }
  };

  const updateDisplaySettings = (updates: Partial<DisplaySettings>) => {
    const newSettings = {
      ...settings,
      display: { ...settings.display, ...updates },
    };
    saveSettings(newSettings);
  };

  const updateAudioSettings = (updates: Partial<AudioSettings>) => {
    const newSettings = {
      ...settings,
      audio: { ...settings.audio, ...updates },
    };
    saveSettings(newSettings);
  };

  const updateLearningSettings = (updates: Partial<LearningSettings>) => {
    const newSettings = {
      ...settings,
      learning: { ...settings.learning, ...updates },
    };
    saveSettings(newSettings);
  };

  const applySettings = () => {
    applySettingsToDOM(settings);
  };

  const value = {
    settings,
    updateDisplaySettings,
    updateAudioSettings,
    updateLearningSettings,
    applySettings,
  };

  return <SettingsContext.Provider value={value}>{children}</SettingsContext.Provider>;
}

export function useSettings() {
  const context = useContext(SettingsContext);
  if (context === undefined) {
    throw new Error('useSettings must be used within a SettingsProvider');
  }
  return context;
}
