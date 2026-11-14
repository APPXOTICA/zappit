import 'package:firebase_auth/firebase_auth.dart';

sealed class AuthenticationState {
  const AuthenticationState();
}

class AuthStateAuthenticated extends AuthenticationState {
  final User user;
  const AuthStateAuthenticated(this.user);
}

class AuthStateUnauthenticated extends AuthenticationState {
  const AuthStateUnauthenticated();
}
