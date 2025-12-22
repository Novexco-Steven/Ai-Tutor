/**
 * Offline Indicator Component
 * Shows when the app is offline and displays sync status
 */

import { WifiOff, RefreshCw, Check, AlertCircle } from 'lucide-react';
import { usePWA } from '@/contexts/PWAContext';
import { cn } from '@/utils/helpers';

interface OfflineIndicatorProps {
  className?: string;
}

export default function OfflineIndicator({ className }: OfflineIndicatorProps) {
  const { isOnline, isSyncing, pendingSyncCount, syncError, triggerSync, lastSyncTime } = usePWA();

  // Don't show anything if online and no pending items
  if (isOnline && pendingSyncCount === 0 && !isSyncing) {
    return null;
  }

  return (
    <div
      className={cn(
        'fixed bottom-4 left-4 z-40 p-3 rounded-lg shadow-lg border transition-all',
        !isOnline
          ? 'bg-amber-50 dark:bg-amber-900/30 border-amber-200 dark:border-amber-800'
          : syncError
          ? 'bg-red-50 dark:bg-red-900/30 border-red-200 dark:border-red-800'
          : 'bg-blue-50 dark:bg-blue-900/30 border-blue-200 dark:border-blue-800',
        className
      )}
    >
      <div className="flex items-center gap-3">
        {/* Status Icon */}
        {!isOnline ? (
          <div className="p-2 bg-amber-100 dark:bg-amber-900/50 rounded-full">
            <WifiOff className="w-4 h-4 text-amber-600 dark:text-amber-400" />
          </div>
        ) : isSyncing ? (
          <div className="p-2 bg-blue-100 dark:bg-blue-900/50 rounded-full">
            <RefreshCw className="w-4 h-4 text-blue-600 dark:text-blue-400 animate-spin" />
          </div>
        ) : syncError ? (
          <div className="p-2 bg-red-100 dark:bg-red-900/50 rounded-full">
            <AlertCircle className="w-4 h-4 text-red-600 dark:text-red-400" />
          </div>
        ) : (
          <div className="p-2 bg-green-100 dark:bg-green-900/50 rounded-full">
            <Check className="w-4 h-4 text-green-600 dark:text-green-400" />
          </div>
        )}

        {/* Status Text */}
        <div className="flex-1 min-w-0">
          <p className="text-sm font-medium text-gray-900 dark:text-white">
            {!isOnline
              ? 'You\'re offline'
              : isSyncing
              ? 'Syncing...'
              : syncError
              ? 'Sync failed'
              : 'Syncing'}
          </p>
          <p className="text-xs text-gray-600 dark:text-gray-400">
            {!isOnline
              ? 'Changes will sync when you\'re back online'
              : isSyncing
              ? `${pendingSyncCount} items remaining`
              : syncError
              ? syncError
              : pendingSyncCount > 0
              ? `${pendingSyncCount} items to sync`
              : lastSyncTime
              ? `Last synced ${formatRelativeTime(lastSyncTime)}`
              : 'All synced'}
          </p>
        </div>

        {/* Retry Button */}
        {isOnline && (syncError || pendingSyncCount > 0) && !isSyncing && (
          <button
            onClick={triggerSync}
            className="p-2 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-lg transition-colors"
            title="Retry sync"
          >
            <RefreshCw className="w-4 h-4 text-gray-600 dark:text-gray-400" />
          </button>
        )}
      </div>
    </div>
  );
}

function formatRelativeTime(date: Date): string {
  const seconds = Math.floor((Date.now() - date.getTime()) / 1000);

  if (seconds < 60) return 'just now';
  if (seconds < 3600) return `${Math.floor(seconds / 60)}m ago`;
  if (seconds < 86400) return `${Math.floor(seconds / 3600)}h ago`;
  return `${Math.floor(seconds / 86400)}d ago`;
}
