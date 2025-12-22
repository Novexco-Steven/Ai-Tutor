import { useState, useEffect } from 'react';
import { useUser } from '@/contexts/UserContext';
import { useSettings } from '@/contexts/SettingsContext';
import { usePWA } from '@/contexts/PWAContext';
import Card from '../shared/Card';
import Header from '../shared/Header';
import ProfileEditor from './ProfileEditor';
import SubscriptionSettings from './SubscriptionSettings';
import { Palette, Volume2, BookOpen, Brain, Bell, BellOff, Clock, CreditCard, Mic, Loader2 } from 'lucide-react';
import { getActiveVoiceTeachers } from '@/services/voiceTeacher';
import { speakText, isTTSAvailable, getVoicePreviewText } from '@/services/googleTTS';
import type { VoiceTeacher } from '@/types';

export default function SettingsScreen() {
  const { interests } = useUser();
  const { settings, updateDisplaySettings, updateAudioSettings, updateLearningSettings, updateNotificationSettings } = useSettings();
  const { notificationsSupported, notificationPermission, requestNotifications } = usePWA();

  // Voice teacher state
  const [voiceTeachers, setVoiceTeachers] = useState<VoiceTeacher[]>([]);
  const [selectedTeacher, setSelectedTeacher] = useState<VoiceTeacher | null>(null);
  const [loadingVoiceTeachers, setLoadingVoiceTeachers] = useState(true);
  const [previewingVoice, setPreviewingVoice] = useState(false);

  // Load voice teachers
  useEffect(() => {
    loadVoiceTeachers();
  }, []);

  // Load selected teacher when settings change
  useEffect(() => {
    if (settings.audio.defaultVoiceTeacherId && voiceTeachers.length > 0) {
      const teacher = voiceTeachers.find(t => t.id === settings.audio.defaultVoiceTeacherId);
      if (teacher) {
        setSelectedTeacher(teacher);
      }
    }
  }, [settings.audio.defaultVoiceTeacherId, voiceTeachers]);

  const loadVoiceTeachers = async () => {
    try {
      setLoadingVoiceTeachers(true);
      const teachers = await getActiveVoiceTeachers();
      setVoiceTeachers(teachers);

      // Set initial selection
      if (settings.audio.defaultVoiceTeacherId) {
        const teacher = teachers.find(t => t.id === settings.audio.defaultVoiceTeacherId);
        setSelectedTeacher(teacher || teachers.find(t => t.is_default) || teachers[0] || null);
      } else {
        setSelectedTeacher(teachers.find(t => t.is_default) || teachers[0] || null);
      }
    } catch (err) {
      console.error('Failed to load voice teachers:', err);
    } finally {
      setLoadingVoiceTeachers(false);
    }
  };

  const handleVoiceTeacherChange = (teacherId: string) => {
    const teacher = voiceTeachers.find(t => t.id === teacherId);
    if (teacher) {
      setSelectedTeacher(teacher);
      updateAudioSettings({ defaultVoiceTeacherId: teacherId });
    }
  };

  const handlePreviewVoice = async () => {
    if (!selectedTeacher || !isTTSAvailable()) return;

    try {
      setPreviewingVoice(true);
      const previewText = getVoicePreviewText(selectedTeacher);
      await speakText(previewText, selectedTeacher);
    } catch (err) {
      console.error('Preview failed:', err);
    } finally {
      setPreviewingVoice(false);
    }
  };

  const notificationSettings = settings.notifications || {
    enabled: false,
    streakReminders: true,
    reviewReminders: true,
    achievements: true,
    dailyGoals: true,
    streakReminderHour: 18,
    reviewReminderHour: 10,
  };

  const handleEnableNotifications = async () => {
    if (notificationPermission !== 'granted') {
      const permission = await requestNotifications();
      if (permission === 'granted') {
        updateNotificationSettings({ enabled: true });
      }
    } else {
      updateNotificationSettings({ enabled: !notificationSettings.enabled });
    }
  };

  const formatHour = (hour: number) => {
    const period = hour >= 12 ? 'PM' : 'AM';
    const displayHour = hour === 0 ? 12 : hour > 12 ? hour - 12 : hour;
    return `${displayHour}:00 ${period}`;
  };

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      <Header
        showBackButton
        title="Settings"
        showGradeBadge
        showDifficultySlider
        showThemeToggle
        showVoiceToggle
      />

      <main className="container-app py-8 max-w-2xl space-y-6">
        {/* Profile Editor - Expandable/Collapsible */}
        <ProfileEditor />

        {/* Subscription & Billing */}
        <div>
          <h2 className="text-xl font-bold mb-4 flex items-center text-gray-900 dark:text-white">
            <CreditCard className="w-5 h-5 mr-2" />
            Subscription & Billing
          </h2>
          <SubscriptionSettings />
        </div>

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

            {/* Voice Teacher Selection */}
            {voiceTeachers.length > 0 && (
              <div className="border-t border-gray-200 dark:border-gray-700 pt-4">
                <div className="flex items-center gap-2 mb-3">
                  <Mic className="w-4 h-4 text-gray-500" />
                  <label className="text-sm font-medium text-gray-700 dark:text-gray-300">
                    Default Voice Teacher
                  </label>
                </div>
                <p className="text-sm text-gray-500 dark:text-gray-400 mb-3">
                  Choose the voice that reads content aloud in the curriculum
                </p>

                {loadingVoiceTeachers ? (
                  <div className="flex items-center gap-2 text-gray-500">
                    <Loader2 className="w-4 h-4 animate-spin" />
                    <span>Loading voices...</span>
                  </div>
                ) : (
                  <div className="space-y-2">
                    {voiceTeachers.map((teacher) => (
                      <button
                        key={teacher.id}
                        onClick={() => handleVoiceTeacherChange(teacher.id)}
                        className={`w-full p-3 rounded-lg border-2 transition-all text-left flex items-center gap-3 ${
                          selectedTeacher?.id === teacher.id
                            ? 'border-primary-500 bg-primary-50 dark:bg-primary-900/20'
                            : 'border-gray-200 dark:border-gray-700 hover:border-gray-300 dark:hover:border-gray-600'
                        }`}
                      >
                        <div
                          className="w-10 h-10 rounded-lg flex items-center justify-center text-xl flex-shrink-0"
                          style={{ backgroundColor: `${teacher.color || '#3b82f6'}20` }}
                        >
                          {teacher.icon || '🎙️'}
                        </div>
                        <div className="flex-1 min-w-0">
                          <div className="flex items-center gap-2">
                            <span className="font-medium text-gray-900 dark:text-white">
                              {teacher.name}
                            </span>
                            {teacher.is_default && (
                              <span className="text-xs px-1.5 py-0.5 bg-green-100 text-green-700 dark:bg-green-900/30 dark:text-green-400 rounded">
                                Default
                              </span>
                            )}
                          </div>
                          {teacher.target_audience && (
                            <p className="text-xs text-gray-500 dark:text-gray-400 truncate">
                              For: {teacher.target_audience}
                            </p>
                          )}
                        </div>
                        {selectedTeacher?.id === teacher.id && (
                          <div className="w-5 h-5 rounded-full bg-primary-500 flex items-center justify-center flex-shrink-0">
                            <svg className="w-3 h-3 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={3} d="M5 13l4 4L19 7" />
                            </svg>
                          </div>
                        )}
                      </button>
                    ))}

                    {/* Preview Button */}
                    {selectedTeacher && isTTSAvailable() && (
                      <button
                        onClick={handlePreviewVoice}
                        disabled={previewingVoice}
                        className="w-full mt-2 py-2 px-4 bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-300 rounded-lg hover:bg-gray-200 dark:hover:bg-gray-600 transition-colors flex items-center justify-center gap-2 disabled:opacity-50"
                      >
                        {previewingVoice ? (
                          <>
                            <Loader2 className="w-4 h-4 animate-spin" />
                            <span>Playing...</span>
                          </>
                        ) : (
                          <>
                            <Volume2 className="w-4 h-4" />
                            <span>Preview {selectedTeacher.name}</span>
                          </>
                        )}
                      </button>
                    )}
                  </div>
                )}
              </div>
            )}
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

            <div className="border-t border-gray-200 dark:border-gray-700 pt-4">
              <div className="flex items-center justify-between py-3">
                <div className="flex items-center gap-3">
                  <div className="w-10 h-10 rounded-lg bg-purple-100 dark:bg-purple-900/30 flex items-center justify-center">
                    <Brain className="w-5 h-5 text-purple-600 dark:text-purple-400" />
                  </div>
                  <div>
                    <span className="text-gray-900 dark:text-white font-medium">Socratic Mode</span>
                    <p className="text-sm text-gray-500 dark:text-gray-400">
                      {settings.learning.socraticMode
                        ? "Guides you with questions to discover answers"
                        : "Shows direct feedback on your answers"}
                    </p>
                  </div>
                </div>
                <button
                  onClick={() => updateLearningSettings({ socraticMode: !settings.learning.socraticMode })}
                  className={'relative w-12 h-6 rounded-full transition ' + (settings.learning.socraticMode ? 'bg-purple-600' : 'bg-gray-300')}
                >
                  <div className={'absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform ' + (settings.learning.socraticMode ? 'translate-x-6' : 'translate-x-1')} />
                </button>
              </div>
            </div>
          </div>
        </Card>

        {/* Notification Settings */}
        {notificationsSupported && (
          <Card>
            <h2 className="text-xl font-bold mb-4 flex items-center">
              <Bell className="w-5 h-5 mr-2" />
              Notification Settings
            </h2>
            <div className="space-y-4">
              {/* Permission/Enable Toggle */}
              <div className="flex items-center justify-between py-3">
                <div className="flex items-center gap-3">
                  {notificationSettings.enabled ? (
                    <Bell className="w-5 h-5 text-primary-600" />
                  ) : (
                    <BellOff className="w-5 h-5 text-gray-400" />
                  )}
                  <div>
                    <span className="text-gray-900 dark:text-white font-medium">Enable Notifications</span>
                    <p className="text-sm text-gray-500 dark:text-gray-400">
                      {notificationPermission === 'denied'
                        ? 'Notifications blocked - enable in browser settings'
                        : notificationPermission === 'granted'
                          ? 'Get reminders for streaks and reviews'
                          : 'Allow notifications to receive reminders'}
                    </p>
                  </div>
                </div>
                <button
                  onClick={handleEnableNotifications}
                  disabled={notificationPermission === 'denied'}
                  className={'relative w-12 h-6 rounded-full transition disabled:opacity-50 ' + (notificationSettings.enabled && notificationPermission === 'granted' ? 'bg-primary-600' : 'bg-gray-300')}
                >
                  <div className={'absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform ' + (notificationSettings.enabled && notificationPermission === 'granted' ? 'translate-x-6' : 'translate-x-1')} />
                </button>
              </div>

              {/* Notification Types */}
              {notificationSettings.enabled && notificationPermission === 'granted' && (
                <>
                  <div className="border-t border-gray-200 dark:border-gray-700 pt-4 space-y-4">
                    <div className="flex items-center justify-between py-2">
                      <span className="text-gray-900 dark:text-white">Streak Reminders</span>
                      <button
                        onClick={() => updateNotificationSettings({ streakReminders: !notificationSettings.streakReminders })}
                        className={'relative w-12 h-6 rounded-full transition ' + (notificationSettings.streakReminders ? 'bg-primary-600' : 'bg-gray-300')}
                      >
                        <div className={'absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform ' + (notificationSettings.streakReminders ? 'translate-x-6' : 'translate-x-1')} />
                      </button>
                    </div>

                    <div className="flex items-center justify-between py-2">
                      <span className="text-gray-900 dark:text-white">Review Reminders</span>
                      <button
                        onClick={() => updateNotificationSettings({ reviewReminders: !notificationSettings.reviewReminders })}
                        className={'relative w-12 h-6 rounded-full transition ' + (notificationSettings.reviewReminders ? 'bg-primary-600' : 'bg-gray-300')}
                      >
                        <div className={'absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform ' + (notificationSettings.reviewReminders ? 'translate-x-6' : 'translate-x-1')} />
                      </button>
                    </div>

                    <div className="flex items-center justify-between py-2">
                      <span className="text-gray-900 dark:text-white">Achievement Alerts</span>
                      <button
                        onClick={() => updateNotificationSettings({ achievements: !notificationSettings.achievements })}
                        className={'relative w-12 h-6 rounded-full transition ' + (notificationSettings.achievements ? 'bg-primary-600' : 'bg-gray-300')}
                      >
                        <div className={'absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform ' + (notificationSettings.achievements ? 'translate-x-6' : 'translate-x-1')} />
                      </button>
                    </div>

                    <div className="flex items-center justify-between py-2">
                      <span className="text-gray-900 dark:text-white">Daily Goal Alerts</span>
                      <button
                        onClick={() => updateNotificationSettings({ dailyGoals: !notificationSettings.dailyGoals })}
                        className={'relative w-12 h-6 rounded-full transition ' + (notificationSettings.dailyGoals ? 'bg-primary-600' : 'bg-gray-300')}
                      >
                        <div className={'absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform ' + (notificationSettings.dailyGoals ? 'translate-x-6' : 'translate-x-1')} />
                      </button>
                    </div>
                  </div>

                  {/* Reminder Times */}
                  <div className="border-t border-gray-200 dark:border-gray-700 pt-4 space-y-4">
                    <div className="flex items-center gap-2 text-gray-600 dark:text-gray-400">
                      <Clock className="w-4 h-4" />
                      <span className="text-sm font-medium">Reminder Times</span>
                    </div>

                    {notificationSettings.streakReminders && (
                      <div>
                        <label className="text-sm text-gray-700 dark:text-gray-300 mb-2 block">
                          Streak Reminder: {formatHour(notificationSettings.streakReminderHour)}
                        </label>
                        <input
                          type="range"
                          min="0"
                          max="23"
                          value={notificationSettings.streakReminderHour}
                          onChange={e => updateNotificationSettings({ streakReminderHour: parseInt(e.target.value) })}
                          className="w-full"
                        />
                      </div>
                    )}

                    {notificationSettings.reviewReminders && (
                      <div>
                        <label className="text-sm text-gray-700 dark:text-gray-300 mb-2 block">
                          Review Reminder: {formatHour(notificationSettings.reviewReminderHour)}
                        </label>
                        <input
                          type="range"
                          min="0"
                          max="23"
                          value={notificationSettings.reviewReminderHour}
                          onChange={e => updateNotificationSettings({ reviewReminderHour: parseInt(e.target.value) })}
                          className="w-full"
                        />
                      </div>
                    )}
                  </div>
                </>
              )}
            </div>
          </Card>
        )}

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
