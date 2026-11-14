// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pairing_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Firestore `users/{uid}/phones/{phoneId}` of this phone exists: it is paired.
/// Null while loading. The pairing screen shows until this is true.

@ProviderFor(phonePaired)
final phonePairedProvider = PhonePairedProvider._();

/// Firestore `users/{uid}/phones/{phoneId}` of this phone exists: it is paired.
/// Null while loading. The pairing screen shows until this is true.

final class PhonePairedProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, Stream<bool>>
    with $FutureModifier<bool>, $StreamProvider<bool> {
  /// Firestore `users/{uid}/phones/{phoneId}` of this phone exists: it is paired.
  /// Null while loading. The pairing screen shows until this is true.
  PhonePairedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'phonePairedProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$phonePairedHash();

  @$internal
  @override
  $StreamProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<bool> create(Ref ref) {
    return phonePaired(ref);
  }
}

String _$phonePairedHash() => r'6e9f555ba1225615c7bb3bdff3302ed4ee24d454';

@ProviderFor(pairingService)
final pairingServiceProvider = PairingServiceProvider._();

final class PairingServiceProvider
    extends $FunctionalProvider<PairingService, PairingService, PairingService>
    with $Provider<PairingService> {
  PairingServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pairingServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pairingServiceHash();

  @$internal
  @override
  $ProviderElement<PairingService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PairingService create(Ref ref) {
    return pairingService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PairingService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PairingService>(value),
    );
  }
}

String _$pairingServiceHash() => r'3b7d2d35e3eee0b43ca005a13374368c69e0f0da';

/// App-wide: watches this phone's entry (leaves when it is removed), shows the
/// "disconnected from …" notice once, and claims codes from QR links opened
/// by the phone's camera (Universal Links / App Links).

@ProviderFor(PairingWatcher)
final pairingWatcherProvider = PairingWatcherProvider._();

/// App-wide: watches this phone's entry (leaves when it is removed), shows the
/// "disconnected from …" notice once, and claims codes from QR links opened
/// by the phone's camera (Universal Links / App Links).
final class PairingWatcherProvider
    extends $NotifierProvider<PairingWatcher, void> {
  /// App-wide: watches this phone's entry (leaves when it is removed), shows the
  /// "disconnected from …" notice once, and claims codes from QR links opened
  /// by the phone's camera (Universal Links / App Links).
  PairingWatcherProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pairingWatcherProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pairingWatcherHash();

  @$internal
  @override
  PairingWatcher create() => PairingWatcher();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$pairingWatcherHash() => r'd583e3509e9aeebd914e9fe22a158a6edf27ac80';

/// App-wide: watches this phone's entry (leaves when it is removed), shows the
/// "disconnected from …" notice once, and claims codes from QR links opened
/// by the phone's camera (Universal Links / App Links).

abstract class _$PairingWatcher extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
