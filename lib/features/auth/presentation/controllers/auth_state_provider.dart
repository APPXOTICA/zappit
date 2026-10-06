import 'dart:io';

import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/constants/config.dart' as config;
import 'package:zappit/core/storage/preferences.dart';
import 'package:zappit/features/auth/data/models/auth_provider.dart' as local;
import 'package:zappit/features/auth/data/models/auth_state.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'auth_state_provider.g.dart';

@Riverpod(keepAlive: true)
class AuthState extends _$AuthState {
  String? _pendingLoginMethod;
  bool _isGoogleSignInInitialized = false;

  String? get userId => FirebaseAuth.instance.currentUser?.uid;

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

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      final lastLoginMethod = ref.read(preferencesProvider).lastLoginMethod;

      if (lastLoginMethod == local.AuthProvider.google.name) {
        await GoogleSignIn.instance.signOut();
      }
    } on FirebaseAuthException catch (e) {
      state = AuthStateError(e.message ?? 'Sign out failed');
    } catch (e) {
      state = AuthStateError(e.toString());
    }
  }

  Future<void> deleteAccount() async {
    try {
      final callable = FirebaseFunctions.instanceFor(region: config.region)
          .httpsCallable('delete_account');

      final result = await callable.call();

      if (result.data['success'] == true) {
        await signOut();
      } else {
        state = AuthStateError(result.data['message'] ?? '계정 삭제에 실패했습니다.');
      }
    } on FirebaseFunctionsException catch (e) {
      state = AuthStateError(e.message ?? '서버 통신 오류로 계정 삭제에 실패했습니다.');
    } catch (e) {
      state = AuthStateError(e.toString());
    }
  }
}