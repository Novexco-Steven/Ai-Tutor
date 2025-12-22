/**
 * PWA Context
 * Manages offline state, sync queue, and PWA installation
 */

import { createContext, useContext, useEffect, useState, useCallback, ReactNode } from 'react';
import {
  getPendingSyncItems,
  removeSyncItem,
  incrementSyncRetry,
  getUnsyncedProgress,
  markProgressSynced,
  getCacheStats,
  isOnline as checkOnline,
} from '@/services/offlineStorage';
import {
  isNotificationSupported,
  getNotificationPermission,
  requestNotificationPermission,
  initializeNotificationChecker,
} from '@/services/pushNotifications';
import { db } from '@/services/supabase';

// ============================================================================
// Types
// ============================================================================

interface PWAContextType {
  isOnline: boolean;
  isInstallable: boolean;
  isInstalled: boolean;
  pendingSyncCount: number;
  lastSyncTime: Date | null;
  isSyncing: boolean;
  syncError: string | null;
  cacheStats: {
    lessonsCount: number;
    topicsCount: number;
    pendingSyncCount: number;
    totalSizeEstimate: number;
  } | null;
  // Notification state
  notificationsSupported: boolean;
  notificationPermission: NotificationPermission | 'unsupported';
  promptInstall: () => Promise<void>;
  triggerSync: () => Promise<void>;
  refreshCacheStats: () => Promise<void>;
  requestNotifications: () => Promise<NotificationPermission | 'unsupported'>;
}

interface BeforeInstallPromptEvent extends Event {
  prompt: () => Promise<void>;
  userChoice: Promise<{ outcome: 'accepted' | 'dismissed' }>;
}

// ============================================================================
// Context
// ============================================================================

const PWAContext = createContext<PWAContextType | undefined>(undefined);

// ============================================================================
// Provider
// ============================================================================

