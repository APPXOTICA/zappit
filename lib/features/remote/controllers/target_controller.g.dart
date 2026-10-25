// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Latest `target` from the selected browser. Null until one arrives, and
/// reset whenever the selected browser changes.
///
/// The browser sends a target when the app enters presence. A reconnect that
/// keeps presence (token renewal, short network drop) resets this without a
/// new one, so while it stays null the app asks with `ping`. The browser
/// sends `state` only when it changes, so a missed one is asked for the same
/// way (a few times per tab: some pages never send one).

@ProviderFor(Target)
final targetProvider = TargetProvider._();

/// Latest `target` from the selected browser. Null until one arrives, and
/// reset whenever the selected browser changes.
///
/// The browser sends a target when the app enters presence. A reconnect that
/// keeps presence (token renewal, short network drop) resets this without a
/// new one, so while it stays null the app asks with `ping`. The browser
/// sends `state` only when it changes, so a missed one is asked for the same
/// way (a few times per tab: some pages never send one).
final class TargetProvider extends $NotifierProvider<Target, TargetInfo?> {
  /// Latest `target` from the selected browser. Null until one arrives, and
  /// reset whenever the selected browser changes.
  ///
  /// The browser sends a target when the app enters presence. A reconnect that
  /// keeps presence (token renewal, short network drop) resets this without a
  /// new one, so while it stays null the app asks with `ping`. The browser
  /// sends `state` only when it changes, so a missed one is asked for the same
  /// way (a few times per tab: some pages never send one).
  TargetProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'targetProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$targetHash();

  @$internal
  @override
  Target create() => Target();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TargetInfo? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TargetInfo?>(value),
    );
  }
}

String _$targetHash() => r'291de3ca9b0769f787049804fd7b84ad9c55ded0';

/// Latest `target` from the selected browser. Null until one arrives, and
/// reset whenever the selected browser changes.
///
/// The browser sends a target when the app enters presence. A reconnect that
/// keeps presence (token renewal, short network drop) resets this without a
/// new one, so while it stays null the app asks with `ping`. The browser
/// sends `state` only when it changes, so a missed one is asked for the same
/// way (a few times per tab: some pages never send one).

abstract class _$Target extends $Notifier<TargetInfo?> {
  TargetInfo? build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<TargetInfo?, TargetInfo?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TargetInfo?, TargetInfo?>,
              TargetInfo?,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

/// Latest `state` snapshot from the selected browser.

@ProviderFor(SiteStateController)
final siteStateControllerProvider = SiteStateControllerProvider._();

/// Latest `state` snapshot from the selected browser.
final class SiteStateControllerProvider
    extends $NotifierProvider<SiteStateController, SiteState> {
  /// Latest `state` snapshot from the selected browser.
  SiteStateControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'siteStateControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$siteStateControllerHash();

  @$internal
  @override
  SiteStateController create() => SiteStateController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SiteState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SiteState>(value),
    );
  }
}

String _$siteStateControllerHash() =>
    r'45ade18bc06be6633b4afb52bef28f7588bea360';

/// Latest `state` snapshot from the selected browser.

abstract class _$SiteStateController extends $Notifier<SiteState> {
  SiteState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<SiteState, SiteState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SiteState, SiteState>,
              SiteState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
