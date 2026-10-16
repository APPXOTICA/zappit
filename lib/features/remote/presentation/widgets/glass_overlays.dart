import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/features/connection/connection_controller.dart';
import 'package:zappit/features/connection/presentation/browser_picker.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/remote_mode.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/features/remote/presentation/widgets/mode_views.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/remote_command.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// The four glass covers (UI Strategies): Not connected, No browser selected,
/// YouTube Up next, and Choose next video. Covers the remote, not the nav.
class GlassOverlay extends ConsumerWidget {
  const GlassOverlay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(remoteModeProvider);
    final endScreen = ref.watch(endScreenModeProvider);

    final Widget? child = switch (mode) {
      RemoteMode.disconnected => const _DisconnectedCard(key: ValueKey('disconnected')),
      RemoteMode.chooseBrowser => const _ChooseBrowserCard(key: ValueKey('choose')),
      RemoteMode.playing => switch (endScreen) {
          EndScreenMode.upNext => const _UpNext(key: ValueKey('upnext')),
          EndScreenMode.pick => const _PickNext(key: ValueKey('pick')),
          EndScreenMode.none => null,
        },
      _ => null,
    };

    return IgnorePointer(
      ignoring: child == null,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 220),
        child: child == null
            ? const SizedBox.expand(key: ValueKey('none'))
            : ZpGlass(
                key: child.key,
                child: SafeArea(bottom: false, child: child),
              ),
      ),
    );
  }
}

class _DisconnectedCard extends ConsumerWidget {
  const _DisconnectedCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offline = ref.watch(connectionStatusProvider.select((s) => s.phase == ConnectionPhase.offline));
    return Center(
      child: ZpDialogCard(
        icon: Icons.link_off_rounded,
        iconColor: context.tokens.signalOff,
        title: offline ? "You're offline" : "Can't reach a browser",
        message: offline
            ? 'Check your internet connection. Zappit reconnects on its own.'
            : 'Open Chrome or Safari on your computer and make sure the Zappit extension is signed in to this account.',
        children: [
          ZpButton(
            label: 'How to connect',
            height: AppTokens.targetMin,
            onPressed: () => context.push(AppRoutes.howToConnect),
          ),
        ],
      ),
    );
  }
}

class _ChooseBrowserCard extends StatelessWidget {
  const _ChooseBrowserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: ZpDialogCard(
          icon: Icons.desktop_windows_outlined,
          title: 'Choose a browser',
          message: 'Multiple browsers are online. Pick the one this remote should control.',
          children: [BrowserList(color: context.tokens.surface200)],
        ),
      ),
    );
  }
}

/// YouTube end screen: "Up next · plays in 8 s", Cancel / Play now.
class _UpNext extends ConsumerWidget {
  const _UpNext({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.tokens;
    final state = ref.watch(siteStateControllerProvider);
    final controller = ref.read(remoteControllerProvider);
    final countdown = state.endScreenCountdown;

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: AppTokens.contentMaxWidth),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Spacer(),
            Text(
              countdown != null ? 'Up next · plays in $countdown s' : 'Up next',
              style: AppText.body.copyWith(color: t.accentText),
            ),
            const SizedBox(height: AppTokens.space4),
            VideoCardView(card: state.endScreenCard),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ZpButton(
                    label: 'Cancel',
                    height: 64,
                    textStyle: AppText.button.copyWith(fontSize: 18),
                    onPressed: controller.endScreenCancel,
                  ),
                ),
                const SizedBox(width: AppTokens.space3),
                Expanded(
                  child: ZpButton(
                    label: 'Play now',
                    height: 64,
                    style: ZpButtonStyle.ink,
                    icon: const Icon(Icons.play_arrow_rounded),
                    textStyle: AppText.button.copyWith(fontSize: 18),
                    onPressed: controller.endScreenPlayNow,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// After Cancel (or with autoplay off): pick the next video with ← → and Play.
class _PickNext extends ConsumerWidget {
  const _PickNext({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.tokens;
    final card = ref.watch(siteStateControllerProvider.select((s) => s.focusCard ?? s.endScreenCard));
    final controller = ref.read(remoteControllerProvider);

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: AppTokens.contentMaxWidth),
        child: Column(
          children: [
            SizedBox(
              height: AppTokens.targetMin,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text('Choose next video', style: AppText.body.copyWith(color: t.inkMuted)),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      tooltip: 'Close',
                      onPressed: controller.endScreenDismiss,
                      icon: Icon(Icons.close_rounded, color: t.ink, size: 28),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            VideoCardView(card: card),
            const Spacer(),
            SizedBox(
              height: 96,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ZpDirButton(
                      icon: Icons.chevron_left_rounded,
                      semanticLabel: 'Previous video',
                      onPressed: () => controller.nav(NavDirection.left),
                    ),
                  ),
                  const SizedBox(width: AppTokens.space3),
                  Expanded(
                    child: ZpDirButton(
                      icon: Icons.chevron_right_rounded,
                      semanticLabel: 'Next video',
                      onPressed: () => controller.nav(NavDirection.right),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppTokens.space3),
            SizedBox(
              height: 96,
              width: double.infinity,
              child: ZpDirButton(label: 'Play', filled: true, onPressed: controller.navSelect),
            ),
          ],
        ),
      ),
    );
  }
}
