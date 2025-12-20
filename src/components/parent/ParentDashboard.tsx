import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { storage } from '@/utils/helpers';
import Header from '../shared/Header';
import Card from '../shared/Card';
import Button from '../shared/Button';
import { AvatarDisplay } from '../avatar';
import {
  Users,
  Plus,
  Settings,
  Clock,
  Trophy,
  Flame,
  BookOpen,
  Target,
  TrendingUp,
  ChevronRight,
  BarChart3,
  Calendar
} from 'lucide-react';
import { cn } from '@/utils/helpers';
import type { ChildProfile, ParentSettings, AvatarConfig } from '@/types';
import { AVATAR_OPTIONS } from '@/types';

const defaultParentSettings: ParentSettings = {
  emailNotifications: true,
  weeklyReports: true,
  progressAlerts: true,
  contentRestrictions: 'none'
};

const defaultAvatar: AvatarConfig = {
  skinTone: AVATAR_OPTIONS.skinTones[0],
  hairStyle: 'short',
  hairColor: AVATAR_OPTIONS.hairColors[0],
  eyeStyle: 'round',
  eyeColor: AVATAR_OPTIONS.eyeColors[0],
  mouthStyle: 'smile',
  accessory: 'none',
  outfit: 'tshirt',
  outfitColor: AVATAR_OPTIONS.outfitColors[0],
  background: AVATAR_OPTIONS.backgrounds[0]
};

// Mock child data for demo
const mockChildren: ChildProfile[] = [
  {
    id: '1',
    parent_id: 'parent1',
    user_profile_id: 'user1',
    name: 'Emma',
    avatar: { ...defaultAvatar, hairStyle: 'long', outfitColor: '#E91E63', background: '#F3E5F5' },
    daily_time_limit: 60,
    progress_summary: {
      totalXP: 1250,
      currentLevel: 5,
      currentStreak: 7,
      lessonsCompleted: 15,
      quizzesPassed: 12,
      averageScore: 85,
      timeSpentToday: 25,
      lastActive: new Date().toISOString()
    }
  },
  {
    id: '2',
    parent_id: 'parent1',
    user_profile_id: 'user2',
    name: 'Lucas',
    avatar: { ...defaultAvatar, hairStyle: 'spiky', outfitColor: '#3498DB', background: '#E3F2FD' },
    daily_time_limit: 45,
    progress_summary: {
      totalXP: 850,
      currentLevel: 3,
      currentStreak: 3,
      lessonsCompleted: 8,
      quizzesPassed: 6,
      averageScore: 78,
      timeSpentToday: 15,
      lastActive: new Date(Date.now() - 86400000).toISOString()
    }
  }
];

