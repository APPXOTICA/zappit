import 'dart:io';

import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/constants/config.dart' as config;
import 'package:zappit/core/storage/preferences.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/auth/data/models/auth_provider.dart' as local;
import 'package:zappit/features/auth/data/models/auth_state.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

part 'auth_state_provider.g.dart';

@Riverpod(keepAlive: true)
class AuthState extends _$AuthState {
  String? _pendingLoginMethod;
  bool _isGoogleSignInInitialized = false;

  String? get userId => FirebaseAuth.instance.currentUser?.uid;
  String? get email => FirebaseAuth.instance.currentUser?.email;

  @override
  AuthenticationState build() {
    _listenAuthStateChanges();

    final currentUser = FirebaseAuth.instance.currentUser;

    return currentUser == null
        ? const AuthStateUnauthenticated()
        : AuthStateAuthenticated(currentUser);
  }

  void _listenAuthStateChanges() {
    FirebaseAuth.instance.authStateChanges().listen((user) async {
      if (user != null) {
        state = AuthStateAuthenticated(user);

        if (_pendingLoginMethod != null) {
          ref.read(preferencesProvider).setLastLoginMethod(_pendingLoginMethod!);
          debugPrint('✅ Saved last login method: $_pendingLoginMethod');
          _pendingLoginMethod = null;
        }
      } else {
        state = const AuthStateUnauthenticated();
      }
    });
  }

  Future<void> signInWithApple() async {
    try {
      _pendingLoginMethod = local.AuthProvider.apple.name;

      final appleProvider = AppleAuthProvider();
      appleProvider.addScope('email');
      appleProvider.addScope('name');

      await FirebaseAuth.instance.signInWithProvider(appleProvider);
    } on FirebaseAuthException catch (e) {
      _pendingLoginMethod = null;
      state = AuthStateError(e.message ?? 'Apple sign in failed');
    } catch (e) {
      _pendingLoginMethod = null;
      state = AuthStateError(e.toString());
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      _pendingLoginMethod = local.AuthProvider.google.name;

      final signIn = GoogleSignIn.instance;

      if (!_isGoogleSignInInitialized) {
        await signIn.initialize(
          clientId: Platform.isIOS ? config.iosClientId : null,
          serverClientId: config.webClientId,
        );
        _isGoogleSignInInitialized = true;
      }

      if (!signIn.supportsAuthenticate()) {
        state = AuthStateError('Google Sign In is not supported on this platform');
        return;
      }

      final googleUser = await signIn.authenticate();
      final idToken = googleUser.authentication.idToken;
      if (idToken == null) throw Exception('No ID Token found.');

      final credential = GoogleAuthProvider.credential(idToken: idToken);
      await FirebaseAuth.instance.signInWithCredential(credential);

    } on GoogleSignInException catch (e) {
      _pendingLoginMethod = null;
      if (e.code == GoogleSignInExceptionCode.canceled) return;
      state = AuthStateError(e.toString());
    } on FirebaseAuthException catch (e) {
      _pendingLoginMethod = null;
      state = AuthStateError(e.message ?? 'Google sign in failed');
    } catch (e) {
      _pendingLoginMethod = null;
      state = AuthStateError(e.toString());
    }
  }

  Future<void> _revokeAppleTokenIfNeeded() async {
    final user = FirebaseAuth.instance.currentUser;
    final isApple = user?.providerData.any((p) => p.providerId == 'apple.com') ?? false;
    if (!isApple || !Platform.isIOS) return;
    try {
      final credential = await SignInWithApple.getAppleIDCredential(scopes: const []);
      await FirebaseAuth.instance.revokeTokenWithAuthorizationCode(credential.authorizationCode);
    } on SignInWithAppleAuthorizationException catch (e) {
      // Cancelled: stop here so the user can decide again.
      if (e.code == AuthorizationErrorCode.canceled) rethrow;
      debugPrint('Apple revoke skipped: $e');
    } catch (e) {
      debugPrint('Apple revoke failed: $e');
    }
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      final lastLoginMethod = ref.read(preferencesProvider).lastLoginMethod;

      if (lastLoginMethod == local.AuthProvider.google.name) {
        await GoogleSignIn.instance.signOut();
      }
    } on FirebaseAuthException catch (e) {
      AppNotice.snack(e.message ?? 'Sign out failed', error: true);
    } catch (e) {
      AppNotice.snack(e.toString(), error: true);
    }
  }

  /// Deletes the account (App Store 5.1.1(v)).
  ///
  /// Sign in with Apple users on iOS first revoke the Apple token: a fresh
  /// authorization code is requested and passed to Firebase, so no Apple
  /// private key is needed on the server. Android has no native Apple
  /// sign-in to get a code from; the server deletion still runs.
  Future<void> deleteAccount() async {
    try {
      await _revokeAppleTokenIfNeeded();
      final callable = FirebaseFunctions.instanceFor(region: config.region)
          .httpsCallable('delete_account');

      final result = await callable.call();

      if (result.data['success'] == true) {
        await signOut();
      } else {
        AppNotice.snack(result.data['message'] ?? 'Account deletion failed.', error: true);
      }
    } on FirebaseFunctionsException catch (e) {
      AppNotice.snack(e.message ?? 'Account deletion failed. Please try again.', error: true);
    } on SignInWithAppleAuthorizationException {
      // User cancelled the Apple confirmation; nothing was deleted.
    } catch (e) {
      AppNotice.snack(e.toString(), error: true);
    }
  }
}