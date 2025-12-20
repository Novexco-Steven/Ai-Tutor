import { useState, useMemo } from 'react';
import { CheckCircle2, XCircle, Lightbulb, BookOpen, ImageIcon, ChevronDown, ChevronUp } from 'lucide-react';
import { cn } from '@/utils/helpers';
import { generateQuestionImageUrl } from '@/services/ai';
import type { Question, AIAssessAnswerResponse } from '@/types';

interface QuestionCardProps {
  question: Question;
  questionNumber: number;
  totalQuestions: number;
  selectedAnswer?: string;
  feedback?: AIAssessAnswerResponse;
  onSelectAnswer: (answer: string) => void;
  disabled?: boolean;
  assessing?: boolean;
}

export default function QuestionCard({
  question,
  questionNumber,
  totalQuestions,
  selectedAnswer,
  feedback,
  onSelectAnswer,
  disabled,
  assessing
}: QuestionCardProps) {
  const [showHint, setShowHint] = useState(false);
  const [showExplanation, setShowExplanation] = useState(false);
  const [imageLoaded, setImageLoaded] = useState(false);
  const [imageError, setImageError] = useState(false);

  const showFeedback = !!feedback;

  // Generate AI image URL based on the question's image prompt
  const imageUrl = useMemo(() => {
    if (question.imageUrl) return question.imageUrl;
    if (question.imagePrompt) {
      return generateQuestionImageUrl(question.imagePrompt, question.concept);
    }
    return null;
  }, [question.imageUrl, question.imagePrompt, question.concept]);

  return (
    <div className="bg-gradient-to-br from-slate-800 to-slate-900 rounded-2xl shadow-2xl overflow-hidden border border-slate-700/50">
      {/* Question Header with Visual */}
      <div className="relative">
        {/* Image Section - Horizontal banner format (800x300 aspect ratio) */}
        {imageUrl && (
          <div className="relative aspect-[8/3] bg-gradient-to-r from-blue-900/30 to-purple-900/30 overflow-hidden">
            {!imageLoaded && !imageError && (
              <div className="absolute inset-0 flex items-center justify-center bg-slate-800/80">
                <div className="text-center">
                  <ImageIcon className="w-10 h-10 text-slate-500 mx-auto mb-2 animate-pulse" />
                  <p className="text-slate-400 text-sm">Generating illustration...</p>
                </div>
              </div>
            )}
            <img
              src={imageUrl}
              alt="Question illustration"
              className={cn(
                "w-full h-full object-cover transition-opacity duration-500",
                imageLoaded ? "opacity-100" : "opacity-0"
              )}
              onLoad={() => setImageLoaded(true)}
              onError={() => setImageError(true)}
            />
            {/* Overlay gradient for text readability */}
            <div className="absolute inset-0 bg-gradient-to-t from-slate-900 via-transparent to-transparent" />
          </div>
        )}

        {/* Question Badge */}
        <div className={cn(
          "absolute top-4 right-4 px-3 py-1 rounded-full text-sm font-medium",
          "bg-blue-500/20 text-blue-300 border border-blue-500/30"
        )}>
          Question {questionNumber} of {totalQuestions}
        </div>

        {/* Concept Tag */}
        <div className={cn(
          "absolute top-4 left-4 px-3 py-1 rounded-full text-xs font-medium",
          "bg-purple-500/20 text-purple-300 border border-purple-500/30"
        )}>
          {question.concept}
        </div>
      </div>

      {/* Question Content */}
      <div className="p-6">
        {/* Question Text */}
        <div className="mb-6">
          <h2 className="text-xl md:text-2xl font-semibold text-white leading-relaxed">
            {question.question}
          </h2>
        </div>

        {/* Hint Button - Only show before answering */}
        {!selectedAnswer && question.hint && (
          <div className="mb-4">
            <button
              onClick={() => setShowHint(!showHint)}
              className={cn(
                "flex items-center gap-2 px-4 py-2 rounded-lg transition-all",
                "text-amber-400 hover:bg-amber-500/10 border border-amber-500/30",
                showHint && "bg-amber-500/10"
              )}
            >
              <Lightbulb className="w-4 h-4" />
              <span className="text-sm font-medium">
                {showHint ? 'Hide Hint' : 'Need a Hint?'}
              </span>
              {showHint ? <ChevronUp className="w-4 h-4" /> : <ChevronDown className="w-4 h-4" />}
            </button>

            {showHint && (
              <div className="mt-3 p-4 rounded-lg bg-amber-500/10 border border-amber-500/20 animate-fade-in">
                <div className="flex gap-3">
                  <Lightbulb className="w-5 h-5 text-amber-400 flex-shrink-0 mt-0.5" />
                  <p className="text-amber-200 text-sm leading-relaxed">{question.hint}</p>
                </div>
              </div>
            )}
          </div>
        )}

        {/* Answer Options */}
        <div className="space-y-3">
          {question.options?.map((option, idx) => {
            const isSelected = selectedAnswer === option;
            const isCorrect = option === question.correct_answer;
            const letters = ['A', 'B', 'C', 'D'];

            return (
              <button
                key={idx}
                onClick={() => !selectedAnswer && !disabled && onSelectAnswer(option)}
                disabled={!!selectedAnswer || disabled || assessing}
                className={cn(
                  'w-full p-4 rounded-xl border-2 text-left transition-all duration-300 flex items-center gap-4 group',
                  showFeedback
                    ? isCorrect
                      ? 'border-green-500 bg-green-500/10 shadow-lg shadow-green-500/20'
                      : isSelected
                      ? 'border-red-500 bg-red-500/10 shadow-lg shadow-red-500/20'
                      : 'border-slate-700 bg-slate-800/50 opacity-50'
                    : isSelected
                    ? 'border-blue-500 bg-blue-500/10 shadow-lg shadow-blue-500/20'
                    : 'border-slate-700 bg-slate-800/50 hover:border-slate-600 hover:bg-slate-800'
                )}
              >
                {/* Letter Badge */}
                <span className={cn(
                  "w-10 h-10 rounded-lg flex items-center justify-center font-bold text-lg transition-colors",
                  showFeedback
                    ? isCorrect
                      ? 'bg-green-500 text-white'
                      : isSelected
                      ? 'bg-red-500 text-white'
                      : 'bg-slate-700 text-slate-400'
                    : isSelected
                    ? 'bg-blue-500 text-white'
                    : 'bg-slate-700 text-slate-300 group-hover:bg-slate-600'
                )}>
                  {letters[idx]}
                </span>

                {/* Option Text */}
                <span className={cn(
                  'flex-1 text-lg',
                  showFeedback && isCorrect && 'font-semibold text-green-300',
                  showFeedback && isSelected && !isCorrect && 'text-red-300',
                  !showFeedback && 'text-slate-200'
                )}>
                  {option}
                </span>

                {/* Result Icon */}
                {showFeedback && isCorrect && (
                  <CheckCircle2 className="w-7 h-7 text-green-500 animate-bounce-in" />
                )}
                {showFeedback && isSelected && !isCorrect && (
                  <XCircle className="w-7 h-7 text-red-500 animate-shake" />
                )}
              </button>
            );
          })}
        </div>

        {/* Loading State */}
        {assessing && (
          <div className="mt-6 flex items-center justify-center gap-3 text-blue-400">
            <div className="w-5 h-5 border-2 border-blue-400 border-t-transparent rounded-full animate-spin" />
            <span>Checking your answer...</span>
          </div>
        )}

        {/* Feedback Section */}
        {feedback && (
          <div className={cn(
            'mt-6 rounded-xl overflow-hidden animate-fade-in',
            feedback.isCorrect
              ? 'bg-gradient-to-r from-green-500/20 to-emerald-500/20 border border-green-500/30'
              : 'bg-gradient-to-r from-orange-500/20 to-red-500/20 border border-orange-500/30'
          )}>
            <div className="p-5">
              {/* Result Header */}
              <div className="flex items-center gap-3 mb-3">
                {feedback.isCorrect ? (
                  <>
                    <div className="w-10 h-10 rounded-full bg-green-500 flex items-center justify-center">
                      <CheckCircle2 className="w-6 h-6 text-white" />
                    </div>
                    <span className="text-xl font-bold text-green-400">Correct!</span>
                  </>
                ) : (
                  <>
                    <div className="w-10 h-10 rounded-full bg-orange-500 flex items-center justify-center">
                      <XCircle className="w-6 h-6 text-white" />
                    </div>
                    <span className="text-xl font-bold text-orange-400">Not quite!</span>
                  </>
                )}
              </div>

              {/* Feedback Message */}
              <p className={cn(
                'text-base leading-relaxed',
                feedback.isCorrect ? 'text-green-200' : 'text-orange-200'
              )}>
                {feedback.feedback}
              </p>

              {/* Re-teaching for incorrect answers */}
              {!feedback.isCorrect && feedback.reteachingSuggestion && (
                <div className="mt-4 p-4 rounded-lg bg-slate-800/50 border border-slate-700">
                  <div className="flex items-start gap-3">
                    <BookOpen className="w-5 h-5 text-blue-400 flex-shrink-0 mt-0.5" />
                    <div>
                      <p className="text-sm font-medium text-blue-400 mb-1">Let's learn this:</p>
                      <p className="text-slate-300 text-sm leading-relaxed">{feedback.reteachingSuggestion}</p>
                    </div>
                  </div>
                </div>
              )}
            </div>
          </div>
        )}

        {/* Explanation Toggle - Show after answering */}
        {feedback && question.explanation && (
          <div className="mt-4">
            <button
              onClick={() => setShowExplanation(!showExplanation)}
              className={cn(
                "flex items-center gap-2 px-4 py-2 rounded-lg transition-all w-full justify-center",
                "text-blue-400 hover:bg-blue-500/10 border border-blue-500/30",
                showExplanation && "bg-blue-500/10"
              )}
            >
              <BookOpen className="w-4 h-4" />
              <span className="text-sm font-medium">
                {showExplanation ? 'Hide Explanation' : 'See Full Explanation'}
              </span>
              {showExplanation ? <ChevronUp className="w-4 h-4" /> : <ChevronDown className="w-4 h-4" />}
            </button>

            {showExplanation && (
              <div className="mt-3 p-4 rounded-lg bg-blue-500/10 border border-blue-500/20 animate-fade-in">
                <div className="flex gap-3">
                  <BookOpen className="w-5 h-5 text-blue-400 flex-shrink-0 mt-0.5" />
                  <p className="text-blue-200 text-sm leading-relaxed">{question.explanation}</p>
                </div>
              </div>
            )}
          </div>
        )}
      </div>
    </div>
  );
}