export default function ParentDashboard() {
  useNavigate();
  useUser();
  const [children, setChildren] = useState<ChildProfile[]>([]);
  const [settings, setSettings] = useState<ParentSettings>(defaultParentSettings);
  const [selectedChild, setSelectedChild] = useState<ChildProfile | null>(null);
  const [showAddChild, setShowAddChild] = useState(false);
  const [showSettings, setShowSettings] = useState(false);

  useEffect(() => {
    // Load children from storage (or use mock data for demo)
    const savedChildren = storage.get<ChildProfile[]>('learnlit_children', mockChildren);
    setChildren(savedChildren);

    const savedSettings = storage.get<ParentSettings>('learnlit_parent_settings', defaultParentSettings);
    setSettings(savedSettings);
  }, []);

  const getTotalStats = () => {
    return {
      totalXP: children.reduce((sum, c) => sum + (c.progress_summary?.totalXP || 0), 0),
      totalLessons: children.reduce((sum, c) => sum + (c.progress_summary?.lessonsCompleted || 0), 0),
      totalQuizzes: children.reduce((sum, c) => sum + (c.progress_summary?.quizzesPassed || 0), 0),
      avgScore: children.length > 0
        ? Math.round(children.reduce((sum, c) => sum + (c.progress_summary?.averageScore || 0), 0) / children.length)
        : 0,
      totalTimeToday: children.reduce((sum, c) => sum + (c.progress_summary?.timeSpentToday || 0), 0)
    };
  };

  const stats = getTotalStats();

  const formatLastActive = (dateStr: string) => {
    const date = new Date(dateStr);
    const now = new Date();
    const diffMs = now.getTime() - date.getTime();
    const diffMins = Math.floor(diffMs / 60000);
    const diffHours = Math.floor(diffMins / 60);
    const diffDays = Math.floor(diffHours / 24);

    if (diffMins < 60) return `${diffMins}m ago`;
    if (diffHours < 24) return `${diffHours}h ago`;
    if (diffDays === 1) return 'Yesterday';
    return `${diffDays} days ago`;
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900">
      <Header
        variant="dark"
        showBackButton
        title="Parent Dashboard"
        subtitle={`Managing ${children.length} learner${children.length !== 1 ? 's' : ''}`}
        titleIcon={
          <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-indigo-500 to-purple-600 flex items-center justify-center">
            <Users className="w-5 h-5 text-white" />
          </div>
        }
        rightContent={
          <Button
            variant="ghost"
            size="sm"
            onClick={() => setShowSettings(true)}
            className="text-slate-300 hover:text-white"
          >
            <Settings className="w-5 h-5" />
          </Button>
        }
      />

      <main className="container-app py-8 max-w-6xl">
        {/* Overview Stats */}
        <div className="grid grid-cols-2 md:grid-cols-5 gap-4 mb-8">
          <Card className="bg-slate-800/50 border-slate-700 text-center">
            <Trophy className="w-8 h-8 text-amber-400 mx-auto mb-2" />
            <p className="text-2xl font-bold text-white">{stats.totalXP.toLocaleString()}</p>
            <p className="text-slate-400 text-sm">Total XP</p>
          </Card>
          <Card className="bg-slate-800/50 border-slate-700 text-center">
            <BookOpen className="w-8 h-8 text-blue-400 mx-auto mb-2" />
            <p className="text-2xl font-bold text-white">{stats.totalLessons}</p>
            <p className="text-slate-400 text-sm">Lessons</p>
          </Card>
          <Card className="bg-slate-800/50 border-slate-700 text-center">
            <Target className="w-8 h-8 text-green-400 mx-auto mb-2" />
            <p className="text-2xl font-bold text-white">{stats.totalQuizzes}</p>
            <p className="text-slate-400 text-sm">Quizzes</p>
          </Card>
          <Card className="bg-slate-800/50 border-slate-700 text-center">
            <TrendingUp className="w-8 h-8 text-purple-400 mx-auto mb-2" />
            <p className="text-2xl font-bold text-white">{stats.avgScore}%</p>
            <p className="text-slate-400 text-sm">Avg Score</p>
          </Card>
          <Card className="bg-slate-800/50 border-slate-700 text-center">
            <Clock className="w-8 h-8 text-cyan-400 mx-auto mb-2" />
            <p className="text-2xl font-bold text-white">{stats.totalTimeToday}m</p>
            <p className="text-slate-400 text-sm">Today</p>
          </Card>
        </div>

        {/* Children Grid */}
        <div className="mb-8">
          <div className="flex items-center justify-between mb-4">
            <h2 className="text-xl font-bold text-white">Your Learners</h2>
            <Button
              variant="primary"
              size="sm"
              onClick={() => setShowAddChild(true)}
              className="bg-gradient-to-r from-indigo-500 to-purple-600"
            >
              <Plus className="w-4 h-4 mr-2" />
              Add Child
            </Button>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            {children.map(child => (
              <ChildCard
                key={child.id}
                child={child}
                onSelect={() => setSelectedChild(child)}
                formatLastActive={formatLastActive}
              />
            ))}
          </div>
        </div>

        {/* Recent Activity */}
        <Card className="bg-slate-800/50 border-slate-700">
          <div className="flex items-center justify-between mb-4">
            <h3 className="text-lg font-semibold text-white flex items-center gap-2">
              <Calendar className="w-5 h-5 text-slate-400" />
              This Week's Activity
            </h3>
          </div>
          <div className="space-y-3">
            {children.map(child => (
              <div
                key={child.id}
                className="flex items-center justify-between p-3 bg-slate-700/50 rounded-lg"
              >
                <div className="flex items-center gap-3">
                  {child.avatar && (
                    <AvatarDisplay config={child.avatar} size="sm" />
                  )}
                  <span className="text-white font-medium">{child.name}</span>
                </div>
                <div className="flex items-center gap-6 text-sm">
                  <div className="text-center">
                    <p className="text-white font-bold">{child.progress_summary?.lessonsCompleted || 0}</p>
                    <p className="text-slate-400">lessons</p>
                  </div>
                  <div className="text-center">
                    <p className="text-white font-bold">{child.progress_summary?.quizzesPassed || 0}</p>
                    <p className="text-slate-400">quizzes</p>
                  </div>
                  <div className="text-center">
                    <p className="text-white font-bold">{child.progress_summary?.currentStreak || 0}</p>
                    <p className="text-slate-400">streak</p>
                  </div>
                </div>
              </div>
            ))}
          </div>
        </Card>

        {/* Settings Modal */}
        {showSettings && (
          <SettingsModal
            settings={settings}
            onSave={(newSettings) => {
              setSettings(newSettings);
              storage.set('learnlit_parent_settings', newSettings);
              setShowSettings(false);
            }}
            onClose={() => setShowSettings(false)}
          />
        )}

        {/* Child Detail Modal */}
        {selectedChild && (
          <ChildDetailModal
            child={selectedChild}
            onClose={() => setSelectedChild(null)}
            formatLastActive={formatLastActive}
          />
        )}

        {/* Add Child Modal */}
        {showAddChild && (
          <AddChildModal
            onAdd={(child) => {
              const newChildren = [...children, child];
              setChildren(newChildren);
              storage.set('learnlit_children', newChildren);
              setShowAddChild(false);
            }}
            onClose={() => setShowAddChild(false)}
          />
        )}
      </main>
    </div>
  );
}

