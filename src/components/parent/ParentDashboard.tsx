import { useState, useEffect, useCallback } from 'react';
import { useAuth } from '@/contexts/AuthContext';
import { useNotification } from '@/contexts/NotificationContext';
import { db } from '@/services/supabase';
import { storage } from '@/utils/helpers';
import Header from '../shared/Header';
import Card from '../shared/Card';
import Button from '../shared/Button';
import Modal from '../shared/Modal';
import Loading from '../shared/Loading';
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
  Calendar,
  Mail,
  AlertCircle,
  UserPlus
} from 'lucide-react';
import { cn } from '@/utils/helpers';
import type { ParentSettings, AvatarConfig } from '@/types';

// Types for database data
interface ChildData {
  child_id: string;
  child_name: string;
  child_email: string;
  child_avatar: AvatarConfig | null;
  relationship: string;
  daily_time_limit: number;
  status: string;
  total_xp: number;
  current_level: number;
  current_streak: number;
  lessons_completed: number;
  quizzes_passed: number;
  avg_score: number;
}

interface ChildWithStudyTime extends ChildData {
  timeSpentToday: number;
}

const defaultParentSettings: ParentSettings = {
  emailNotifications: true,
  weeklyReports: true,
  progressAlerts: true,
  contentRestrictions: 'none'
};

export default function ParentDashboard() {
  const { user } = useAuth();
  const { success, error: showError } = useNotification();

  const [children, setChildren] = useState<ChildWithStudyTime[]>([]);
  const [settings, setSettings] = useState<ParentSettings>(defaultParentSettings);
  const [selectedChild, setSelectedChild] = useState<ChildWithStudyTime | null>(null);
  const [showAddChild, setShowAddChild] = useState(false);
  const [showSettings, setShowSettings] = useState(false);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const loadChildren = useCallback(async () => {
    if (!user?.id) return;

    try {
      setLoading(true);
      setError(null);

      // Fetch children using the RPC function
      const childrenData = await db.getChildrenForParent(user.id);

      // Fetch study time for each child
      const childrenWithTime = await Promise.all(
        childrenData.map(async (child: ChildData) => {
          const timeSpentToday = await db.getChildStudyTimeToday(child.child_id);
          return { ...child, timeSpentToday };
        })
      );

      setChildren(childrenWithTime);
    } catch (err) {
      console.error('Failed to load children:', err);
      setError('Failed to load children. Please try again.');
    } finally {
      setLoading(false);
    }
  }, [user?.id]);

  useEffect(() => {
    loadChildren();

    const savedSettings = storage.get<ParentSettings>('learnlit_parent_settings', defaultParentSettings);
    setSettings(savedSettings);
  }, [loadChildren]);

  const getTotalStats = () => {
    return {
      totalXP: children.reduce((sum, c) => sum + (c.total_xp || 0), 0),
      totalLessons: children.reduce((sum, c) => sum + (c.lessons_completed || 0), 0),
      totalQuizzes: children.reduce((sum, c) => sum + (c.quizzes_passed || 0), 0),
      avgScore: children.length > 0
        ? Math.round(children.reduce((sum, c) => sum + (c.avg_score || 0), 0) / children.length)
        : 0,
      totalTimeToday: children.reduce((sum, c) => sum + (c.timeSpentToday || 0), 0)
    };
  };

  const stats = getTotalStats();

  const handleInviteChild = async (email: string) => {
    if (!user?.id) return;

    try {
      await db.inviteChildByEmail(user.id, email);
      success('Invitation sent!', `An invitation has been sent to ${email}`);
      setShowAddChild(false);
      loadChildren();
    } catch (err: unknown) {
      const errorMessage = err instanceof Error ? err.message : 'Failed to send invitation';
      showError('Invitation failed', errorMessage);
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 flex items-center justify-center">
        <Loading fullScreen />
      </div>
    );
  }

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
        {error && (
          <Card className="bg-red-900/20 border-red-800 mb-6">
            <div className="flex items-center gap-3 text-red-400">
              <AlertCircle className="w-5 h-5" />
              <p>{error}</p>
              <Button
                variant="ghost"
                size="sm"
                onClick={loadChildren}
                className="ml-auto text-red-400 hover:text-red-300"
              >
                Retry
              </Button>
            </div>
          </Card>
        )}

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

          {children.length === 0 ? (
            <EmptyState onAddChild={() => setShowAddChild(true)} />
          ) : (
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
              {children.map(child => (
                <ChildCard
                  key={child.child_id}
                  child={child}
                  onSelect={() => setSelectedChild(child)}
                />
              ))}
            </div>
          )}
        </div>

        {/* Recent Activity */}
        {children.length > 0 && (
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
                  key={child.child_id}
                  className="flex items-center justify-between p-3 bg-slate-700/50 rounded-lg"
                >
                  <div className="flex items-center gap-3">
                    {child.child_avatar ? (
                      <AvatarDisplay config={child.child_avatar} size="sm" />
                    ) : (
                      <div className="w-8 h-8 rounded-full bg-slate-600 flex items-center justify-center">
                        <Users className="w-4 h-4 text-slate-400" />
                      </div>
                    )}
                    <span className="text-white font-medium">{child.child_name}</span>
                  </div>
                  <div className="flex items-center gap-6 text-sm">
                    <div className="text-center">
                      <p className="text-white font-bold">{child.lessons_completed || 0}</p>
                      <p className="text-slate-400">lessons</p>
                    </div>
                    <div className="text-center">
                      <p className="text-white font-bold">{child.quizzes_passed || 0}</p>
                      <p className="text-slate-400">quizzes</p>
                    </div>
                    <div className="text-center">
                      <p className="text-white font-bold">{child.current_streak || 0}</p>
                      <p className="text-slate-400">streak</p>
                    </div>
                  </div>
                </div>
              ))}
            </div>
          </Card>
        )}

        {/* Settings Modal */}
        <Modal
          isOpen={showSettings}
          onClose={() => setShowSettings(false)}
          title="Parent Settings"
          size="md"
        >
          <SettingsModalContent
            settings={settings}
            onSave={(newSettings) => {
              setSettings(newSettings);
              storage.set('learnlit_parent_settings', newSettings);
              setShowSettings(false);
              success('Settings saved', 'Your preferences have been updated.');
            }}
            onClose={() => setShowSettings(false)}
          />
        </Modal>

        {/* Child Detail Modal */}
        <Modal
          isOpen={!!selectedChild}
          onClose={() => setSelectedChild(null)}
          title={selectedChild?.child_name || 'Learner Details'}
          size="lg"
        >
          {selectedChild && (
            <ChildDetailModalContent
              child={selectedChild}
              onClose={() => setSelectedChild(null)}
            />
          )}
        </Modal>

        {/* Add Child Modal */}
        <Modal
          isOpen={showAddChild}
          onClose={() => setShowAddChild(false)}
          title="Add a Learner"
          size="md"
        >
          <AddChildModalContent
            onInvite={handleInviteChild}
            onClose={() => setShowAddChild(false)}
          />
        </Modal>
      </main>
    </div>
  );
}

