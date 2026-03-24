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
    '7uqnxzvd': {
      'en': 'Fresh Meat',
      'ar': '',
    },
    '4oxfdkqx': {
      'en': 'اللحوم الطازجه',
      'ar': '',
    },
    'upqjqovr': {
      'en': 'Poultry',
      'ar': '',
    },
    '1fmjwzrl': {
      'en': 'دواجن',
      'ar': '',
    },
    '4uw1l33k': {
      'en': 'Fish',
      'ar': '',
    },
    '0tnm2nt0': {
      'en': 'اسماك',
      'ar': '',
    },
    'xjr8y3d2': {
      'en': 'Spices',
      'ar': '',
    },
    '19xgs1ul': {
      'en': 'عطارة',
      'ar': '',
    },
    'o62lacte': {
      'en': 'Frozen Meat',
      'ar': '',
    },
    'wzjgqlk7': {
      'en': 'اللحوم المجمدة',
      'ar': '',
    },
    'mci7fwkc': {
      'en': 'Bakery',
      'ar': '',
    },
    'upksgoth': {
      'en': 'مخبوزات',
      'ar': '',
    },
    '90y1ksv1': {
      'en': 'Grocery',
      'ar': '',
    },
    '295tzppp': {
      'en': 'بقالة',
      'ar': '',
    },
    'a4tmznao': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // TheSelectionScreenCopy
  {
    'veiyz4p0': {
      'en': 'Reset Page ',
      'ar': '',
    },
    'wk8r3npa': {
      'en': 'Meat | لحوم',
      'ar': '',
    },
    '9xbxlkv0': {
      'en': 'Cheese |الجبن',
      'ar': '',
    },
    'ucv5vyk2': {
      'en': 'Bakery |مخبوزات  ',
      'ar': 'مخبز | معجنات',
    },
    'lqt13w4g': {
      'en': 'Fruits & Vegetables | خضار وفاكهة',
      'ar': 'فواكه وخضروات | خضار وفاكهة',
    },
    'kvkpipsp': {
      'en': 'Fish |أسماك',
      'ar': 'السمك',
    },
    'gktqnzsz': {
      'en': '|',
      'ar': '',
    },
    '0u9uqu2m': {
      'en': 'Retail Tec \nQueue Management System',
      'ar': '',
    },
    '09j8qslx': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // login
  {
    'xc0gizz0': {
      'en': '|',
      'ar': '',
    },
    '71iosem1': {
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