interface ChildCardProps {
  child: ChildProfile;
  onSelect: () => void;
  formatLastActive: (date: string) => string;
}

function ChildCard({ child, onSelect, formatLastActive }: ChildCardProps) {
  const progress = child.progress_summary;
  const timeProgress = child.daily_time_limit
    ? Math.min(100, ((progress?.timeSpentToday || 0) / child.daily_time_limit) * 100)
    : 0;

  return (
    <Card
      interactive
      onClick={onSelect}
      className="bg-slate-800/50 border-slate-700 hover:border-indigo-500/50 transition-all"
    >
      <div className="flex items-start justify-between mb-4">
        <div className="flex items-center gap-3">
          {child.avatar && (
            <AvatarDisplay config={child.avatar} size="lg" />
          )}
          <div>
            <h3 className="text-lg font-semibold text-white">{child.name}</h3>
            <p className="text-slate-400 text-sm">
              Level {progress?.currentLevel || 1}
            </p>
          </div>
        </div>
        <ChevronRight className="w-5 h-5 text-slate-500" />
      </div>

      {/* Stats */}
      <div className="grid grid-cols-3 gap-3 mb-4">
        <div className="text-center p-2 bg-slate-700/50 rounded-lg">
          <Flame className="w-5 h-5 text-orange-400 mx-auto mb-1" />
          <p className="text-white font-bold">{progress?.currentStreak || 0}</p>
          <p className="text-slate-400 text-xs">streak</p>
        </div>
        <div className="text-center p-2 bg-slate-700/50 rounded-lg">
          <Trophy className="w-5 h-5 text-amber-400 mx-auto mb-1" />
          <p className="text-white font-bold">{(progress?.totalXP || 0).toLocaleString()}</p>
          <p className="text-slate-400 text-xs">XP</p>
        </div>
        <div className="text-center p-2 bg-slate-700/50 rounded-lg">
          <BarChart3 className="w-5 h-5 text-green-400 mx-auto mb-1" />
          <p className="text-white font-bold">{progress?.averageScore || 0}%</p>
          <p className="text-slate-400 text-xs">avg</p>
        </div>
      </div>

      {/* Time Progress */}
      {child.daily_time_limit && (
        <div>
          <div className="flex justify-between text-sm mb-1">
            <span className="text-slate-400">Today's time</span>
            <span className="text-white">
              {progress?.timeSpentToday || 0}m / {child.daily_time_limit}m
            </span>
          </div>
          <div className="h-2 bg-slate-700 rounded-full overflow-hidden">
            <div
              className={cn(
                "h-full rounded-full transition-all",
                timeProgress >= 100 ? "bg-green-500" : "bg-indigo-500"
              )}
              style={{ width: `${timeProgress}%` }}
            />
          </div>
        </div>
      )}

      {/* Last Active */}
      <p className="text-slate-500 text-xs mt-3">
        Last active: {progress?.lastActive ? formatLastActive(progress.lastActive) : 'Never'}
      </p>
    </Card>
  );
}

