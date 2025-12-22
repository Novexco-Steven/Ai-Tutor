import { createContext, useContext, useEffect, useState, useCallback, ReactNode, useRef } from 'react';
import { useLocation } from 'react-router-dom';
import { useUser } from './UserContext';
import { storage } from '@/utils/helpers';
import type { StudySessionData, BreakActivity } from '@/types';

// Routes where study time should be tracked
const LEARNING_ROUTES = [
  '/lesson/',
  '/practice/',
  '/custom-lesson/',
  '/summary/',
  '/tools',
  '/scan',
];

// Idle timeout in milliseconds (60 seconds of no activity = idle)
const IDLE_TIMEOUT = 60 * 1000;

// Break activities for kids
export const BREAK_ACTIVITIES: BreakActivity[] = [
  // Movement
  { id: 'jumping_jacks', title: 'Jumping Jacks', description: 'Do 10 jumping jacks to get your blood flowing!', icon: '🏃', duration: 30, category: 'movement' },
  { id: 'stretch', title: 'Stretch Break', description: 'Reach up high, touch your toes, and roll your shoulders!', icon: '🧘', duration: 60, category: 'movement' },
  { id: 'dance', title: 'Dance Party', description: 'Put on your favorite song and dance for 2 minutes!', icon: '💃', duration: 120, category: 'movement' },
  { id: 'walk', title: 'Quick Walk', description: 'Walk around the room or house for a minute!', icon: '🚶', duration: 60, category: 'movement' },

  // Relaxation
  { id: 'water', title: 'Hydration Time', description: 'Get a glass of water and drink up!', icon: '💧', duration: 30, category: 'relaxation' },
  { id: 'snack', title: 'Healthy Snack', description: 'Grab a piece of fruit or a healthy snack!', icon: '🍎', duration: 120, category: 'relaxation' },
  { id: 'eyes', title: 'Rest Your Eyes', description: 'Look at something far away for 20 seconds!', icon: '👀', duration: 20, category: 'relaxation' },

  // Fun
  { id: 'doodle', title: 'Quick Doodle', description: 'Draw something fun for 2 minutes!', icon: '✏️', duration: 120, category: 'fun' },
  { id: 'joke', title: 'Tell a Joke', description: 'Think of a funny joke to tell someone!', icon: '😄', duration: 30, category: 'fun' },
  { id: 'pet', title: 'Pet Time', description: 'Give your pet some love if you have one!', icon: '🐕', duration: 60, category: 'fun' },

  // Mindfulness
  { id: 'breathe', title: 'Deep Breaths', description: 'Take 5 slow, deep breaths. In through nose, out through mouth.', icon: '🌬️', duration: 30, category: 'mindfulness' },
  { id: 'gratitude', title: 'Gratitude Moment', description: 'Think of 3 things you\'re grateful for today!', icon: '🙏', duration: 30, category: 'mindfulness' },
  { id: 'window', title: 'Nature Look', description: 'Look outside and notice 3 things in nature!', icon: '🌳', duration: 30, category: 'mindfulness' },
];

// Constants
const BREAK_REMINDER_INTERVAL = 25 * 60; // 25 minutes in seconds (Pomodoro)
const DEFAULT_DAILY_GOAL = 30; // 30 minutes

const defaultSessionData: StudySessionData = {
  sessionStartTime: null,
  totalStudyTimeToday: 0,
  lastBreakTime: null,
  breaksTaken: 0,
  dailyGoalMinutes: DEFAULT_DAILY_GOAL,
  dailyGoalCompleted: false,
  focusModeEnabled: false,
  lastActivityDate: null,
};

