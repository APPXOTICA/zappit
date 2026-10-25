import 'package:flutter/scheduler.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/firebase/user_settings_repository.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/remote/controllers/playback_controller.dart';
import 'package:zappit/features/remote/controllers/playback_math.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/features/remote/presentation/sheets/sleep_timer_sheet.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// Playback block (`.za-play`): sleep · chat · theater · full screen above,
/// `[` timeline `]`, time, then Replay · −N · Play · +N · Loop.
class PlaybackBlock extends ConsumerWidget {
  const PlaybackBlock({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final target = ref.watch(targetProvider);
    final hasData = ref.watch(playbackControllerProvider.select((v) => v.hasData));
    final isAd = ref.watch(playbackControllerProvider.select((v) => v.isAd));
    final isLive = ref.watch(playbackControllerProvider.select((v) => v.isLive));
    final hasDuration = ref.watch(playbackControllerProvider.select((v) => v.hasDuration));
    final isDvr = ref.watch(playbackControllerProvider.select((v) => v.isDvr));
    final paused = ref.watch(playbackControllerProvider.select((v) => v.paused));
    final loop = ref.watch(playbackControllerProvider.select((v) => v.snapshot?.loop ?? false));
    final loopLeft = ref.watch(playbackControllerProvider.select((v) => v.snapshot?.loopRepeatLeft));
    final abActive = ref.watch(playbackControllerProvider.select((v) => v.snapshot?.abActive ?? false));
    final seekInterval = ref.watch(userSettingsControllerProvider.select((s) => s.seekInterval));
    final controller = ref.read(remoteControllerProvider);

    final shortForm = target?.isShortForm ?? false;
    final hasReplay = !shortForm && (target?.has(Capability.replay) ?? true);
    final hasLoop = !shortForm && (target?.has(Capability.loop) ?? true);
    // DVR live streams can be rewound; other live streams can't.
    final canSeek = hasData && !isAd && (isLive ? isDvr : hasDuration);
    final seekBlocked = canSeek
        ? null
        : _seekBlockedNotice(hasData: hasData, isAd: isAd, isLive: isLive, hasDuration: hasDuration);

    // Image file names are mirrored: forward_* shows a left arrow.
    final backIcon = 'assets/images/forward_${seekInterval}s.png';
    final forwardIcon = 'assets/images/backward_${seekInterval}s.png';

    return ZpCluster(
      padding: const EdgeInsets.fromLTRB(AppTokens.space4, 6, AppTokens.space4, 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _TopRow(),
          const _Timeline(),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (hasReplay)
                ZpIconButton(
                  variant: ZpIconButtonVariant.outlined,
                  semanticLabel: 'Replay',
                  onPressed: hasData && !isAd ? controller.replay : null,
                  onDisabledTap: isAd ? () => AppNotice.snack(_adNotice) : null,
                  child: const Icon(Icons.refresh_rounded, size: 28),
                ),
              ZpIconButton(
                variant: ZpIconButtonVariant.outlined,
                semanticLabel: 'Back $seekInterval seconds',
                onPressed: canSeek ? controller.seekBackward : null,
                onDisabledTap: seekBlocked,
                child: ZpImageIcon(backIcon, size: 30),
              ),
              ZpIconButton(
                variant: ZpIconButtonVariant.primary,
                size: ZpIconButtonSize.lg,
                extent: 68,
                semanticLabel: paused ? 'Play' : 'Pause',
                onPressed: hasData ? controller.togglePlay : null,
                onLongPressStart: isAd ? null : controller.startSpeedHold,
                onLongPressEnd: controller.endSpeedHold,
                child: Icon(paused ? Icons.play_arrow_rounded : Icons.pause_rounded, size: 40),
              ),
              ZpIconButton(
                variant: ZpIconButtonVariant.outlined,
                semanticLabel: 'Forward $seekInterval seconds',
                onPressed: canSeek ? controller.seekForward : null,
                onDisabledTap: seekBlocked,
                child: ZpImageIcon(forwardIcon, size: 30),
              ),
              if (hasLoop)
                _LoopButton(
                  on: loop,
                  left: loop ? loopLeft : null,
                  enabled: hasData && !abActive,
                  onPressed: controller.toggleLoop,
                  onDisabledTap: abActive ? () => AppNotice.snack('Turn off the A-B loop first') : null,
                ),
            ],
          ),
        ],
      ),
    );
  }
}

const _adNotice = 'Not available during an ad';

