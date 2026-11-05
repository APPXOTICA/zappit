import 'dart:async';

import 'package:ably_flutter/ably_flutter.dart' as ably;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/firebase/firebase_paths.dart';
import 'package:zappit/core/firebase/session_repository.dart';
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

/// The signed-in user's channel `zappit:{uid}` on the current client, or
/// null when signed out.
///
/// Attached explicitly whenever the connection comes up. An attach (or the
/// implicit one in presence.enter and subscribe) made while the connection
/// is closed or not yet connecting is dropped and never retried, and sign-in
/// builds this before the connection opens: the app then never entered
/// presence and saw no browser.
///
/// Rebuilt when the client is replaced (account change). Never detached
/// here: the old client is closed then, and a rebuild for the same client
/// would detach the very channel the new build returns.
@Riverpod(keepAlive: true)
ably.RealtimeChannel? zappitChannel(Ref ref) {
  final name = ref.watch(channelNameProvider);
  final service = ref.watch(realtimeServiceProvider);
  final clientSub = service.clientChanges.listen((_) => ref.invalidateSelf());
  ref.onDispose(() => unawaited(clientSub.cancel()));
  if (name == null || !service.isInitialized) return null;
  final channel = service.channel(name);
  void attach() => unawaited(channel.attach().catchError((Object e) => debugPrint('attach: $e')));
  final sub = service.connectedChanges.listen((connected) {
    if (connected) attach();
  });
  ref.onDispose(() => unawaited(sub.cancel()));
  if (service.isConnected) attach();
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
///
/// After a long time away the list is dropped on resume: the extension may
/// have left Ably meanwhile (it closes Ably 10 min after the app leaves) and
/// the app, suspended, never got the leave. The list comes back from a read
/// made once the app's own enter went through, or from presence events, so
/// nothing is sent to a browser that is not there yet.
@Riverpod(keepAlive: true)
class BrowserPresence extends _$BrowserPresence {
  ably.RealtimeChannel? _channel;
  // Read in build: onDispose may not use ref.
  String? _uid;
  final _subscriptions = <StreamSubscription<Object?>>[];
  AppLifecycleListener? _lifecycle;
  bool _present = false;
  bool _foreground = true;
  DateTime? _hiddenAt;
  /// Bumped when the list is dropped; reads started before are ignored.
  int _generation = 0;

  static const _staleAfter = Duration(minutes: 1);

  @override
  List<BrowserInstance> build() {
    _channel = ref.watch(zappitChannelProvider);
    _uid = ref.read(currentUidProvider);
    ref.onDispose(_dispose);

    final channel = _channel;
    if (channel == null) return const [];

    _foreground = WidgetsBinding.instance.lifecycleState != AppLifecycleState.paused &&
        WidgetsBinding.instance.lifecycleState != AppLifecycleState.hidden;

    _lifecycle = AppLifecycleListener(onStateChange: _onLifecycle);

    // TEMP [presence-debug]: channel and presence trace for the account-switch bug.
    debugPrint('[presence-debug] build ${channel.name} state=${channel.state.name} present=$_present fg=$_foreground');
    _subscriptions.add(channel.on().listen((c) => debugPrint(
        '[presence-debug] ${channel.name} ${c.previous.name} → ${c.current.name} ${c.reason?.code ?? ''} ${c.reason?.message ?? ''}')));

    _subscriptions.add(channel.on(ably.ChannelEvent.attached).listen((_) {
      _present = false;
      unawaited(_enter());
      unawaited(_refresh());
    }));
    _subscriptions.add(channel.presence.subscribe().listen((_) => unawaited(_refresh())));

    unawaited(_enter());
    unawaited(_refresh());
    if (_foreground) unawaited(_setAppOnline(true));
    // onDisconnect fires on any RTDB socket drop (Wi-Fi blip, idle network)
    // and the server never restores the value, so write it again on reconnect.
    var rtdbConnected = false;
    _subscriptions.add(FirebaseDatabase.instance.ref('.info/connected').onValue.listen((event) {
      final connected = event.snapshot.value == true;
      if (connected && !rtdbConnected && _foreground) unawaited(_setAppOnline(true));
      rtdbConnected = connected;
    }));
    return const [];
  }

  void _onLifecycle(AppLifecycleState lifecycle) {
    switch (lifecycle) {
      case AppLifecycleState.resumed:
        _foreground = true;
        final hiddenAt = _hiddenAt;
        _hiddenAt = null;
        final stale = hiddenAt != null && DateTime.now().difference(hiddenAt) >= _staleAfter;
        unawaited(_resumeAppOnline(reconnectRtdb: stale));
        if (stale) {
          _generation++;
          state = const [];
          unawaited(_enterThenRefresh());
        } else {
          unawaited(_enter());
          unawaited(_refresh());
        }
      case AppLifecycleState.paused:
      case AppLifecycleState.hidden:
        _foreground = false;
        _hiddenAt ??= DateTime.now();
        unawaited(_leave());
        unawaited(_setAppOnline(false));
      default:
        break;
    }
  }

  Future<void> _refresh() async {
    final channel = _channel;
    if (channel == null) return;
    final generation = _generation;
    try {
      // No waitForSync: Android ably-java answers get on the main thread and
      // would block it until the sync (or attach timeout, ~30 s), and the
      // token authCallback needs that thread, so sign-in stalled. A read
      // before the sync is partial; the sync's presence events refresh it.
      final members = await channel.presence.get(const ably.RealtimePresenceParams(waitForSync: false));
      debugPrint('[presence-debug] get ${channel.name}: ${members.map((m) => m.clientId).join(', ')}');
      if (generation != _generation) return;
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

  /// True when the app is in presence afterwards.
  Future<bool> _enter() async {
    final channel = _channel;
    if (channel == null || !_foreground) return false;
    if (_present) return true;
    try {
      debugPrint('[presence-debug] enter ${channel.name} state=${channel.state.name}');
      await channel.presence.enter({'device': Protocol.deviceApp, 'type': 'remote'});
      debugPrint('[presence-debug] entered ${channel.name}');
      _present = true;
    } catch (e) {
      debugPrint('presence.enter failed: $e');
    }
    return _present;
  }

  /// The enter is acknowledged by Ably, so the connection is live and the
  /// read that follows is the server's. If it fails, the attached and
  /// presence listeners fill the list instead.
  Future<void> _enterThenRefresh() async {
    if (await _enter()) await _refresh();
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

  /// Android blocks a background app's network, so RTDB keeps failing to
  /// reconnect and its retry delay grows to about 30 s; the Android SDK does
  /// not cut it short when the app comes back (the iOS one does). Reconnect
  /// now, or appOnline, which wakes the extension, waits for that retry.
  Future<void> _resumeAppOnline({required bool reconnectRtdb}) async {
    if (reconnectRtdb && defaultTargetPlatform == TargetPlatform.android) {
      try {
        await FirebaseDatabase.instance.goOffline();
        await FirebaseDatabase.instance.goOnline();
      } catch (e) {
        debugPrint('RTDB reconnect failed: $e');
      }
    }
    await _setAppOnline(true);
  }

  /// EXPERIMENT (2026-10-20): RTDB `session/{uid}/appOnline` while in the
  /// foreground, so the extension joins Ably only then (extension
  /// `ABLY_ON_DEMAND`). `onDisconnect` clears it if the app dies.
  Future<void> _setAppOnline(bool online) async {
    final uid = _uid;
    // Signed out already: the rules deny it (sign-out cleared it first).
    if (uid == null || FirebaseAuth.instance.currentUser?.uid != uid) return;
    if (!online) return clearAppOnline(uid);
    final node = FirebaseDatabase.instance.ref(FirebasePaths.appOnline(uid));
    try {
      await node.onDisconnect().remove();
      await node.set({'at': ServerValue.timestamp});
    } catch (e) {
      debugPrint('appOnline write failed: $e');
    }
  }

  /// Removes `appOnline` and its onDisconnect. Sign-out calls it while the
  /// user can still write; otherwise the old account's extension would keep
  /// Ably open. Bounded: offline, the write would wait for a reconnect, and
  /// the server's onDisconnect has removed the value anyway.
  static Future<void> clearAppOnline(String uid) async {
    final node = FirebaseDatabase.instance.ref(FirebasePaths.appOnline(uid));
    try {
      await Future.wait([node.onDisconnect().cancel(), node.remove()]).timeout(const Duration(seconds: 3));
    } catch (e) {
      debugPrint('appOnline clear failed: $e');
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
    unawaited(_setAppOnline(false));
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
