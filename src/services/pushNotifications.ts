/**
 * Push Notifications Service
 * Handles notification permissions, scheduling, and sending for streaks and reviews
 */

// ============================================================================
// Types
// ============================================================================

export interface NotificationOptions {
  title: string;
  body: string;
  icon?: string;
  badge?: string;
  tag?: string;
  requireInteraction?: boolean;
  actions?: Array<{
    action: string;
    title: string;
  }>;
  data?: Record<string, unknown>;
}

export type NotificationType = 'streak_reminder' | 'review_due' | 'achievement' | 'daily_goal';

interface ScheduledNotification {
  id: string;
  type: NotificationType;
  scheduledTime: Date;
  options: NotificationOptions;
}

// ============================================================================
// Constants
// ============================================================================

const NOTIFICATION_STORAGE_KEY = 'tulomi_scheduled_notifications';
const NOTIFICATION_PERMISSION_KEY = 'tulomi_notification_permission';

// Default notification times
const DEFAULT_STREAK_REMINDER_HOUR = 18; // 6 PM
const DEFAULT_REVIEW_REMINDER_HOUR = 10; // 10 AM

// ============================================================================
// Permission Management
// ============================================================================

/**
 * Check if notifications are supported
 */
export function isNotificationSupported(): boolean {
  return 'Notification' in window && 'serviceWorker' in navigator;
}

/**
 * Get current notification permission status
 */
export function getNotificationPermission(): NotificationPermission | 'unsupported' {
  if (!isNotificationSupported()) return 'unsupported';
  return Notification.permission;
}

/**
 * Request notification permission from user
 */
export async function requestNotificationPermission(): Promise<NotificationPermission | 'unsupported'> {
  if (!isNotificationSupported()) return 'unsupported';

  try {
    const permission = await Notification.requestPermission();
    localStorage.setItem(NOTIFICATION_PERMISSION_KEY, permission);
    return permission;
  } catch (error) {
    console.error('Failed to request notification permission:', error);
    return 'denied';
  }
}

/**
 * Check if user has previously denied notifications
 */
export function wasPermissionDenied(): boolean {
  return localStorage.getItem(NOTIFICATION_PERMISSION_KEY) === 'denied';
}

// ============================================================================
// Notification Sending
// ============================================================================

/**
 * Send an immediate notification
 */
export async function sendNotification(options: NotificationOptions): Promise<boolean> {
  const permission = getNotificationPermission();
  if (permission !== 'granted') {
    console.warn('Notification permission not granted');
    return false;
  }

  try {
    // Use service worker for persistent notifications if available
    if ('serviceWorker' in navigator && navigator.serviceWorker.controller) {
      const registration = await navigator.serviceWorker.ready;
      await registration.showNotification(options.title, {
        body: options.body,
        icon: options.icon || '/pwa-192x192.png',
        badge: options.badge || '/pwa-192x192.png',
        tag: options.tag,
        requireInteraction: options.requireInteraction,
        data: options.data,
      });
    } else {
      // Fallback to basic notification
      new Notification(options.title, {
        body: options.body,
        icon: options.icon || '/pwa-192x192.png',
        tag: options.tag,
      });
    }
    return true;
  } catch (error) {
    console.error('Failed to send notification:', error);
    return false;
  }
}

// ============================================================================
// Scheduled Notifications
// ============================================================================

/**
 * Get all scheduled notifications
 */
function getScheduledNotifications(): ScheduledNotification[] {
  try {
    const stored = localStorage.getItem(NOTIFICATION_STORAGE_KEY);
    if (!stored) return [];
    const notifications = JSON.parse(stored);
    return notifications.map((n: ScheduledNotification) => ({
      ...n,
      scheduledTime: new Date(n.scheduledTime),
    }));
  } catch {
    return [];
  }
}

/**
 * Save scheduled notifications
 */
function saveScheduledNotifications(notifications: ScheduledNotification[]): void {
  localStorage.setItem(NOTIFICATION_STORAGE_KEY, JSON.stringify(notifications));
}

/**
 * Schedule a notification for later
 */
export function scheduleNotification(
  type: NotificationType,
  scheduledTime: Date,
  options: NotificationOptions
): string {
  const id = `${type}_${Date.now()}`;
  const scheduled = getScheduledNotifications();

  // Remove any existing notification of the same type
  const filtered = scheduled.filter((n) => n.type !== type);

  filtered.push({
    id,
    type,
    scheduledTime,
    options,
  });

  saveScheduledNotifications(filtered);
  return id;
}

/**
 * Cancel a scheduled notification
 */
export function cancelNotification(id: string): void {
  const scheduled = getScheduledNotifications();
  const filtered = scheduled.filter((n) => n.id !== id);
  saveScheduledNotifications(filtered);
}

