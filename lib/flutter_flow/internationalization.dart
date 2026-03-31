import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // TicketScreen
  {
    '2y9zj1eh': {
      'en': 'Now Serving',
      'ar': 'يخدم الآن',
    },
    'c1lo91gu': {
      'en': 'يخدم الآن',
      'ar': '',
    },
    'ed7deqlu': {
      'en': 'People Ahead',
      'ar': 'العدد امامك',
    },
    '3gdk4osi': {
      'en': 'العدد امامك',
      'ar': '',
    },
    '78h3g5dz': {
      'en': 'Print Number | طباعة رقم',
      'ar': ' طباعة رقم',
    },
    '037xemsv': {
      'en': 'Back',
      'ar': 'رجوع',
    },
  },
  // TheSelectionScreen
  {
    'lnaaavsa': {
      'en': 'Select a department | إختر قسم',
      'ar': '',
    },
    'ribst16h': {
      'en': 'Fresh Meat',
      'ar': '',
    },
    'k6w5hxba': {
      'en': 'اللحوم الطازجه',
      'ar': '',
    },
    'gl62fo0h': {
      'en': 'Poultry',
      'ar': '',
    },
    'a5ho6g8q': {
      'en': 'دواجن',
      'ar': '',
    },
    'i5bly60w': {
      'en': 'Fish',
      'ar': '',
    },
    '8gyilj9f': {
      'en': 'اسماك',
      'ar': '',
    },
    'fdcnn2sj': {
      'en': 'Spices',
      'ar': '',
    },
    'sh743yud': {
      'en': 'عطارة',
      'ar': '',
    },
    'a512uads': {
      'en': 'Frozen Meat',
      'ar': '',
    },
    'q0t6l157': {
      'en': 'اللحوم المجمدة',
      'ar': '',
    },
    '41hbstok': {
      'en': 'Bakery',
      'ar': '',
    },
    'hmc3dhr3': {
      'en': 'مخبوزات',
      'ar': '',
    },
    'j9ieuay5': {
      'en': 'Grocery',
      'ar': '',
    },
    'agbz0yqe': {
      'en': 'بقالة',
      'ar': '',
    },
    'a4tmznao': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SettingPage
  {
    '39wi9stu': {
      'en': 'Settings  | الإعدادات ',
      'ar': '',
    },
    '5notua5o': {
      'en': 'Fresh Meat',
      'ar': '',
    },
    'rrgeyrwp': {
      'en': 'اللحوم الطازجه',
      'ar': '',
    },
    'wxhdbojc': {
      'en': 'Poultry',
      'ar': '',
    },
    'axg60isb': {
      'en': 'دواجن',
      'ar': '',
    },
    'xgtio3qg': {
      'en': 'Fish',
      'ar': '',
    },
    'wxo6azt5': {
      'en': 'اسماك',
      'ar': '',
    },
    'drjy09ux': {
      'en': 'Spices',
      'ar': '',
    },
    'jnrblj7q': {
      'en': 'عطارة',
      'ar': '',
    },
    'c8ts6xla': {
      'en': 'Frozen Meat',
      'ar': '',
    },
    'gilfhqbs': {
      'en': 'اللحوم المجمدة',
      'ar': '',
    },
    '3v7rcb73': {
      'en': 'Bakery',
      'ar': '',
    },
    'kq1h7gfu': {
      'en': 'مخبوزات',
      'ar': '',
    },
    'heuolhld': {
      'en': 'Grocery',
      'ar': '',
    },
    '7qnas99n': {
      'en': 'بقالة',
      'ar': '',
    },
    '09j8qslx': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // login
  {
    'gktqnzsz': {
      'en': '|',
      'ar': '',
    },
    '0u9uqu2m': {
      'en': 'Retail Tec \nQueue Management System',
      'ar': '',
    },
    'ds7tymza': {
      'en': 'Admin Login ',
      'ar': '',
    },
    '48psayxp': {
      'en': 'User Name',
      'ar': '',
    },
    'lqm785uj': {
      'en': 'Password',
      'ar': '',
    },
    'uvmx5hqi': {
      'en': 'LOGIN',
      'ar': '',
    },
    'k0j0ld88': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // loginpage
  {
    '41858vcz': {
      'en': 'Login Page',
      'ar': '',
    },
    '6cbhp6jh': {
      'en': 'Retail Tec',
      'ar': '',
    },
    'itz5b5ei': {
      'en': 'Queue Management System',
      'ar': '',
    },
    'ewvbhw4z': {
      'en': 'Username',
      'ar': '',
    },
    'tf3haxvm': {
      'en': 'Password',
      'ar': '',
    },
    'ilw34yyh': {
      'en': 'Login',
      'ar': '',
    },
  },
  // Erorr
  {
    'iedjyt7s': {
      'en':
          'Please alert a member of our staff, and they will be happy to help you ',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    'uhicyic9': {
      'en': '',
      'ar': '',
    },
    'a3c55nwu': {
      'en': '',
      'ar': '',
    },
    '7eawxft1': {
      'en': '',
      'ar': '',
    },
    '54o81m6f': {
      'en': '',
      'ar': '',
    },
    't887krca': {
      'en': '',
      'ar': '',
    },
    'wxhakjv9': {
      'en': '',
      'ar': '',
    },
    '1wf2c86t': {
      'en': '',
      'ar': '',
    },
    '9mfgu750': {
      'en': '',
      'ar': '',
    },
    'bz2psthl': {
      'en': '',
      'ar': '',
    },
    'q5dl9se7': {
      'en': '',
      'ar': '',
    },
    '04nbmrz5': {
      'en': '',
      'ar': '',
    },
    '2w9tz5po': {
      'en': '',
      'ar': '',
    },
    'ji459dzf': {
      'en': '',
      'ar': '',
    },
    '81rjhk3i': {
      'en': '',
      'ar': '',
    },
    'pspjec6z': {
      'en': '',
      'ar': '',
    },
    'yt0y3qx2': {
      'en': '',
      'ar': '',
    },
    '6hklk28q': {
      'en': '',
      'ar': '',
    },
    'uiyekgxq': {
      'en': '',
      'ar': '',
    },
    '4nusgq6q': {
      'en': '',
      'ar': '',
    },
    'jdnv39m6': {
      'en': '',
      'ar': '',
    },
    'njny5loo': {
      'en': '',
      'ar': '',
    },
    '8gwbexui': {
      'en': '',
      'ar': '',
    },
    'v4iyaa1w': {
      'en': '',
      'ar': '',
    },
    '46h8mvji': {
      'en': '',
      'ar': '',
    },
    'hcoechl9': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