interface SettingsModalProps {
  settings: ParentSettings;
  onSave: (settings: ParentSettings) => void;
  onClose: () => void;
}

function SettingsModal({ settings, onSave, onClose }: SettingsModalProps) {
  const [localSettings, setLocalSettings] = useState(settings);

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/60 backdrop-blur-sm">
      <Card className="bg-slate-800 border-slate-700 max-w-md w-full max-h-[90vh] overflow-y-auto">
        <h2 className="text-xl font-bold text-white mb-6 flex items-center gap-2">
          <Settings className="w-5 h-5" />
          Parent Settings
        </h2>

        <div className="space-y-4">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-white font-medium">Email Notifications</p>
              <p className="text-slate-400 text-sm">Get updates about your children's progress</p>
            </div>
            <button
              onClick={() => setLocalSettings(prev => ({ ...prev, emailNotifications: !prev.emailNotifications }))}
              className={cn(
                "relative w-12 h-6 rounded-full transition",
                localSettings.emailNotifications ? "bg-indigo-600" : "bg-slate-600"
              )}
            >
              <div className={cn(
                "absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform",
                localSettings.emailNotifications ? "translate-x-6" : "translate-x-1"
              )} />
            </button>
          </div>

          <div className="flex items-center justify-between">
            <div>
              <p className="text-white font-medium">Weekly Reports</p>
              <p className="text-slate-400 text-sm">Receive weekly progress summaries</p>
            </div>
            <button
              onClick={() => setLocalSettings(prev => ({ ...prev, weeklyReports: !prev.weeklyReports }))}
              className={cn(
                "relative w-12 h-6 rounded-full transition",
                localSettings.weeklyReports ? "bg-indigo-600" : "bg-slate-600"
              )}
            >
              <div className={cn(
                "absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform",
                localSettings.weeklyReports ? "translate-x-6" : "translate-x-1"
              )} />
            </button>
          </div>

          <div className="flex items-center justify-between">
            <div>
              <p className="text-white font-medium">Progress Alerts</p>
              <p className="text-slate-400 text-sm">Get notified of achievements and milestones</p>
            </div>
            <button
              onClick={() => setLocalSettings(prev => ({ ...prev, progressAlerts: !prev.progressAlerts }))}
              className={cn(
                "relative w-12 h-6 rounded-full transition",
                localSettings.progressAlerts ? "bg-indigo-600" : "bg-slate-600"
              )}
            >
              <div className={cn(
                "absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform",
                localSettings.progressAlerts ? "translate-x-6" : "translate-x-1"
              )} />
            </button>
          </div>

          <div>
            <p className="text-white font-medium mb-2">Content Restrictions</p>
            <div className="flex gap-2">
              {(['none', 'moderate', 'strict'] as const).map(level => (
                <button
                  key={level}
                  onClick={() => setLocalSettings(prev => ({ ...prev, contentRestrictions: level }))}
                  className={cn(
                    "flex-1 py-2 rounded-lg capitalize transition-colors",
                    localSettings.contentRestrictions === level
                      ? "bg-indigo-600 text-white"
                      : "bg-slate-700 text-slate-300 hover:bg-slate-600"
                  )}
                >
                  {level}
                </button>
              ))}
            </div>
          </div>
        </div>

        <div className="flex gap-3 mt-6">
          <Button variant="secondary" onClick={onClose} className="flex-1 bg-slate-700 border-slate-600">
            Cancel
          </Button>
          <Button
            variant="primary"
            onClick={() => onSave(localSettings)}
            className="flex-1 bg-gradient-to-r from-indigo-500 to-purple-600"
          >
            Save Settings
          </Button>
        </div>
      </Card>
    </div>
  );
}

