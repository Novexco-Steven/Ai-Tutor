export const supportedLanguages = {
  en: { name: 'English', nativeName: 'English', flag: '🇺🇸' },
  es: { name: 'Spanish', nativeName: 'Español', flag: '🇪🇸' },
  fr: { name: 'French', nativeName: 'Français', flag: '🇫🇷' },
} as const;

export type SupportedLanguage = keyof typeof supportedLanguages;

export const defaultLanguage: SupportedLanguage = 'en';

export const languageList = Object.entries(supportedLanguages).map(([code, info]) => ({
  code: code as SupportedLanguage,
  ...info,
}));
