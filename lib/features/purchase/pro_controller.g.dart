// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pro_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Whether the user has Zappit Pro: the RevenueCat `zappit_pro` entitlement.
///
/// RevenueCat pushes every change (purchase, restore, renewal, expiry,
/// logIn/logOut on account switch) through the customer info listener, so
/// callers just watch this. Debug builds can force Pro from the Pro screen.

@ProviderFor(ProController)
final proControllerProvider = ProControllerProvider._();

/// Whether the user has Zappit Pro: the RevenueCat `zappit_pro` entitlement.
///
/// RevenueCat pushes every change (purchase, restore, renewal, expiry,
/// logIn/logOut on account switch) through the customer info listener, so
/// callers just watch this. Debug builds can force Pro from the Pro screen.
final class ProControllerProvider
    extends $NotifierProvider<ProController, bool> {
  /// Whether the user has Zappit Pro: the RevenueCat `zappit_pro` entitlement.
  ///
  /// RevenueCat pushes every change (purchase, restore, renewal, expiry,
  /// logIn/logOut on account switch) through the customer info listener, so
  /// callers just watch this. Debug builds can force Pro from the Pro screen.
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

String _$proControllerHash() => r'88286d60da8bc17949058160c3a843dc6504a5aa';

/// Whether the user has Zappit Pro: the RevenueCat `zappit_pro` entitlement.
///
/// RevenueCat pushes every change (purchase, restore, renewal, expiry,
/// logIn/logOut on account switch) through the customer info listener, so
/// callers just watch this. Debug builds can force Pro from the Pro screen.

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
