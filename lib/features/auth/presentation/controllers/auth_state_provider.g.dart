// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// No sign-in screen: the app always has an invisible Firebase anonymous
/// account, made on first launch ([ensureSignedIn]). Scanning the extension's
/// QR (`features/pairing`) may move it to the computer's account with a
/// custom token; disconnecting this phone moves it to a new anonymous one.

@ProviderFor(AuthState)
final authStateProvider = AuthStateProvider._();

/// No sign-in screen: the app always has an invisible Firebase anonymous
/// account, made on first launch ([ensureSignedIn]). Scanning the extension's
/// QR (`features/pairing`) may move it to the computer's account with a
/// custom token; disconnecting this phone moves it to a new anonymous one.
final class AuthStateProvider
    extends $NotifierProvider<AuthState, AuthenticationState> {
  /// No sign-in screen: the app always has an invisible Firebase anonymous
  /// account, made on first launch ([ensureSignedIn]). Scanning the extension's
  /// QR (`features/pairing`) may move it to the computer's account with a
  /// custom token; disconnecting this phone moves it to a new anonymous one.
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

String _$authStateHash() => r'aeccc0c245ad014bb266e9e5105fa597ca197fbc';

/// No sign-in screen: the app always has an invisible Firebase anonymous
/// account, made on first launch ([ensureSignedIn]). Scanning the extension's
/// QR (`features/pairing`) may move it to the computer's account with a
/// custom token; disconnecting this phone moves it to a new anonymous one.

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
