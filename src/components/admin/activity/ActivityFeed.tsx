import { useState, useEffect, useRef } from 'react';
import {
  Activity,
  UserPlus,
  BookOpen,
  Trophy,
  CreditCard,
  Bell,
  RefreshCw,
  Filter,
  Pause,
  Play
} from 'lucide-react';
import { supabase } from '@/services/supabase';
import { adminStats, type ActivityItem } from '@/services/adminStats';
import Card from '@/components/shared/Card';
import Button from '@/components/shared/Button';

interface RealtimeActivity extends ActivityItem {
  isNew?: boolean;
}

type ActivityType = 'all' | 'session' | 'signup' | 'completion' | 'subscription';

export default function ActivityFeed() {
  const [activities, setActivities] = useState<RealtimeActivity[]>([]);
  const [loading, setLoading] = useState(true);
  const [isPaused, setIsPaused] = useState(false);
  const [filterType, setFilterType] = useState<ActivityType>('all');
  const [newCount, setNewCount] = useState(0);
  const containerRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    loadInitialActivities();

    if (!isPaused) {
      const channel = setupRealtimeSubscription();
      return () => {
        supabase.removeChannel(channel);
      };
    }
  }, [isPaused]);

  const loadInitialActivities = async () => {
    setLoading(true);
    try {
      const data = await adminStats.getRecentActivity(50);
      setActivities(data);
    } catch (error) {
      console.error('Error loading activities:', error);
    } finally {
      setLoading(false);
    }
  };

  const setupRealtimeSubscription = () => {
    const channel = supabase
      .channel('admin-activity-feed')
      .on(
        'postgres_changes',
        { event: 'INSERT', schema: 'public', table: 'session_logs' },
        async (payload) => {
          const session = payload.new as {
            id: string;
            user_id: string;
            started_at: string;
            topic_id?: string;
          };

          // Fetch user info
          const { data: user } = await supabase
            .from('users')
            .select('name, email')
            .eq('id', session.user_id)
            .single();

          // Fetch topic info if available
          let topicName = 'a lesson';
          if (session.topic_id) {
            const { data: topic } = await supabase
              .from('topics')
              .select('name')
              .eq('id', session.topic_id)
              .single();
            if (topic) topicName = topic.name;
          }

          const newActivity: RealtimeActivity = {
            id: session.id,
            type: 'session',
            userId: session.user_id,
            userName: user?.name || 'Unknown',
            userEmail: user?.email || '',
            description: `Started ${topicName}`,
            createdAt: session.started_at,
            isNew: true
          };

          addNewActivity(newActivity);
        }
      )
      .on(
        'postgres_changes',
        { event: 'INSERT', schema: 'public', table: 'users' },
        (payload) => {
          const user = payload.new as {
            id: string;
            name: string;
            email: string;
            created_at: string;
          };

          const newActivity: RealtimeActivity = {
            id: `signup-${user.id}`,
            type: 'signup',
            userId: user.id,
            userName: user.name || 'New User',
            userEmail: user.email,
            description: 'Created an account',
            createdAt: user.created_at,
            isNew: true
          };

          addNewActivity(newActivity);
        }
      )
      .on(
        'postgres_changes',
        { event: '*', schema: 'public', table: 'subscriptions' },
        async (payload) => {
          const subscription = payload.new as {
            id: string;
            user_id: string;
            plan_id: string;
            status: string;
            created_at: string;
          };

          // Fetch user info
          const { data: user } = await supabase
            .from('users')
            .select('name, email')
            .eq('id', subscription.user_id)
            .single();

          const action = payload.eventType === 'INSERT' ? 'Subscribed to' :
                        payload.eventType === 'UPDATE' ? 'Updated subscription to' :
                        'Subscription changed to';

          const newActivity: RealtimeActivity = {
            id: `sub-${subscription.id}-${Date.now()}`,
            type: 'subscription',
            userId: subscription.user_id,
            userName: user?.name || 'Unknown',
            userEmail: user?.email || '',
            description: `${action} ${subscription.plan_id} (${subscription.status})`,
            createdAt: subscription.created_at,
            isNew: true
          };

          addNewActivity(newActivity);
        }
      )
      .subscribe();

    return channel;
  };

  const addNewActivity = (activity: RealtimeActivity) => {
    setActivities((prev) => {
      // Remove duplicates
      const filtered = prev.filter((a) => a.id !== activity.id);
      return [activity, ...filtered].slice(0, 100);
    });
    setNewCount((prev) => prev + 1);

    // Clear isNew flag after animation
    setTimeout(() => {
      setActivities((prev) =>
        prev.map((a) => (a.id === activity.id ? { ...a, isNew: false } : a))
      );
    }, 3000);
  };

  const getActivityIcon = (type: string) => {
    switch (type) {
      case 'signup':
        return <UserPlus className="w-5 h-5 text-green-500" />;
      case 'session':
        return <BookOpen className="w-5 h-5 text-blue-500" />;
      case 'completion':
        return <Trophy className="w-5 h-5 text-amber-500" />;
      case 'subscription':
        return <CreditCard className="w-5 h-5 text-purple-500" />;
      default:
        return <Activity className="w-5 h-5 text-gray-500" />;
    }
  };

  const getActivityBgColor = (type: string) => {
    switch (type) {
      case 'signup':
        return 'bg-green-100 dark:bg-green-900/20';
      case 'session':
        return 'bg-blue-100 dark:bg-blue-900/20';
      case 'completion':
        return 'bg-amber-100 dark:bg-amber-900/20';
      case 'subscription':
        return 'bg-purple-100 dark:bg-purple-900/20';
      default:
        return 'bg-gray-100 dark:bg-gray-800';
    }
  };

  const formatTime = (dateStr: string) => {
    const date = new Date(dateStr);
    const now = new Date();
    const diffMs = now.getTime() - date.getTime();
    const diffSecs = Math.floor(diffMs / 1000);
    const diffMins = Math.floor(diffMs / 60000);
    const diffHours = Math.floor(diffMs / 3600000);

    if (diffSecs < 60) return 'Just now';
    if (diffMins < 60) return `${diffMins}m ago`;
    if (diffHours < 24) return `${diffHours}h ago`;
    return date.toLocaleDateString('en-US', { month: 'short', day: 'numeric' });
  };

  const filteredActivities = activities.filter(
    (a) => filterType === 'all' || a.type === filterType
  );

  const clearNewCount = () => {
    setNewCount(0);
  };

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-4">
          <div>
            <h1 className="text-2xl font-bold text-gray-900 dark:text-white">Activity Feed</h1>
            <p className="text-gray-600 dark:text-gray-400">
              Real-time platform activity
            </p>
          </div>
          {newCount > 0 && (
            <button
              onClick={clearNewCount}
              className="flex items-center gap-2 px-3 py-1 bg-primary-100 dark:bg-primary-900/20 text-primary-600 dark:text-primary-400 rounded-full text-sm font-medium animate-pulse"
            >
              <Bell className="w-4 h-4" />
              {newCount} new
            </button>
          )}
        </div>
        <div className="flex items-center gap-2">
          <Button
            variant={isPaused ? 'primary' : 'secondary'}
            onClick={() => setIsPaused(!isPaused)}
          >
            {isPaused ? (
              <>
                <Play className="w-4 h-4 mr-2" />
                Resume
              </>
            ) : (
              <>
                <Pause className="w-4 h-4 mr-2" />
                Pause
              </>
            )}
          </Button>
          <Button onClick={loadInitialActivities} variant="secondary" disabled={loading}>
            <RefreshCw className={`w-4 h-4 mr-2 ${loading ? 'animate-spin' : ''}`} />
            Refresh
          </Button>
        </div>
      </div>

      {/* Live indicator */}
      {!isPaused && (
        <div className="flex items-center gap-2 text-sm text-gray-500 dark:text-gray-400">
          <span className="relative flex h-3 w-3">
            <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-green-400 opacity-75"></span>
            <span className="relative inline-flex rounded-full h-3 w-3 bg-green-500"></span>
          </span>
          Live updates enabled
        </div>
      )}

      {/* Filters */}
      <Card className="p-4">
        <div className="flex items-center gap-4">
          <Filter className="w-4 h-4 text-gray-400" />
          <div className="flex gap-2">
            {[
              { value: 'all', label: 'All' },
              { value: 'signup', label: 'Signups' },
              { value: 'session', label: 'Sessions' },
              { value: 'completion', label: 'Completions' },
              { value: 'subscription', label: 'Subscriptions' }
            ].map((filter) => (
              <button
                key={filter.value}
                onClick={() => setFilterType(filter.value as ActivityType)}
                className={`px-3 py-1.5 rounded-lg text-sm font-medium transition-colors ${
                  filterType === filter.value
                    ? 'bg-primary-600 text-white'
                    : 'bg-gray-100 dark:bg-gray-800 text-gray-600 dark:text-gray-400 hover:bg-gray-200 dark:hover:bg-gray-700'
                }`}
              >
                {filter.label}
              </button>
            ))}
          </div>
        </div>
      </Card>

      {/* Activity List */}
      <Card className="overflow-hidden">
        {loading ? (
          <div className="flex items-center justify-center py-12">
            <RefreshCw className="w-6 h-6 animate-spin text-primary-600" />
          </div>
        ) : filteredActivities.length === 0 ? (
          <div className="text-center py-12">
            <Activity className="w-12 h-12 text-gray-300 dark:text-gray-600 mx-auto mb-4" />
            <p className="text-gray-500 dark:text-gray-400">
              No activity to show
            </p>
          </div>
        ) : (
          <div ref={containerRef} className="divide-y divide-gray-100 dark:divide-gray-800">
            {filteredActivities.map((activity) => (
              <div
                key={activity.id}
                className={`flex items-start gap-4 p-4 transition-all duration-500 ${
                  activity.isNew
                    ? 'bg-primary-50 dark:bg-primary-900/10'
                    : 'hover:bg-gray-50 dark:hover:bg-gray-800/50'
                }`}
              >
                <div className={`p-2 rounded-full ${getActivityBgColor(activity.type)}`}>
                  {getActivityIcon(activity.type)}
                </div>
                <div className="flex-1 min-w-0">
                  <div className="flex items-center gap-2">
                    <span className="font-medium text-gray-900 dark:text-white">
                      {activity.userName}
                    </span>
                    {activity.isNew && (
                      <span className="px-1.5 py-0.5 text-xs font-medium bg-primary-100 text-primary-600 dark:bg-primary-900/20 dark:text-primary-400 rounded">
                        NEW
                      </span>
                    )}
                  </div>
                  <p className="text-gray-600 dark:text-gray-400">
                    {activity.description}
                  </p>
                  <p className="text-sm text-gray-400 dark:text-gray-500 mt-1">
                    {activity.userEmail}
                  </p>
                </div>
                <div className="text-right flex-shrink-0">
                  <span className="text-sm text-gray-500 dark:text-gray-400">
                    {formatTime(activity.createdAt)}
                  </span>
                </div>
              </div>
            ))}
          </div>
        )}
      </Card>

      {/* Stats */}
      <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
        <Card className="text-center p-4">
          <p className="text-2xl font-bold text-gray-900 dark:text-white">
            {activities.filter((a) => a.type === 'signup').length}
          </p>
          <p className="text-sm text-gray-500 dark:text-gray-400">Recent Signups</p>
        </Card>
        <Card className="text-center p-4">
          <p className="text-2xl font-bold text-gray-900 dark:text-white">
            {activities.filter((a) => a.type === 'session').length}
          </p>
          <p className="text-sm text-gray-500 dark:text-gray-400">Sessions Started</p>
        </Card>
        <Card className="text-center p-4">
          <p className="text-2xl font-bold text-gray-900 dark:text-white">
            {activities.filter((a) => a.type === 'completion').length}
          </p>
          <p className="text-sm text-gray-500 dark:text-gray-400">Completions</p>
        </Card>
        <Card className="text-center p-4">
          <p className="text-2xl font-bold text-gray-900 dark:text-white">
            {activities.filter((a) => a.type === 'subscription').length}
          </p>
          <p className="text-sm text-gray-500 dark:text-gray-400">Subscription Events</p>
        </Card>
      </div>
    </div>
  );
}
