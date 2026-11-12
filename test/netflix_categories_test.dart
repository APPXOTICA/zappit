import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:zappit/features/remote/controllers/netflix_categories.dart';

void main() {
  test('language: Chinese by script, else by region', () {
    expect(netflixCategoryLanguage(const Locale('ko', 'KR')), 'ko');
    expect(netflixCategoryLanguage(const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant')), 'zh-Hant');
    expect(netflixCategoryLanguage(const Locale('zh', 'TW')), 'zh-Hant');
    expect(netflixCategoryLanguage(const Locale('zh', 'CN')), 'zh-Hans');
  });

  const action = NetflixCategory(code: 1365, names: {'en': 'Action & Adventure Movies', 'ko': '액션 & 어드벤처 영화'});
  const comedy = NetflixCategory(code: 43040, names: {'en': 'Action Comedy Movies'});
  final groups = [
    const NetflixCategoryGroup(genre: action, items: [comedy]),
    const NetflixCategoryGroup(genre: NetflixCategory(code: 6548, names: {'en': 'Comedy Movies'}), items: [comedy]),
  ];

  test('name falls back to English', () {
    expect(action.nameIn('ko'), '액션 & 어드벤처 영화');
    expect(comedy.nameIn('ko'), 'Action Comedy Movies');
  });

  test('search matches the shown name and English, each genre once', () {
    expect(searchNetflixCategories(groups, '어드벤처', 'ko').map((c) => c.code), [1365]);
    expect(searchNetflixCategories(groups, 'adventure', 'ko').map((c) => c.code), [1365]);
    expect(searchNetflixCategories(groups, 'COMEDY', 'ko').map((c) => c.code), [43040, 6548]);
  });
}