function EmptyState({ onAddChild }: { onAddChild: () => void }) {
  return (
    <Card className="bg-slate-800/50 border-slate-700 text-center py-12">
      <div className="w-16 h-16 rounded-full bg-indigo-500/20 flex items-center justify-center mx-auto mb-4">
        <UserPlus className="w-8 h-8 text-indigo-400" />
      </div>
      <h3 className="text-xl font-semibold text-white mb-2">No learners yet</h3>
      <p className="text-slate-400 mb-6 max-w-md mx-auto">
        Link your children's accounts to track their progress, set time limits, and stay involved in their learning journey.
      </p>
      <Button
        variant="primary"
        onClick={onAddChild}
        className="bg-gradient-to-r from-indigo-500 to-purple-600"
      >
        <Plus className="w-4 h-4 mr-2" />
        Add Your First Learner
      </Button>
    </Card>
  );
}

interface ChildCardProps {
  child: ChildWithStudyTime;
  onSelect: () => void;
}

function ChildCard({ child, onSelect }: ChildCardProps) {
  const timeProgress = child.daily_time_limit
    ? Math.min(100, ((child.timeSpentToday || 0) / child.daily_time_limit) * 100)
    : 0;

  return (
    <Card
      interactive
      onClick={onSelect}
      className="bg-slate-800/50 border-slate-700 hover:border-indigo-500/50 transition-all"
    >
      <div className="flex items-start justify-between mb-4">
        <div className="flex items-center gap-3">
          {child.child_avatar ? (
            <AvatarDisplay config={child.child_avatar} size="lg" />
          ) : (
            <div className="w-12 h-12 rounded-full bg-slate-600 flex items-center justify-center">
              <Users className="w-6 h-6 text-slate-400" />
            </div>
          )}
          <div>
            <h3 className="text-lg font-semibold text-white">{child.child_name}</h3>
            <p className="text-slate-400 text-sm">
              Level {child.current_level || 1}
            </p>
          </div>
        </div>
        <ChevronRight className="w-5 h-5 text-slate-500" />
      </div>

      {/* Stats */}
      <div className="grid grid-cols-3 gap-3 mb-4">
        <div className="text-center p-2 bg-slate-700/50 rounded-lg">
          <Flame className="w-5 h-5 text-orange-400 mx-auto mb-1" />
          <p className="text-white font-bold">{child.current_streak || 0}</p>
          <p className="text-slate-400 text-xs">streak</p>
        </div>
        <div className="text-center p-2 bg-slate-700/50 rounded-lg">
          <Trophy className="w-5 h-5 text-amber-400 mx-auto mb-1" />
          <p className="text-white font-bold">{(child.total_xp || 0).toLocaleString()}</p>
          <p className="text-slate-400 text-xs">XP</p>
        </div>
        <div className="text-center p-2 bg-slate-700/50 rounded-lg">
          <BarChart3 className="w-5 h-5 text-green-400 mx-auto mb-1" />
          <p className="text-white font-bold">{Math.round(child.avg_score || 0)}%</p>
          <p className="text-slate-400 text-xs">avg</p>
        </div>
      </div>

      {/* Time Progress */}
      {child.daily_time_limit && (
        <div>
          <div className="flex justify-between text-sm mb-1">
            <span className="text-slate-400">Today's time</span>
            <span className="text-white">
              {child.timeSpentToday || 0}m / {child.daily_time_limit}m
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
    </Card>
  );
}

interface SettingsModalContentProps {
  settings: ParentSettings;
  onSave: (settings: ParentSettings) => void;
  onClose: () => void;
}

function SettingsModalContent({ settings, onSave, onClose }: SettingsModalContentProps) {
  const [localSettings, setLocalSettings] = useState(settings);

  return (
    <div className="space-y-6">
      <div className="space-y-4">
        <div className="flex items-center justify-between">
          <div>
            <p className="text-gray-900 dark:text-white font-medium">Email Notifications</p>
            <p className="text-gray-500 dark:text-slate-400 text-sm">Get updates about your children's progress</p>
          </div>
          <button
            onClick={() => setLocalSettings(prev => ({ ...prev, emailNotifications: !prev.emailNotifications }))}
            className={cn(
              "relative w-12 h-6 rounded-full transition",
              localSettings.emailNotifications ? "bg-indigo-600" : "bg-gray-300 dark:bg-slate-600"
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
            <p className="text-gray-900 dark:text-white font-medium">Weekly Reports</p>
            <p className="text-gray-500 dark:text-slate-400 text-sm">Receive weekly progress summaries</p>
          </div>
          <button
            onClick={() => setLocalSettings(prev => ({ ...prev, weeklyReports: !prev.weeklyReports }))}
            className={cn(
              "relative w-12 h-6 rounded-full transition",
              localSettings.weeklyReports ? "bg-indigo-600" : "bg-gray-300 dark:bg-slate-600"
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
            <p className="text-gray-900 dark:text-white font-medium">Progress Alerts</p>
            <p className="text-gray-500 dark:text-slate-400 text-sm">Get notified of achievements and milestones</p>
          </div>
          <button
            onClick={() => setLocalSettings(prev => ({ ...prev, progressAlerts: !prev.progressAlerts }))}
            className={cn(
              "relative w-12 h-6 rounded-full transition",
              localSettings.progressAlerts ? "bg-indigo-600" : "bg-gray-300 dark:bg-slate-600"
            )}
          >
            <div className={cn(
              "absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform",
              localSettings.progressAlerts ? "translate-x-6" : "translate-x-1"
            )} />
          </button>
        </div>

        <div>
          <p className="text-gray-900 dark:text-white font-medium mb-2">Content Restrictions</p>
          <div className="flex gap-2">
            {(['none', 'moderate', 'strict'] as const).map(level => (
              <button
                key={level}
                onClick={() => setLocalSettings(prev => ({ ...prev, contentRestrictions: level }))}
                className={cn(
                  "flex-1 py-2 rounded-lg capitalize transition-colors",
                  localSettings.contentRestrictions === level
                    ? "bg-indigo-600 text-white"
                    : "bg-gray-100 dark:bg-slate-700 text-gray-700 dark:text-slate-300 hover:bg-gray-200 dark:hover:bg-slate-600"
                )}
              >
                {level}
              </button>
            ))}
          </div>
        </div>
      </div>

      <div className="flex gap-3">
        <Button variant="secondary" onClick={onClose} className="flex-1">
          Cancel
        </Button>
        <Button
          variant="primary"
          onClick={() => onSave(localSettings)}
          className="flex-1"
        >
          Save Settings
        </Button>
      </div>
    </div>
  );
}

interface ChildDetailModalContentProps {
  child: ChildWithStudyTime;
  onClose: () => void;
}

function ChildDetailModalContent({ child, onClose }: ChildDetailModalContentProps) {
  return (
    <div>
      {/* Header */}
      <div className="flex items-center gap-4 mb-6">
        {child.child_avatar ? (
          <AvatarDisplay config={child.child_avatar} size="xl" />
        ) : (
          <div className="w-16 h-16 rounded-full bg-slate-600 flex items-center justify-center">
            <Users className="w-8 h-8 text-slate-400" />
          </div>
        )}
        <div>
          <h2 className="text-2xl font-bold text-gray-900 dark:text-white">{child.child_name}</h2>
          <p className="text-gray-500 dark:text-slate-400">Level {child.current_level || 1} Learner</p>
          <p className="text-gray-400 dark:text-slate-500 text-sm">{child.child_email}</p>
        </div>
      </div>

      {/* Stats Grid */}
      <div className="grid grid-cols-2 gap-4 mb-6">
        <div className="p-4 bg-gray-100 dark:bg-slate-700/50 rounded-xl text-center">
          <Trophy className="w-8 h-8 text-amber-400 mx-auto mb-2" />
          <p className="text-2xl font-bold text-gray-900 dark:text-white">{(child.total_xp || 0).toLocaleString()}</p>
          <p className="text-gray-500 dark:text-slate-400">Total XP</p>
        </div>
        <div className="p-4 bg-gray-100 dark:bg-slate-700/50 rounded-xl text-center">
          <Flame className="w-8 h-8 text-orange-400 mx-auto mb-2" />
          <p className="text-2xl font-bold text-gray-900 dark:text-white">{child.current_streak || 0} days</p>
          <p className="text-gray-500 dark:text-slate-400">Current Streak</p>
        </div>
        <div className="p-4 bg-gray-100 dark:bg-slate-700/50 rounded-xl text-center">
          <BookOpen className="w-8 h-8 text-blue-400 mx-auto mb-2" />
          <p className="text-2xl font-bold text-gray-900 dark:text-white">{child.lessons_completed || 0}</p>
          <p className="text-gray-500 dark:text-slate-400">Lessons</p>
        </div>
        <div className="p-4 bg-gray-100 dark:bg-slate-700/50 rounded-xl text-center">
          <Target className="w-8 h-8 text-green-400 mx-auto mb-2" />
          <p className="text-2xl font-bold text-gray-900 dark:text-white">{Math.round(child.avg_score || 0)}%</p>
          <p className="text-gray-500 dark:text-slate-400">Avg Score</p>
        </div>
      </div>

      {/* Time Limit Setting */}
      <div className="p-4 bg-gray-100 dark:bg-slate-700/50 rounded-xl mb-6">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-2">
            <Clock className="w-5 h-5 text-cyan-400" />
            <span className="text-gray-900 dark:text-white font-medium">Daily Time Limit</span>
          </div>
          <span className="text-gray-900 dark:text-white font-bold">{child.daily_time_limit || 'No limit'} min</span>
        </div>
        {child.daily_time_limit && (
          <div className="mt-3">
            <div className="flex justify-between text-sm mb-1">
              <span className="text-gray-500 dark:text-slate-400">Today's progress</span>
              <span className="text-gray-700 dark:text-slate-300">
                {child.timeSpentToday || 0} / {child.daily_time_limit} min
              </span>
            </div>
            <div className="h-3 bg-gray-200 dark:bg-slate-600 rounded-full overflow-hidden">
              <div
                className="h-full bg-gradient-to-r from-cyan-500 to-blue-500 rounded-full"
                style={{
                  width: `${Math.min(100, ((child.timeSpentToday || 0) / child.daily_time_limit) * 100)}%`
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
      >
        Close
      </Button>
    </div>
  );
}

interface AddChildModalContentProps {
  onInvite: (email: string) => void;
  onClose: () => void;
}

function AddChildModalContent({ onInvite, onClose }: AddChildModalContentProps) {
  const [email, setEmail] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);

  const handleSubmit = async () => {
    if (!email.trim() || !email.includes('@')) return;

    setIsSubmitting(true);
    try {
      await onInvite(email.trim());
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <div className="space-y-6">
      <p className="text-gray-600 dark:text-slate-400">
        Enter your child's email address to link their account. They will receive an invitation to accept the connection.
      </p>

      <div>
        <label className="text-gray-700 dark:text-slate-300 text-sm mb-2 block">
          Child's Email Address
        </label>
        <div className="relative">
          <Mail className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400" />
          <input
            type="email"
            value={email}
            onChange={e => setEmail(e.target.value)}
            placeholder="child@example.com"
            className="w-full pl-10 pr-4 py-3 bg-white dark:bg-slate-700 border border-gray-300 dark:border-slate-600 rounded-lg text-gray-900 dark:text-white placeholder-gray-400 dark:placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-indigo-500"
            onKeyDown={e => e.key === 'Enter' && handleSubmit()}
          />
        </div>
      </div>

      <div className="flex gap-3">
        <Button variant="secondary" onClick={onClose} className="flex-1">
          Cancel
        </Button>
        <Button
          variant="primary"
          onClick={handleSubmit}
          disabled={!email.trim() || !email.includes('@') || isSubmitting}
          className="flex-1"
        >
          {isSubmitting ? 'Sending...' : 'Send Invitation'}
        </Button>
      </div>
    </div>
  );
}
