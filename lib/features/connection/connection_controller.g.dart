// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Combines the app's Ably connection, browser presence and the selected
/// instance into one status. When exactly one browser is online and nothing
/// valid is selected, it selects that browser (same rule as the extension).

@ProviderFor(connectionStatus)
final connectionStatusProvider = ConnectionStatusProvider._();

/// Combines the app's Ably connection, browser presence and the selected
/// instance into one status. When exactly one browser is online and nothing
/// valid is selected, it selects that browser (same rule as the extension).

final class ConnectionStatusProvider
    extends
        $FunctionalProvider<
          ConnectionStatus,
          ConnectionStatus,
          ConnectionStatus
        >
    with $Provider<ConnectionStatus> {
  /// Combines the app's Ably connection, browser presence and the selected
  /// instance into one status. When exactly one browser is online and nothing
  /// valid is selected, it selects that browser (same rule as the extension).
  ConnectionStatusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'connectionStatusProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$connectionStatusHash();

  @$internal
  @override
  $ProviderElement<ConnectionStatus> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ConnectionStatus create(Ref ref) {
    return connectionStatus(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConnectionStatus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConnectionStatus>(value),
    );
  }
}

String _$connectionStatusHash() => r'620d4e1894c16e91e7e68dd824221dfb82450365';

/// Instance id commands go to, or null.

@ProviderFor(targetInstanceId)
final targetInstanceIdProvider = TargetInstanceIdProvider._();

/// Instance id commands go to, or null.

final class TargetInstanceIdProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  /// Instance id commands go to, or null.
  TargetInstanceIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'targetInstanceIdProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$targetInstanceIdHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return targetInstanceId(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$targetInstanceIdHash() => r'1c6d31e0e9776af8b0ebeef396e74aae38baabf9';
