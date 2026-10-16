// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pro_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Whether the user has Zappit Pro.
///
/// RevenueCat is not wired yet (IAP is screen-only for now). Until then this
/// is false, with a debug-only switch on the IAP screen to test Pro paths.
/// Later: read the RevenueCat entitlement here; callers don't change.

@ProviderFor(ProController)
final proControllerProvider = ProControllerProvider._();

/// Whether the user has Zappit Pro.
///
/// RevenueCat is not wired yet (IAP is screen-only for now). Until then this
/// is false, with a debug-only switch on the IAP screen to test Pro paths.
/// Later: read the RevenueCat entitlement here; callers don't change.
final class ProControllerProvider
    extends $NotifierProvider<ProController, bool> {
  /// Whether the user has Zappit Pro.
  ///
  /// RevenueCat is not wired yet (IAP is screen-only for now). Until then this
  /// is false, with a debug-only switch on the IAP screen to test Pro paths.
  /// Later: read the RevenueCat entitlement here; callers don't change.
  ProControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'proControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$proControllerHash();

  @$internal
  @override
  ProController create() => ProController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$proControllerHash() => r'8b9904b20af22b3188101c8a02db7cc90b4a6a9e';

/// Whether the user has Zappit Pro.
///
/// RevenueCat is not wired yet (IAP is screen-only for now). Until then this
/// is false, with a debug-only switch on the IAP screen to test Pro paths.
/// Later: read the RevenueCat entitlement here; callers don't change.

abstract class _$ProController extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