interface StudySessionContextType {
  data: StudySessionData;
  isStudying: boolean;
  isActivelyLearning: boolean; // true only when on learning page AND not idle
  isIdle: boolean;
  isOnLearningPage: boolean;
  currentSessionDuration: number; // in seconds
  timeSinceLastBreak: number; // in seconds
  shouldTakeBreak: boolean;
  dailyProgress: number; // 0-100
  startSession: () => void;
  pauseSession: () => void;
  recordBreak: () => void;
  setDailyGoal: (minutes: number) => void;
  toggleFocusMode: () => void;
  getRandomBreakActivity: () => BreakActivity;
}

const StudySessionContext = createContext<StudySessionContextType | undefined>(undefined);

export function StudySessionProvider({ children }: { children: ReactNode }) {
  const { profile } = useUser();
  const location = useLocation();
  const [data, setData] = useState<StudySessionData>(defaultSessionData);
  const [currentSessionDuration, setCurrentSessionDuration] = useState(0);
  const [timeSinceLastBreak, setTimeSinceLastBreak] = useState(0);
  const [isIdle, setIsIdle] = useState(false);
  const [lastActivityTime, setLastActivityTime] = useState(Date.now());
  const timerRef = useRef<NodeJS.Timeout | null>(null);
  const idleTimerRef = useRef<NodeJS.Timeout | null>(null);

  // Check if current route is a learning page
  const isOnLearningPage = LEARNING_ROUTES.some(route => location.pathname.startsWith(route));

  // Activity detection - reset idle timer on user interaction
  useEffect(() => {
    const handleActivity = () => {
      setLastActivityTime(Date.now());
      if (isIdle) {
        setIsIdle(false);
      }
    };

    // Listen for user activity
    const events = ['mousedown', 'mousemove', 'keydown', 'scroll', 'touchstart', 'click'];
    events.forEach(event => {
      window.addEventListener(event, handleActivity, { passive: true });
    });

    return () => {
      events.forEach(event => {
        window.removeEventListener(event, handleActivity);
      });
    };
  }, [isIdle]);

  // Idle detection timer
  useEffect(() => {
    const checkIdle = () => {
      const now = Date.now();
      if (now - lastActivityTime > IDLE_TIMEOUT && !isIdle) {
        setIsIdle(true);
      }
    };

    // Check every 5 seconds
    idleTimerRef.current = setInterval(checkIdle, 5000);

    return () => {
      if (idleTimerRef.current) {
        clearInterval(idleTimerRef.current);
      }
    };
  }, [lastActivityTime, isIdle]);

  // Load session data
  useEffect(() => {
    const storageKey = profile?.id ? `tulomi_session_${profile.id}` : 'tulomi_session_guest';
    const saved = storage.get<StudySessionData>(storageKey, defaultSessionData);

    // Check if it's a new day
    const today = new Date().toISOString().split('T')[0];
    if (saved.lastActivityDate !== today) {
      // Reset daily stats
      setData({
        ...defaultSessionData,
        dailyGoalMinutes: saved.dailyGoalMinutes,
        focusModeEnabled: saved.focusModeEnabled,
        lastActivityDate: today,
      });
    } else {
      setData(saved);
    }
  }, [profile]);

  // Save session data
  const saveData = useCallback((newData: StudySessionData) => {
    const storageKey = profile?.id ? `tulomi_session_${profile.id}` : 'tulomi_session_guest';
    const today = new Date().toISOString().split('T')[0];
    const dataToSave = { ...newData, lastActivityDate: today };
    storage.set(storageKey, dataToSave);
    setData(dataToSave);
  }, [profile]);

  // Determine if actively learning (on learning page AND not idle)
  const isActivelyLearning = isOnLearningPage && !isIdle;

  // Timer tick - only count time when actively learning
  useEffect(() => {
    if (data.sessionStartTime) {
      timerRef.current = setInterval(() => {
        const now = Date.now();
        const sessionSeconds = Math.floor((now - data.sessionStartTime!) / 1000);
        setCurrentSessionDuration(sessionSeconds);

        // Calculate time since last break
        const breakTime = data.lastBreakTime || data.sessionStartTime!;
        const breakSeconds = Math.floor((now - breakTime) / 1000);
        setTimeSinceLastBreak(breakSeconds);

        // Only increment total study time when ACTIVELY learning (on learning page and not idle)
        if (isActivelyLearning && sessionSeconds % 1 === 0) {
          // Increment by 1 second every second when active
          const newTotal = data.totalStudyTimeToday + 1;
          const goalReached = newTotal >= data.dailyGoalMinutes * 60;
          saveData({
            ...data,
            totalStudyTimeToday: newTotal,
            dailyGoalCompleted: goalReached,
          });
        }
      }, 1000);
    } else {
      if (timerRef.current) {
        clearInterval(timerRef.current);
      }
      setCurrentSessionDuration(0);
    }

    return () => {
      if (timerRef.current) {
        clearInterval(timerRef.current);
      }
    };
  }, [data.sessionStartTime, data.lastBreakTime, data.totalStudyTimeToday, data.dailyGoalMinutes, saveData, isActivelyLearning]);

  const startSession = useCallback(() => {
    const now = Date.now();
    saveData({
      ...data,
      sessionStartTime: now,
      lastBreakTime: now,
    });
  }, [data, saveData]);

  const pauseSession = useCallback(() => {
    if (data.sessionStartTime) {
      const sessionSeconds = Math.floor((Date.now() - data.sessionStartTime) / 1000);
      saveData({
        ...data,
        sessionStartTime: null,
        totalStudyTimeToday: data.totalStudyTimeToday + sessionSeconds,
        lastBreakTime: null,
      });
    }
  }, [data, saveData]);

  const recordBreak = useCallback(() => {
    saveData({
      ...data,
      lastBreakTime: Date.now(),
      breaksTaken: data.breaksTaken + 1,
    });
  }, [data, saveData]);

  const setDailyGoal = useCallback((minutes: number) => {
    saveData({
      ...data,
      dailyGoalMinutes: minutes,
      dailyGoalCompleted: data.totalStudyTimeToday >= minutes * 60,
    });
  }, [data, saveData]);

  const toggleFocusMode = useCallback(() => {
    saveData({
      ...data,
      focusModeEnabled: !data.focusModeEnabled,
    });
  }, [data, saveData]);

  const getRandomBreakActivity = useCallback((): BreakActivity => {
    const randomIndex = Math.floor(Math.random() * BREAK_ACTIVITIES.length);
    return BREAK_ACTIVITIES[randomIndex];
  }, []);

  const isStudying = data.sessionStartTime !== null;
  const shouldTakeBreak = isStudying && timeSinceLastBreak >= BREAK_REMINDER_INTERVAL;
  const dailyProgress = Math.min(100, (data.totalStudyTimeToday / (data.dailyGoalMinutes * 60)) * 100);

  const value = {
    data,
    isStudying,
    isActivelyLearning,
    isIdle,
    isOnLearningPage,
    currentSessionDuration,
    timeSinceLastBreak,
    shouldTakeBreak,
    dailyProgress,
    startSession,
    pauseSession,
    recordBreak,
    setDailyGoal,
    toggleFocusMode,
    getRandomBreakActivity,
  };

  return (
    <StudySessionContext.Provider value={value}>
      {children}
    </StudySessionContext.Provider>
  );
}

export function useStudySession() {
  const context = useContext(StudySessionContext);
  if (context === undefined) {
    throw new Error('useStudySession must be used within a StudySessionProvider');
  }
  return context;
}

// Helper to format time
export function formatStudyTime(seconds: number): string {
  const hours = Math.floor(seconds / 3600);
  const minutes = Math.floor((seconds % 3600) / 60);
  const secs = seconds % 60;

  if (hours > 0) {
    return `${hours}h ${minutes}m`;
  }
  if (minutes > 0) {
    return `${minutes}m ${secs}s`;
  }
  return `${secs}s`;
}
