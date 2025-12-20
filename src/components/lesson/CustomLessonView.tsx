import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { useSettings } from '@/contexts/SettingsContext';
import { useGamification } from '@/contexts/GamificationContext';
import { db } from '@/services/supabase';
import { generateCustomLesson, generateExample, simplifyExplanation } from '@/services/ai';
import { sessionCache } from '@/utils/sessionCache';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import Header from '../shared/Header';
import StudyTimer from '../shared/StudyTimer';
import type { CustomTopic, LessonContent, CustomTopicOutline } from '@/types';
import { ArrowLeft, ArrowRight, RefreshCw, Lightbulb, CheckCircle, AlertCircle, Sparkles } from 'lucide-react';

export default function CustomLessonView() {
  const { customTopicId } = useParams<{ customTopicId: string }>();
  const navigate = useNavigate();
  const { interests } = useUser();
  useSettings(); // Hook needed for Header component context
  const { recordLessonComplete } = useGamification();

  const [customTopic, setCustomTopic] = useState<CustomTopic | null>(null);
  const [lesson, setLesson] = useState<LessonContent | null>(null);
  const [currentSection, setCurrentSection] = useState(0);
  const [loading, setLoading] = useState(true);
  const [actionLoading, setActionLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    if (customTopicId) {
      loadLesson();
    }
  }, [customTopicId]);

  // Save session cache whenever section changes
  useEffect(() => {
    if (customTopicId && lesson) {
      sessionCache.saveLesson(`custom-${customTopicId}`, lesson, currentSection);
    }
  }, [customTopicId, lesson, currentSection]);

  const loadLesson = async () => {
    if (!customTopicId) return;
    try {
      setLoading(true);
      setError(null);

      // 1. Check session cache first for existing lesson
      const cached = sessionCache.getLesson(`custom-${customTopicId}`);
      if (cached) {
        console.log('Restored custom lesson from session cache');
        const topicData = await db.getCustomTopic(customTopicId);
        setCustomTopic(topicData);
        setLesson(cached.lesson);
        setCurrentSection(cached.currentSection);
        setLoading(false);
        return;
      }

      // 2. Load custom topic data
      const topicData = await db.getCustomTopic(customTopicId);
      if (!topicData) {
        setError('Custom topic not found. It may have been removed.');
        return;
      }
      setCustomTopic(topicData);

      // 3. Increment usage count
      await db.incrementCustomTopicUsage(customTopicId);

      // 4. Generate lesson from custom topic outline
      const primaryInterest = interests.find(i => i.is_primary)?.interest?.name || 'general learning';
      const outline = topicData.topic_outline as unknown as CustomTopicOutline;

      const lessonContent = await generateCustomLesson({
        topicName: topicData.name,
        topicDescription: topicData.description,
        outline: outline,
        interestTheme: primaryInterest,
        difficultyLevel: topicData.difficulty_level,
        gradeLevel: topicData.grade_level
      });
      setLesson(lessonContent);

      // 5. Save to session cache
      sessionCache.saveLesson(`custom-${customTopicId}`, lessonContent, 0);

    } catch (err) {
      console.error('Error loading custom lesson:', err);
      setError('Failed to generate lesson. Please check your internet connection and try again.');
    } finally {
      setLoading(false);
    }
  };

  const handleRequestExample = async () => {
    if (!lesson || !customTopic) return;
    setActionLoading(true);
    try {
      const currentSectionData = lesson.sections[currentSection];
      const primaryInterest = interests.find(i => i.is_primary)?.interest?.name || 'general';
      const newExample = await generateExample({
        concept: currentSectionData.title,
        interestTheme: primaryInterest,
        difficultyLevel: customTopic.difficulty_level,
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
    if (!lesson || !customTopic) return;
    setActionLoading(true);
    try {
      const currentSectionData = lesson.sections[currentSection];
      const simplified = await simplifyExplanation({
        originalText: currentSectionData.explanation,
        targetGradeLevel: Math.max(1, customTopic.grade_level - 2)
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

  const handleNext = () => {
    if (lesson && currentSection < lesson.sections.length - 1) {
      setCurrentSection(prev => prev + 1);
    } else {
      // Record lesson completion when finishing all sections
      recordLessonComplete();
      // Clear session cache since lesson is complete
      if (customTopicId) {
        sessionCache.clearLesson(`custom-${customTopicId}`);
      }
      // For custom topics, go back to dashboard (no practice quiz yet for custom topics)
      navigate('/');
    }
  };

  const handlePrevious = () => {
    if (currentSection > 0) {
      setCurrentSection(prev => prev - 1);
    }
  };

  if (loading) {
    return <Loading fullScreen message="Generating your custom lesson..." />;
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

  if (!customTopic || !lesson) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50 dark:bg-gray-900 p-4">
        <Card className="max-w-md text-center">
          <p className="text-gray-600 dark:text-gray-300 mb-4">Custom lesson not found</p>
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
        title={
          <div className="flex items-center gap-2">
            <Sparkles className="w-5 h-5 text-purple-500" />
            <span>{customTopic.name}</span>
          </div>
        }
        subtitle={`Section ${currentSection + 1} of ${lesson.sections.length}`}
        showGradeBadge
        showDifficultySlider
        showThemeToggle
        showVoiceToggle
        rightContent={<StudyTimer compact />}
        sticky
        progressBar={{
          current: currentSection + 1,
          total: lesson.sections.length,
          variant: 'gradient'
        }}
      />
      <main className="container-app py-8 max-w-4xl">
        {/* Custom Topic Badge */}
        <div className="mb-4 flex items-center gap-2">
          <span className="px-3 py-1 text-xs font-medium rounded-full bg-gradient-to-r from-primary-100 to-purple-100 dark:from-primary-900/30 dark:to-purple-900/30 text-primary-700 dark:text-primary-300">
            <Sparkles className="w-3 h-3 inline mr-1" />
            Custom Topic
          </span>
          <span className="text-sm text-gray-500 dark:text-gray-400">
            Grade {customTopic.grade_level} • Level {customTopic.difficulty_level}/10
          </span>
        </div>

        <Card className="mb-6">
          <h2 className="text-3xl font-bold text-gray-900 dark:text-white mb-6">{section.title}</h2>
          <div className="prose dark:prose-invert max-w-none mb-6">
            <p className="text-lg leading-relaxed text-gray-700 dark:text-gray-300">{section.explanation}</p>
          </div>
          {section.examples.length > 0 && (
            <div className="mb-6">
              <h3 className="text-xl font-semibold text-gray-900 dark:text-white mb-3">Examples</h3>
              <div className="space-y-3">
                {section.examples.map((example, idx) => (
                  <div key={idx} className="p-4 bg-purple-50 dark:bg-purple-900/20 rounded-lg border-l-4 border-purple-600">
                    <p className="text-gray-700 dark:text-gray-300">{example}</p>
                  </div>
                ))}
              </div>
            </div>
          )}
          <div className="flex flex-wrap gap-3 pt-6 border-t border-gray-200 dark:border-gray-700">
            <Button variant="secondary" onClick={handleRequestExample} disabled={actionLoading} loading={actionLoading}>
              <RefreshCw className="w-4 h-4 mr-2" />Show Another Example
            </Button>
            <Button variant="secondary" onClick={handleSimplify} disabled={actionLoading} loading={actionLoading}>
              <Lightbulb className="w-4 h-4 mr-2" />Explain Simpler
            </Button>
          </div>
        </Card>

        {lesson.keyPoints.length > 0 && (
          <Card className="mb-6">
            <h3 className="text-xl font-semibold text-gray-900 dark:text-white mb-4">
              <CheckCircle className="w-5 h-5 inline mr-2 text-green-600" />Key Takeaways
            </h3>
            <ul className="space-y-2">
              {lesson.keyPoints.map((point, idx) => (
                <li key={idx} className="flex items-start">
                  <span className="text-primary-600 dark:text-primary-400 mr-2">•</span>
                  <span className="text-gray-700 dark:text-gray-300">{point}</span>
                </li>
              ))}
            </ul>
          </Card>
        )}

        {lesson.vocabulary.length > 0 && (
          <Card className="mb-6">
            <h3 className="text-xl font-semibold text-gray-900 dark:text-white mb-4">Vocabulary</h3>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {lesson.vocabulary.map((item, idx) => (
                <div key={idx} className="p-4 bg-gray-50 dark:bg-gray-800 rounded-lg">
                  <h4 className="font-semibold text-primary-600 dark:text-primary-400 mb-1">{item.term}</h4>
                  <p className="text-sm text-gray-600 dark:text-gray-400">{item.definition}</p>
                </div>
              ))}
            </div>
          </Card>
        )}

        <div className="flex justify-between items-center mt-8">
          <Button variant="secondary" onClick={handlePrevious} disabled={currentSection === 0}>
            <ArrowLeft className="w-4 h-4 mr-2" />Previous
          </Button>
          <span className="text-sm text-gray-600 dark:text-gray-400">
            {currentSection + 1} / {lesson.sections.length}
          </span>
          <Button variant="primary" onClick={handleNext}>
            {currentSection < lesson.sections.length - 1 ? (
              <>Next<ArrowRight className="w-4 h-4 ml-2" /></>
            ) : (
              <>Complete<CheckCircle className="w-4 h-4 ml-2" /></>
            )}
          </Button>
        </div>
      </main>
    </div>
  );
}
