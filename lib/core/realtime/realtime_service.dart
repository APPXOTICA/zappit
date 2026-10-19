import 'dart:async';

import 'package:ably_flutter/ably_flutter.dart' as ably;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/constants/config.dart' as config;
import 'package:zappit/protocol/protocol.dart';

part 'realtime_service.g.dart';

@Riverpod(keepAlive: true)
RealtimeService realtimeService(Ref ref) => RealtimeService();

/// Owns the single Ably connection.
///
/// Token auth: `authCallback` calls the `ably_token` Cloud Function, which
/// signs a token for the signed-in user's channel only. No Ably key ships in
/// the app. Connects on sign-in, re-authorizes on an account switch and
/// closes on sign-out.
class RealtimeService {
  static final RealtimeService _instance = RealtimeService._internal();

  factory RealtimeService() => _instance;

  RealtimeService._internal();

  ably.Realtime? _realtime;

  final _connected = StreamController<bool>.broadcast();
  StreamSubscription<ably.ConnectionStateChange>? _connectionSub;
  StreamSubscription<User?>? _authSub;
  String? _uid;
  bool _isConnected = false;

  bool get isInitialized => _realtime != null;
  bool get isConnected => _isConnected;

  /// Emits whenever the connection goes up or down.
  Stream<bool> get connectedChanges => _connected.stream;

  Future<void> init() async {
    if (_realtime != null) return;

    final options = ably.ClientOptions(
      clientId: Protocol.appClientId,
      authCallback: _requestToken,
      // Nothing to connect to before sign-in.
      autoConnect: false,
      // Leave presence quickly when the app goes away; extension waits for it.
      transportParams: {'remainPresentFor': '1000'},
      // Our own commands are not sent back to us: each delivery is billed.
      echoMessages: false,
    );

    final realtime = ably.Realtime(options: options);
    _realtime = realtime;
    _connectionSub = realtime.connection.on().listen((change) {
      debugPrint('Ably connection: ${change.previous.name} → ${change.current.name}'
          '${change.reason != null ? ' (${change.reason?.message})' : ''}');
      _setConnected(change.current == ably.ConnectionState.connected);
    });
    _authSub = FirebaseAuth.instance.authStateChanges().listen(_onUser);
  }

  void _setConnected(bool connected) {
    if (connected == _isConnected) return;
    _isConnected = connected;
    _connected.add(connected);
  }

  /// Our listener registers with the platform asynchronously and can miss the
  /// first `connected` event. `connection.state` comes from the SDK's own
  /// listener, set up when the client is created, so read it again a few
  /// times after connecting.
  void _syncStateSoon() {
    for (final delay in const [1, 3, 6, 10]) {
      Future<void>.delayed(Duration(seconds: delay), () {
        final realtime = _realtime;
        if (realtime == null) return;
        _setConnected(realtime.connection.state == ably.ConnectionState.connected);
      });
    }
  }

  Future<Object> _requestToken(ably.TokenParams _) async {
    try {
      final result = await FirebaseFunctions.instanceFor(region: config.region)
          .httpsCallable('ably_token')
          .call<Map<Object?, Object?>>({'clientId': Protocol.appClientId});
      return ably.TokenRequest.fromMap(Map<String, dynamic>.from(result.data));
    } catch (e) {
      debugPrint('Ably token request failed: $e');
      rethrow;
    }
  }

  Future<void> _onUser(User? user) async {
    final realtime = _realtime;
    final uid = user?.uid;
    if (realtime == null || uid == _uid) return;
    final previous = _uid;
    _uid = uid;
    try {
      if (uid == null) {
        await realtime.close();
      } else if (previous == null) {
        await realtime.connect();
        _syncStateSoon();
      } else {
        // Another account: a new token for its channel.
        await realtime.auth.authorize();
      }
    } catch (e) {
      debugPrint('Ably auth change failed: $e');
    }
  }

  ably.Realtime get realtime {
    final realtime = _realtime;
    if (realtime == null) throw StateError('RealtimeService not initialized');
    return realtime;
  }

  ably.RealtimeChannel channel(String name) => realtime.channels.get(name);

  Future<void> reconnect() async {
    if (_realtime == null) return;
    await _realtime!.connect();
    _syncStateSoon();
  }

  Future<void> close() async {
    final realtime = _realtime;
    if (realtime == null) return;
    await _connectionSub?.cancel();
    await _authSub?.cancel();
    _uid = null;
    await realtime.close();
    _realtime = null;
    _isConnected = false;
  }
}
