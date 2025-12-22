/**
 * Offline Storage Service using IndexedDB
 * Provides persistent storage for lessons, progress, and cached content
 */

import { openDB, DBSchema, IDBPDatabase } from 'idb';
import type { Topic, Subject, LessonContent, UserProgress } from '@/types';

// ============================================================================
// Database Schema
// ============================================================================

interface TulomiDB extends DBSchema {
  lessons: {
    key: string;
    value: CachedLesson;
    indexes: {
      'by-topic': string;
      'by-subject': string;
      'by-cached-at': number;
    };
  };
  topics: {
    key: string;
    value: CachedTopic;
    indexes: {
      'by-subject': string;
    };
  };
  subjects: {
    key: string;
    value: Subject;
  };
  progress: {
    key: string;
    value: CachedProgress;
    indexes: {
      'by-user': string;
      'by-synced': number;
    };
  };
  pendingSync: {
    key: string;
    value: PendingSyncItem;
    indexes: {
      'by-type': string;
      'by-created': number;
    };
  };
  settings: {
    key: string;
    value: unknown;
  };
}

interface CachedLesson {
  id: string;
  topicId: string;
  subjectId: string;
  content: LessonContent;
  cachedAt: number;
  expiresAt: number;
}

interface CachedTopic extends Topic {
  subjectId: string;
  cachedAt: number;
}

interface CachedProgress {
  id: string;
  userId: string;
  topicId: string;
  data: Partial<UserProgress>;
  synced: boolean;
  lastModified: number;
}

interface PendingSyncItem {
  id: string;
  type: 'progress' | 'quiz_response' | 'session_log';
  data: unknown;
  createdAt: number;
  retryCount: number;
}

// ============================================================================
// Constants
// ============================================================================

const DB_NAME = 'tulomi-offline';
const DB_VERSION = 1;
const LESSON_CACHE_DURATION = 7 * 24 * 60 * 60 * 1000; // 7 days
const MAX_CACHED_LESSONS = 50;

// ============================================================================
// Database Initialization
// ============================================================================

let dbPromise: Promise<IDBPDatabase<TulomiDB>> | null = null;

async function getDB(): Promise<IDBPDatabase<TulomiDB>> {
  if (!dbPromise) {
    dbPromise = openDB<TulomiDB>(DB_NAME, DB_VERSION, {
      upgrade(db) {
        // Lessons store
        if (!db.objectStoreNames.contains('lessons')) {
          const lessonStore = db.createObjectStore('lessons', { keyPath: 'id' });
          lessonStore.createIndex('by-topic', 'topicId');
          lessonStore.createIndex('by-subject', 'subjectId');
          lessonStore.createIndex('by-cached-at', 'cachedAt');
        }

        // Topics store
        if (!db.objectStoreNames.contains('topics')) {
          const topicStore = db.createObjectStore('topics', { keyPath: 'id' });
          topicStore.createIndex('by-subject', 'subjectId');
        }

        // Subjects store
        if (!db.objectStoreNames.contains('subjects')) {
          db.createObjectStore('subjects', { keyPath: 'id' });
        }

        // Progress store
        if (!db.objectStoreNames.contains('progress')) {
          const progressStore = db.createObjectStore('progress', { keyPath: 'id' });
          progressStore.createIndex('by-user', 'userId');
          progressStore.createIndex('by-synced', 'synced');
        }

        // Pending sync queue
        if (!db.objectStoreNames.contains('pendingSync')) {
          const syncStore = db.createObjectStore('pendingSync', { keyPath: 'id' });
          syncStore.createIndex('by-type', 'type');
          syncStore.createIndex('by-created', 'createdAt');
        }

        // Settings store
        if (!db.objectStoreNames.contains('settings')) {
          db.createObjectStore('settings');
        }
      },
    });
  }
  return dbPromise;
}

// ============================================================================
// Lesson Cache Operations
// ============================================================================

export async function cacheLesson(
  topicId: string,
  subjectId: string,
  content: LessonContent
): Promise<void> {
  const db = await getDB();
  const now = Date.now();

  await db.put('lessons', {
    id: topicId,
    topicId,
    subjectId,
    content,
    cachedAt: now,
    expiresAt: now + LESSON_CACHE_DURATION,
  });

  // Cleanup old lessons if we exceed the max
  await cleanupOldLessons();
}

export async function getCachedLesson(topicId: string): Promise<LessonContent | null> {
  const db = await getDB();
  const lesson = await db.get('lessons', topicId);

  if (!lesson) return null;

  // Check if expired
  if (Date.now() > lesson.expiresAt) {
    await db.delete('lessons', topicId);
    return null;
  }

  return lesson.content;
}

export async function getCachedLessonsBySubject(subjectId: string): Promise<CachedLesson[]> {
  const db = await getDB();
  return db.getAllFromIndex('lessons', 'by-subject', subjectId);
}

export async function deleteCachedLesson(topicId: string): Promise<void> {
  const db = await getDB();
  await db.delete('lessons', topicId);
}

