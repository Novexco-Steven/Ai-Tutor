/**
 * Voice service for text-to-speech and speech-to-text
 * Uses Web Speech API for MVP, can be upgraded to Google Cloud TTS/STT later
 */

class VoiceService {
  private synthesis: SpeechSynthesis;
  private recognition: any; // SpeechRecognition type not globally available
  private currentUtterance: SpeechSynthesisUtterance | null = null;
  private isListening = false;

  constructor() {
    this.synthesis = window.speechSynthesis;

    // Initialize speech recognition if available
    const SpeechRecognition = (window as any).SpeechRecognition || (window as any).webkitSpeechRecognition;
    if (SpeechRecognition) {
      this.recognition = new SpeechRecognition();
      this.recognition.continuous = false;
      this.recognition.interimResults = false;
      this.recognition.lang = 'en-US';
    }
  }

  /**
   * Speak text aloud
   */
  speak(text: string, options?: {
    rate?: number; // 0.1 to 10
    pitch?: number; // 0 to 2
    volume?: number; // 0 to 1
    voice?: string;
    onEnd?: () => void;
  }): void {
    // Cancel any ongoing speech
    this.stop();

    const utterance = new SpeechSynthesisUtterance(text);

    if (options?.rate) utterance.rate = options.rate;
    if (options?.pitch) utterance.pitch = options.pitch;
    if (options?.volume) utterance.volume = options.volume;

    if (options?.voice) {
      const voices = this.synthesis.getVoices();
      const selectedVoice = voices.find(v => v.name === options.voice);
      if (selectedVoice) utterance.voice = selectedVoice;
    }

    if (options?.onEnd) {
      utterance.onend = options.onEnd;
    }

    this.currentUtterance = utterance;
    this.synthesis.speak(utterance);
  }

  /**
   * Stop current speech
   */
  stop(): void {
    if (this.synthesis.speaking) {
      this.synthesis.cancel();
    }
    this.currentUtterance = null;
  }

  /**
   * Pause current speech
   */
  pause(): void {
    if (this.synthesis.speaking) {
      this.synthesis.pause();
    }
  }

  /**
   * Resume paused speech
   */
  resume(): void {
    if (this.synthesis.paused) {
      this.synthesis.resume();
    }
  }

  /**
   * Get available voices
   */
  getVoices(): SpeechSynthesisVoice[] {
    return this.synthesis.getVoices();
  }

  /**
   * Check if currently speaking
   */
  isSpeaking(): boolean {
    return this.synthesis.speaking;
  }

  /**
   * Listen for speech input
   */
  listen(options?: {
    onResult?: (transcript: string) => void;
    onError?: (error: any) => void;
    onEnd?: () => void;
  }): Promise<string> {
    return new Promise((resolve, reject) => {
      if (!this.recognition) {
        reject(new Error('Speech recognition not supported in this browser'));
        return;
      }

      if (this.isListening) {
        reject(new Error('Already listening'));
        return;
      }

      this.isListening = true;

      this.recognition.onresult = (event: any) => {
        const transcript = event.results[0][0].transcript;
        if (options?.onResult) options.onResult(transcript);
        resolve(transcript);
      };

      this.recognition.onerror = (event: any) => {
        if (options?.onError) options.onError(event.error);
        reject(event.error);
      };

      this.recognition.onend = () => {
        this.isListening = false;
        if (options?.onEnd) options.onEnd();
      };

      this.recognition.start();
    });
  }

  /**
   * Stop listening
   */
  stopListening(): void {
    if (this.recognition && this.isListening) {
      this.recognition.stop();
      this.isListening = false;
    }
  }

  /**
   * Check if speech recognition is available
   */
  isRecognitionAvailable(): boolean {
    return !!this.recognition;
  }

  /**
   * Check if currently listening
   */
  isCurrentlyListening(): boolean {
    return this.isListening;
  }
}

// Export singleton instance
export const voiceService = new VoiceService();

// Helper hooks-friendly functions
export const speakText = (text: string, options?: Parameters<VoiceService['speak']>[1]) => {
  voiceService.speak(text, options);
};

export const stopSpeaking = () => {
  voiceService.stop();
};

export const listenForSpeech = (options?: Parameters<VoiceService['listen']>[0]) => {
  return voiceService.listen(options);
};

export const getAvailableVoices = () => {
  return voiceService.getVoices();
};
