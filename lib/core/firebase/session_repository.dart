import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/firebase/firebase_paths.dart';
import 'package:zappit/features/auth/presentation/controllers/auth_state_provider.dart';
import 'package:zappit/protocol/json_utils.dart';
import 'package:zappit/protocol/messages.dart';

part 'session_repository.g.dart';

@Riverpod(keepAlive: true)
String? currentUid(Ref ref) {
  ref.watch(authStateProvider);
  return ref.read(authStateProvider.notifier).userId;
}

/// RTDB `session/{uid}/selectedInstanceId`: the browser the remote controls.
@Riverpod(keepAlive: true)
Stream<String?> selectedInstanceId(Ref ref) {
  final uid = ref.watch(currentUidProvider);
  if (uid == null) return Stream.value(null);
  return FirebaseDatabase.instance
      .ref(FirebasePaths.selectedInstance(uid))
      .onValue
      .map((event) => asString(event.snapshot.value));
}

/// RTDB `playback/{uid}`: media timeline written by the selected browser.
@Riverpod(keepAlive: true)
Stream<PlaybackSnapshot?> playbackSnapshot(Ref ref) {
  final uid = ref.watch(currentUidProvider);
  if (uid == null) return Stream.value(null);
  return FirebaseDatabase.instance.ref(FirebasePaths.playback(uid)).onValue.map((event) {
    final value = event.snapshot.value;
    if (value == null) return null;
    return PlaybackSnapshot.fromJson(value);
  });
}

@Riverpod(keepAlive: true)
SessionRepository sessionRepository(Ref ref) => SessionRepository(ref.watch(currentUidProvider));

class SessionRepository {
  const SessionRepository(this._uid);

  final String? _uid;

  /// Selects a browser. The user chose explicitly, so this overwrites.
  Future<void> select(String instanceId) async {
    final uid = _uid;
    if (uid == null) return;
    await FirebaseDatabase.instance.ref(FirebasePaths.selectedInstance(uid)).set(instanceId);
  }

  /// Selects [instanceId] only if nothing valid is selected (the single online
  /// browser case). Same transaction rule the extension uses.
  Future<void> selectIfVacant(String instanceId, Set<String> online) async {
    final uid = _uid;
    if (uid == null) return;
    try {
      await FirebaseDatabase.instance.ref(FirebasePaths.selectedInstance(uid)).runTransaction((current) {
        final value = asString(current);
        if (value != null && online.contains(value)) return Transaction.abort();
        return Transaction.success(instanceId);
      });
    } catch (e) {
      debugPrint('selectIfVacant failed: $e');
    }
  }
}
