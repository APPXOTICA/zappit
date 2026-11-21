import 'package:flutter/widgets.dart';

/// Picks the app language from the phone's preferred languages, in order.
///
/// Chinese has two translations (`zh_Hans`, `zh_Hant`). Android often reports
/// Taiwan / Hong Kong / Macau as `zh_TW` without a script, which Flutter's
/// default match would send to Simplified; here those regions get
/// Traditional. Every other language matches by language code (`pt_PT` →
/// `pt`). No match → English.
Locale resolveAppLocale(List<Locale>? preferred, Iterable<Locale> supported) {
  bool has(Locale l) => supported.any((s) => s.languageCode == l.languageCode && s.scriptCode == l.scriptCode);
  for (final locale in preferred ?? const <Locale>[]) {
    if (locale.languageCode == 'zh') {
      final script = locale.scriptCode ?? (const {'TW', 'HK', 'MO'}.contains(locale.countryCode) ? 'Hant' : 'Hans');
      final zh = Locale.fromSubtags(languageCode: 'zh', scriptCode: script);
      if (has(zh)) return zh;
      continue;
    }
    for (final s in supported) {
      if (s.languageCode == locale.languageCode) return s;
    }
  }
  return const Locale('en');
}
