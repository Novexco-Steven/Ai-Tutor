/**
 * Install Prompt Component
 * Prompts users to install the PWA
 */

import { useState, useEffect } from 'react';
import { Download, X, Smartphone, Zap, WifiOff } from 'lucide-react';
import { usePWA } from '@/contexts/PWAContext';
import { cn } from '@/utils/helpers';
import Card from '../shared/Card';

interface InstallPromptProps {
  variant?: 'banner' | 'card' | 'minimal';
  className?: string;
  onDismiss?: () => void;
}

export default function InstallPrompt({
  variant = 'banner',
  className,
  onDismiss,
}: InstallPromptProps) {
  const { isInstallable, isInstalled, promptInstall } = usePWA();
  const [isDismissed, setIsDismissed] = useState(false);

  // Check if user has dismissed before
  useEffect(() => {
    const dismissed = localStorage.getItem('pwa-install-dismissed');
    if (dismissed) {
      const dismissedDate = new Date(dismissed);
      const daysSinceDismiss = (Date.now() - dismissedDate.getTime()) / (1000 * 60 * 60 * 24);
      // Re-show after 7 days
      if (daysSinceDismiss < 7) {
        setIsDismissed(true);
      }
    }
  }, []);

  const handleDismiss = () => {
    setIsDismissed(true);
    localStorage.setItem('pwa-install-dismissed', new Date().toISOString());
    onDismiss?.();
  };

  const handleInstall = async () => {
    await promptInstall();
  };

  // Don't show if not installable, already installed, or dismissed
  if (!isInstallable || isInstalled || isDismissed) {
    return null;
  }

  if (variant === 'minimal') {
    return (
      <button
        onClick={handleInstall}
        className={cn(
          'flex items-center gap-2 px-4 py-2 bg-blue-500 hover:bg-blue-600 text-white rounded-lg transition-colors',
          className
        )}
      >
        <Download className="w-4 h-4" />
        Install App
      </button>
    );
  }

  if (variant === 'card') {
    return (
      <Card className={cn('relative', className)}>
        <button
          onClick={handleDismiss}
          className="absolute top-3 right-3 p-1 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-full"
        >
          <X className="w-4 h-4 text-gray-400" />
        </button>

        <div className="flex items-start gap-4">
          <div className="p-3 bg-gradient-to-br from-blue-500 to-purple-600 rounded-xl text-white">
            <Smartphone className="w-6 h-6" />
          </div>

          <div className="flex-1">
            <h3 className="font-semibold text-gray-900 dark:text-white mb-1">
              Install Tulomi
            </h3>
            <p className="text-sm text-gray-600 dark:text-gray-400 mb-3">
              Add to your home screen for quick access and offline learning!
            </p>

            <div className="flex flex-wrap gap-3 text-xs text-gray-500 dark:text-gray-400 mb-4">
              <span className="flex items-center gap-1">
                <Zap className="w-3 h-3" />
                Faster loading
              </span>
              <span className="flex items-center gap-1">
                <WifiOff className="w-3 h-3" />
                Works offline
              </span>
            </div>

            <button
              onClick={handleInstall}
              className="w-full py-2 bg-blue-500 hover:bg-blue-600 text-white font-medium rounded-lg transition-colors"
            >
              Install Now
            </button>
          </div>
        </div>
      </Card>
    );
  }

  // Banner variant (default)
  return (
    <div
      className={cn(
        'fixed bottom-0 left-0 right-0 z-50 p-4 bg-gradient-to-r from-blue-600 to-purple-600 text-white shadow-lg',
        className
      )}
    >
      <div className="container mx-auto flex items-center justify-between gap-4">
        <div className="flex items-center gap-3">
          <div className="p-2 bg-white/20 rounded-lg">
            <Download className="w-5 h-5" />
          </div>
          <div>
            <p className="font-medium">Install Tulomi App</p>
            <p className="text-sm text-white/80 hidden sm:block">
              Get faster access and learn offline!
            </p>
          </div>
        </div>

        <div className="flex items-center gap-2">
          <button
            onClick={handleDismiss}
            className="px-4 py-2 text-sm hover:bg-white/10 rounded-lg transition-colors"
          >
            Not now
          </button>
          <button
            onClick={handleInstall}
            className="px-4 py-2 bg-white text-blue-600 font-medium rounded-lg hover:bg-white/90 transition-colors"
          >
            Install
          </button>
        </div>
      </div>
    </div>
  );
}
