import { useState, useRef, useEffect, useCallback } from 'react';
import { chatWithTutor } from '@/services/ai';
import { cn } from '@/utils/helpers';
import { MessageCircle, Send, X, Sparkles, Loader2, ChevronDown } from 'lucide-react';
import { useVoiceSession } from '@/hooks/useVoiceSession';
import VoiceControls, { VoiceStateIndicator } from '@/components/shared/VoiceControls';
import type { ChatMessage, ChatContext, Question, LessonContent } from '@/types';

interface ChatTutorProps {
  context: ChatContext;
  currentQuestion?: Question;
  lessonContent?: LessonContent;
  className?: string;
}

export default function ChatTutor({ context, currentQuestion, lessonContent, className }: ChatTutorProps) {
  const [isOpen, setIsOpen] = useState(false);
  const [messages, setMessages] = useState<ChatMessage[]>([]);
  const [inputValue, setInputValue] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const [suggestedFollowUp, setSuggestedFollowUp] = useState<string | null>(null);
  const messagesEndRef = useRef<HTMLDivElement>(null);
  const inputRef = useRef<HTMLInputElement>(null);

  // Voice session
  const {
    voiceState,
    isVoiceEnabled,
    isRecognitionAvailable,
    error: voiceError,
    startListening,
    stopListening,
    speak,
    stopSpeaking,
    toggleVoiceMode,
  } = useVoiceSession({
    onTranscript: (text) => {
      setInputValue(text);
      // Auto-send voice input after a short delay
      setTimeout(() => {
        sendMessage(text);
      }, 300);
    },
  });

  // Scroll to bottom when new messages arrive
  const scrollToBottom = useCallback(() => {
    messagesEndRef.current?.scrollIntoView({ behavior: 'smooth' });
  }, []);

  useEffect(() => {
    scrollToBottom();
  }, [messages, scrollToBottom]);

  // Focus input when chat opens
  useEffect(() => {
    if (isOpen && inputRef.current) {
      inputRef.current.focus();
    }
  }, [isOpen]);

  // Add welcome message when first opened
  useEffect(() => {
    if (isOpen && messages.length === 0) {
      const welcomeMessage: ChatMessage = {
        id: 'welcome',
        role: 'assistant',
        content: `Hi there! I'm your AI tutor. Feel free to ask me anything about ${context.topicName}. I'm here to help you learn!`,
        timestamp: new Date().toISOString()
      };
      setMessages([welcomeMessage]);
    }
  }, [isOpen, messages.length, context.topicName]);

  const sendMessage = async (messageText?: string) => {
    const text = messageText || inputValue.trim();
    if (!text || isLoading) return;

    // Add user message
    const userMessage: ChatMessage = {
      id: `user-${Date.now()}`,
      role: 'user',
      content: text,
      timestamp: new Date().toISOString()
    };

    setMessages(prev => [...prev, userMessage]);
    setInputValue('');
    setSuggestedFollowUp(null);
    setIsLoading(true);

    try {
      const response = await chatWithTutor({
        message: text,
        context: {
          ...context,
          lessonContent,
          currentQuestion
        },
        conversationHistory: messages
      });

      const assistantMessage: ChatMessage = {
        id: `assistant-${Date.now()}`,
        role: 'assistant',
        content: response.response,
        timestamp: new Date().toISOString()
      };

      setMessages(prev => [...prev, assistantMessage]);

      // Auto-speak response when voice mode is enabled
      if (isVoiceEnabled) {
        speak(response.response);
      }

      if (response.suggestedFollowUp) {
        setSuggestedFollowUp(response.suggestedFollowUp);
      }
    } catch (error) {
      const errorMessage: ChatMessage = {
        id: `error-${Date.now()}`,
        role: 'assistant',
        content: error instanceof Error ? error.message : 'Oops! Something went wrong. Try asking again!',
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

  const quickQuestions = [
    "Can you explain this differently?",
    "Why is this important?",
    "Can you give me an example?",
    "I'm confused about...",
  ];

  return (
    <div className={cn("fixed bottom-4 right-4 z-50", className)}>
      {/* Chat Window */}
      {isOpen && (
        <div className="absolute bottom-16 right-0 w-80 sm:w-96 bg-white dark:bg-gray-800 rounded-2xl shadow-2xl border border-gray-200 dark:border-gray-700 overflow-hidden animate-fade-in">
          {/* Header */}
          <div className="bg-gradient-to-r from-blue-500 to-purple-600 p-4 flex items-center justify-between">
            <div className="flex items-center gap-2">
              <div className="w-8 h-8 rounded-full bg-white/20 flex items-center justify-center">
                <Sparkles className="w-4 h-4 text-white" />
              </div>
              <div>
                <h3 className="font-semibold text-white text-sm">AI Tutor</h3>
                <p className="text-xs text-white/80">Ask me anything!</p>
              </div>
            </div>
            <button
              onClick={() => setIsOpen(false)}
              className="p-1 hover:bg-white/20 rounded-full transition-colors"
            >
              <X className="w-5 h-5 text-white" />
            </button>
          </div>

          {/* Messages */}
          <div className="h-80 overflow-y-auto p-4 space-y-4 bg-gray-50 dark:bg-gray-900">
            {messages.map((message) => (
              <div
                key={message.id}
                className={cn(
                  "flex",
                  message.role === 'user' ? 'justify-end' : 'justify-start'
                )}
              >
                <div
                  className={cn(
                    "max-w-[85%] rounded-2xl px-4 py-2",
                    message.role === 'user'
                      ? 'bg-blue-500 text-white rounded-br-md'
                      : 'bg-white dark:bg-gray-800 text-gray-900 dark:text-white rounded-bl-md shadow-sm border border-gray-100 dark:border-gray-700'
                  )}
                >
                  <p className="text-sm whitespace-pre-wrap">{message.content}</p>
                </div>
              </div>
            ))}

            {/* Loading indicator */}
            {isLoading && (
              <div className="flex justify-start">
                <div className="bg-white dark:bg-gray-800 rounded-2xl rounded-bl-md px-4 py-3 shadow-sm border border-gray-100 dark:border-gray-700">
                  <div className="flex items-center gap-2">
                    <Loader2 className="w-4 h-4 animate-spin text-blue-500" />
                    <span className="text-sm text-gray-500">Thinking...</span>
                  </div>
                </div>
              </div>
            )}

            <div ref={messagesEndRef} />
          </div>

          {/* Suggested Follow-up */}
          {suggestedFollowUp && !isLoading && (
            <div className="px-4 py-2 bg-blue-50 dark:bg-blue-900/20 border-t border-gray-200 dark:border-gray-700">
              <button
                onClick={() => sendMessage(suggestedFollowUp)}
                className="text-xs text-blue-600 dark:text-blue-400 hover:underline flex items-center gap-1"
              >
                <Sparkles className="w-3 h-3" />
                {suggestedFollowUp}
              </button>
            </div>
          )}

          {/* Quick Questions */}
          {messages.length <= 1 && !isLoading && (
            <div className="px-4 py-2 bg-gray-50 dark:bg-gray-900 border-t border-gray-200 dark:border-gray-700">
              <p className="text-xs text-gray-500 mb-2">Try asking:</p>
              <div className="flex flex-wrap gap-1">
                {quickQuestions.map((q, i) => (
                  <button
                    key={i}
                    onClick={() => sendMessage(q)}
                    className="text-xs px-2 py-1 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-600 rounded-full hover:bg-gray-100 dark:hover:bg-gray-700 text-gray-700 dark:text-gray-300 transition-colors"
                  >
                    {q}
                  </button>
                ))}
              </div>
            </div>
          )}

          {/* Voice State Indicator */}
          {(voiceState !== 'idle' || voiceError) && (
            <div className="px-4 py-2 bg-gray-50 dark:bg-gray-900 border-t border-gray-200 dark:border-gray-700">
              {voiceError ? (
                <p className="text-xs text-amber-600 dark:text-amber-400">{voiceError}</p>
              ) : (
                <VoiceStateIndicator voiceState={voiceState} />
              )}
            </div>
          )}

          {/* Input */}
          <div className="p-3 border-t border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800">
            <div className="flex items-center gap-2">
              <input
                ref={inputRef}
                type="text"
                value={inputValue}
                onChange={(e) => setInputValue(e.target.value)}
                onKeyPress={handleKeyPress}
                placeholder={voiceState === 'listening' ? 'Listening...' : 'Ask a question...'}
                disabled={isLoading || voiceState === 'listening'}
                className="flex-1 px-4 py-2 bg-gray-100 dark:bg-gray-700 rounded-full text-sm text-gray-900 dark:text-white placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
              <VoiceControls
                voiceState={voiceState}
                isVoiceEnabled={isVoiceEnabled}
                isRecognitionAvailable={isRecognitionAvailable}
                onMicClick={voiceState === 'listening' ? stopListening : startListening}
                onStopSpeaking={stopSpeaking}
                onToggleVoice={toggleVoiceMode}
                showVoiceToggle
                compact
              />
              <button
                onClick={() => sendMessage()}
                disabled={!inputValue.trim() || isLoading || voiceState === 'listening'}
                className={cn(
                  "p-2 rounded-full transition-colors",
                  inputValue.trim() && !isLoading && voiceState !== 'listening'
                    ? "bg-blue-500 hover:bg-blue-600 text-white"
                    : "bg-gray-200 dark:bg-gray-600 text-gray-400"
                )}
              >
                <Send className="w-4 h-4" />
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Toggle Button */}
      <button
        onClick={() => setIsOpen(!isOpen)}
        className={cn(
          "w-14 h-14 rounded-full shadow-lg flex items-center justify-center transition-all",
          isOpen
            ? "bg-gray-600 hover:bg-gray-700"
            : "bg-gradient-to-r from-blue-500 to-purple-600 hover:from-blue-600 hover:to-purple-700 animate-pulse"
        )}
      >
        {isOpen ? (
          <ChevronDown className="w-6 h-6 text-white" />
        ) : (
          <MessageCircle className="w-6 h-6 text-white" />
        )}
      </button>

      {/* Hint bubble when closed */}
      {!isOpen && messages.length === 0 && (
        <div className="absolute bottom-16 right-0 bg-white dark:bg-gray-800 rounded-lg shadow-lg px-3 py-2 text-sm text-gray-700 dark:text-gray-300 whitespace-nowrap animate-bounce">
          Need help? Ask me!
          <div className="absolute bottom-0 right-6 w-3 h-3 bg-white dark:bg-gray-800 transform rotate-45 translate-y-1.5"></div>
        </div>
      )}
    </div>
  );
}
