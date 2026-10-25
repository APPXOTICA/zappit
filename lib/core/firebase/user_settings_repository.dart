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
    this.siteOrder = defaultSiteOrder,
  });

  static const seekIntervals = [3, 5, 10, 15, 20, 30];

  /// null is unlimited (∞).
  static const abLoopCounts = <int?>[3, 5, 10, 20, 50, null];
  static const freeAbLoopCount = 3;
  static const subtitleSizes = [50, 75, 100, 150, 200, 300, 400];

  /// Speed while the Play button is held. Free users get 1.25x only.
  static const holdSpeeds = [0.5, 0.75, 1.25, 1.5, 2.0, 3.0];
  static const freeHoldSpeed = 1.25;

  /// Sites with a dedicated remote, in the order Supported sites and
  /// "Open one of these to start" show them.
  static const defaultSiteOrder = [Site.youtube, Site.shorts, Site.netflix, Site.tiktok, Site.reels];

  final int seekInterval;

  /// null is unlimited.
  final int? abLoopCount;
  final bool voiceControl;
  final int subtitleSize;
  final double holdSpeed;
  final List<Site> siteOrder;

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
      siteOrder: _siteOrder(json['siteOrder']),
    );
  }

  /// Stored names in the user's order; unknown names are dropped and sites
  /// added later go at the end.
  static List<Site> _siteOrder(Object? raw) {
    final stored = raw is List ? raw.map((e) => Site.fromName(e?.toString())).where(defaultSiteOrder.contains) : const <Site>[];
    final order = {...stored, ...defaultSiteOrder}.toList();
    return List.unmodifiable(order);
  }

  Map<String, Object?> toJson() => {
    'seekInterval': seekInterval,
    'abLoopCount': abLoopCount ?? 0,
    'voiceControl': voiceControl,
    'subtitleSize': subtitleSize,
    'holdSpeed': holdSpeed,
    'siteOrder': [for (final s in siteOrder) s.name],
  };

  UserSettings copyWith({
    int? seekInterval,
    int? Function()? abLoopCount,
    bool? voiceControl,
    int? subtitleSize,
    double? holdSpeed,
    List<Site>? siteOrder,
  }) => UserSettings(
    seekInterval: seekInterval ?? this.seekInterval,
    abLoopCount: abLoopCount != null ? abLoopCount() : this.abLoopCount,
    voiceControl: voiceControl ?? this.voiceControl,
    subtitleSize: subtitleSize ?? this.subtitleSize,
    holdSpeed: holdSpeed ?? this.holdSpeed,
    siteOrder: siteOrder ?? this.siteOrder,
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

  Future<void> setSiteOrder(List<Site> order) => update(state.copyWith(siteOrder: List.unmodifiable(order)));
}
