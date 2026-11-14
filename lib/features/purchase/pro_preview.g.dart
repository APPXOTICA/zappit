// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pro_preview.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Server time minus phone time (RTDB `.info/serverTimeOffset`), so moving the
/// phone's clock back doesn't stretch the preview.

@ProviderFor(serverTimeOffset)
final serverTimeOffsetProvider = ServerTimeOffsetProvider._();

/// Server time minus phone time (RTDB `.info/serverTimeOffset`), so moving the
/// phone's clock back doesn't stretch the preview.

final class ServerTimeOffsetProvider
    extends $FunctionalProvider<AsyncValue<int>, int, Stream<int>>
    with $FutureModifier<int>, $StreamProvider<int> {
  /// Server time minus phone time (RTDB `.info/serverTimeOffset`), so moving the
  /// phone's clock back doesn't stretch the preview.
  ServerTimeOffsetProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'serverTimeOffsetProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$serverTimeOffsetHash();

  @$internal
  @override
  $StreamProviderElement<int> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<int> create(Ref ref) {
    return serverTimeOffset(ref);
  }
}

String _$serverTimeOffsetHash() => r'e2a9d216c1eed72af3cb8b21d2d52d680d77c14c';

@ProviderFor(ProPreview)
final proPreviewProvider = ProPreviewProvider._();

final class ProPreviewProvider
    extends $NotifierProvider<ProPreview, ProPreviewState> {
  ProPreviewProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'proPreviewProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$proPreviewHash();

  @$internal
  @override
  ProPreview create() => ProPreview();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProPreviewState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProPreviewState>(value),
    );
  }
}

String _$proPreviewHash() => r'a710d59a290399fc1eaba052c16d9f3accac658d';

abstract class _$ProPreview extends $Notifier<ProPreviewState> {
  ProPreviewState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<ProPreviewState, ProPreviewState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProPreviewState, ProPreviewState>,
              ProPreviewState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

/// The app and the selected browser are connected.

@ProviderFor(_connected)
final _connectedProvider = _ConnectedProvider._();

/// The app and the selected browser are connected.

final class _ConnectedProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  /// The app and the selected browser are connected.
  _ConnectedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'_connectedProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$_connectedHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return _connected(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$_connectedHash() => r'9601ff5bc5659d5046a9e0865cceb9fe03ea4b5b';

/// Pro features unlocked: a subscription (or debug Pro) or the Pro preview.
/// Feature gates watch this; the Pro screen and the More banner watch
/// [proControllerProvider] (subscription only) and [proPreviewProvider].

@ProviderFor(proAccess)
final proAccessProvider = ProAccessProvider._();

/// Pro features unlocked: a subscription (or debug Pro) or the Pro preview.
/// Feature gates watch this; the Pro screen and the More banner watch
/// [proControllerProvider] (subscription only) and [proPreviewProvider].

final class ProAccessProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  /// Pro features unlocked: a subscription (or debug Pro) or the Pro preview.
  /// Feature gates watch this; the Pro screen and the More banner watch
  /// [proControllerProvider] (subscription only) and [proPreviewProvider].
  ProAccessProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'proAccessProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$proAccessHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return proAccess(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$proAccessHash() => r'80456b984ea81e7effcccd00d3485bd6f3b17fc5';