/// Why seeking (or A-B, with [seekNotice] false) is off, as a tap handler for
/// the greyed-out buttons. Null while playback data is still on its way (it
/// turns on by itself).
VoidCallback? _seekBlockedNotice({
  required bool hasData,
  required bool isAd,
  required bool isLive,
  required bool hasDuration,
  bool seekNotice = true,
}) {
  if (!hasData) return null;
  if (isAd) return () => AppNotice.snack(_adNotice);
  if (isLive) return () => AppNotice.snack(seekNotice ? "This live stream can't be rewound" : 'A-B loop is off for live streams');
  if (!hasDuration) return () => AppNotice.snack("Can't seek in this video");
  return null;
}

class _LoopButton extends StatelessWidget {
  const _LoopButton({
    required this.on,
    required this.left,
    required this.enabled,
    required this.onPressed,
    this.onDisabledTap,
  });

  final bool on;
  final int? left;
  final bool enabled;
  final VoidCallback onPressed;
  final VoidCallback? onDisabledTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppTokens.controlMd,
      height: AppTokens.controlMd,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          ZpIconButton(
            variant: ZpIconButtonVariant.outlined,
            // The icon tells the state; no accent fill.
            pressed: null,
            semanticLabel: on ? 'Loop on' : 'Loop off',
            onPressed: enabled ? onPressed : null,
            onDisabledTap: onDisabledTap,
            child: Icon(on ? Icons.repeat_one_on_rounded : Icons.repeat_one, size: 28),
          ),
          if (left != null)
            Positioned(
              bottom: -14,
              child: Text(
                '$left',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: context.tokens.accentText),
              ),
            ),
        ],
      ),
    );
  }
}

/// Sleep timer at the left; live chat, theater and full screen at the right.
class _TopRow extends ConsumerWidget {
  const _TopRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final target = ref.watch(targetProvider);
    final site = ref.watch(siteStateControllerProvider);
    final hasData = ref.watch(playbackControllerProvider.select((v) => v.hasData));
    final sleepMode = ref.watch(playbackControllerProvider.select((v) => v.snapshot?.sleepMode ?? SleepMode.off));
    final controller = ref.read(remoteControllerProvider);

    final hasTheater = target?.has(Capability.theater) ?? false;
    final hasChat = (target?.has(Capability.chat) ?? false) && site.chatAvailable;

    return Row(
      children: [
        _SleepButton(
          active: sleepMode != SleepMode.off,
          onPressed: hasData ? () => showSleepTimerSheet(context, ref) : null,
        ),
        const Spacer(),
        if (hasChat)
          ZpIconButton(
            size: ZpIconButtonSize.sm,
            semanticLabel: site.chatVisible ? 'Hide chat' : 'Show chat',
            onPressed: controller.toggleChat,
            child: Icon(site.chatVisible ? Icons.chat_rounded : Icons.chat_outlined),
          ),
        if (hasTheater)
          ZpIconButton(
            size: ZpIconButtonSize.sm,
            semanticLabel: 'Theater mode',
            onPressed: hasData ? controller.toggleTheater : null,
            child: ZpImageIcon(
              site.theaterOn ? 'assets/images/theater_mode_on.png' : 'assets/images/theater_mode_off.png',
              size: 28,
            ),
          ),
        ZpIconButton(
          size: ZpIconButtonSize.sm,
          semanticLabel: 'Full screen',
          onPressed: hasData ? controller.fullscreen : null,
          child: const Icon(Icons.fullscreen_rounded, size: 30),
        ),
      ],
    );
  }
}

/// Moon-style snooze button with the remaining minutes when a timer runs.
class _SleepButton extends ConsumerStatefulWidget {
  const _SleepButton({required this.active, required this.onPressed});

  final bool active;
  final VoidCallback? onPressed;

  @override
  ConsumerState<_SleepButton> createState() => _SleepButtonState();
}

class _SleepButtonState extends ConsumerState<_SleepButton> {
  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final view = ref.watch(playbackControllerProvider);
    final label = widget.active ? _remaining(view) : null;

    return ZpPressable(
      onTap: widget.onPressed,
      semanticLabel: 'Sleep timer',
      builder: (context, pressed) => Container(
        height: AppTokens.targetMin,
        constraints: const BoxConstraints(minWidth: AppTokens.targetMin),
        padding: const EdgeInsets.symmetric(horizontal: AppTokens.space2),
        decoration: BoxDecoration(
          color: pressed ? t.surface300 : Colors.transparent,
          borderRadius: BorderRadius.circular(AppTokens.radiusFull),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.snooze, size: 28, color: widget.onPressed == null ? t.inkDisabled : t.ink),
            if (label != null) ...[
              const SizedBox(width: 6),
              Text(label, style: AppText.bodyStrong.copyWith(color: t.ink)),
            ],
          ],
        ),
      ),
    );
  }

  /// Minutes left, rounded up; under a minute shows 1m.
  String? _remaining(PlaybackView view) {
    final snapshot = view.snapshot;
    if (snapshot == null) return null;
    final now = DateTime.now().millisecondsSinceEpoch;
    double? seconds;
    if (snapshot.sleepMode == SleepMode.timer && snapshot.sleepEndsAt != null) {
      seconds = (snapshot.sleepEndsAt! - now) / 1000;
    } else if (snapshot.sleepMode == SleepMode.endOfVideo && snapshot.duration != null) {
      seconds = (snapshot.duration! - view.timeline.positionAt(now)) / (view.rate <= 0 ? 1 : view.rate);
    }
    if (seconds == null || seconds <= 0) return null;
    final minutes = (seconds / 60).ceil().clamp(1, 999);
    return '${minutes}m';
  }
}

