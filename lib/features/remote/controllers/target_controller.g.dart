// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Latest `target` from the selected browser. Null until one arrives, and
/// reset whenever the selected browser changes.

@ProviderFor(Target)
final targetProvider = TargetProvider._();

/// Latest `target` from the selected browser. Null until one arrives, and
/// reset whenever the selected browser changes.
final class TargetProvider extends $NotifierProvider<Target, TargetInfo?> {
  /// Latest `target` from the selected browser. Null until one arrives, and
  /// reset whenever the selected browser changes.
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

String _$targetHash() => r'2dd076c469b06902c2d68cd6b7133c0c6c67c1ff';

/// Latest `target` from the selected browser. Null until one arrives, and
/// reset whenever the selected browser changes.

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
    r'0d10a2de0be9d2615ffb1dfb115e125eb9618a34';

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
