// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(currentUid)
final currentUidProvider = CurrentUidProvider._();

final class CurrentUidProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  CurrentUidProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentUidProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentUidHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return currentUid(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$currentUidHash() => r'4d4092821b2401174135ac10a6b847d5b792631b';

/// RTDB `session/{uid}/selectedInstanceId`: the browser the remote controls.

@ProviderFor(selectedInstanceId)
final selectedInstanceIdProvider = SelectedInstanceIdProvider._();

/// RTDB `session/{uid}/selectedInstanceId`: the browser the remote controls.

final class SelectedInstanceIdProvider
    extends $FunctionalProvider<AsyncValue<String?>, String?, Stream<String?>>
    with $FutureModifier<String?>, $StreamProvider<String?> {
  /// RTDB `session/{uid}/selectedInstanceId`: the browser the remote controls.
  SelectedInstanceIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedInstanceIdProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedInstanceIdHash();

  @$internal
  @override
  $StreamProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<String?> create(Ref ref) {
    return selectedInstanceId(ref);
  }
}

String _$selectedInstanceIdHash() =>
    r'2619763c681ec88979e02b47a16bb69e4429faae';

/// RTDB `playback/{uid}`: media timeline written by the selected browser.

@ProviderFor(playbackSnapshot)
final playbackSnapshotProvider = PlaybackSnapshotProvider._();

/// RTDB `playback/{uid}`: media timeline written by the selected browser.

final class PlaybackSnapshotProvider
    extends
        $FunctionalProvider<
          AsyncValue<PlaybackSnapshot?>,
          PlaybackSnapshot?,
          Stream<PlaybackSnapshot?>
        >
    with
        $FutureModifier<PlaybackSnapshot?>,
        $StreamProvider<PlaybackSnapshot?> {
  /// RTDB `playback/{uid}`: media timeline written by the selected browser.
  PlaybackSnapshotProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'playbackSnapshotProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$playbackSnapshotHash();

  @$internal
  @override
  $StreamProviderElement<PlaybackSnapshot?> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<PlaybackSnapshot?> create(Ref ref) {
    return playbackSnapshot(ref);
  }
}

String _$playbackSnapshotHash() => r'22ed3beba9fcade9920fdc7abd22c7181766d588';

@ProviderFor(sessionRepository)
final sessionRepositoryProvider = SessionRepositoryProvider._();

final class SessionRepositoryProvider
    extends
        $FunctionalProvider<
          SessionRepository,
          SessionRepository,
          SessionRepository
        >
    with $Provider<SessionRepository> {
  SessionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sessionRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sessionRepositoryHash();

  @$internal
  @override
  $ProviderElement<SessionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SessionRepository create(Ref ref) {
    return sessionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SessionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SessionRepository>(value),
    );
  }
}

String _$sessionRepositoryHash() => r'39a6b7f738d13063c1fec1bcf8daf8c4a96d14f1';