/**
 * Cancel all notifications of a specific type
 */
export function cancelNotificationsByType(type: NotificationType): void {
  const scheduled = getScheduledNotifications();
  const filtered = scheduled.filter((n) => n.type !== type);
  saveScheduledNotifications(filtered);
}

/**
 * Check and send any due scheduled notifications
 */
export async function checkScheduledNotifications(): Promise<void> {
  const scheduled = getScheduledNotifications();
  const now = new Date();
  const remaining: ScheduledNotification[] = [];

  for (const notification of scheduled) {
    if (notification.scheduledTime <= now) {
      await sendNotification(notification.options);
    } else {
      remaining.push(notification);
    }
  }

  saveScheduledNotifications(remaining);
}

// ============================================================================
// Specific Notification Types
// ============================================================================

/**
 * Schedule a streak reminder notification
 */
export function scheduleStreakReminder(currentStreak: number, hour: number = DEFAULT_STREAK_REMINDER_HOUR): string {
  const now = new Date();
  const scheduledTime = new Date(now);
  scheduledTime.setHours(hour, 0, 0, 0);

  // If the time has passed today, schedule for tomorrow
  if (scheduledTime <= now) {
    scheduledTime.setDate(scheduledTime.getDate() + 1);
  }

  const options: NotificationOptions = {
    title: currentStreak > 0 ? `🔥 Keep your ${currentStreak}-day streak alive!` : '🌟 Start a new learning streak!',
    body:
      currentStreak > 0
        ? "Don't break your streak! Complete a lesson today."
        : 'Complete a lesson to start building your streak.',
    tag: 'streak-reminder',
    requireInteraction: false,
    data: {
      type: 'streak_reminder',
      url: '/dashboard',
    },
  };

  return scheduleNotification('streak_reminder', scheduledTime, options);
}

/**
 * Schedule a review due notification
 */
export function scheduleReviewReminder(
  reviewCount: number,
  hour: number = DEFAULT_REVIEW_REMINDER_HOUR
): string {
  const now = new Date();
  const scheduledTime = new Date(now);
  scheduledTime.setHours(hour, 0, 0, 0);

  // If the time has passed today, schedule for tomorrow
  if (scheduledTime <= now) {
    scheduledTime.setDate(scheduledTime.getDate() + 1);
  }

  const options: NotificationOptions = {
    title: `📚 ${reviewCount} topic${reviewCount !== 1 ? 's' : ''} ready for review`,
    body: 'Strengthen your memory with a quick review session!',
    tag: 'review-reminder',
    requireInteraction: false,
    data: {
      type: 'review_due',
      url: '/review',
    },
  };

  return scheduleNotification('review_due', scheduledTime, options);
}

/**
 * Send an achievement notification immediately
 */
export async function sendAchievementNotification(
  achievementTitle: string,
  achievementDescription: string
): Promise<boolean> {
  return sendNotification({
    title: `🏆 Achievement Unlocked: ${achievementTitle}`,
    body: achievementDescription,
    tag: 'achievement',
    requireInteraction: false,
    data: {
      type: 'achievement',
      url: '/dashboard',
    },
  });
}

/**
 * Send a daily goal completion notification
 */
export async function sendDailyGoalNotification(
  xpEarned: number,
  lessonsCompleted: number
): Promise<boolean> {
  return sendNotification({
    title: '🎯 Daily Goal Reached!',
    body: `You earned ${xpEarned} XP and completed ${lessonsCompleted} lesson${lessonsCompleted !== 1 ? 's' : ''} today!`,
    tag: 'daily-goal',
    requireInteraction: false,
    data: {
      type: 'daily_goal',
      url: '/analytics',
    },
  });
}

// ============================================================================
// Initialization
// ============================================================================

/**
 * Initialize notification checking interval
 * Call this on app startup
 */
export function initializeNotificationChecker(): () => void {
  // Check immediately on startup
  checkScheduledNotifications();

  // Check every minute
  const interval = setInterval(() => {
    checkScheduledNotifications();
  }, 60000);

  // Return cleanup function
  return () => clearInterval(interval);
}

/**
 * Update notification schedules based on user data
 */
export function updateNotificationSchedules(
  currentStreak: number,
  reviewsDue: number,
  notificationsEnabled: boolean
): void {
  if (!notificationsEnabled || getNotificationPermission() !== 'granted') {
    // Clear all scheduled notifications if disabled
    cancelNotificationsByType('streak_reminder');
    cancelNotificationsByType('review_due');
    return;
  }

  // Schedule streak reminder if user has a streak or hasn't learned today
  scheduleStreakReminder(currentStreak);

  // Schedule review reminder if there are reviews due
  if (reviewsDue > 0) {
    scheduleReviewReminder(reviewsDue);
  } else {
    cancelNotificationsByType('review_due');
  }
}
