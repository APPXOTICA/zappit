import 'dart:async';

import 'package:ably_flutter/ably_flutter.dart' as ably;
import 'package:flutter/widgets.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/realtime/channel_provider.dart';
import 'package:zappit/core/realtime/realtime_service.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/protocol.dart';

part 'zappit_channel.g.dart';

/// App's own Ably connection state. Subscribes before reading the current
/// value so a change in between isn't lost.
@Riverpod(keepAlive: true)
Stream<bool> ablyConnected(Ref ref) {
  final service = ref.watch(realtimeServiceProvider);
  final controller = StreamController<bool>();
  final sub = service.connectedChanges.listen(controller.add);
  controller.add(service.isConnected);
  ref.onDispose(() {
    unawaited(sub.cancel());
    unawaited(controller.close());
  });
  return controller.stream;
}

/// The signed-in user's channel `zappit:{uid}`, or null when signed out.
@Riverpod(keepAlive: true)
ably.RealtimeChannel? zappitChannel(Ref ref) {
  final name = ref.watch(channelNameProvider);
  final service = ref.watch(realtimeServiceProvider);
  if (name == null || !service.isInitialized) return null;
  final channel = service.channel(name);
  ref.onDispose(() {
    unawaited(channel.detach().catchError((Object e) => debugPrint('detach: $e')));
  });
  return channel;
}

/// One decoded message from the selected-browser event stream.
sealed class ChannelEvent {
  const ChannelEvent();
}

final class TargetEvent extends ChannelEvent {
  const TargetEvent(this.target);
  final TargetInfo target;
}

final class StateEvent extends ChannelEvent {
  const StateEvent(this.state);
  final SiteState state;
}

final class AckEvent extends ChannelEvent {
  const AckEvent(this.ack);
  final Ack ack;
}

/// `target`, `state` and `ack` messages, decoded, as a broadcast stream.
///
/// Wrapped in an object so listeners get the raw stream (every event), not
/// only the latest value a StreamProvider would keep.
class ChannelEventBus {
  ChannelEventBus(Stream<ChannelEvent> source) : stream = source.asBroadcastStream();

  final Stream<ChannelEvent> stream;
}

@Riverpod(keepAlive: true)
ChannelEventBus channelEvents(Ref ref) {
  final channel = ref.watch(zappitChannelProvider);
  if (channel == null) return ChannelEventBus(const Stream.empty());

  return ChannelEventBus(channel
      .subscribe(names: const [Protocol.target, Protocol.state, Protocol.ack])
      .map<ChannelEvent?>((message) {
        try {
          return switch (message.name) {
            Protocol.target => TargetEvent(TargetInfo.fromJson(message.data)),
            Protocol.state => StateEvent(SiteState.fromJson(message.data)),
            Protocol.ack => AckEvent(Ack.fromJson(message.data)),
            _ => null,
          };
        } catch (e) {
          debugPrint('Bad channel message ${message.name}: $e');
          return null;
        }
      })
      .where((event) => event != null)
      .cast<ChannelEvent>());
}

/// Browsers online on the channel, and the app's own presence.
///
/// The app enters presence while in the foreground and leaves when it goes
/// to the background, so the extension stops writing RTDB while nobody
/// watches. It re-enters whenever the channel re-attaches.
@Riverpod(keepAlive: true)
class BrowserPresence extends _$BrowserPresence {
  ably.RealtimeChannel? _channel;
  final _subscriptions = <StreamSubscription<Object?>>[];
  AppLifecycleListener? _lifecycle;
  bool _present = false;
  bool _foreground = true;

  @override
  List<BrowserInstance> build() {
    _channel = ref.watch(zappitChannelProvider);
    ref.onDispose(_dispose);

    final channel = _channel;
    if (channel == null) return const [];

    _foreground = WidgetsBinding.instance.lifecycleState != AppLifecycleState.paused &&
        WidgetsBinding.instance.lifecycleState != AppLifecycleState.hidden;

    _lifecycle = AppLifecycleListener(onStateChange: _onLifecycle);

    _subscriptions.add(channel.on(ably.ChannelEvent.attached).listen((_) {
      _present = false;
      unawaited(_enter());
      unawaited(_refresh());
    }));
    _subscriptions.add(channel.presence.subscribe().listen((_) => unawaited(_refresh())));

    unawaited(_enter());
    unawaited(_refresh());
    return const [];
  }

  void _onLifecycle(AppLifecycleState lifecycle) {
    switch (lifecycle) {
      case AppLifecycleState.resumed:
        _foreground = true;
        unawaited(_enter());
        unawaited(_refresh());
      case AppLifecycleState.paused:
      case AppLifecycleState.hidden:
        _foreground = false;
        unawaited(_leave());
      default:
        break;
    }
  }

  Future<void> _refresh() async {
    final channel = _channel;
    if (channel == null) return;
    try {
      final members = await channel.presence.get();
      final browsers = <String, BrowserInstance>{};
      for (final member in members) {
        final browser = BrowserInstance.fromPresence(member.data);
        if (browser != null) browsers[browser.instanceId] = browser;
      }
      final list = browsers.values.toList()..sort((a, b) => a.label.compareTo(b.label));
      if (ref.mounted) state = list;
    } catch (e) {
      debugPrint('presence.get failed: $e');
    }
  }

  Future<void> _enter() async {
    final channel = _channel;
    if (channel == null || _present || !_foreground) return;
    try {
      await channel.presence.enter({'device': Protocol.deviceApp, 'type': 'remote'});
      _present = true;
    } catch (e) {
      debugPrint('presence.enter failed: $e');
    }
  }

  Future<void> _leave() async {
    final channel = _channel;
    if (channel == null || !_present) return;
    _present = false;
    try {
      await channel.presence.leave();
    } catch (e) {
      debugPrint('presence.leave failed: $e');
    }
  }

  /// Re-reads presence (pull to refresh, sheet open).
  Future<void> refresh() => _refresh();

  void _dispose() {
    for (final s in _subscriptions) {
      unawaited(s.cancel());
    }
    _subscriptions.clear();
    _lifecycle?.dispose();
    _lifecycle = null;
    unawaited(_leave());
  }
}

/// Publishes `command` messages on the user's channel.
@Riverpod(keepAlive: true)
CommandPublisher commandPublisher(Ref ref) => CommandPublisher(ref.watch(zappitChannelProvider));

class CommandPublisher {
  const CommandPublisher(this._channel);

  final ably.RealtimeChannel? _channel;

  bool get isReady => _channel != null;

  Future<void> publish(Map<String, Object?> payload) async {
    final channel = _channel;
    if (channel == null) throw StateError('No channel');
    await channel.publish(name: Protocol.command, data: payload);
  }
}
