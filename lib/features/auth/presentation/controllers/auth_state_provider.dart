import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/features/auth/data/models/auth_state.dart';

part 'auth_state_provider.g.dart';

/// No sign-in screen: the app always has an invisible Firebase anonymous
/// account, made on first launch ([ensureSignedIn]). Scanning the extension's
/// QR (`features/pairing`) may move it to the computer's account with a
/// custom token; disconnecting this phone moves it to a new anonymous one.
@Riverpod(keepAlive: true)
class AuthState extends _$AuthState {
  String? get userId => FirebaseAuth.instance.currentUser?.uid;

  @override
  AuthenticationState build() {
    final sub = FirebaseAuth.instance.authStateChanges().listen((user) {
      state = user == null ? const AuthStateUnauthenticated() : AuthStateAuthenticated(user);
    });
    ref.onDispose(sub.cancel);
    final currentUser = FirebaseAuth.instance.currentUser;
    return currentUser == null ? const AuthStateUnauthenticated() : AuthStateAuthenticated(currentUser);
  }

  /// Called at start (initializer) before anything that needs the uid.
  /// Offline on first launch: retried by the next call (pairing needs the network anyway).
  static Future<void> ensureSignedIn() async {
    if (FirebaseAuth.instance.currentUser != null) return;
    try {
      await FirebaseAuth.instance.signInAnonymously();
    } catch (e) {
      debugPrint('anonymous sign-in failed: $e');
    }
  }

  /// Joins the computer's account (token from `pair_claim`).
  Future<void> signInWithToken(String token) => FirebaseAuth.instance.signInWithCustomToken(token);

  /// Leaves the account for a new, empty anonymous one.
  Future<void> switchToNewAccount() async {
    await FirebaseAuth.instance.signOut();
    await FirebaseAuth.instance.signInAnonymously();
  }
}
