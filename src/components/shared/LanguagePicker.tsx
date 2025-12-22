import { useState, useRef, useEffect } from 'react';
import { useTranslation } from 'react-i18next';
import { Globe, ChevronDown, Check } from 'lucide-react';
import { languageList, type SupportedLanguage } from '@/i18n/config';
import { cn } from '@/utils/helpers';

interface LanguagePickerProps {
  variant?: 'default' | 'compact';
  className?: string;
}

export default function LanguagePicker({ variant = 'default', className }: LanguagePickerProps) {
  const { i18n } = useTranslation();
  const [isOpen, setIsOpen] = useState(false);
  const dropdownRef = useRef<HTMLDivElement>(null);

  const currentLanguage = languageList.find(lang => lang.code === i18n.language) || languageList[0];

  useEffect(() => {
    function handleClickOutside(event: MouseEvent) {
      if (dropdownRef.current && !dropdownRef.current.contains(event.target as Node)) {
        setIsOpen(false);
      }
    }

    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  const handleLanguageChange = (langCode: SupportedLanguage) => {
    i18n.changeLanguage(langCode);
    setIsOpen(false);
  };

  return (
    <div ref={dropdownRef} className={cn('relative', className)}>
      <button
        type="button"
        onClick={() => setIsOpen(!isOpen)}
        className={cn(
          'flex items-center gap-2 rounded-lg transition-colors',
          variant === 'compact'
            ? 'p-2 hover:bg-gray-100 dark:hover:bg-gray-700'
            : 'px-3 py-2 text-gray-700 dark:text-gray-200 hover:bg-gray-100 dark:hover:bg-gray-700',
        )}
        aria-label="Select language"
        aria-expanded={isOpen}
        aria-haspopup="listbox"
      >
        {variant === 'compact' ? (
          <Globe className="w-5 h-5 text-gray-600 dark:text-gray-300" />
        ) : (
          <>
            <span className="text-lg">{currentLanguage.flag}</span>
            <span className="text-sm font-medium">{currentLanguage.nativeName}</span>
            <ChevronDown className={cn(
              'w-4 h-4 transition-transform',
              isOpen && 'rotate-180'
            )} />
          </>
        )}
      </button>

      {isOpen && (
        <div
          className="absolute right-0 mt-2 w-48 bg-white dark:bg-gray-800 rounded-lg shadow-lg border border-gray-200 dark:border-gray-700 py-1 z-50"
          role="listbox"
          aria-label="Language options"
        >
          {languageList.map((language) => (
            <button
              key={language.code}
              type="button"
              onClick={() => handleLanguageChange(language.code)}
              className={cn(
                'w-full flex items-center gap-3 px-4 py-2 text-left hover:bg-gray-100 dark:hover:bg-gray-700 transition-colors',
                language.code === i18n.language && 'bg-primary-50 dark:bg-primary-900/20'
              )}
              role="option"
              aria-selected={language.code === i18n.language}
            >
              <span className="text-lg">{language.flag}</span>
              <div className="flex-1">
                <p className="text-sm font-medium text-gray-900 dark:text-white">
                  {language.nativeName}
                </p>
                <p className="text-xs text-gray-500 dark:text-gray-400">
                  {language.name}
                </p>
              </div>
              {language.code === i18n.language && (
                <Check className="w-4 h-4 text-primary-600 dark:text-primary-400" />
              )}
            </button>
          ))}
        </div>
      )}
    </div>
  );
}
