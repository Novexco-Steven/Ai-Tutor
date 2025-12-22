import { useState, useRef, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { chatWithCurriculumAssistant } from '@/services/ai';
import { cn } from '@/utils/helpers';
import { Send, Loader2, Sparkles, ArrowRight, Search, MapPin } from 'lucide-react';
import type { ChatMessage, CurriculumChatContext, CurriculumChatResponse } from '@/types';

interface CurriculumChatProps {
  context: CurriculumChatContext;
  onHighlightUnit?: (unitId: string | null) => void;
  onHighlightTopic?: (topicId: string | null) => void;
  initialMessage?: string;
  className?: string;
}

export default function CurriculumChat({
  context,
  onHighlightUnit,
  onHighlightTopic,
  initialMessage,
  className
}: CurriculumChatProps) {
  const navigate = useNavigate();
  const [messages, setMessages] = useState<ChatMessage[]>([]);
  const [inputValue, setInputValue] = useState(initialMessage || '');
  const [isLoading, setIsLoading] = useState(false);
  const [lastResponse, setLastResponse] = useState<CurriculumChatResponse | null>(null);
  const [isExpanded, setIsExpanded] = useState(false);
  const inputRef = useRef<HTMLInputElement>(null);
  const messagesEndRef = useRef<HTMLDivElement>(null);

  // Auto-send if there's an initial message (from redirect)
  useEffect(() => {
    if (initialMessage && messages.length === 0) {
      sendMessage(initialMessage);
    }
  }, [initialMessage]);

  // Scroll to bottom when messages change
  useEffect(() => {
    if (isExpanded && messagesEndRef.current) {
      messagesEndRef.current.scrollIntoView({ behavior: 'smooth' });
    }
  }, [messages, isExpanded]);

  // Clear highlights when component unmounts or context changes
  useEffect(() => {
    return () => {
      onHighlightUnit?.(null);
      onHighlightTopic?.(null);
    };
  }, [context.subjectId]);

  const sendMessage = async (messageText?: string) => {
    const text = messageText || inputValue.trim();
    if (!text || isLoading) return;

    // Clear previous highlights
    onHighlightUnit?.(null);
    onHighlightTopic?.(null);

    const userMessage: ChatMessage = {
      id: `user-${Date.now()}`,
      role: 'user',
      content: text,
      timestamp: new Date().toISOString()
    };

    setMessages(prev => [...prev, userMessage]);
    setInputValue('');
    setIsLoading(true);
    setIsExpanded(true);

    try {
      const response = await chatWithCurriculumAssistant({
        message: text,
        context,
        conversationHistory: messages
      });

      const assistantMessage: ChatMessage = {
        id: `assistant-${Date.now()}`,
        role: 'assistant',
        content: response.response,
        timestamp: new Date().toISOString()
      };

      setMessages(prev => [...prev, assistantMessage]);
      setLastResponse(response);
      // Don't auto-highlight - let user click the "Show me" button
    } catch (error) {
      const errorMessage: ChatMessage = {
        id: `error-${Date.now()}`,
        role: 'assistant',
        content: 'Sorry, I had trouble with that. Please try again!',
        timestamp: new Date().toISOString()
      };
      setMessages(prev => [...prev, errorMessage]);
    } finally {
      setIsLoading(false);
    }
  };

  const handleKeyPress = (e: React.KeyboardEvent) => {
    if (e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault();
      sendMessage();
    }
  };

  const handleRedirect = () => {
    if (lastResponse?.redirectSubject) {
      const { id, prefillQuestion } = lastResponse.redirectSubject;
      navigate(`/curriculum/${id}?prefill=${encodeURIComponent(prefillQuestion)}`);
    }
  };

  const handleShowSuggestions = () => {
    if (lastResponse?.matchedUnits && lastResponse.matchedUnits.length > 0) {
      onHighlightUnit?.(lastResponse.matchedUnits[0]);
    }
    if (lastResponse?.matchedTopics && lastResponse.matchedTopics.length > 0) {
      onHighlightTopic?.(lastResponse.matchedTopics[0]);
    }
  };

  const hasSuggestions = lastResponse && (
    (lastResponse.matchedUnits && lastResponse.matchedUnits.length > 0) ||
    (lastResponse.matchedTopics && lastResponse.matchedTopics.length > 0)
  );

  const quickSuggestions = [
    "Where should I start?",
    "Find topics about equations",
    "What's the easiest unit?"
  ];

  return (
    <div
      className={cn(
        "bg-white dark:bg-gray-800 rounded-xl border border-gray-200 dark:border-gray-700 overflow-hidden shadow-sm",
        className
      )}
    >
      {/* Header */}
      <div
        className="px-3 py-2 flex items-center gap-2"
        style={{ backgroundColor: `${context.subjectColor}15` }}
      >
        <div
          className="w-6 h-6 rounded-full flex items-center justify-center"
          style={{ backgroundColor: `${context.subjectColor}30` }}
        >
          <Search className="w-3 h-3" style={{ color: context.subjectColor }} />
        </div>
        <span className="text-sm font-medium text-gray-700 dark:text-gray-200">
          Find Topics
        </span>
      </div>

      {/* Messages (expandable) */}
      {isExpanded && messages.length > 0 && (
        <div className="max-h-64 overflow-y-auto p-3 space-y-2 bg-gray-50 dark:bg-gray-900 border-b border-gray-200 dark:border-gray-700">
          {messages.map((message) => (
            <div
              key={message.id}
              className={cn(
                "text-sm",
                message.role === 'user'
                  ? 'text-right'
                  : 'text-left'
              )}
            >
              <span
                className={cn(
                  "inline-block px-3 py-2 rounded-lg max-w-[90%]",
                  message.role === 'user'
                    ? 'bg-blue-500 text-white'
                    : 'bg-white dark:bg-gray-800 text-gray-700 dark:text-gray-200 border border-gray-200 dark:border-gray-600'
                )}
              >
                {message.content}
              </span>
            </div>
          ))}

          {/* Loading */}
          {isLoading && (
            <div className="text-left">
              <span className="inline-block px-3 py-2 rounded-lg bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-600">
                <Loader2 className="w-4 h-4 animate-spin text-blue-500" />
              </span>
            </div>
          )}

          <div ref={messagesEndRef} />
        </div>
      )}

      {/* Show suggestions button */}
      {hasSuggestions && !isLoading && (
        <div className="px-3 py-2 bg-green-50 dark:bg-green-900/20 border-b border-gray-200 dark:border-gray-700">
          <button
            onClick={handleShowSuggestions}
            className="flex items-center gap-2 text-sm font-medium text-green-700 dark:text-green-400 hover:underline"
          >
            <MapPin className="w-4 h-4" />
            <span>Show me where</span>
            <ArrowRight className="w-4 h-4" />
          </button>
        </div>
      )}

      {/* Redirect suggestion */}
      {lastResponse?.redirectSubject && (
        <div className="px-3 py-2 bg-amber-50 dark:bg-amber-900/20 border-b border-gray-200 dark:border-gray-700">
          <button
            onClick={handleRedirect}
            className="flex items-center gap-2 text-xs text-amber-700 dark:text-amber-400 hover:underline"
          >
            <Sparkles className="w-3 h-3" />
            <span>Go to {lastResponse.redirectSubject.name}</span>
            <ArrowRight className="w-3 h-3" />
          </button>
        </div>
      )}

      {/* Quick suggestions (when no messages) */}
      {messages.length === 0 && !isLoading && (
        <div className="px-3 py-2 border-b border-gray-200 dark:border-gray-700">
          <div className="flex flex-wrap gap-1">
            {quickSuggestions.map((suggestion, i) => (
              <button
                key={i}
                onClick={() => {
                  setInputValue(suggestion);
                  sendMessage(suggestion);
                }}
                className="text-xs px-2 py-1 bg-gray-100 dark:bg-gray-700 rounded-full hover:bg-gray-200 dark:hover:bg-gray-600 text-gray-600 dark:text-gray-300 transition-colors"
              >
                {suggestion}
              </button>
            ))}
          </div>
        </div>
      )}

      {/* Input */}
      <div className="p-2">
        <div className="flex items-center gap-2">
          <input
            ref={inputRef}
            type="text"
            value={inputValue}
            onChange={(e) => setInputValue(e.target.value)}
            onKeyPress={handleKeyPress}
            placeholder="Ask me to find topics..."
            disabled={isLoading}
            className="flex-1 px-3 py-1.5 bg-gray-100 dark:bg-gray-700 rounded-full text-sm text-gray-900 dark:text-white placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500"
          />
          <button
            onClick={() => sendMessage()}
            disabled={!inputValue.trim() || isLoading}
            className={cn(
              "p-1.5 rounded-full transition-colors",
              inputValue.trim() && !isLoading
                ? "bg-blue-500 hover:bg-blue-600 text-white"
                : "bg-gray-200 dark:bg-gray-600 text-gray-400"
            )}
          >
            <Send className="w-3.5 h-3.5" />
          </button>
        </div>
      </div>
    </div>
  );
}
