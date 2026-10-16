// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_mode.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(remoteMode)
final remoteModeProvider = RemoteModeProvider._();

final class RemoteModeProvider
    extends $FunctionalProvider<RemoteMode, RemoteMode, RemoteMode>
    with $Provider<RemoteMode> {
  RemoteModeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteModeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteModeHash();

  @$internal
  @override
  $ProviderElement<RemoteMode> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RemoteMode create(Ref ref) {
    return remoteMode(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteMode>(value),
    );
  }
}

String _$remoteModeHash() => r'0caee177753913b21132d624fb71745271f98550';

/// End screen overlay on top of [RemoteMode.playing] (YouTube).

@ProviderFor(endScreenMode)
final endScreenModeProvider = EndScreenModeProvider._();

/// End screen overlay on top of [RemoteMode.playing] (YouTube).

final class EndScreenModeProvider
    extends $FunctionalProvider<EndScreenMode, EndScreenMode, EndScreenMode>
    with $Provider<EndScreenMode> {
  /// End screen overlay on top of [RemoteMode.playing] (YouTube).
  EndScreenModeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'endScreenModeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$endScreenModeHash();

  @$internal
  @override
  $ProviderElement<EndScreenMode> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EndScreenMode create(Ref ref) {
    return endScreenMode(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EndScreenMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EndScreenMode>(value),
    );
  }
}

String _$endScreenModeHash() => r'd7ff7d42195b2c6f3c65b62303d9274da4781e36';
