import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { useSettings } from '@/contexts/SettingsContext';
import { db } from '@/services/supabase';
import { generateLesson, generateExample, simplifyExplanation, rethemeContent } from '@/services/ai';
import { speakText, stopSpeaking } from '@/services/voice';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import VoiceToggle from '../shared/VoiceToggle';
import type { Topic, LessonContent } from '@/types';
import { ArrowLeft, ArrowRight, RefreshCw, Lightbulb, Palette, CheckCircle } from 'lucide-react';

export default function LessonView() {
  const { topicId } = useParams<{ topicId: string }>();
  const navigate = useNavigate();
  const { profile, interests } = useUser();
  const { settings } = useSettings();

  const [topic, setTopic] = useState<Topic | null>(null);
  const [lesson, setLesson] = useState<LessonContent | null>(null);
  const [currentSection, setCurrentSection] = useState(0);
  const [loading, setLoading] = useState(true);
  const [actionLoading, setActionLoading] = useState(false);

  useEffect(() => {
    if (topicId) {
      loadLesson();
    }
  }, [topicId]);

  useEffect(() => {
    if (settings.audio.voiceMode && lesson?.sections[currentSection]) {
      const section = lesson.sections[currentSection];
      speakText(`${section.title}. ${section.explanation}`, {
        rate: settings.audio.voiceSpeed
      });
    }
    return () => stopSpeaking();
  }, [currentSection, settings.audio.voiceMode]);

  const loadLesson = async () => {
    if (!topicId) return;
    try {
      setLoading(true);
      const topicData = await db.getTopic(topicId);
      setTopic(topicData);
      const primaryInterest = interests.find(i => i.is_primary)?.interest?.name || 'general learning';
      const lessonContent = await generateLesson({
        userId: profile?.id || 'guest',
        topicId: topicId,
        interestTheme: primaryInterest,
        difficultyLevel: profile?.difficulty_level || 5,
        gradeLevel: profile?.grade_level || 5
      });
      setLesson(lessonContent);
      if (profile) {
        await db.upsertProgress(profile.id, topicId, topicData.subject_id, {
          status: 'in_progress',
          last_accessed: new Date().toISOString()
        });
      }
    } catch (error) {
      console.error('Error loading lesson:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleRequestExample = async () => {
    if (!lesson) return;
    setActionLoading(true);
    try {
      const currentSectionData = lesson.sections[currentSection];
      const primaryInterest = interests.find(i => i.is_primary)?.interest?.name || 'general';
      const newExample = await generateExample({
        concept: currentSectionData.title,
        interestTheme: primaryInterest,
        difficultyLevel: profile?.difficulty_level || 5,
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
      navigate(`/practice/${topicId}`);
    }
  };

  const handlePrevious = () => {
    if (currentSection > 0) {
      setCurrentSection(prev => prev - 1);
    }
  };

  if (loading) {
    return <Loading fullScreen message="Generating your personalized lesson..." />;
  }

  if (!topic || !lesson) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <Card><p className="text-center text-gray-600 dark:text-gray-300">Lesson not found</p><Button onClick={() => navigate('/')} className="mt-4">Go Home</Button></Card>
      </div>
    );
  }

  const section = lesson.sections[currentSection];
  const progress = ((currentSection + 1) / lesson.sections.length) * 100;

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      <header className="bg-white dark:bg-gray-800 shadow-sm sticky top-0 z-10">
        <div className="container-app py-4">
          <div className="flex items-center justify-between mb-4">
            <Button variant="ghost" onClick={() => navigate(-1)}><ArrowLeft className="w-4 h-4 mr-2" />Back</Button>
            <VoiceToggle />
          </div>
          <div><h1 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">{topic.name}</h1><p className="text-sm text-gray-600 dark:text-gray-400">Section {currentSection + 1} of {lesson.sections.length}</p></div>
          <div className="mt-4 w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2"><div className="bg-primary-600 h-2 rounded-full transition-all duration-300" style={{ width: `${progress}%` }} /></div>
        </div>
      </header>
      <main className="container-app py-8 max-w-4xl">
        <Card className="mb-6">
          <h2 className="text-3xl font-bold text-gray-900 dark:text-white mb-6">{section.title}</h2>
          <div className="prose dark:prose-invert max-w-none mb-6"><p className="text-lg leading-relaxed text-gray-700 dark:text-gray-300">{section.explanation}</p></div>
          {section.examples.length > 0 && (
            <div className="mb-6"><h3 className="text-xl font-semibold text-gray-900 dark:text-white mb-3">Examples</h3><div className="space-y-3">{section.examples.map((example, idx) => (<div key={idx} className="p-4 bg-blue-50 dark:bg-blue-900/20 rounded-lg border-l-4 border-blue-600"><p className="text-gray-700 dark:text-gray-300">{example}</p></div>))}</div></div>
          )}
          <div className="flex flex-wrap gap-3 pt-6 border-t border-gray-200 dark:border-gray-700">
            <Button variant="secondary" onClick={handleRequestExample} disabled={actionLoading} loading={actionLoading}><RefreshCw className="w-4 h-4 mr-2" />Show Another Example</Button>
            <Button variant="secondary" onClick={handleSimplify} disabled={actionLoading} loading={actionLoading}><Lightbulb className="w-4 h-4 mr-2" />Explain Like I'm 5</Button>
            <Button variant="secondary" onClick={handleChangeTheme} disabled={actionLoading} loading={actionLoading}><Palette className="w-4 h-4 mr-2" />Use Different Theme</Button>
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
    </div>
  );
}
