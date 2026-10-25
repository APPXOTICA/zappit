import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/remote/controllers/playback_controller.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// Off · 10 · 15 · 20 · 30 · 45 · 60 minutes · End of video (YouTube's options).
Future<void> showSleepTimerSheet(BuildContext context, WidgetRef ref) {
  return ZpSheet.show<void>(context, title: 'Sleep Timer', builder: (_) => const _SleepTimerOptions());
}

class _SleepTimerOptions extends ConsumerWidget {
  const _SleepTimerOptions();

  static const _minutes = [10, 15, 20, 30, 45, 60];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final view = ref.watch(playbackControllerProvider);
    final controller = ref.read(remoteControllerProvider);
    final snapshot = view.snapshot;
    final mode = snapshot?.sleepMode ?? SleepMode.off;

    // Which preset is running: the closest preset to the remaining time.
    int? activeMinutes;
    if (mode == SleepMode.timer && snapshot?.sleepEndsAt != null) {
      final left = (snapshot!.sleepEndsAt! - DateTime.now().millisecondsSinceEpoch) / 60000;
      activeMinutes = _minutes.where((m) => m >= left).firstOrNull ?? _minutes.last;
    }

    final now = DateTime.now().millisecondsSinceEpoch;
    final remainingVideo = view.duration > 0
        ? ((view.duration - view.timeline.positionAt(now)) / (view.rate <= 0 ? 1 : view.rate) / 60).ceil()
        : null;

    void pick(VoidCallback action) {
      action();
      Navigator.of(context).maybePop();
    }

    return ZpGroup(
      children: [
        ZpListRow(
          title: 'Off',
          centered: true,
          selected: mode == SleepMode.off,
          onTap: () => pick(() => controller.setSleepTimer(0)),
        ),
        for (final m in _minutes)
          ZpListRow(
            title: '$m minutes',
            centered: true,
            selected: activeMinutes == m,
            onTap: () => pick(() => controller.setSleepTimer(m)),
          ),
        ZpListRow(
          title: 'End of video',
          subtitle: view.isLive ? 'Not available for live' : (remainingVideo != null ? '$remainingVideo min' : null),
          centered: true,
          minHeight: 64,
          selected: mode == SleepMode.endOfVideo,
          onTap: view.isLive || !view.hasDuration ? null : () => pick(controller.sleepAtEndOfVideo),
          onDisabledTap: () => AppNotice.top(
            title: view.isLive ? 'Not available for live streams' : "This video's length is unknown",
            icon: Icons.info_outline_rounded,
            error: false,
          ),
        ),
      ],
    );
  }
}
