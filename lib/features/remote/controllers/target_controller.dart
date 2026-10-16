
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/realtime/zappit_channel.dart';
import 'package:zappit/features/connection/connection_controller.dart';
import 'package:zappit/protocol/messages.dart';

part 'target_controller.g.dart';

/// Latest `target` from the selected browser. Null until one arrives, and
/// reset whenever the selected browser changes.
@Riverpod(keepAlive: true)
class Target extends _$Target {
  @override
  TargetInfo? build() {
    final instanceId = ref.watch(targetInstanceIdProvider);
    if (instanceId == null) return null;

    final events = ref.watch(channelEventsProvider).stream;
    final sub = events.listen((event) {
      if (event is TargetEvent && event.target.instanceId == instanceId) {
        state = event.target;
      }
    });
    ref.onDispose(sub.cancel);
    return null;
  }
}

/// Latest `state` snapshot from the selected browser.
@Riverpod(keepAlive: true)
class SiteStateController extends _$SiteStateController {
  @override
  SiteState build() {
    final instanceId = ref.watch(targetInstanceIdProvider);
    if (instanceId == null) return SiteState.empty;

    final events = ref.watch(channelEventsProvider).stream;
    final sub = events.listen((event) {
      if (event is StateEvent && event.state.instanceId == instanceId) {
        state = event.state;
      } else if (event is TargetEvent && event.target.instanceId == instanceId) {
        // A new target starts with a clean site state until its first snapshot.
        if (event.target.tabId != _tabId) {
          _tabId = event.target.tabId;
          state = SiteState.empty;
        }
      }
    });
    ref.onDispose(sub.cancel);
    return SiteState.empty;
  }

  int? _tabId;
}
