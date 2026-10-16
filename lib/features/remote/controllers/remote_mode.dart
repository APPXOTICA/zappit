import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/features/connection/connection_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/protocol.dart';

part 'remote_mode.g.dart';

/// What the Remote tab shows. Computed in one place (Notion: App Architecture).
enum RemoteMode {
  /// App offline or no browser online: "Can't reach a browser" glass.
  disconnected,

  /// 2+ browsers, none selected: "Choose a browser" glass.
  chooseBrowser,

  /// Connected, waiting for the first `target`.
  waiting,

  /// Connected, the target tab has no video: "Nothing playing".
  nothing,

  /// YouTube / Netflix home: d-pad with the focused card.
  home,

  /// Remote controls for the playing video.
  playing,
}

@Riverpod(keepAlive: true)
RemoteMode remoteMode(Ref ref) {
  final status = ref.watch(connectionStatusProvider);
  switch (status.phase) {
    case ConnectionPhase.offline:
    case ConnectionPhase.noBrowser:
      return RemoteMode.disconnected;
    case ConnectionPhase.notSelected:
      return RemoteMode.chooseBrowser;
    case ConnectionPhase.connected:
      break;
  }

  final target = ref.watch(targetProvider);
  if (target == null) return RemoteMode.waiting;
  if (target.isSpatialHome) return RemoteMode.home;
  if (target.site == Site.none || !target.hasMedia) return RemoteMode.nothing;
  return RemoteMode.playing;
}

/// End screen overlay on top of [RemoteMode.playing] (YouTube).
@Riverpod(keepAlive: true)
EndScreenMode endScreenMode(Ref ref) {
  final mode = ref.watch(remoteModeProvider);
  if (mode != RemoteMode.playing) return EndScreenMode.none;
  return ref.watch(siteStateControllerProvider.select((s) => s.endScreenMode));
}