export function PWAProvider({ children }: { children: ReactNode }) {
  const [isOnline, setIsOnline] = useState(true);
  const [isInstallable, setIsInstallable] = useState(false);
  const [isInstalled, setIsInstalled] = useState(false);
  const [pendingSyncCount, setPendingSyncCount] = useState(0);
  const [lastSyncTime, setLastSyncTime] = useState<Date | null>(null);
  const [isSyncing, setIsSyncing] = useState(false);
  const [syncError, setSyncError] = useState<string | null>(null);
  const [cacheStats, setCacheStats] = useState<PWAContextType['cacheStats']>(null);
  const [deferredPrompt, setDeferredPrompt] = useState<BeforeInstallPromptEvent | null>(null);

  // Notification state
  const [notificationsSupported] = useState(() => isNotificationSupported());
  const [notificationPermission, setNotificationPermission] = useState<NotificationPermission | 'unsupported'>(
    () => getNotificationPermission()
  );

  // ============================================================================
  // Online/Offline Detection
  // ============================================================================

  useEffect(() => {
    const updateOnlineStatus = async () => {
      const online = await checkOnline();
      setIsOnline(online);

      // Auto-sync when coming back online
      if (online && pendingSyncCount > 0) {
        triggerSync();
      }
    };

    updateOnlineStatus();

    window.addEventListener('online', updateOnlineStatus);
    window.addEventListener('offline', updateOnlineStatus);

    return () => {
      window.removeEventListener('online', updateOnlineStatus);
      window.removeEventListener('offline', updateOnlineStatus);
    };
  }, [pendingSyncCount]);

  // ============================================================================
  // PWA Installation
  // ============================================================================

  useEffect(() => {
    // Check if already installed
    if (window.matchMedia('(display-mode: standalone)').matches) {
      setIsInstalled(true);
    }

    // Listen for install prompt
    const handleBeforeInstall = (e: Event) => {
      e.preventDefault();
      setDeferredPrompt(e as BeforeInstallPromptEvent);
      setIsInstallable(true);
    };

    // Listen for successful installation
    const handleAppInstalled = () => {
      setIsInstalled(true);
      setIsInstallable(false);
      setDeferredPrompt(null);
    };

    window.addEventListener('beforeinstallprompt', handleBeforeInstall);
    window.addEventListener('appinstalled', handleAppInstalled);

    return () => {
      window.removeEventListener('beforeinstallprompt', handleBeforeInstall);
      window.removeEventListener('appinstalled', handleAppInstalled);
    };
  }, []);

  const promptInstall = useCallback(async () => {
    if (!deferredPrompt) return;

    await deferredPrompt.prompt();
    const { outcome } = await deferredPrompt.userChoice;

    if (outcome === 'accepted') {
      setIsInstallable(false);
    }

    setDeferredPrompt(null);
  }, [deferredPrompt]);

  // ============================================================================
  // Notification Management
  // ============================================================================

  const requestNotifications = useCallback(async () => {
    const permission = await requestNotificationPermission();
    setNotificationPermission(permission);
    return permission;
  }, []);

  // Initialize notification checker on mount
  useEffect(() => {
    if (notificationsSupported && notificationPermission === 'granted') {
      const cleanup = initializeNotificationChecker();
      return cleanup;
    }
  }, [notificationsSupported, notificationPermission]);

  // ============================================================================
  // Sync Operations
  // ============================================================================

  const triggerSync = useCallback(async () => {
    if (isSyncing || !isOnline) return;

    setIsSyncing(true);
    setSyncError(null);

    try {
      // Sync progress updates
      const unsyncedProgress = await getUnsyncedProgress();
      for (const progress of unsyncedProgress) {
        try {
          const progressData = progress.data as { subjectId?: string } & Record<string, unknown>;
          const subjectId = progressData.subjectId || '';
          await db.upsertProgress(progress.userId, progress.topicId, subjectId, progressData);
          await markProgressSynced(progress.id);
        } catch (err) {
          console.error('Failed to sync progress:', progress.id, err);
        }
      }

      // Sync pending items
      const pendingItems = await getPendingSyncItems();
      for (const item of pendingItems) {
        if (item.retryCount >= 3) {
          // Too many retries, remove item
          await removeSyncItem(item.id);
          continue;
        }

        try {
          // Process based on type - for now, we only support progress sync
          // Quiz responses and session logs are saved directly and don't need offline queue
          // Remove all queued items that made it this far
          await removeSyncItem(item.id);
        } catch (err) {
          console.error('Failed to sync item:', item.id, err);
          await incrementSyncRetry(item.id);
        }
      }

      setLastSyncTime(new Date());
      await refreshPendingCount();
    } catch (err) {
      console.error('Sync failed:', err);
      setSyncError(err instanceof Error ? err.message : 'Sync failed');
    } finally {
      setIsSyncing(false);
    }
  }, [isSyncing, isOnline]);

  // ============================================================================
  // Cache Stats
  // ============================================================================

  const refreshCacheStats = useCallback(async () => {
    try {
      const stats = await getCacheStats();
      setCacheStats({
        lessonsCount: stats.lessonsCount,
        topicsCount: stats.topicsCount,
        pendingSyncCount: stats.pendingSyncCount,
        totalSizeEstimate: stats.totalSizeEstimate,
      });
    } catch (err) {
      console.error('Failed to get cache stats:', err);
    }
  }, []);

  const refreshPendingCount = useCallback(async () => {
    try {
      const items = await getPendingSyncItems();
      const unsyncedProgress = await getUnsyncedProgress();
      setPendingSyncCount(items.length + unsyncedProgress.length);
    } catch (err) {
      console.error('Failed to get pending sync count:', err);
    }
  }, []);

  // Initial load
  useEffect(() => {
    refreshPendingCount();
    refreshCacheStats();
  }, [refreshPendingCount, refreshCacheStats]);

  // Periodic sync check
  useEffect(() => {
    const interval = setInterval(() => {
      if (isOnline && pendingSyncCount > 0) {
        triggerSync();
      }
    }, 60000); // Check every minute

    return () => clearInterval(interval);
  }, [isOnline, pendingSyncCount, triggerSync]);

  // ============================================================================
  // Context Value
  // ============================================================================

  const value: PWAContextType = {
    isOnline,
    isInstallable,
    isInstalled,
    pendingSyncCount,
    lastSyncTime,
    isSyncing,
    syncError,
    cacheStats,
    notificationsSupported,
    notificationPermission,
    promptInstall,
    triggerSync,
    refreshCacheStats,
    requestNotifications,
  };

  return <PWAContext.Provider value={value}>{children}</PWAContext.Provider>;
}

// ============================================================================
// Hook
// ============================================================================

export function usePWA() {
  const context = useContext(PWAContext);
  if (context === undefined) {
    throw new Error('usePWA must be used within a PWAProvider');
  }
  return context;
}
