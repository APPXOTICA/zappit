import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/firebase/firebase_paths.dart';
import 'package:zappit/core/firebase/session_repository.dart';
import 'package:zappit/protocol/json_utils.dart';

part 'user_settings_repository.g.dart';

/// Per-user settings in Firestore `users/{uid}.settings`.
@immutable
class UserSettings {
  const UserSettings({
    this.seekInterval = 10,
    this.abLoopCount = 3,
    this.voiceControl = false,
    this.subtitleSize = 100,
  });

  static const seekIntervals = [3, 5, 10, 15, 20, 30];

  /// null is unlimited (∞).
  static const abLoopCounts = <int?>[3, 5, 10, 20, 50, null];
  static const freeAbLoopCount = 3;
  static const subtitleSizes = [50, 75, 100, 150, 200, 300, 400];

  final int seekInterval;

  /// null is unlimited.
  final int? abLoopCount;
  final bool voiceControl;
  final int subtitleSize;

  factory UserSettings.fromJson(Map<String, dynamic> json) {
    final seek = asInt(json['seekInterval']) ?? 10;
    final ab = asInt(json['abLoopCount']);
    final size = asInt(json['subtitleSize']) ?? 100;
    return UserSettings(
      seekInterval: seekIntervals.contains(seek) ? seek : 10,
      // Stored as 0 for unlimited.
      abLoopCount: ab == 0 ? null : (abLoopCounts.contains(ab) ? ab : 3),
      voiceControl: asBool(json['voiceControl']),
      subtitleSize: subtitleSizes.contains(size) ? size : 100,
    );
  }

  Map<String, Object?> toJson() => {
        'seekInterval': seekInterval,
        'abLoopCount': abLoopCount ?? 0,
        'voiceControl': voiceControl,
        'subtitleSize': subtitleSize,
      };

  UserSettings copyWith({int? seekInterval, int? Function()? abLoopCount, bool? voiceControl, int? subtitleSize}) =>
      UserSettings(
        seekInterval: seekInterval ?? this.seekInterval,
        abLoopCount: abLoopCount != null ? abLoopCount() : this.abLoopCount,
        voiceControl: voiceControl ?? this.voiceControl,
        subtitleSize: subtitleSize ?? this.subtitleSize,
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
}
