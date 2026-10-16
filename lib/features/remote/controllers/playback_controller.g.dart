// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Merges RTDB `playback/{uid}` with the app's optimistic updates.

@ProviderFor(PlaybackController)
final playbackControllerProvider = PlaybackControllerProvider._();

/// Merges RTDB `playback/{uid}` with the app's optimistic updates.
final class PlaybackControllerProvider
    extends $NotifierProvider<PlaybackController, PlaybackView> {
  /// Merges RTDB `playback/{uid}` with the app's optimistic updates.
  PlaybackControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'playbackControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$playbackControllerHash();

  @$internal
  @override
  PlaybackController create() => PlaybackController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlaybackView value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlaybackView>(value),
    );
  }
}

String _$playbackControllerHash() =>
    r'c579937931dd5708d56d3a2c67aa9881c6c74b28';

/// Merges RTDB `playback/{uid}` with the app's optimistic updates.

abstract class _$PlaybackController extends $Notifier<PlaybackView> {
  PlaybackView build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<PlaybackView, PlaybackView>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PlaybackView, PlaybackView>,
              PlaybackView,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
