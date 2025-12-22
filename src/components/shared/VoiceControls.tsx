/**
 * Voice control buttons for chat and lesson interfaces
 * Shows microphone button with visual feedback for voice state
 */

import { cn } from '@/utils/helpers';
import { Mic, MicOff, Volume2, VolumeX, Loader2 } from 'lucide-react';
import type { VoiceState } from '@/hooks/useVoiceSession';

interface VoiceControlsProps {
  voiceState: VoiceState;
  isVoiceEnabled: boolean;
  isRecognitionAvailable: boolean;
  onMicClick: () => void;
  onStopSpeaking?: () => void;
  onToggleVoice?: () => void;
  showVoiceToggle?: boolean;
  compact?: boolean;
  className?: string;
}

export default function VoiceControls({
  voiceState,
  isVoiceEnabled,
  isRecognitionAvailable,
  onMicClick,
  onStopSpeaking,
  onToggleVoice,
  showVoiceToggle = false,
  compact = false,
  className,
}: VoiceControlsProps) {
  const isListening = voiceState === 'listening';
  const isSpeaking = voiceState === 'speaking';

  return (
    <div className={cn('flex items-center gap-2', className)}>
      {/* Voice Mode Toggle */}
      {showVoiceToggle && onToggleVoice && (
        <button
          onClick={onToggleVoice}
          className={cn(
            'p-2 rounded-full transition-colors',
            isVoiceEnabled
              ? 'bg-blue-100 dark:bg-blue-900/30 text-blue-600 dark:text-blue-400'
              : 'bg-gray-100 dark:bg-gray-700 text-gray-400 dark:text-gray-500'
          )}
          title={isVoiceEnabled ? 'Disable voice mode' : 'Enable voice mode'}
        >
          {isVoiceEnabled ? (
            <Volume2 className={cn(compact ? 'w-4 h-4' : 'w-5 h-5')} />
          ) : (
            <VolumeX className={cn(compact ? 'w-4 h-4' : 'w-5 h-5')} />
          )}
        </button>
      )}

      {/* Microphone Button */}
      {isRecognitionAvailable && isVoiceEnabled && (
        <button
          onClick={isSpeaking && onStopSpeaking ? onStopSpeaking : onMicClick}
          disabled={voiceState === 'error'}
          className={cn(
            'p-2 rounded-full transition-all',
            isListening && [
              'bg-red-500 text-white animate-pulse',
              'ring-4 ring-red-200 dark:ring-red-900',
            ],
            isSpeaking && 'bg-green-500 text-white',
            !isListening && !isSpeaking && [
              'bg-gray-100 dark:bg-gray-700',
              'text-gray-600 dark:text-gray-300',
              'hover:bg-gray-200 dark:hover:bg-gray-600',
            ],
            voiceState === 'error' && 'opacity-50 cursor-not-allowed'
          )}
          title={
            isListening
              ? 'Stop listening'
              : isSpeaking
              ? 'Stop speaking'
              : 'Start voice input'
          }
        >
          {isListening ? (
            <div className="relative">
              <Mic className={cn(compact ? 'w-4 h-4' : 'w-5 h-5')} />
              <span className="absolute -top-1 -right-1 w-2 h-2 bg-white rounded-full animate-ping" />
            </div>
          ) : isSpeaking ? (
            <Loader2 className={cn(compact ? 'w-4 h-4' : 'w-5 h-5', 'animate-spin')} />
          ) : (
            <Mic className={cn(compact ? 'w-4 h-4' : 'w-5 h-5')} />
          )}
        </button>
      )}

      {/* Voice not available indicator */}
      {!isRecognitionAvailable && isVoiceEnabled && (
        <div
          className="p-2 rounded-full bg-gray-100 dark:bg-gray-700 text-gray-400"
          title="Voice input not supported in this browser"
        >
          <MicOff className={cn(compact ? 'w-4 h-4' : 'w-5 h-5')} />
        </div>
      )}
    </div>
  );
}

/**
 * Compact voice state indicator for inline use
 */
export function VoiceStateIndicator({
  voiceState,
  className,
}: {
  voiceState: VoiceState;
  className?: string;
}) {
  if (voiceState === 'idle') return null;

  const stateConfig = {
    listening: {
      text: 'Listening...',
      bgClass: 'bg-red-100 dark:bg-red-900/30 text-red-600 dark:text-red-400',
      icon: <Mic className="w-3 h-3 animate-pulse" />,
    },
    speaking: {
      text: 'Speaking...',
      bgClass: 'bg-green-100 dark:bg-green-900/30 text-green-600 dark:text-green-400',
      icon: <Volume2 className="w-3 h-3" />,
    },
    error: {
      text: 'Voice error',
      bgClass: 'bg-amber-100 dark:bg-amber-900/30 text-amber-600 dark:text-amber-400',
      icon: <MicOff className="w-3 h-3" />,
    },
  };

  const config = stateConfig[voiceState];
  if (!config) return null;

  return (
    <div
      className={cn(
        'inline-flex items-center gap-1.5 px-2 py-1 rounded-full text-xs font-medium',
        config.bgClass,
        className
      )}
    >
      {config.icon}
      {config.text}
    </div>
  );
}