interface ChildDetailModalProps {
  child: ChildProfile;
  onClose: () => void;
  formatLastActive: (date: string) => string;
}

function ChildDetailModal({ child, onClose, formatLastActive }: ChildDetailModalProps) {
  const progress = child.progress_summary;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/60 backdrop-blur-sm">
      <Card className="bg-slate-800 border-slate-700 max-w-lg w-full max-h-[90vh] overflow-y-auto">
        {/* Header */}
        <div className="flex items-center gap-4 mb-6">
          {child.avatar && (
            <AvatarDisplay config={child.avatar} size="xl" />
          )}
          <div>
            <h2 className="text-2xl font-bold text-white">{child.name}</h2>
            <p className="text-slate-400">Level {progress?.currentLevel || 1} Learner</p>
            <p className="text-slate-500 text-sm">
              Last active: {progress?.lastActive ? formatLastActive(progress.lastActive) : 'Never'}
            </p>
          </div>
        </div>

        {/* Stats Grid */}
        <div className="grid grid-cols-2 gap-4 mb-6">
          <div className="p-4 bg-slate-700/50 rounded-xl text-center">
            <Trophy className="w-8 h-8 text-amber-400 mx-auto mb-2" />
            <p className="text-2xl font-bold text-white">{(progress?.totalXP || 0).toLocaleString()}</p>
            <p className="text-slate-400">Total XP</p>
          </div>
          <div className="p-4 bg-slate-700/50 rounded-xl text-center">
            <Flame className="w-8 h-8 text-orange-400 mx-auto mb-2" />
            <p className="text-2xl font-bold text-white">{progress?.currentStreak || 0} days</p>
            <p className="text-slate-400">Current Streak</p>
          </div>
          <div className="p-4 bg-slate-700/50 rounded-xl text-center">
            <BookOpen className="w-8 h-8 text-blue-400 mx-auto mb-2" />
            <p className="text-2xl font-bold text-white">{progress?.lessonsCompleted || 0}</p>
            <p className="text-slate-400">Lessons</p>
          </div>
          <div className="p-4 bg-slate-700/50 rounded-xl text-center">
            <Target className="w-8 h-8 text-green-400 mx-auto mb-2" />
            <p className="text-2xl font-bold text-white">{progress?.averageScore || 0}%</p>
            <p className="text-slate-400">Avg Score</p>
          </div>
        </div>

        {/* Time Limit Setting */}
        <div className="p-4 bg-slate-700/50 rounded-xl mb-6">
          <div className="flex items-center justify-between">
            <div className="flex items-center gap-2">
              <Clock className="w-5 h-5 text-cyan-400" />
              <span className="text-white font-medium">Daily Time Limit</span>
            </div>
            <span className="text-white font-bold">{child.daily_time_limit || 'No limit'} min</span>
          </div>
          {child.daily_time_limit && (
            <div className="mt-3">
              <div className="flex justify-between text-sm mb-1">
                <span className="text-slate-400">Today's progress</span>
                <span className="text-slate-300">
                  {progress?.timeSpentToday || 0} / {child.daily_time_limit} min
                </span>
              </div>
              <div className="h-3 bg-slate-600 rounded-full overflow-hidden">
                <div
                  className="h-full bg-gradient-to-r from-cyan-500 to-blue-500 rounded-full"
                  style={{
                    width: `${Math.min(100, ((progress?.timeSpentToday || 0) / child.daily_time_limit) * 100)}%`
                  }}
                />
              </div>
            </div>
          )}
        </div>

        <Button
          variant="secondary"
          onClick={onClose}
          fullWidth
          className="bg-slate-700 border-slate-600"
        >
          Close
        </Button>
      </Card>
    </div>
  );
}

