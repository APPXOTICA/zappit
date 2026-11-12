// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Latest `target` from the selected browser, as the browser sent it. The
/// screens use [targetProvider], which drops the Pro capabilities for free
/// users. Null until one arrives, and reset whenever the selected browser
/// changes.
///
/// The browser sends a target when the app enters presence. A reconnect that
/// keeps presence (token renewal, short network drop) resets this without a
/// new one, so while it stays null the app asks with `ping`. The browser
/// sends `state` only when it changes, so a missed one is asked for the same
/// way (a few times per tab: some pages never send one).

@ProviderFor(BrowserTarget)
final browserTargetProvider = BrowserTargetProvider._();

/// Latest `target` from the selected browser, as the browser sent it. The
/// screens use [targetProvider], which drops the Pro capabilities for free
/// users. Null until one arrives, and reset whenever the selected browser
/// changes.
///
/// The browser sends a target when the app enters presence. A reconnect that
/// keeps presence (token renewal, short network drop) resets this without a
/// new one, so while it stays null the app asks with `ping`. The browser
/// sends `state` only when it changes, so a missed one is asked for the same
/// way (a few times per tab: some pages never send one).
final class BrowserTargetProvider
    extends $NotifierProvider<BrowserTarget, TargetInfo?> {
  /// Latest `target` from the selected browser, as the browser sent it. The
  /// screens use [targetProvider], which drops the Pro capabilities for free
  /// users. Null until one arrives, and reset whenever the selected browser
  /// changes.
  ///
  /// The browser sends a target when the app enters presence. A reconnect that
  /// keeps presence (token renewal, short network drop) resets this without a
  /// new one, so while it stays null the app asks with `ping`. The browser
  /// sends `state` only when it changes, so a missed one is asked for the same
  /// way (a few times per tab: some pages never send one).
  BrowserTargetProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'browserTargetProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$browserTargetHash();

  @$internal
  @override
  BrowserTarget create() => BrowserTarget();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TargetInfo? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TargetInfo?>(value),
    );
  }
}

String _$browserTargetHash() => r'3b494ab0a2ebfc50ea233e03f393423994a4bd1a';

/// Latest `target` from the selected browser, as the browser sent it. The
/// screens use [targetProvider], which drops the Pro capabilities for free
/// users. Null until one arrives, and reset whenever the selected browser
/// changes.
///
/// The browser sends a target when the app enters presence. A reconnect that
/// keeps presence (token renewal, short network drop) resets this without a
/// new one, so while it stays null the app asks with `ping`. The browser
/// sends `state` only when it changes, so a missed one is asked for the same
/// way (a few times per tab: some pages never send one).

abstract class _$BrowserTarget extends $Notifier<TargetInfo?> {
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

/// [BrowserTarget] as the screens see it: free users lose
/// [proCapabilities]. Short-form keeps replay and loop then (the up / down
/// rail that replaces them is Pro).

@ProviderFor(target)
final targetProvider = TargetProvider._();

/// [BrowserTarget] as the screens see it: free users lose
/// [proCapabilities]. Short-form keeps replay and loop then (the up / down
/// rail that replaces them is Pro).

final class TargetProvider
    extends $FunctionalProvider<TargetInfo?, TargetInfo?, TargetInfo?>
    with $Provider<TargetInfo?> {
  /// [BrowserTarget] as the screens see it: free users lose
  /// [proCapabilities]. Short-form keeps replay and loop then (the up / down
  /// rail that replaces them is Pro).
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
  $ProviderElement<TargetInfo?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TargetInfo? create(Ref ref) {
    return target(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TargetInfo? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TargetInfo?>(value),
    );
  }
}

String _$targetHash() => r'aa6ecb8ac25989dbe9dfbe0797084b12e122710e';

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
