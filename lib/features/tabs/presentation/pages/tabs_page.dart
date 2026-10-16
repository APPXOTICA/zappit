import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/firebase/browser_tabs_repository.dart';
import 'package:zappit/core/realtime/command_bus.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/utils/haptic_utils.dart';
import 'package:zappit/features/connection/connection_controller.dart';
import 'package:zappit/features/connection/presentation/browser_picker.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/protocol/remote_command.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// Open tabs of the selected browser, grouped by window. Tapping a tab
/// activates it in the browser, which makes it the new target.
///
/// The extension writes the tab list to Firestore only while this screen is
/// visible: `watch_tabs` when shown, `unwatch_tabs` when hidden.
class TabsPage extends ConsumerStatefulWidget {
  const TabsPage({super.key});

  @override
  ConsumerState<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends ConsumerState<TabsPage> with WidgetsBindingObserver {
  String? _watching;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _unwatch();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && _visible) {
      _watch(ref.read(targetInstanceIdProvider));
    } else if (state == AppLifecycleState.paused) {
      _unwatch();
    }
  }

  bool get _visible {
    if (!mounted) return false;
    final location = GoRouter.of(context).routerDelegate.currentConfiguration.uri.path;
    return location == AppRoutes.tabs;
  }

  void _watch(String? instanceId) {
    if (instanceId == null || _watching == instanceId) return;
    _watching = instanceId;
    unawaited(ref.read(commandBusProvider).send(const RemoteCommand.watchTabs(), handleErrors: false));
  }

  void _unwatch() {
    if (_watching == null) return;
    _watching = null;
    unawaited(ref.read(commandBusProvider).send(const RemoteCommand.unwatchTabs(), handleErrors: false));
  }

  Future<void> _activate(BrowserTab tab) async {
    HapticUtils.hapticFeedback(HapticType.light);
    await ref
        .read(commandBusProvider)
        .send(RemoteCommand.activateTab(tabId: tab.tabId, windowId: tab.windowId));
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final status = ref.watch(connectionStatusProvider);
    final instanceId = status.selected?.instanceId;
    final location = GoRouterState.of(context).uri.path;
    final visible = location == AppRoutes.tabs;

    // StatefulShellRoute keeps this page alive; watch only while visible.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      if (visible && status.canSendCommands) {
        _watch(instanceId);
      } else {
        _unwatch();
      }
    });

    return Scaffold(
      backgroundColor: t.bgBase,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: AppTokens.contentMaxWidth + 64),
            child: Column(
              children: [
                const SizedBox(height: AppTokens.space2),
                ZpConnectionStatus(
                  connected: status.isGreen,
                  stateLabel: status.isGreen ? 'Connected' : 'Not connected',
                  deviceLabel: status.selectedLabel ?? 'No browser selected',
                  onTap: status.browsers.isEmpty ? null : () => showBrowserPicker(context, ref),
                ),
                Expanded(
                  child: instanceId == null || !status.canSendCommands
                      ? _NoBrowser(phase: status.phase)
                      : _TabList(instanceId: instanceId, onTap: _activate),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TabList extends ConsumerWidget {
  const _TabList({required this.instanceId, required this.onTap});

  final String instanceId;
  final ValueChanged<BrowserTab> onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.tokens;
    final async = ref.watch(browserTabsProvider(instanceId));
    final targetTabId = ref.watch(targetProvider.select((t) => t?.tabId));
    final snapshot = async.value;

    if (snapshot == null || snapshot.tabs.isEmpty) {
      return Center(
        child: async.isLoading || snapshot == null
            ? CircularProgressIndicator(strokeWidth: 2, color: t.inkMuted)
            : Text('No open tabs', style: AppText.body.copyWith(color: t.inkMuted)),
      );
    }

    final windows = snapshot.byWindow.entries.toList();
    return ListView(
      padding: const EdgeInsets.fromLTRB(AppTokens.space4, AppTokens.space6, AppTokens.space4, AppTokens.space6),
      children: [
        for (var w = 0; w < windows.length; w++) ...[
          if (w > 0) const SizedBox(height: AppTokens.space6),
          ZpSectionTitle('Window ${w + 1}'),
          ZpGroup(
            children: [
              for (final tab in windows[w].value)
                ZpTabRow(
                  title: tab.title.isEmpty ? (tab.host ?? 'Untitled') : tab.title,
                  host: tab.host ?? '',
                  monogram: _monogram(tab),
                  favIconUrl: tab.favIconUrl,
                  isTarget: tab.tabId == targetTabId,
                  onTap: () => onTap(tab),
                ),
            ],
          ),
        ],
      ],
    );
  }

  String _monogram(BrowserTab tab) => switch (tab.site) {
        Site.youtube || Site.shorts => 'YT',
        Site.netflix => 'N',
        Site.tiktok => 'T',
        Site.reels => 'IG',
        _ => (tab.host ?? tab.title),
      };
}

class _NoBrowser extends StatelessWidget {
  const _NoBrowser({required this.phase});

  final ConnectionPhase phase;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ZpEmptyState(
        icon: Icons.desktop_windows_outlined,
        title: phase == ConnectionPhase.notSelected ? 'Choose a browser' : 'No browser',
        message: phase == ConnectionPhase.notSelected
            ? 'Pick the browser this remote should control to see its tabs.'
            : 'Open your browser with the Zappit extension signed in to see its tabs.',
      ),
    );
  }
}
