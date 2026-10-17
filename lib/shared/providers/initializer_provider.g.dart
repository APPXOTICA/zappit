// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initializer_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(initializer)
final initializerProvider = InitializerProvider._();

final class InitializerProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  InitializerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'initializerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$initializerHash();

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    return initializer(ref);
  }
}

String _$initializerHash() => r'1a986e38f3eb749ec82374f452741aa530ed60dc';
