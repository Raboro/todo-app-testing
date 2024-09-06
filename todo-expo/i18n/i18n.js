import 'intl-pluralrules';
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';  // Stelle sicher, dass das korrekt importiert ist
import * as Localization from 'expo-localization';
import translationEN from './locales/en.json';
import translationDE from './locales/de.json';

export const languages = ['en', 'de'];

const resources = {
  en: {
    translation: translationEN,
  },
  de: {
    translation: translationDE,
  },
};

const languageDetector = {
  type: 'languageDetector',
  async: true,
  detect: callback => {
    const bestLanguage = Localization.getLocales()[0].languageTag;
    callback(bestLanguage);
  },
  init: () => { },
  cacheUserLanguage: () => { },
};

// Init i18n
i18n
  .use(languageDetector)
  .use(initReactI18next)
  .init({
    resources,
    fallbackLng: 'en',
    interpolation: {
      escapeValue: false,
    },
    react: {
      useSuspense: false,
    },
  });

export default i18n;
