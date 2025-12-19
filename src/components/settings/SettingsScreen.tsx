import { useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { useSettings } from '@/contexts/SettingsContext';
import Button from '../shared/Button';
import Card from '../shared/Card';
import { ArrowLeft, User, Palette, Volume2, BookOpen } from 'lucide-react';

export default function SettingsScreen() {
  const navigate = useNavigate();
  const { profile, interests } = useUser();
  const { settings, updateDisplaySettings, updateAudioSettings, updateLearningSettings } = useSettings();

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      <header className="bg-white dark:bg-gray-800 shadow-sm">
        <div className="container-app py-6">
          <Button variant="ghost" onClick={() => navigate(-1)}>
            <ArrowLeft className="w-4 h-4 mr-2" />
            Back
          </Button>
          <h1 className="text-3xl font-bold text-gray-900 dark:text-white mt-4">Settings</h1>
        </div>
      </header>

      <main className="container-app py-8 max-w-2xl space-y-6">
        <Card>
          <h2 className="text-xl font-bold mb-4 flex items-center">
            <User className="w-5 h-5 mr-2" />
            Profile
          </h2>
          <div className="space-y-3">
            <div>
              <span className="text-sm text-gray-600 dark:text-gray-400">Name:</span>
              <p className="font-medium text-gray-900 dark:text-white">{profile?.name || 'Guest'}</p>
            </div>
            {profile?.grade_level && (
              <div>
                <span className="text-sm text-gray-600 dark:text-gray-400">Grade Level:</span>
                <p className="font-medium text-gray-900 dark:text-white">Grade {profile.grade_level}</p>
              </div>
            )}
          </div>
        </Card>

        <Card>
          <h2 className="text-xl font-bold mb-4 flex items-center">
            <Palette className="w-5 h-5 mr-2" />
            Display Settings
          </h2>
          <div className="space-y-4">
            <div>
              <label className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2 block">Text Size</label>
              <div className="flex gap-2">
                {(['small', 'medium', 'large'] as const).map(size => (
                  <button
                    key={size}
                    onClick={() => updateDisplaySettings({ textSize: size })}
                    className={'px-4 py-2 rounded capitalize ' + (settings.display.textSize === size ? 'bg-primary-600 text-white' : 'bg-gray-200 text-gray-700')}
                  >
                    {size}
                  </button>
                ))}
              </div>
            </div>

            <div className="flex items-center justify-between py-3">
              <span className="text-gray-900 dark:text-white">Dark Mode</span>
              <button
                onClick={() => updateDisplaySettings({ darkMode: !settings.display.darkMode })}
                className={'relative w-12 h-6 rounded-full transition ' + (settings.display.darkMode ? 'bg-primary-600' : 'bg-gray-300')}
              >
                <div className={'absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform ' + (settings.display.darkMode ? 'translate-x-6' : 'translate-x-1')} />
              </button>
            </div>

            <div className="flex items-center justify-between py-3">
              <span className="text-gray-900 dark:text-white">Dyslexia-Friendly Font</span>
              <button
                onClick={() => updateDisplaySettings({ dyslexicFont: !settings.display.dyslexicFont })}
                className={'relative w-12 h-6 rounded-full transition ' + (settings.display.dyslexicFont ? 'bg-primary-600' : 'bg-gray-300')}
              >
                <div className={'absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform ' + (settings.display.dyslexicFont ? 'translate-x-6' : 'translate-x-1')} />
              </button>
            </div>
          </div>
        </Card>

        <Card>
          <h2 className="text-xl font-bold mb-4 flex items-center">
            <Volume2 className="w-5 h-5 mr-2" />
            Audio Settings
          </h2>
          <div className="space-y-4">
            <div className="flex items-center justify-between py-3">
              <span className="text-gray-900 dark:text-white">Voice Mode</span>
              <button
                onClick={() => updateAudioSettings({ voiceMode: !settings.audio.voiceMode })}
                className={'relative w-12 h-6 rounded-full transition ' + (settings.audio.voiceMode ? 'bg-primary-600' : 'bg-gray-300')}
              >
                <div className={'absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform ' + (settings.audio.voiceMode ? 'translate-x-6' : 'translate-x-1')} />
              </button>
            </div>

            <div>
              <label className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2 block">
                Voice Speed: {settings.audio.voiceSpeed.toFixed(1)}x
              </label>
              <input
                type="range"
                min="0.5"
                max="2"
                step="0.1"
                value={settings.audio.voiceSpeed}
                onChange={e => updateAudioSettings({ voiceSpeed: parseFloat(e.target.value) })}
                className="w-full"
              />
            </div>
          </div>
        </Card>

        <Card>
          <h2 className="text-xl font-bold mb-4 flex items-center">
            <BookOpen className="w-5 h-5 mr-2" />
            Learning Preferences
          </h2>
          <div className="space-y-4">
            <div>
              <label className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2 block">Practice Questions per Session</label>
              <div className="flex gap-2">
                {([5, 10, 15] as const).map(count => (
                  <button
                    key={count}
                    onClick={() => updateLearningSettings({ practiceQuestionCount: count })}
                    className={'px-4 py-2 rounded ' + (settings.learning.practiceQuestionCount === count ? 'bg-primary-600 text-white' : 'bg-gray-200 text-gray-700')}
                  >
                    {count}
                  </button>
                ))}
              </div>
            </div>

            <div className="flex items-center justify-between py-3">
              <span className="text-gray-900 dark:text-white">Show Hints</span>
              <button
                onClick={() => updateLearningSettings({ showHints: !settings.learning.showHints })}
                className={'relative w-12 h-6 rounded-full transition ' + (settings.learning.showHints ? 'bg-primary-600' : 'bg-gray-300')}
              >
                <div className={'absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform ' + (settings.learning.showHints ? 'translate-x-6' : 'translate-x-1')} />
              </button>
            </div>
          </div>
        </Card>

        {interests.length > 0 && (
          <Card>
            <h2 className="text-xl font-bold mb-4">Your Interests</h2>
            <div className="flex flex-wrap gap-2">
              {interests.map(ui => (
                <span
                  key={ui.id}
                  className={'px-3 py-1.5 rounded-full text-sm font-medium ' + (ui.is_primary ? 'bg-primary-600 text-white' : 'bg-primary-100 text-primary-800 dark:bg-primary-900/30 dark:text-primary-300')}
                >
                  {ui.interest?.name}
                  {ui.is_primary && ' ⭐'}
                </span>
              ))}
            </div>
          </Card>
        )}
      </main>
    </div>
  );
}
