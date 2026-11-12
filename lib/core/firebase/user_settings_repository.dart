import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/firebase/firebase_paths.dart';
import 'package:zappit/core/firebase/session_repository.dart';
import 'package:zappit/protocol/json_utils.dart';
import 'package:zappit/protocol/protocol.dart';

part 'user_settings_repository.g.dart';

/// Per-user settings in Firestore `users/{uid}.settings`.
@immutable
class UserSettings {
  const UserSettings({
    this.seekInterval = 10,
    this.abLoopCount = 3,
    this.voiceControl = false,
    this.subtitleSize = 100,
    this.holdSpeed = freeHoldSpeed,
    this.favoriteSites = defaultFavorites,
    this.favoritesSaved = false,
  });

  static const seekIntervals = [3, 5, 10, 15, 20, 30];

  /// null is unlimited (∞).
  static const abLoopCounts = <int?>[3, 5, 10, 20, 50, null];
  static const freeAbLoopCount = 3;
  static const subtitleSizes = [50, 75, 100, 150, 200, 300, 400];

  /// Speed while the Play button is held. Free users get 1.25x only.
  static const holdSpeeds = [0.5, 0.75, 1.25, 1.5, 2.0, 3.0];
  static const freeHoldSpeed = 1.25;

  /// Favorites of a user who hasn't saved any. A new supported site goes in
  /// here only if the user (product owner) says so; users who saved their
  /// favorites keep them (CLAUDE.md, 지원 사이트 추가 규칙).
  static const defaultFavorites = [Site.youtube, Site.shorts, Site.netflix, Site.tiktok, Site.reels];

  final int seekInterval;

  /// null is unlimited.
  final int? abLoopCount;
  final bool voiceControl;
  final int subtitleSize;
  final double holdSpeed;
  /// Supported sites → Favorites, in the user's order: also the sites of
  /// "Open one of these to start". May be empty.
  final List<Site> favoriteSites;

  /// [favoriteSites] came from Firestore (the user chose them). Otherwise they
  /// are [defaultFavorites] and are not written, so a site added to the
  /// defaults later still reaches this user.
  final bool favoritesSaved;

  factory UserSettings.fromJson(Map<String, dynamic> json) {
    final seek = asInt(json['seekInterval']) ?? 10;
    final ab = asInt(json['abLoopCount']);
    final size = asInt(json['subtitleSize']) ?? 100;
    final hold = asDouble(json['holdSpeed']);
    return UserSettings(
      seekInterval: seekIntervals.contains(seek) ? seek : 10,
      // Stored as 0 for unlimited.
      abLoopCount: ab == 0 ? null : (abLoopCounts.contains(ab) ? ab : 3),
      voiceControl: asBool(json['voiceControl']),
      subtitleSize: subtitleSizes.contains(size) ? size : 100,
      holdSpeed: holdSpeeds.contains(hold) ? hold! : freeHoldSpeed,
      favoriteSites: _favorites(json) ?? defaultFavorites,
      favoritesSaved: _favorites(json) != null,
    );
  }

  /// Stored favorites in the user's order (unknown names and duplicates
  /// dropped), else the order saved before favorites existed
  /// (`siteOrder`, all five sites). Null when neither is stored.
  static List<Site>? _favorites(Map<String, dynamic> json) {
    final raw = json['favoriteSites'] ?? json['siteOrder'];
    if (raw is! List) return null;
    return List.unmodifiable({for (final e in raw) Site.fromName(e?.toString())}.where(Site.supported.contains));
  }

  Map<String, Object?> toJson() => {
    'seekInterval': seekInterval,
    'abLoopCount': abLoopCount ?? 0,
    'voiceControl': voiceControl,
    'subtitleSize': subtitleSize,
    'holdSpeed': holdSpeed,
    if (favoritesSaved) 'favoriteSites': [for (final s in favoriteSites) s.name],
  };

  UserSettings copyWith({
    int? seekInterval,
    int? Function()? abLoopCount,
    bool? voiceControl,
    int? subtitleSize,
    double? holdSpeed,
    List<Site>? favoriteSites,
  }) => UserSettings(
    seekInterval: seekInterval ?? this.seekInterval,
    abLoopCount: abLoopCount != null ? abLoopCount() : this.abLoopCount,
    voiceControl: voiceControl ?? this.voiceControl,
    subtitleSize: subtitleSize ?? this.subtitleSize,
    holdSpeed: holdSpeed ?? this.holdSpeed,
    favoriteSites: favoriteSites ?? this.favoriteSites,
    favoritesSaved: favoriteSites != null || favoritesSaved,
  );
}

/// Live settings with optimistic local updates.
@Riverpod(keepAlive: true)
class UserSettingsController extends _$UserSettingsController {
  @override
  UserSettings build() {
    final uid = ref.watch(currentUidProvider);
    if (uid == null) return const UserSettings();

    final sub = _doc(uid).snapshots().listen((snapshot) {
      final data = snapshot.data();
      if (data == null) return;
      state = UserSettings.fromJson(asJsonMap(data['settings']));
    }, onError: (Object e) => debugPrint('settings listen failed: $e'));
    ref.onDispose(sub.cancel);
    return const UserSettings();
  }

  DocumentReference<Map<String, dynamic>> _doc(String uid) =>
      FirebaseFirestore.instance.collection(FirebasePaths.users).doc(uid);

  Future<void> update(UserSettings next) async {
    final previous = state;
    state = next;
    final uid = ref.read(currentUidProvider);
    if (uid == null) return;
    try {
      await _doc(uid).set({'settings': next.toJson()}, SetOptions(merge: true));
    } catch (e) {
      debugPrint('settings save failed: $e');
      state = previous;
    }
  }

  Future<void> setSeekInterval(int seconds) => update(state.copyWith(seekInterval: seconds));

  Future<void> setAbLoopCount(int? count) => update(state.copyWith(abLoopCount: () => count));

  Future<void> setVoiceControl(bool on) => update(state.copyWith(voiceControl: on));

  Future<void> setSubtitleSize(int percent) => update(state.copyWith(subtitleSize: percent));

  Future<void> setHoldSpeed(double rate) => update(state.copyWith(holdSpeed: rate));

  Future<void> setFavoriteSites(List<Site> sites) => update(state.copyWith(favoriteSites: List.unmodifiable(sites)));
}
