/**
 * Google Cloud Text-to-Speech Service
 *
 * Uses Google Cloud TTS API to synthesize speech from text
 * with configurable voice parameters for different teaching personas.
 */

import type { VoiceTeacher } from '@/types';

const API_KEY = import.meta.env.VITE_GOOGLE_CLOUD_TTS_API_KEY;
const TTS_API_URL = 'https://texttospeech.googleapis.com/v1/text:synthesize';

// Audio cache for repeated content
const audioCache = new Map<string, string>();
const MAX_CACHE_SIZE = 50;

// Current audio state
let currentAudio: HTMLAudioElement | null = null;
let isPlaying = false;

export interface SynthesizeSpeechOptions {
  text: string;
  voiceTeacher: VoiceTeacher;
  ssml?: boolean; // Use SSML markup instead of plain text
}

export interface TTSError {
  code: string;
  message: string;
}

/**
 * Generate a cache key for audio content
 */
function getCacheKey(text: string, voiceTeacher: VoiceTeacher): string {
  return `${voiceTeacher.voice_name}_${voiceTeacher.speaking_rate}_${voiceTeacher.pitch}_${text.substring(0, 100)}`;
}

/**
 * Manage cache size by removing oldest entries
 */
function trimCache(): void {
  if (audioCache.size > MAX_CACHE_SIZE) {
    const keysToDelete = Array.from(audioCache.keys()).slice(0, audioCache.size - MAX_CACHE_SIZE);
    keysToDelete.forEach(key => audioCache.delete(key));
  }
}

/**
 * Check if TTS API is available (has API key)
 */
export function isTTSAvailable(): boolean {
  return !!API_KEY;
}

/**
 * Synthesize speech from text using Google Cloud TTS API
 * Returns base64 encoded audio content
 */
export async function synthesizeSpeech(options: SynthesizeSpeechOptions): Promise<string> {
  const { text, voiceTeacher, ssml = false } = options;

  if (!API_KEY) {
    throw new Error('Google Cloud TTS API key not configured. Please add VITE_GOOGLE_CLOUD_TTS_API_KEY to your environment.');
  }

  if (!text.trim()) {
    throw new Error('Text cannot be empty');
  }

  // Check cache first
  const cacheKey = getCacheKey(text, voiceTeacher);
  const cachedAudio = audioCache.get(cacheKey);
  if (cachedAudio) {
    return cachedAudio;
  }

  // Build request body
  const requestBody = {
    input: ssml ? { ssml: text } : { text },
    voice: {
      languageCode: voiceTeacher.language_code || 'en-US',
      name: voiceTeacher.voice_name,
    },
    audioConfig: {
      audioEncoding: 'MP3',
      speakingRate: voiceTeacher.speaking_rate || 1.0,
      pitch: voiceTeacher.pitch || 0.0,
      volumeGainDb: voiceTeacher.volume_gain_db || 0.0,
    },
  };

  try {
    const response = await fetch(`${TTS_API_URL}?key=${API_KEY}`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(requestBody),
    });

    if (!response.ok) {
      const errorData = await response.json().catch(() => ({}));
      throw new Error(
        errorData?.error?.message || `TTS API error: ${response.status} ${response.statusText}`
      );
    }

    const data = await response.json();
    const audioContent = data.audioContent;

    if (!audioContent) {
      throw new Error('No audio content received from TTS API');
    }

    // Cache the result
    audioCache.set(cacheKey, audioContent);
    trimCache();

    return audioContent;
  } catch (error) {
    if (error instanceof Error) {
      throw error;
    }
    throw new Error('Failed to synthesize speech');
  }
}

/**
 * Play audio from base64 content
 */
export async function playAudio(base64Audio: string): Promise<void> {
  return new Promise((resolve, reject) => {
    try {
      // Stop any currently playing audio
      stopAudio();

      // Create audio element from base64
      const audioData = `data:audio/mp3;base64,${base64Audio}`;
      currentAudio = new Audio(audioData);
      isPlaying = true;

      currentAudio.onended = () => {
        isPlaying = false;
        currentAudio = null;
        resolve();
      };

      currentAudio.onerror = () => {
        isPlaying = false;
        currentAudio = null;
        reject(new Error('Failed to play audio'));
      };

      currentAudio.play().catch((error) => {
        isPlaying = false;
        currentAudio = null;
        reject(error);
      });
    } catch (error) {
      isPlaying = false;
      currentAudio = null;
      reject(error);
    }
  });
}

/**
 * Stop currently playing audio
 */
export function stopAudio(): void {
  if (currentAudio) {
    currentAudio.pause();
    currentAudio.currentTime = 0;
    currentAudio = null;
  }
  isPlaying = false;
}

/**
 * Check if audio is currently playing
 */
export function isAudioPlaying(): boolean {
  return isPlaying;
}

/**
 * Synthesize and play text using a voice teacher
 * Convenience function that combines synthesizeSpeech and playAudio
 */
export async function speakText(text: string, voiceTeacher: VoiceTeacher): Promise<void> {
  const audioContent = await synthesizeSpeech({ text, voiceTeacher });
  await playAudio(audioContent);
}

/**
 * Generate a preview phrase for a voice teacher
 */
export function getVoicePreviewText(voiceTeacher: VoiceTeacher): string {
  return `Hello! I'm ${voiceTeacher.name}, and I'll be your guide today. Let's learn something amazing together!`;
}

/**
 * Clear the audio cache
 */
export function clearAudioCache(): void {
  audioCache.clear();
}

/**
 * Get current cache size
 */
export function getCacheSize(): number {
  return audioCache.size;
}

/**
 * Split long text into chunks for better TTS handling
 * Google TTS has a limit of ~5000 characters per request
 */
export function splitTextForTTS(text: string, maxChunkSize: number = 4500): string[] {
  if (text.length <= maxChunkSize) {
    return [text];
  }

  const chunks: string[] = [];
  const sentences = text.split(/(?<=[.!?])\s+/);
  let currentChunk = '';

  for (const sentence of sentences) {
    if (currentChunk.length + sentence.length + 1 <= maxChunkSize) {
      currentChunk += (currentChunk ? ' ' : '') + sentence;
    } else {
      if (currentChunk) {
        chunks.push(currentChunk);
      }
      // If a single sentence is too long, split by clauses
      if (sentence.length > maxChunkSize) {
        const clauses = sentence.split(/(?<=[,;:])\s+/);
        currentChunk = '';
        for (const clause of clauses) {
          if (currentChunk.length + clause.length + 1 <= maxChunkSize) {
            currentChunk += (currentChunk ? ' ' : '') + clause;
          } else {
            if (currentChunk) {
              chunks.push(currentChunk);
            }
            currentChunk = clause;
          }
        }
      } else {
        currentChunk = sentence;
      }
    }
  }

  if (currentChunk) {
    chunks.push(currentChunk);
  }

  return chunks;
}

/**
 * Speak long text by splitting into chunks and playing sequentially
 */
export async function speakLongText(
  text: string,
  voiceTeacher: VoiceTeacher,
  onProgress?: (chunkIndex: number, totalChunks: number) => void
): Promise<void> {
  const chunks = splitTextForTTS(text);

  for (let i = 0; i < chunks.length; i++) {
    // Check if we should stop
    if (!isPlaying && i > 0) {
      break;
    }

    onProgress?.(i, chunks.length);
    await speakText(chunks[i], voiceTeacher);
  }
}
