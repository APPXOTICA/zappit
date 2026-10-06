// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_config_instance_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// App-wide Remote Config service.
///
/// `RemoteConfigService.init()` is idempotent.

@ProviderFor(remoteConfigInstance)
final remoteConfigInstanceProvider = RemoteConfigInstanceProvider._();

/// App-wide Remote Config service.
///
/// `RemoteConfigService.init()` is idempotent.

final class RemoteConfigInstanceProvider
    extends
        $FunctionalProvider<
          AsyncValue<FirebaseRemoteConfig>,
          FirebaseRemoteConfig,
          FutureOr<FirebaseRemoteConfig>
        >
    with
        $FutureModifier<FirebaseRemoteConfig>,
        $FutureProvider<FirebaseRemoteConfig> {
  /// App-wide Remote Config service.
  ///
  /// `RemoteConfigService.init()` is idempotent.
  RemoteConfigInstanceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteConfigInstanceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteConfigInstanceHash();

  @$internal
  @override
  $FutureProviderElement<FirebaseRemoteConfig> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FirebaseRemoteConfig> create(Ref ref) {
    return remoteConfigInstance(ref);
  }
}

String _$remoteConfigInstanceHash() =>
    r'5f4ad322d378a887210bfb3c86789f84bdf249d7';
