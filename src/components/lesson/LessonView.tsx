import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { useSettings } from '@/contexts/SettingsContext';
import { useGamification } from '@/contexts/GamificationContext';
import { db } from '@/services/supabase';
import { generateLesson, generateExample, simplifyExplanation, rethemeContent } from '@/services/ai';
import { getEffectiveDifficulty } from '@/utils/helpers';
import { sessionCache } from '@/utils/sessionCache';
import { useVoiceSession } from '@/hooks/useVoiceSession';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import Header from '../shared/Header';
import StudyTimer from '../shared/StudyTimer';
import type { Topic, LessonContent, ChatContext } from '@/types';
import { ArrowLeft, ArrowRight, RefreshCw, Lightbulb, Palette, CheckCircle, AlertCircle, Volume2, VolumeX } from 'lucide-react';
import { ChatTutor } from '../chat';
import DiveDeeper from './DiveDeeper';

export default function LessonView() {
  const { topicId } = useParams<{ topicId: string }>();
  const navigate = useNavigate();
  const { profile, interests } = useUser();
  const { settings } = useSettings();
  const { recordLessonComplete } = useGamification();
  const { voiceState, isVoiceEnabled, speak, stopSpeaking } = useVoiceSession();

  const [topic, setTopic] = useState<Topic | null>(null);
  const [lesson, setLesson] = useState<LessonContent | null>(null);
  const [currentSection, setCurrentSection] = useState(0);
  const [loading, setLoading] = useState(true);
  const [actionLoading, setActionLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    if (topicId) {
      loadLesson();
    }
  }, [topicId]);

  // Save session cache whenever section changes
  useEffect(() => {
    if (topicId && lesson) {
      sessionCache.saveLesson(topicId, lesson, currentSection);
    }
  }, [topicId, lesson, currentSection]);

  // Voice auto-play disabled for now
  // useEffect(() => {
  //   if (settings.audio.voiceMode && lesson?.sections[currentSection]) {
  //     const section = lesson.sections[currentSection];
  //     speakText(`${section.title}. ${section.explanation}`, {
  //       rate: settings.audio.voiceSpeed
  //     });
  //   }
  //   return () => stopSpeaking();
  // }, [currentSection, settings.audio.voiceMode]);

  const loadLesson = async () => {
    if (!topicId) return;
    try {
      setLoading(true);
      setError(null);

      // 1. Check session cache first for existing lesson
      const cached = sessionCache.getLesson(topicId);
      if (cached) {
        console.log('Restored lesson from session cache');
        const topicData = await db.getTopic(topicId);
        setTopic(topicData);
        setLesson(cached.lesson);
        setCurrentSection(cached.currentSection);
        setLoading(false);
        return;
      }

      // 2. Load topic data
      const topicData = await db.getTopic(topicId);
      if (!topicData) {
        setError('Topic not found. It may have been removed.');
        return;
      }
      setTopic(topicData);

      // 3. Generate lesson (uses content library cache internally)
      const primaryInterest = interests.find(i => i.is_primary)?.interest?.name || 'general learning';
      const effectiveDifficulty = getEffectiveDifficulty(
        profile?.difficulty_level || 5,
        settings.learning.subjectDifficulties,
        settings.learning.topicDifficulties,
        topicData.subject_id,
        topicId
      );
      const lessonContent = await generateLesson({
        userId: profile?.id || 'guest',
        topicId: topicId,
        interestTheme: primaryInterest,
        difficultyLevel: effectiveDifficulty,
        gradeLevel: profile?.grade_level || 5
      });
      setLesson(lessonContent);

      // 4. Save to session cache
      sessionCache.saveLesson(topicId, lessonContent, 0);

      // 5. Update progress in database
      if (profile) {
        await db.upsertProgress(profile.id, topicId, topicData.subject_id, {
          status: 'in_progress',
          last_accessed: new Date().toISOString()
        });
      }
    } catch (err) {
      console.error('Error loading lesson:', err);
      setError('Failed to generate lesson. Please check your internet connection and try again.');
    } finally {
      setLoading(false);
    }
  };

  const handleRequestExample = async () => {
    if (!lesson || !topic) return;
    setActionLoading(true);
    try {
      const currentSectionData = lesson.sections[currentSection];
      const primaryInterest = interests.find(i => i.is_primary)?.interest?.name || 'general';
      const effectiveDifficulty = getEffectiveDifficulty(
        profile?.difficulty_level || 5,
        settings.learning.subjectDifficulties,
        settings.learning.topicDifficulties,
        topic.subject_id,
        topicId
      );
      const newExample = await generateExample({
        concept: currentSectionData.title,
        interestTheme: primaryInterest,
        difficultyLevel: effectiveDifficulty,
        previousExamples: currentSectionData.examples
      });
      const updatedLesson = { ...lesson };
      updatedLesson.sections[currentSection].examples = [...currentSectionData.examples, newExample];
      setLesson(updatedLesson);
    } catch (error) {
      console.error('Error generating example:', error);
    } finally {
      setActionLoading(false);
    }
  };

  const handleSimplify = async () => {
    if (!lesson) return;
    setActionLoading(true);
    try {
      const currentSectionData = lesson.sections[currentSection];
      const simplified = await simplifyExplanation({
        originalText: currentSectionData.explanation,
        targetGradeLevel: Math.max(1, (profile?.grade_level || 5) - 2)
      });
      const updatedLesson = { ...lesson };
      updatedLesson.sections[currentSection].explanation = simplified;
      setLesson(updatedLesson);
    } catch (error) {
      console.error('Error simplifying:', error);
    } finally {
      setActionLoading(false);
    }
  };

  const handleChangeTheme = async () => {
    if (!lesson || interests.length === 0) return;
    setActionLoading(true);
    try {
      const otherInterests = interests.filter(i => !i.is_primary);
      const newInterest = otherInterests[Math.floor(Math.random() * otherInterests.length)]?.interest?.name || 'general';
      const currentSectionData = lesson.sections[currentSection];
      const rethemed = await rethemeContent(currentSectionData.explanation, newInterest, currentSectionData.title);
      const updatedLesson = { ...lesson };
      updatedLesson.sections[currentSection].explanation = rethemed;
      setLesson(updatedLesson);
    } catch (error) {
      console.error('Error changing theme:', error);
    } finally {
      setActionLoading(false);
    }
  };

  const handleNext = () => {
    if (lesson && currentSection < lesson.sections.length - 1) {
      setCurrentSection(prev => prev + 1);
    } else {
      // Record lesson completion when finishing all sections
      recordLessonComplete();
      // Clear session cache since lesson is complete
      if (topicId) {
        sessionCache.clearLesson(topicId);
      }
      navigate(`/practice/${topicId}`);
    }
  };

  const handlePrevious = () => {
    if (currentSection > 0) {
      setCurrentSection(prev => prev - 1);
    }
  };

  const handleReadAloud = () => {
    if (!lesson) return;

    if (voiceState === 'speaking') {
      stopSpeaking();
      return;
    }

    const section = lesson.sections[currentSection];
    const textToRead = `${section.title}. ${section.explanation}`;
    speak(textToRead);
  };

  if (loading) {
    return <Loading fullScreen message="Generating your personalized lesson..." />;
  }

  if (error) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50 dark:bg-gray-900 p-4">
        <Card className="max-w-md text-center">
          <AlertCircle className="w-12 h-12 text-red-500 mx-auto mb-4" />
          <h2 className="text-xl font-semibold text-gray-900 dark:text-white mb-2">Unable to Load Lesson</h2>
          <p className="text-gray-600 dark:text-gray-300 mb-6">{error}</p>
          <div className="flex gap-3 justify-center">
            <Button variant="secondary" onClick={() => navigate(-1)}>
              <ArrowLeft className="w-4 h-4 mr-2" />Go Back
            </Button>
            <Button variant="primary" onClick={loadLesson}>
              <RefreshCw className="w-4 h-4 mr-2" />Try Again
            </Button>
          </div>
        </Card>
      </div>
    );
  }

  if (!topic || !lesson) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50 dark:bg-gray-900 p-4">
        <Card className="max-w-md text-center">
          <p className="text-gray-600 dark:text-gray-300 mb-4">Lesson not found</p>
          <Button onClick={() => navigate('/')}>Go Home</Button>
        </Card>
      </div>
    );
  }

  const section = lesson.sections[currentSection];

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      <Header
        showBackButton
        title={topic.name}
        subtitle={`Section ${currentSection + 1} of ${lesson.sections.length}`}
        showGradeBadge
        showDifficultySlider
        showThemeToggle
        showVoiceToggle
        rightContent={<StudyTimer compact />}
        sticky
        progressBar={{
          current: currentSection + 1,
          total: lesson.sections.length
        }}
      />
      <main className="container-app py-8 max-w-4xl">
        <Card className="mb-6">
          <div className="flex items-start justify-between gap-4 mb-6">
            <h2 className="text-3xl font-bold text-gray-900 dark:text-white">{section.title}</h2>
            {isVoiceEnabled && (
              <Button
                variant={voiceState === 'speaking' ? 'primary' : 'secondary'}
                size="sm"
                onClick={handleReadAloud}
                className="shrink-0"
              >
                {voiceState === 'speaking' ? (
                  <><VolumeX className="w-4 h-4 mr-2" />Stop</>
                ) : (
                  <><Volume2 className="w-4 h-4 mr-2" />Read Aloud</>
                )}
              </Button>
            )}
          </div>
          <div className="prose dark:prose-invert max-w-none mb-6"><p className="text-lg leading-relaxed text-gray-700 dark:text-gray-300">{section.explanation}</p></div>
          {section.examples.length > 0 && (
            <div className="mb-6"><h3 className="text-xl font-semibold text-gray-900 dark:text-white mb-3">Examples</h3><div className="space-y-3">{section.examples.map((example, idx) => (<div key={idx} className="p-4 bg-blue-50 dark:bg-blue-900/20 rounded-lg border-l-4 border-blue-600"><p className="text-gray-700 dark:text-gray-300">{example}</p></div>))}</div></div>
          )}
          <div className="flex flex-wrap gap-3 pt-6 border-t border-gray-200 dark:border-gray-700">
            <Button variant="secondary" onClick={handleRequestExample} disabled={actionLoading} loading={actionLoading}><RefreshCw className="w-4 h-4 mr-2" />Show Another Example</Button>
            <Button variant="secondary" onClick={handleSimplify} disabled={actionLoading} loading={actionLoading}><Lightbulb className="w-4 h-4 mr-2" />Explain Like I'm 5</Button>
            <Button variant="secondary" onClick={handleChangeTheme} disabled={actionLoading} loading={actionLoading}><Palette className="w-4 h-4 mr-2" />Use Different Theme</Button>
            <DiveDeeper
              concept={section.title}
              currentExplanation={section.explanation}
              gradeLevel={profile?.grade_level || 5}
              difficultyLevel={getEffectiveDifficulty(
                profile?.difficulty_level || 5,
                settings.learning.subjectDifficulties,
                settings.learning.topicDifficulties,
                topic.subject_id,
                topicId
              )}
              interestTheme={interests.find(i => i.is_primary)?.interest?.name || 'general learning'}
            />
          </div>
        </Card>
        {lesson.keyPoints.length > 0 && (<Card className="mb-6"><h3 className="text-xl font-semibold text-gray-900 dark:text-white mb-4"><CheckCircle className="w-5 h-5 inline mr-2 text-green-600" />Key Takeaways</h3><ul className="space-y-2">{lesson.keyPoints.map((point, idx) => (<li key={idx} className="flex items-start"><span className="text-primary-600 dark:text-primary-400 mr-2">•</span><span className="text-gray-700 dark:text-gray-300">{point}</span></li>))}</ul></Card>)}
        {lesson.vocabulary.length > 0 && (<Card className="mb-6"><h3 className="text-xl font-semibold text-gray-900 dark:text-white mb-4">Vocabulary</h3><div className="grid grid-cols-1 md:grid-cols-2 gap-4">{lesson.vocabulary.map((item, idx) => (<div key={idx} className="p-4 bg-gray-50 dark:bg-gray-800 rounded-lg"><h4 className="font-semibold text-primary-600 dark:text-primary-400 mb-1">{item.term}</h4><p className="text-sm text-gray-600 dark:text-gray-400">{item.definition}</p></div>))}</div></Card>)}
        <div className="flex justify-between items-center mt-8">
          <Button variant="secondary" onClick={handlePrevious} disabled={currentSection === 0}><ArrowLeft className="w-4 h-4 mr-2" />Previous</Button>
          <span className="text-sm text-gray-600 dark:text-gray-400">{currentSection + 1} / {lesson.sections.length}</span>
          <Button variant="primary" onClick={handleNext}>{currentSection < lesson.sections.length - 1 ? (<>Next<ArrowRight className="w-4 h-4 ml-2" /></>) : (<>Practice Questions<ArrowRight className="w-4 h-4 ml-2" /></>)}</Button>
        </div>
      </main>

      {/* AI Chat Tutor */}
      <ChatTutor
        context={{
          topicName: topic.name,
          topicDescription: topic.description,
          subjectName: topic.subject?.name || 'Learning',
          gradeLevel: profile?.grade_level || 5,
          difficultyLevel: getEffectiveDifficulty(
            profile?.difficulty_level || 5,
            settings.learning.subjectDifficulties,
            settings.learning.topicDifficulties,
            topic.subject_id,
            topicId
          ),
          interestTheme: interests.find(i => i.is_primary)?.interest?.name || 'general learning',
          lessonContent: lesson
        } as ChatContext}
        lessonContent={lesson}
      />
    </div>
  );
}
