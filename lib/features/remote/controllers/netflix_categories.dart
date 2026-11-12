import 'dart:convert';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';

part 'netflix_categories.g.dart';

/// Netflix genres for the Categories sheet (`go_genre`). Names are Netflix's
/// own, collected by `tool/netflix_categories/collect.py` into
/// `assets/data/netflix_categories.json`, in as many languages as were
/// collected; English is always there.
class NetflixCategory {
  const NetflixCategory({required this.code, required this.names});

  factory NetflixCategory.fromJson(Map<String, dynamic> json) => NetflixCategory(
    code: json['code'] as int,
    names: (json['name'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  );

  final int code;

  /// Language (`en`, `ko`, `zh-Hant`, …) → name.
  final Map<String, String> names;

  String get english => names['en'] ?? '';

  /// The name in [lang], or English.
  String nameIn(String lang) => names[lang] ?? english;
}

class NetflixCategoryGroup {
  const NetflixCategoryGroup({required this.genre, required this.items});

  /// The group is a genre too (e.g. "Action & Adventure").
  final NetflixCategory genre;
  final List<NetflixCategory> items;
}

/// The phone's language as the data names it: `ko`, `ja`, … and `zh-Hans` /
/// `zh-Hant` for Chinese (script, else the region: Taiwan, Hong Kong and
/// Macau use traditional characters). The app itself is English only, so the
/// app locale can't be used.
String netflixCategoryLanguage([Locale? locale]) {
  final l = locale ?? PlatformDispatcher.instance.locale;
  if (l.languageCode != 'zh') return l.languageCode;
  final script = l.scriptCode;
  if (script == 'Hant' || script == 'Hans') return 'zh-$script';
  return const {'TW', 'HK', 'MO'}.contains(l.countryCode) ? 'zh-Hant' : 'zh-Hans';
}

@Riverpod(keepAlive: true)
Future<List<NetflixCategoryGroup>> netflixCategories(Ref ref) async {
  final raw = jsonDecode(await rootBundle.loadString('assets/data/netflix_categories.json')) as List<dynamic>;
  return [
    for (final g in raw.cast<Map<String, dynamic>>())
      NetflixCategoryGroup(
        genre: NetflixCategory.fromJson(g),
        items: [for (final i in (g['items'] as List<dynamic>).cast<Map<String, dynamic>>()) NetflixCategory.fromJson(i)],
      ),
  ];
}

/// Genres whose name in [lang] or in English contains [query] (case
/// insensitive), each once, groups' own genres included.
List<NetflixCategory> searchNetflixCategories(List<NetflixCategoryGroup> groups, String query, String lang) {
  final q = query.trim().toLowerCase();
  final seen = <int>{};
  return [
    for (final g in groups)
      for (final c in [g.genre, ...g.items])
        if (seen.add(c.code) && (c.nameIn(lang).toLowerCase().contains(q) || c.english.toLowerCase().contains(q))) c,
  ];
}
