// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtime_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(realtimeService)
final realtimeServiceProvider = RealtimeServiceProvider._();

final class RealtimeServiceProvider
    extends
        $FunctionalProvider<RealtimeService, RealtimeService, RealtimeService>
    with $Provider<RealtimeService> {
  RealtimeServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'realtimeServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$realtimeServiceHash();

  @$internal
  @override
  $ProviderElement<RealtimeService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RealtimeService create(Ref ref) {
    return realtimeService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RealtimeService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RealtimeService>(value),
    );
  }
}

String _$realtimeServiceHash() => r'b3952618ce143a712a65577ff8b8f096dc1338ea';
