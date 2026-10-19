import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/firebase/user_settings_repository.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/purchase/pro_controller.dart';
import 'package:zappit/features/remote/controllers/playback_math.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/features/voice/voice_command_service.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/shared/widgets/web_view_page.dart';

/// Remote settings (full-screen modal). General settings apply to every
/// remote; the section below is for the connected tab's service.
class RemoteSettingsPage extends ConsumerWidget {
  const RemoteSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.tokens;
    final settings = ref.watch(userSettingsControllerProvider);
    final notifier = ref.read(userSettingsControllerProvider.notifier);
    final isPro = ref.watch(proControllerProvider);
    final target = ref.watch(targetProvider);
    final hasQuality = target?.has(Capability.quality) ?? false;

    return Scaffold(
      backgroundColor: t.bgBase,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: AppTokens.contentMaxWidth + 32),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, AppTokens.space2, AppTokens.space2, 0),
                    child: IconButton(
                      tooltip: 'Close',
                      onPressed: () => Navigator.of(context).maybePop(),
                      icon: Icon(Icons.close_rounded, color: t.ink, size: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(AppTokens.space4, AppTokens.space2, AppTokens.space4, AppTokens.space8),
                    children: [
                      const _SectionHeader('General Settings'),
                      const SizedBox(height: AppTokens.space6),
                      ZpCluster(
                        padding: const EdgeInsets.fromLTRB(AppTokens.space4, AppTokens.space2, AppTokens.space2, AppTokens.space2),
                        child: Row(
                          children: [
                            Text('Voice Control', style: AppText.body.copyWith(fontSize: 17, color: t.ink)),
                            IconButton(
                              tooltip: 'How Voice Control works',
                              onPressed: () => context.push(
                                AppRoutes.webView,
                                extra: const WebViewArgs(title: 'Voice Control', url: voiceControlHelpUrl),
                              ),
                              icon: Icon(Icons.help_outline_rounded, color: t.inkMuted, size: 22),
                            ),
                            const Spacer(),
                            Switch(
                              value: settings.voiceControl,
                              onChanged: (on) => _setVoiceControl(context, ref, on, isPro),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppTokens.space6),
                      const _SubHeader('Long Press Speed'),
                      ZpSegmentedControl<double>(
                        segments: [
                          for (final r in UserSettings.holdSpeeds)
                            ZpSegment(
                              value: r,
                              label: PlaybackMath.speedLabel(r),
                              dimmed: !isPro && r != UserSettings.freeHoldSpeed,
                            ),
                        ],
                        selected: isPro ? settings.holdSpeed : UserSettings.freeHoldSpeed,
                        onChanged: (r) {
                          if (!isPro && r != UserSettings.freeHoldSpeed) {
                            context.push(AppRoutes.pro);
                            return;
                          }
                          notifier.setHoldSpeed(r);
                        },
                      ),
                      const SizedBox(height: AppTokens.space6),
                      const _SubHeader('A-B Loop Count'),
                      ZpSegmentedControl<int?>(
                        segments: [
                          for (final c in UserSettings.abLoopCounts)
                            ZpSegment(
                              value: c,
                              label: c == null ? '∞' : '$c',
                              dimmed: !isPro && c != UserSettings.freeAbLoopCount,
                            ),
                        ],
                        selected: isPro ? settings.abLoopCount : UserSettings.freeAbLoopCount,
                        onChanged: (c) {
                          if (!isPro && c != UserSettings.freeAbLoopCount) {
                            context.push(AppRoutes.pro);
                            return;
                          }
                          notifier.setAbLoopCount(c);
                        },
                      ),
                      const SizedBox(height: AppTokens.space6),
                      const _SubHeader('Seek Interval'),
                      ZpSegmentedControl<int>(
                        segments: [
                          for (final s in UserSettings.seekIntervals) ZpSegment(value: s, label: '${s}s'),
                        ],
                        selected: settings.seekInterval,
                        onChanged: notifier.setSeekInterval,
                      ),
                      if (target != null && target.site != Site.none && target.site != Site.generic) ...[
                        const SizedBox(height: AppTokens.space8),
                        _SectionHeader('${target.site.displayName} Settings'),
                        const SizedBox(height: AppTokens.space6),
                        if (hasQuality)
                          const _QualitySection()
                        else
                          Text(
                            'No settings for this site yet.',
                            textAlign: TextAlign.center,
                            style: AppText.body.copyWith(color: t.inkMuted),
                          ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _setVoiceControl(BuildContext context, WidgetRef ref, bool on, bool isPro) async {
    if (on && !isPro) {
      context.push(AppRoutes.pro);
      return;
    }
    final voice = ref.read(voiceCommandServiceProvider);
    if (on) {
      final granted = await voice.requestPermissions();
      if (!granted) {
        AppNotice.snack('Allow microphone access in Settings to use Voice Control');
        return;
      }
    }
    await ref.read(userSettingsControllerProvider.notifier).setVoiceControl(on);
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Container(
      padding: const EdgeInsets.only(bottom: AppTokens.space2),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: t.hairline))),
      child: Text(
        text.toUpperCase(),
        textAlign: TextAlign.center,
        style: AppText.section.copyWith(fontSize: 13, color: t.inkMuted),
      ),
    );
  }
}

class _SubHeader extends StatelessWidget {
  const _SubHeader(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppTokens.space3),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: AppText.bodyStrong.copyWith(fontSize: 17, color: context.tokens.ink),
      ),
    );
  }
}

/// YouTube Video Quality. The list is read from the page each time the
/// settings open (it differs per video).
class _QualitySection extends ConsumerStatefulWidget {
  const _QualitySection();

  @override
  ConsumerState<_QualitySection> createState() => _QualitySectionState();
}

class _QualitySectionState extends ConsumerState<_QualitySection> {
  QualityList? _list;
  bool _loading = true;
  String? _pending;

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  Future<void> _load() async {
    final list = await ref.read(remoteControllerProvider).fetchQuality();
    if (!mounted) return;
    setState(() {
      _list = list;
      _loading = false;
    });
  }

  Future<void> _select(String id) async {
    setState(() => _pending = id);
    final ok = await ref.read(remoteControllerProvider).setQuality(id);
    if (!mounted) return;
    if (ok) {
      setState(() => _list = QualityList(items: _list!.items, current: id));
    } else {
      AppNotice.snack("The quality didn't change");
    }
    setState(() => _pending = null);
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final list = _list;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const _SubHeader('Video Quality'),
        if (_loading)
          Padding(
            padding: const EdgeInsets.all(AppTokens.space6),
            child: Center(child: CircularProgressIndicator(strokeWidth: 2, color: t.inkMuted)),
          )
        else if (list == null || list.items.isEmpty)
          Text(
            "Couldn't read the quality options from the page.",
            textAlign: TextAlign.center,
            style: AppText.body.copyWith(color: t.inkMuted),
          )
        else
          ZpGroup(
            children: [
              for (final item in list.items)
                ZpListRow(
                  title: _pending == item.id ? '${item.label} …' : item.label,
                  centered: true,
                  minHeight: 52,
                  selected: item.id == list.current,
                  onTap: _pending == null ? () => _select(item.id) : null,
                ),
            ],
          ),
      ],
    );
  }
}
