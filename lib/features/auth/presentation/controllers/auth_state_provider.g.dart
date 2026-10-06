// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthState)
final authStateProvider = AuthStateProvider._();

final class AuthStateProvider
    extends $NotifierProvider<AuthState, AuthenticationState> {
  AuthStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authStateHash();

  @$internal
  @override
  AuthState create() => AuthState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthenticationState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthenticationState>(value),
    );
  }
}

String _$authStateHash() => r'49c1ff64aeee486e372ee0b15783779e2e51d7af';

abstract class _$AuthState extends $Notifier<AuthenticationState> {
  AuthenticationState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AuthenticationState, AuthenticationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthenticationState, AuthenticationState>,
              AuthenticationState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
