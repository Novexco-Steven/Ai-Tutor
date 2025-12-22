/**
 * Hook for managing voice input/output in chat sessions
 * Integrates with voice service and settings context
 */

import { useState, useCallback, useEffect, useRef } from 'react';
import { voiceService, speakText, stopSpeaking } from '@/services/voice';
import { useSettings } from '@/contexts/SettingsContext';

export type VoiceState = 'idle' | 'listening' | 'speaking' | 'error';

interface UseVoiceSessionOptions {
  onTranscript?: (text: string) => void;
  autoSpeak?: boolean;
}

interface UseVoiceSessionReturn {
  voiceState: VoiceState;
  isVoiceEnabled: boolean;
  isRecognitionAvailable: boolean;
  error: string | null;
  startListening: () => Promise<void>;
  stopListening: () => void;
  speak: (text: string) => void;
  stopSpeaking: () => void;
  toggleVoiceMode: () => void;
}

export function useVoiceSession(options: UseVoiceSessionOptions = {}): UseVoiceSessionReturn {
  const { settings, updateAudioSettings } = useSettings();
  const [voiceState, setVoiceState] = useState<VoiceState>('idle');
  const [error, setError] = useState<string | null>(null);
  const speakingRef = useRef(false);
  const listeningRef = useRef(false);

  const isVoiceEnabled = settings.audio.voiceMode;
  const voiceSpeed = settings.audio.voiceSpeed;
  const isRecognitionAvailable = voiceService.isRecognitionAvailable();

  // Cleanup on unmount
  useEffect(() => {
    return () => {
      stopSpeaking();
      voiceService.stopListening();
    };
  }, []);

  const startListening = useCallback(async () => {
    if (!isRecognitionAvailable) {
      setError('Voice recognition is not supported in this browser');
      return;
    }

    if (listeningRef.current) {
      return;
    }

    // Stop any ongoing speech before listening
    stopSpeaking();
    setError(null);
    setVoiceState('listening');
    listeningRef.current = true;

    try {
      await voiceService.listen({
        onResult: (text) => {
          options.onTranscript?.(text);
        },
        onError: (err) => {
          if (err !== 'aborted') {
            setError(`Voice recognition error: ${err}`);
            setVoiceState('error');
          }
          listeningRef.current = false;
        },
        onEnd: () => {
          if (listeningRef.current) {
            setVoiceState('idle');
          }
          listeningRef.current = false;
        },
      });

      setVoiceState('idle');
      listeningRef.current = false;
    } catch (err) {
      listeningRef.current = false;
      if (err !== 'aborted') {
        setError(err instanceof Error ? err.message : 'Voice recognition failed');
        setVoiceState('error');
      }
    }
  }, [isRecognitionAvailable, options]);

  const handleStopListening = useCallback(() => {
    voiceService.stopListening();
    listeningRef.current = false;
    setVoiceState('idle');
  }, []);

  const speak = useCallback((text: string) => {
    if (!isVoiceEnabled) return;

    // Clean text for speech (remove markdown, emojis, etc.)
    const cleanText = text
      .replace(/[*_~`#]/g, '')
      .replace(/\[([^\]]+)\]\([^)]+\)/g, '$1')
      .replace(/:\w+:/g, '')
      .trim();

    if (!cleanText) return;

    speakingRef.current = true;
    setVoiceState('speaking');

    speakText(cleanText, {
      rate: voiceSpeed,
      onEnd: () => {
        speakingRef.current = false;
        setVoiceState('idle');
      },
    });
  }, [isVoiceEnabled, voiceSpeed]);

  const handleStopSpeaking = useCallback(() => {
    stopSpeaking();
    speakingRef.current = false;
    setVoiceState('idle');
  }, []);

  const toggleVoiceMode = useCallback(() => {
    const newValue = !isVoiceEnabled;
    updateAudioSettings({ voiceMode: newValue });

    if (!newValue) {
      // When turning off voice mode, stop any ongoing speech
      handleStopSpeaking();
      handleStopListening();
    }
  }, [isVoiceEnabled, updateAudioSettings, handleStopSpeaking, handleStopListening]);

  // Clear error after 5 seconds
  useEffect(() => {
    if (error) {
      const timer = setTimeout(() => setError(null), 5000);
      return () => clearTimeout(timer);
    }
  }, [error]);

  return {
    voiceState,
    isVoiceEnabled,
    isRecognitionAvailable,
    error,
    startListening,
    stopListening: handleStopListening,
    speak,
    stopSpeaking: handleStopSpeaking,
    toggleVoiceMode,
  };
}
