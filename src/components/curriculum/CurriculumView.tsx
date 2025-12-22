import { useEffect, useState, useMemo } from 'react';
import { useParams, useNavigate, useSearchParams } from 'react-router-dom';
import { db } from '@/services/supabase';
import { useUser } from '@/contexts/UserContext';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import Header from '../shared/Header';
import UnitCard from './UnitCard';
import TopicCard from './TopicCard';
import CurriculumChat from './CurriculumChat';
import ReadAloudButton from '../shared/ReadAloudButton';
import type { Subject, UnitWithTopics, Topic, CurriculumChatContext } from '@/types';
import { GraduationCap, BookOpen, Sparkles, AlertCircle } from 'lucide-react';

export default function CurriculumView() {
  const { subjectId } = useParams<{ subjectId: string }>();
  const navigate = useNavigate();
  const [searchParams, setSearchParams] = useSearchParams();
  const { profile, progress, refreshProgress } = useUser();
  const [subject, setSubject] = useState<Subject | null>(null);
  const [units, setUnits] = useState<UnitWithTopics[]>([]);
  const [standaloneTopics, setStandaloneTopics] = useState<Topic[]>([]);
  const [allSubjects, setAllSubjects] = useState<Subject[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [highlightedUnit, setHighlightedUnit] = useState<string | null>(null);
  const [highlightedTopic, setHighlightedTopic] = useState<string | null>(null);

  const gradeLevel = profile?.grade_level || 7;
  const prefillMessage = searchParams.get('prefill');

  // Clear prefill from URL after reading it
  useEffect(() => {
    if (prefillMessage) {
      setSearchParams({}, { replace: true });
    }
  }, [prefillMessage, setSearchParams]);

  useEffect(() => {
    loadCurriculum();
  }, [subjectId, gradeLevel]);

  const loadCurriculum = async () => {
    if (!subjectId) return;

    setLoading(true);
    setError(null);

    try {
      // Load subject info
      const subjects = await db.getAllSubjects();
      setAllSubjects(subjects);
      const subjectData = subjects.find(s => s.id === subjectId);

      if (!subjectData) {
        setError('Subject not found');
        setLoading(false);
        return;
      }

      setSubject(subjectData);

      // Load curriculum units with topics
      const curriculumData = await db.getCurriculumForSubject(subjectId, gradeLevel);

      // Load standalone topics (AI-suggested or uncategorized)
      const standaloneData = await db.getStandaloneTopics(subjectId, gradeLevel);

      setUnits(curriculumData as UnitWithTopics[]);
      setStandaloneTopics(standaloneData || []);

      // Refresh user progress
      await refreshProgress();
    } catch (err) {
      console.error('Error loading curriculum:', err);
      setError('Failed to load curriculum');
    } finally {
      setLoading(false);
    }
  };

  // Calculate overall subject progress
  const totalTopics = units.reduce((sum, unit) => sum + (unit.topics?.length || 0), 0) + standaloneTopics.length;
  const completedTopics = progress.filter(
    p => p.subject_id === subjectId && p.status === 'completed'
  ).length;
  const overallProgress = totalTopics > 0 ? Math.round((completedTopics / totalTopics) * 100) : 0;

  // Generate text for read-aloud feature
  const readAloudText = useMemo(() => {
    if (!subject) return '';

    let text = `Welcome to ${subject.name}. ${subject.description || ''}\n\n`;
    text += `You have completed ${completedTopics} of ${totalTopics} topics, which is ${overallProgress}% of this subject.\n\n`;

    if (units.length > 0) {
      text += `This curriculum has ${units.length} units:\n\n`;
      units.forEach((unit, index) => {
        const unitTopics = unit.topics || [];
        text += `Unit ${index + 1}: ${unit.name}. `;
        if (unit.description) {
          text += `${unit.description} `;
        }
        text += `This unit has ${unitTopics.length} topics.\n`;
      });
    }

    return text;
  }, [subject, units, completedTopics, totalTopics, overallProgress]);

  if (loading) {
    return <Loading fullScreen message="Loading curriculum..." />;
  }

  if (error || !subject) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50 dark:bg-gray-900">
        <Card className="max-w-md text-center">
          <AlertCircle className="w-12 h-12 text-red-500 mx-auto mb-4" />
          <p className="text-gray-600 dark:text-gray-300 mb-4">
            {error || 'Subject not found'}
          </p>
          <Button onClick={() => navigate('/')}>
            Go Home
          </Button>
        </Card>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      <Header
        showBackButton
        backButtonLabel="Back to Dashboard"
        onBackClick={() => navigate('/')}
        showGradeBadge
        showDifficultySlider
        showThemeToggle
        showVoiceToggle
        bottomContent={
          <div className="flex items-start gap-4 mt-2">
            {/* Left side: Subject Icon + Info */}
            <div className="flex items-start gap-4 flex-1">
              {/* Subject Icon */}
              <div
                className="text-5xl p-4 rounded-xl flex-shrink-0"
                style={{ backgroundColor: `${subject.color}20` }}
              >
                {subject.icon}
              </div>

              {/* Subject Info */}
              <div className="flex-1">
                <h1 className="text-3xl font-bold" style={{ color: subject.color }}>
                  {subject.name}
                </h1>
                <p className="text-gray-600 dark:text-gray-300 mt-1">
                  {subject.description}
                </p>

                {/* Progress Summary */}
                <div className="mt-4 flex items-center gap-6">
                  <div>
                    <p className="text-sm text-gray-500">Progress</p>
                    <p className="text-2xl font-bold" style={{ color: subject.color }}>
                      {overallProgress}%
                    </p>
                  </div>
                  <div>
                    <p className="text-sm text-gray-500">Units</p>
                    <p className="text-2xl font-bold text-gray-900 dark:text-white">
                      {units.length}
                    </p>
                  </div>
                  <div>
                    <p className="text-sm text-gray-500">Topics</p>
                    <p className="text-2xl font-bold text-gray-900 dark:text-white">
                      {totalTopics}
                    </p>
                  </div>
                </div>

                {/* Overall Progress Bar */}
                <div className="mt-3 max-w-md">
                  <div className="w-full h-3 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden">
                    <div
                      className="h-full rounded-full transition-all duration-500"
                      style={{
                        width: `${overallProgress}%`,
                        backgroundColor: overallProgress === 100 ? '#10b981' : subject.color,
                      }}
                    />
                  </div>
                  <p className="text-xs text-gray-500 mt-1">
                    {completedTopics} of {totalTopics} topics completed
                  </p>
                </div>

                {/* Read Aloud Button */}
                <div className="mt-4">
                  <ReadAloudButton
                    text={readAloudText}
                    label="Read Overview"
                    showDropdown
                  />
                </div>
              </div>
            </div>

            {/* Right side: Curriculum Chat */}
            <div className="w-1/2 flex-shrink-0 hidden lg:block">
              <CurriculumChat
                context={{
                  subjectId: subject.id,
                  subjectName: subject.name,
                  subjectColor: subject.color,
                  gradeLevel,
                  units: units.map(u => ({
                    id: u.id,
                    name: u.name,
                    description: u.description || '',
                    topics: (u.topics || []).map(t => ({
                      id: t.id,
                      name: t.name,
                      description: t.description || ''
                    }))
                  })),
                  allSubjects: allSubjects.map(s => ({ id: s.id, name: s.name }))
                } as CurriculumChatContext}
                onHighlightUnit={setHighlightedUnit}
                onHighlightTopic={setHighlightedTopic}
                initialMessage={prefillMessage || undefined}
              />
            </div>
          </div>
        }
      />

      {/* Main Content */}
      <main className="container-app py-8">
        {/* Units Section */}
        {units.length > 0 && (
          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-2 flex items-center gap-2">
              <BookOpen className="w-6 h-6" style={{ color: subject.color }} />
              Curriculum Units
            </h2>
            <p className="text-gray-600 dark:text-gray-400 mb-6">
              Work through each unit in order to build a strong foundation
            </p>

            <div className="space-y-2">
              {units.map((unit, idx) => (
                <UnitCard
                  key={unit.id}
                  unit={unit}
                  unitIndex={idx}
                  progress={progress.filter(p => p.subject_id === subjectId)}
                  subjectColor={subject.color}
                  defaultExpanded={idx === 0 && units.length <= 3}
                  isHighlighted={highlightedUnit === unit.id}
                  highlightedTopicId={highlightedTopic}
                />
              ))}
            </div>
          </section>
        )}

        {/* Standalone Topics Section (AI-Suggested or Uncategorized) */}
        {standaloneTopics.length > 0 && (
          <section className="mb-8">
            <h2 className="text-xl font-bold text-gray-900 dark:text-white mb-2 flex items-center gap-2">
              <Sparkles className="w-5 h-5 text-amber-500" />
              Additional Topics
            </h2>
            <p className="text-gray-600 dark:text-gray-400 mb-4">
              Extra practice and exploration topics
            </p>

            <div className="space-y-2">
              {standaloneTopics.map((topic, idx) => (
                <TopicCard
                  key={topic.id}
                  topic={topic}
                  index={idx}
                  progress={progress.find(p => p.topic_id === topic.id)}
                  subjectColor={subject.color}
                  isHighlighted={highlightedTopic === topic.id}
                />
              ))}
            </div>
          </section>
        )}

        {/* Empty State */}
        {units.length === 0 && standaloneTopics.length === 0 && (
          <Card className="text-center py-12">
            <GraduationCap className="w-16 h-16 text-gray-300 mx-auto mb-4" />
            <h3 className="text-xl font-semibold text-gray-900 dark:text-white mb-2">
              No Curriculum Available
            </h3>
            <p className="text-gray-600 dark:text-gray-300 mb-4">
              There's no curriculum available for Grade {gradeLevel} {subject.name} yet.
            </p>
            <Button variant="secondary" onClick={() => navigate('/')}>
              Back to Dashboard
            </Button>
          </Card>
        )}
      </main>
    </div>
  );
}
