// lib/core/realtime/presence_state_provider.dart
import 'dart:async';

import 'package:ably_flutter/ably_flutter.dart' as ably;
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/realtime/channel_provider.dart';
import 'package:zappit/core/realtime/realtime_service.dart';
import 'package:flutter/widgets.dart'; // AppLifecycleListener를 위해 추가

part 'presence_state_provider.g.dart';

class ExtensionPresence {
  final int count;
  final List<String> clientIds;

  const ExtensionPresence({
    required this.count,
    required this.clientIds,
  });

  bool get isConnected => count > 0;
}

@riverpod
class PresenceState extends _$PresenceState {
  ably.RealtimeChannel? _channel;
  StreamSubscription<ably.PresenceMessage>? _presenceSubscription;
  StreamSubscription<ably.ChannelStateChange>? _attachSubscription;

  AppLifecycleListener? _lifecycleListener;

  bool _amIPresent = false;

  final _controller = StreamController<ExtensionPresence>();

  @override
  Stream<ExtensionPresence> build() async* {
    final service = ref.read(realtimeServiceProvider);

    final channelName = ref.watch(channelNameProvider);
    if (channelName == null) {
      yield const ExtensionPresence(count: 0, clientIds: []);
      return;
    }

    _channel = service.realtime.channels.get(channelName);

    // 연결이 끊겼다 복구되어 채널이 다시 attach될 때마다 presence에 재진입합니다.
    // (예: Android 애플 로그인 중 Chrome에 머무는 동안 앱이 동결되어 연결이 끊긴 경우)
    _attachSubscription = _channel!.on(ably.ChannelEvent.attached).listen((_) {
      _amIPresent = false;
      _enterAsRemote();
    });

    _lifecycleListener = AppLifecycleListener(
      onStateChange: _handleLifecycleChange,
    );

    ref.onDispose(() {
      _lifecycleListener?.dispose();

      _attachSubscription?.cancel();
      _attachSubscription = null;

      _presenceSubscription?.cancel();
      _presenceSubscription = null;

      if (!_controller.isClosed) {
        _controller.close();
      }
      _leave();
    });

    await _enterAsRemote();

    try {
      final initialMembers = await _channel!.presence.get();
      yield _countExtensions(initialMembers);
    } catch (e) {
      // 채널이 아직 attach되지 않았으면 실패할 수 있습니다. 이후 subscribe 이벤트로 갱신됩니다.
      debugPrint('Error getting initial presence: $e');
      yield const ExtensionPresence(count: 0, clientIds: []);
    }

    _presenceSubscription = _channel!.presence.subscribe().listen(
          (_) async {
        try {
          final currentMembers = await _channel!.presence.get();
          final presence = _countExtensions(currentMembers);
          if (!_controller.isClosed) {
            _controller.add(presence);
          }
        } catch (e) {
          debugPrint('Error getting presence: $e');
        }
      },
      onError: (error) {
        if (!_controller.isClosed) {
          _controller.addError(error);
        }
      },
    );

    yield* _controller.stream;
  }

  void _handleLifecycleChange(AppLifecycleState state) {
    if (state == AppLifecycleState.paused || state == AppLifecycleState.hidden) {
      // 💡 _leave()를 호출하지 않고 Ably 서버의 타임아웃에 맡깁니다.(약 25초 후 Off)
      debugPrint('App paused. Letting Ably timeout handle the leave.');

      // 단, 다시 포그라운드로 돌아왔을 때 _enterAsRemote()가
      // 무시되지 않고 정상 작동하도록 상태 플래그만 초기화해 줍니다.
      _amIPresent = false;
    }
    else if (state == AppLifecycleState.resumed) {
      // 앱이 다시 화면에 나타나면 확실하게 진입 신호를 쏩니다.
      debugPrint('App resumed. Re-entering presence...');
      _enterAsRemote();
    }
  }

  ExtensionPresence _countExtensions(List<ably.PresenceMessage> members) {
    final extensions = members.where((member) {
      final isExtensionData = member.data?.toString() == 'extension';
      final isExtensionClient = member.clientId?.startsWith('extension-') ?? false;
      return isExtensionData || isExtensionClient;
    }).toList();

    return ExtensionPresence(
      count: extensions.length,
      clientIds: extensions.map((e) => e.clientId ?? 'unknown').toList(),
    );
  }

  Future<void> _enterAsRemote() async {
    if (_channel == null || _amIPresent) return;

    try {
      await _channel!.presence.enter({
        'device': 'flutter',
        'type': 'remote',
        'timestamp': DateTime.now().toIso8601String(),
      });
      _amIPresent = true;
    } catch (e) {
      debugPrint('Error entering presence: $e');
    }
  }

  Future<void> _leave() async {
    if (_channel == null || !_amIPresent) return;

    try {
      await _channel!.presence.leave();
      _amIPresent = false;
    } catch (e) {
      debugPrint('Error leaving presence: $e');
    }
  }
}