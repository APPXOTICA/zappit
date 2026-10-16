import 'dart:async';

import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/firebase/session_repository.dart';
import 'package:zappit/core/realtime/zappit_channel.dart';
import 'package:zappit/protocol/messages.dart';

part 'connection_controller.g.dart';

enum ConnectionPhase {
  /// The app itself is not connected to Ably. Red.
  offline,

  /// No browser online on the channel. Red, "Can't reach a browser" glass.
  noBrowser,

  /// Browsers online but none selected (2+). Green, "Choose a browser" glass.
  notSelected,

  /// A selected browser is online. Green.
  connected,
}

class ConnectionStatus {
  const ConnectionStatus({required this.phase, this.selected, this.browsers = const []});

  final ConnectionPhase phase;
  final BrowserInstance? selected;
  final List<BrowserInstance> browsers;

  bool get isGreen => phase == ConnectionPhase.connected || phase == ConnectionPhase.notSelected;
  bool get canSendCommands => phase == ConnectionPhase.connected && selected != null;
  String? get selectedLabel => selected?.label;
}

/// Combines the app's Ably connection, browser presence and the selected
/// instance into one status. When exactly one browser is online and nothing
/// valid is selected, it selects that browser (same rule as the extension).
@Riverpod(keepAlive: true)
ConnectionStatus connectionStatus(Ref ref) {
  final connected = ref.watch(ablyConnectedProvider).value ?? false;
  final browsers = ref.watch(browserPresenceProvider);
  final selectedId = ref.watch(selectedInstanceIdProvider).value;

  if (!connected) return ConnectionStatus(phase: ConnectionPhase.offline, browsers: browsers);
  if (browsers.isEmpty) return const ConnectionStatus(phase: ConnectionPhase.noBrowser);

  final selected = browsers.where((b) => b.instanceId == selectedId).firstOrNull;
  if (selected != null) {
    return ConnectionStatus(phase: ConnectionPhase.connected, selected: selected, browsers: browsers);
  }

  if (browsers.length == 1) {
    final only = browsers.single;
    unawaited(ref
        .read(sessionRepositoryProvider)
        .selectIfVacant(only.instanceId, {for (final b in browsers) b.instanceId}));
    // Show it as selected right away; the transaction confirms it.
    return ConnectionStatus(phase: ConnectionPhase.connected, selected: only, browsers: browsers);
  }

  return ConnectionStatus(phase: ConnectionPhase.notSelected, browsers: browsers);
}

/// Instance id commands go to, or null.
@Riverpod(keepAlive: true)
String? targetInstanceId(Ref ref) => ref.watch(connectionStatusProvider).selected?.instanceId;