/// `[` scrub bar `]` and the time row. Rebuilds every frame while playing.
class _Timeline extends ConsumerStatefulWidget {
  const _Timeline();

  @override
  ConsumerState<_Timeline> createState() => _TimelineState();
}

class _TimelineState extends ConsumerState<_Timeline> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  double? _dragSeconds;

  @override
  void initState() {
    super.initState();
    _ticker = createTicker((_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  void _syncTicker(bool running) {
    if (running && !_ticker.isActive) {
      _ticker.start();
    } else if (!running && _ticker.isActive) {
      _ticker.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final view = ref.watch(playbackControllerProvider);
    final controller = ref.read(remoteControllerProvider);
    final snapshot = view.snapshot;
    final now = DateTime.now().millisecondsSinceEpoch;
    _syncTicker(view.timeline.running && _dragSeconds == null);

    final mode = !view.hasData
        ? ZpScrubMode.empty
        : view.isAd
            ? ZpScrubMode.ad
            : view.isLive
                ? ZpScrubMode.live
                : ZpScrubMode.normal;

    final position = _dragSeconds ?? view.timeline.positionAt(now);
    final duration = view.duration;
    final abEnabled = view.hasData && !view.isAd && !view.isLive && view.hasDuration;
    final abBlocked = _seekBlockedNotice(
      hasData: view.hasData,
      isAd: view.isAd,
      isLive: view.isLive,
      hasDuration: view.hasDuration,
      seekNotice: false,
    );

    final durationText = view.hasDuration ? PlaybackMath.formatTime(duration) : '–:––';
    final timeText = '${PlaybackMath.formatTime(position)} / $durationText';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            _AbButton(
              label: '[',
              on: snapshot?.loopStart != null,
              enabled: abEnabled,
              onDisabledTap: abBlocked,
              onPressed: () => controller.toggleAbPoint('a'),
            ),
            const SizedBox(width: AppTokens.space2),
            Expanded(
              child: ZpScrubBar(
                position: position,
                duration: duration,
                mode: mode,
                loopStart: snapshot?.loopStart,
                loopEnd: snapshot?.loopEnd,
                loopLeft: snapshot?.loopLeft,
                onDragStart: controller.beginScrub,
                onDragUpdate: (s) => setState(() => _dragSeconds = s),
                onDragEnd: (s) {
                  setState(() => _dragSeconds = null);
                  controller.seekTo(s);
                },
              ),
            ),
            const SizedBox(width: AppTokens.space2),
            _AbButton(
              label: ']',
              on: snapshot?.loopEnd != null,
              enabled: abEnabled,
              onDisabledTap: abBlocked,
              onPressed: () => controller.toggleAbPoint('b'),
            ),
          ],
        ),
        Transform.translate(
          offset: const Offset(0, -6),
          child: ZpScrubTime(text: view.hasData ? timeText : '–:–– / –:––', mode: mode),
        ),
      ],
    );
  }
}

class _AbButton extends StatelessWidget {
  const _AbButton({
    required this.label,
    required this.on,
    required this.enabled,
    required this.onPressed,
    this.onDisabledTap,
  });

  final String label;
  final bool on;
  final bool enabled;
  final VoidCallback onPressed;
  final VoidCallback? onDisabledTap;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return ZpPressable(
      onTap: enabled ? onPressed : onDisabledTap,
      semanticLabel: label == '[' ? 'Loop start' : 'Loop end',
      selected: on,
      builder: (context, pressed) => Container(
        width: 44,
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: !enabled ? t.surface100 : (on ? t.accentSoft : (pressed ? t.surface300 : t.surface200)),
          borderRadius: BorderRadius.circular(AppTokens.radiusSm),
          border: Border.all(color: on ? Colors.transparent : t.hairline),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: !enabled ? t.inkDisabled : (on ? t.accentText : t.inkMuted),
          ),
        ),
      ),
    );
  }
}
