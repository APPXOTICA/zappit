import 'dart:async';

import 'package:ably_flutter/ably_flutter.dart' as ably;
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/protocol/protocol.dart';

part 'realtime_service.g.dart';

@Riverpod(keepAlive: true)
RealtimeService realtimeService(Ref ref) => RealtimeService();

/// Owns the single Ably connection.
///
/// Development uses the API key directly. Before release this switches to
/// token auth issued by Cloud Functions (`authCallback`); callers don't change.
class RealtimeService {
  static final RealtimeService _instance = RealtimeService._internal();

  factory RealtimeService() => _instance;

  RealtimeService._internal();

  ably.Realtime? _realtime;

  final _connected = StreamController<bool>.broadcast();
  StreamSubscription<ably.ConnectionStateChange>? _connectionSub;
  bool _isConnected = false;

  bool get isInitialized => _realtime != null;
  bool get isConnected => _isConnected;

  /// Emits whenever the connection goes up or down.
  Stream<bool> get connectedChanges => _connected.stream;

  Future<void> init() async {
    if (_realtime != null) return;

    final options = ably.ClientOptions(
      key: ablyKey,
      clientId: Protocol.appClientId,
      // Leave presence quickly when the app goes away; extension waits for it.
      transportParams: {'remainPresentFor': '1000'},
    );

    final realtime = ably.Realtime(options: options);
    _realtime = realtime;
    _connectionSub = realtime.connection.on().listen((change) {
      final connected = change.current == ably.ConnectionState.connected;
      if (connected != _isConnected) {
        _isConnected = connected;
        _connected.add(connected);
      }
    });
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
  }

  Future<void> close() async {
    final realtime = _realtime;
    if (realtime == null) return;
    await _connectionSub?.cancel();
    await realtime.close();
    _realtime = null;
    _isConnected = false;
  }
}
