// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(remoteController)
final remoteControllerProvider = RemoteControllerProvider._();

final class RemoteControllerProvider
    extends
        $FunctionalProvider<
          RemoteController,
          RemoteController,
          RemoteController
        >
    with $Provider<RemoteController> {
  RemoteControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteControllerHash();

  @$internal
  @override
  $ProviderElement<RemoteController> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RemoteController create(Ref ref) {
    return remoteController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteController>(value),
    );
  }
}

String _$remoteControllerHash() => r'cf7ef3940c248fc753561afcc42118d37c1f7679';
