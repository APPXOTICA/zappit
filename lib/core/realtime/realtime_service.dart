import 'dart:async';

import 'package:ably_flutter/ably_flutter.dart' as ably;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/constants/config.dart' as config;
import 'package:zappit/protocol/protocol.dart';

part 'realtime_service.g.dart';

@Riverpod(keepAlive: true)
RealtimeService realtimeService(Ref ref) => RealtimeService();

/// Owns the Ably connection.
///
/// Token auth: `authCallback` calls the `ably_token` Cloud Function, which
/// signs a token for the signed-in user's channel only. No Ably key ships in
/// the app. Connects on sign-in and closes on sign-out.
///
/// Every account change (sign-out, or a switch) replaces the client with a
/// fresh one. A closed client keeps its token (24 h TTL, rights for the old
/// channel only), so reusing it after a sign-in as someone else got 40160 on
/// attach; a fresh client has no token and asks for one, and while offline
/// Ably's own retries keep asking until it gets one. Channels come from the
/// current client: [clientChanges] tells `zappitChannel` to fetch again.
class RealtimeService {
  static final RealtimeService _instance = RealtimeService._internal();

  factory RealtimeService() => _instance;

  RealtimeService._internal();

  ably.Realtime? _realtime;

  final _connected = StreamController<bool>.broadcast();
  StreamSubscription<ably.ConnectionStateChange>? _connectionSub;
  final _clients = StreamController<int>.broadcast();
  int _generation = 0;
  StreamSubscription<User?>? _authSub;
  AppLifecycleListener? _lifecycle;
  String? _uid;
  bool _isConnected = false;

  bool get isInitialized => _realtime != null;
  bool get isConnected => _isConnected;

  /// Emits whenever the connection goes up or down.
  Stream<bool> get connectedChanges => _connected.stream;

  /// Emits each time the client is replaced (account change).
  Stream<int> get clientChanges => _clients.stream;

  Future<void> init() async {
    if (_realtime != null) return;
    _createClient();
    _authSub = FirebaseAuth.instance.authStateChanges().listen(_onUser);
    _lifecycle = AppLifecycleListener(onResume: _reconnectNow);
  }

  void _createClient() {
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
      if (_realtime != realtime) return; // replaced
      debugPrint('Ably connection: ${change.previous.name} → ${change.current.name}'
          '${change.reason != null ? ' (${change.reason?.message})' : ''}');
      _setConnected(change.current == ably.ConnectionState.connected);
    });
    _generation++;
    _clients.add(_generation);
  }

  /// The new client is in place before the first await, so a sign-in that
  /// arrives while the old one is closing already connects the new one.
  Future<void> _replaceClient() async {
    final old = _realtime;
    final oldSub = _connectionSub;
    _createClient();
    _setConnected(false);
    await oldSub?.cancel();
    try {
      await old?.close();
    } catch (e) {
      debugPrint('Ably close failed: $e');
    }
  }

  /// Back in the foreground. A socket that died in the background (Android
  /// freezes the app) is otherwise retried on the SDK's own timer, up to
  /// 15 s later: the remote (or a shared link) waits on "offline" meanwhile.
  /// Retries a few times because the network can come back a moment after
  /// the app.
  void _reconnectNow() {
    for (final delay in const [0, 1, 2, 4]) {
      Future<void>.delayed(Duration(seconds: delay), () async {
        final realtime = _realtime;
        if (realtime == null || _uid == null) return;
        final state = realtime.connection.state;
        if (state != ably.ConnectionState.disconnected && state != ably.ConnectionState.suspended) return;
        debugPrint('Ably reconnect on resume (${state.name}, +${delay}s)');
        try {
          await realtime.connect();
        } catch (e) {
          debugPrint('Ably reconnect failed: $e');
        }
      });
    }
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
    final uid = user?.uid;
    if (_realtime == null || uid == _uid) return;
    final previous = _uid;
    _uid = uid;
    try {
      if (previous != null) await _replaceClient();
      if (uid != null && _uid == uid) {
        await realtime.connect();
        _syncStateSoon();
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
    _lifecycle?.dispose();
    _lifecycle = null;
    _uid = null;
    await realtime.close();
    _realtime = null;
    _setConnected(false);
  }
}
