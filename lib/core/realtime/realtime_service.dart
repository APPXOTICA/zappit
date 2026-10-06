// lib/ably_service.dart
import 'package:ably_flutter/ably_flutter.dart' as ably;
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/constants/config.dart';

part 'realtime_service.g.dart';

@Riverpod(keepAlive: true)
RealtimeService realtimeService(Ref ref) => RealtimeService();

class RealtimeService {
  static final RealtimeService _instance = RealtimeService._internal();
  late ably.Realtime _realtime;
  bool _initialized = false;

  factory RealtimeService() => _instance;

  RealtimeService._internal();

  Future<void> init() async {
    if (_initialized) return;

    final clientOptions = ably.ClientOptions(
      key: ablyKey,
      clientId: clientId,
      transportParams: {'remainPresentFor': '1000'},
    );

    _realtime = ably.Realtime(options: clientOptions);
    _initialized = true;
  }

  ably.Realtime get realtime {
    if (!_initialized) {
      throw StateError('RealtimeService not initialized');
    }
    return _realtime;
  }

  Future<void> sendPing({required String channelName}) async {
    if (!_initialized) {
      throw StateError('RealtimeService not initialized');
    }

    final channel = _realtime.channels.get(channelName);
    await channel.publish(
      name: 'ping',
      data: {
        'timestamp': DateTime.now().millisecondsSinceEpoch,
      },
    );
  }

  /// 앱 종료 시 수동 호출
  Future<void> close() async {
    if (!_initialized) return;
    await _realtime.close();
    _initialized = false;
  }
}