interface AddChildModalProps {
  onAdd: (child: ChildProfile) => void;
  onClose: () => void;
}

function AddChildModal({ onAdd, onClose }: AddChildModalProps) {
  const [name, setName] = useState('');
  const [timeLimit, setTimeLimit] = useState(60);

  const handleAdd = () => {
    if (!name.trim()) return;

    const newChild: ChildProfile = {
      id: Date.now().toString(),
      parent_id: 'parent1',
      user_profile_id: `user_${Date.now()}`,
      name: name.trim(),
      avatar: {
        ...defaultAvatar,
        outfitColor: AVATAR_OPTIONS.outfitColors[Math.floor(Math.random() * AVATAR_OPTIONS.outfitColors.length)],
        background: AVATAR_OPTIONS.backgrounds[Math.floor(Math.random() * AVATAR_OPTIONS.backgrounds.length)]
      },
      daily_time_limit: timeLimit,
      progress_summary: {
        totalXP: 0,
        currentLevel: 1,
        currentStreak: 0,
        lessonsCompleted: 0,
        quizzesPassed: 0,
        averageScore: 0,
        timeSpentToday: 0,
        lastActive: new Date().toISOString()
      }
    };

    onAdd(newChild);
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/60 backdrop-blur-sm">
      <Card className="bg-slate-800 border-slate-700 max-w-md w-full">
        <h2 className="text-xl font-bold text-white mb-6 flex items-center gap-2">
          <Plus className="w-5 h-5" />
          Add a Learner
        </h2>

        <div className="space-y-4">
          <div>
            <label className="text-slate-300 text-sm mb-2 block">Child's Name</label>
            <input
              type="text"
              value={name}
              onChange={e => setName(e.target.value)}
              placeholder="Enter name"
              className="w-full px-4 py-3 bg-slate-700 border border-slate-600 rounded-lg text-white placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-indigo-500"
            />
          </div>

          <div>
            <label className="text-slate-300 text-sm mb-2 block">
              Daily Time Limit (minutes)
            </label>
            <input
              type="range"
              min="15"
              max="120"
              step="15"
              value={timeLimit}
              onChange={e => setTimeLimit(Number(e.target.value))}
              className="w-full"
            />
            <div className="flex justify-between text-slate-400 text-sm">
              <span>15 min</span>
              <span className="text-white font-bold">{timeLimit} min</span>
              <span>120 min</span>
            </div>
          </div>
        </div>

        <div className="flex gap-3 mt-6">
          <Button variant="secondary" onClick={onClose} className="flex-1 bg-slate-700 border-slate-600">
            Cancel
          </Button>
          <Button
            variant="primary"
            onClick={handleAdd}
            disabled={!name.trim()}
            className="flex-1 bg-gradient-to-r from-indigo-500 to-purple-600"
          >
            Add Learner
          </Button>
        </div>
      </Card>
    </div>
  );
}
