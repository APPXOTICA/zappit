// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(preferences)
final preferencesProvider = PreferencesProvider._();

final class PreferencesProvider
    extends $FunctionalProvider<Preferences, Preferences, Preferences>
    with $Provider<Preferences> {
  PreferencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'preferencesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$preferencesHash();

  @$internal
  @override
  $ProviderElement<Preferences> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Preferences create(Ref ref) {
    return preferences(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Preferences value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Preferences>(value),
    );
  }
}

String _$preferencesHash() => r'09294e30dca63c588b323af8a3ed762d1630677c';
