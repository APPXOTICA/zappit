import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/connection/connection_controller.dart';
import 'package:zappit/features/connection/presentation/browser_picker.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/remote_mode.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/features/remote/presentation/widgets/link_panel.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// Fixed header: top bar (remote settings · site badge · open in app · open
/// link) and the connection pill.
class RemoteHeader extends ConsumerWidget {
  const RemoteHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(remoteModeProvider);
    final target = ref.watch(targetProvider);
    final status = ref.watch(connectionStatusProvider);
    final controller = ref.read(remoteControllerProvider);

    final connected = status.phase == ConnectionPhase.connected;
    final showSite = connected && target != null && target.site != Site.none;
    final canOpenInApp = connected &&
        mode == RemoteMode.playing &&
        (target?.has(Capability.openInApp) ?? false);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: AppTokens.targetMin,
          child: Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ZpIconButton(
                    size: ZpIconButtonSize.sm,
                    semanticLabel: 'Remote settings',
                    onPressed: () => context.push(AppRoutes.remoteSettings),
                    child: const Icon(Icons.tune_rounded, size: 28),
                  ),
                ),
              ),
              if (showSite)
                ZpSiteBadge(site: target.site)
              else
                Text('Zappit', style: AppText.heading.copyWith(color: context.tokens.ink)),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ZpIconButton(
                      size: ZpIconButtonSize.sm,
                      semanticLabel: 'Play in app',
                      onPressed: canOpenInApp ? controller.openInNativeApp : null,
                      onDisabledTap: () => AppNotice.snack(
                        !connected
                            ? 'Connect to a browser first'
                            : mode != RemoteMode.playing
                                ? 'Play a video in the browser first'
                                : "This video can't be opened on the phone",
                      ),
                      child: const ZpImageIcon('assets/images/import.svg', size: 28),
                    ),
                    ZpIconButton(
                      size: ZpIconButtonSize.sm,
                      semanticLabel: 'Open a link in the browser',
                      onPressed: connected ? () => showLinkPanel(context, ref) : null,
                      onDisabledTap: () => AppNotice.snack('Connect to a browser first'),
                      child: const ZpImageIcon('assets/images/export.svg', size: 28),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        ZpConnectionStatus(
          connected: status.isGreen,
          stateLabel: status.isGreen ? 'Connected' : 'Not connected',
          deviceLabel: switch (status.phase) {
            ConnectionPhase.connected => status.selectedLabel,
            ConnectionPhase.notSelected => 'No browser selected',
            ConnectionPhase.noBrowser => 'No browser online',
            ConnectionPhase.offline => 'Offline',
          },
          onTap: status.browsers.isEmpty ? null : () => showBrowserPicker(context, ref),
        ),
      ],
    );
  }
}