async function cleanupOldLessons(): Promise<void> {
  const db = await getDB();
  const allLessons = await db.getAllFromIndex('lessons', 'by-cached-at');

  // Remove expired lessons
  const now = Date.now();
  for (const lesson of allLessons) {
    if (now > lesson.expiresAt) {
      await db.delete('lessons', lesson.id);
    }
  }

  // If still over limit, remove oldest
  const remaining = await db.getAllFromIndex('lessons', 'by-cached-at');
  if (remaining.length > MAX_CACHED_LESSONS) {
    const toRemove = remaining.slice(0, remaining.length - MAX_CACHED_LESSONS);
    for (const lesson of toRemove) {
      await db.delete('lessons', lesson.id);
    }
  }
}

// ============================================================================
// Topic & Subject Cache Operations
// ============================================================================

export async function cacheSubjects(subjects: Subject[]): Promise<void> {
  const db = await getDB();
  const tx = db.transaction('subjects', 'readwrite');
  await Promise.all(subjects.map((subject) => tx.store.put(subject)));
  await tx.done;
}

export async function getCachedSubjects(): Promise<Subject[]> {
  const db = await getDB();
  return db.getAll('subjects');
}

export async function cacheTopics(topics: Topic[], subjectId: string): Promise<void> {
  const db = await getDB();
  const tx = db.transaction('topics', 'readwrite');
  await Promise.all(
    topics.map((topic) =>
      tx.store.put({
        ...topic,
        subjectId,
        cachedAt: Date.now(),
      })
    )
  );
  await tx.done;
}

export async function getCachedTopics(subjectId: string): Promise<Topic[]> {
  const db = await getDB();
  return db.getAllFromIndex('topics', 'by-subject', subjectId);
}

// ============================================================================
// Progress Sync Queue
// ============================================================================

export async function queueProgressUpdate(
  userId: string,
  topicId: string,
  progressData: Partial<UserProgress>
): Promise<void> {
  const db = await getDB();
  const id = `${userId}-${topicId}`;

  await db.put('progress', {
    id,
    userId,
    topicId,
    data: progressData,
    synced: false,
    lastModified: Date.now(),
  });
}

export async function getUnsyncedProgress(): Promise<CachedProgress[]> {
  const db = await getDB();
  const allProgress = await db.getAll('progress');
  return allProgress.filter((p) => !p.synced);
}

export async function markProgressSynced(id: string): Promise<void> {
  const db = await getDB();
  const progress = await db.get('progress', id);
  if (progress) {
    progress.synced = true;
    await db.put('progress', progress);
  }
}

export async function getUserCachedProgress(userId: string): Promise<CachedProgress[]> {
  const db = await getDB();
  return db.getAllFromIndex('progress', 'by-user', userId);
}

// ============================================================================
// Generic Sync Queue
// ============================================================================

export async function queueForSync(
  type: PendingSyncItem['type'],
  data: unknown
): Promise<string> {
  const db = await getDB();
  const id = `${type}-${Date.now()}-${Math.random().toString(36).slice(2)}`;

  await db.put('pendingSync', {
    id,
    type,
    data,
    createdAt: Date.now(),
    retryCount: 0,
  });

  return id;
}

export async function getPendingSyncItems(): Promise<PendingSyncItem[]> {
  const db = await getDB();
  return db.getAllFromIndex('pendingSync', 'by-created');
}

export async function removeSyncItem(id: string): Promise<void> {
  const db = await getDB();
  await db.delete('pendingSync', id);
}

export async function incrementSyncRetry(id: string): Promise<void> {
  const db = await getDB();
  const item = await db.get('pendingSync', id);
  if (item) {
    item.retryCount += 1;
    await db.put('pendingSync', item);
  }
}

// ============================================================================
// Settings Storage
// ============================================================================

export async function saveSetting(key: string, value: unknown): Promise<void> {
  const db = await getDB();
  await db.put('settings', value, key);
}

export async function getSetting<T>(key: string): Promise<T | undefined> {
  const db = await getDB();
  return db.get('settings', key) as Promise<T | undefined>;
}

// ============================================================================
// Utility Functions
// ============================================================================

export async function isOnline(): Promise<boolean> {
  return navigator.onLine;
}

export async function getCacheStats(): Promise<{
  lessonsCount: number;
  topicsCount: number;
  subjectsCount: number;
  pendingSyncCount: number;
  totalSizeEstimate: number;
}> {
  const db = await getDB();

  const lessons = await db.count('lessons');
  const topics = await db.count('topics');
  const subjects = await db.count('subjects');
  const pendingSync = await db.count('pendingSync');

  // Estimate storage usage
  const estimate = await navigator.storage?.estimate?.() || { usage: 0 };

  return {
    lessonsCount: lessons,
    topicsCount: topics,
    subjectsCount: subjects,
    pendingSyncCount: pendingSync,
    totalSizeEstimate: estimate.usage || 0,
  };
}

export async function clearAllCache(): Promise<void> {
  const db = await getDB();
  await db.clear('lessons');
  await db.clear('topics');
  await db.clear('subjects');
  // Don't clear progress or pendingSync - those need to be preserved
}

export async function clearAndDeleteDatabase(): Promise<void> {
  if (dbPromise) {
    const db = await dbPromise;
    db.close();
    dbPromise = null;
  }
  await indexedDB.deleteDatabase(DB_NAME);
}
