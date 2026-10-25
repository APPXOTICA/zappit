import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/realtime/command_bus.dart';
import 'package:zappit/core/realtime/zappit_channel.dart';
import 'package:zappit/features/connection/connection_controller.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/remote_command.dart';

part 'target_controller.g.dart';

/// Latest `target` from the selected browser. Null until one arrives, and
/// reset whenever the selected browser changes.
///
/// The browser sends a target when the app enters presence. A reconnect that
/// keeps presence (token renewal, short network drop) resets this without a
/// new one, so while it stays null the app asks with `ping`. The browser
/// sends `state` only when it changes, so a missed one is asked for the same
/// way (a few times per tab: some pages never send one).
@Riverpod(keepAlive: true)
class Target extends _$Target {
  static const _askAfter = Duration(seconds: 2);
  static const _askEvery = Duration(seconds: 5);
  static const _maxStateAsks = 3;

  int _stateAsks = 0;

  @override
  TargetInfo? build() {
    final instanceId = ref.watch(targetInstanceIdProvider);
    _stateAsks = 0;
    if (instanceId == null) return null;

    final events = ref.watch(channelEventsProvider).stream;
    final sub = events.listen((event) {
      if (event is TargetEvent && event.target.instanceId == instanceId) {
        if (event.target.tabId != state?.tabId) _stateAsks = 0;
        state = event.target;
      }
    });

    Timer? repeat;
    final first = Timer(_askAfter, () {
      _askIfMissing();
      repeat = Timer.periodic(_askEvery, (_) => _askIfMissing());
    });
    ref.onDispose(() {
      first.cancel();
      repeat?.cancel();
      unawaited(sub.cancel());
    });
    return null;
  }

  void _askIfMissing() {
    if (!ref.mounted) return;
    final target = state;
    if (target != null) {
      if (target.tabId == null || ref.read(siteStateControllerProvider.notifier).received) return;
      if (_stateAsks >= _maxStateAsks) return;
      _stateAsks++;
    }
    // In the background the app has left presence on purpose.
    if (WidgetsBinding.instance.lifecycleState != AppLifecycleState.resumed) return;
    unawaited(ref.read(commandBusProvider).send(const RemoteCommand.ping(), handleErrors: false));
  }
}

/// Latest `state` snapshot from the selected browser.
@Riverpod(keepAlive: true)
class SiteStateController extends _$SiteStateController {
  @override
  SiteState build() {
    final instanceId = ref.watch(targetInstanceIdProvider);
    _received = false;
    if (instanceId == null) return SiteState.empty;

    final events = ref.watch(channelEventsProvider).stream;
    final sub = events.listen((event) {
      if (event is StateEvent && event.state.instanceId == instanceId) {
        _received = true;
        state = event.state;
      } else if (event is TargetEvent && event.target.instanceId == instanceId) {
        // A new target starts with a clean site state until its first snapshot.
        if (event.target.tabId != _tabId) {
          _tabId = event.target.tabId;
          _received = false;
          state = SiteState.empty;
        }
      }
    });
    ref.onDispose(sub.cancel);
    return SiteState.empty;
  }

  int? _tabId;
  bool _received = false;

  /// A snapshot for the current tab has arrived (`Target` asks again if not).
  bool get received => _received;
}
