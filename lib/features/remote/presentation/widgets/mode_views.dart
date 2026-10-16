import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/features/remote/presentation/widgets/link_panel.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/remote_command.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// Card thumbnail, title and channel · duration (home focus, end screen).
class VideoCardView extends StatelessWidget {
  const VideoCardView({
    super.key,
    required this.card,
    this.titleStyle,
    this.maxThumbnailHeight = double.infinity,
  });

  final VideoCard? card;
  final TextStyle? titleStyle;
  final double maxThumbnailHeight;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final card = this.card;
    final thumbnail = card?.thumbnail;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: maxThumbnailHeight),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: t.surface300,
                  borderRadius: BorderRadius.circular(AppTokens.radiusLg),
                  border: Border.all(color: t.hairlineStrong),
                ),
                child: thumbnail != null && thumbnail.startsWith('http')
                    ? Image.network(
                        thumbnail,
                        fit: BoxFit.cover,
                        errorBuilder: (_, _, _) => const SizedBox.shrink(),
                      )
                    : null,
              ),
            ),
          ),
        ),
        const SizedBox(height: AppTokens.space4),
        Text(
          card?.title ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: titleStyle ?? AppText.bigTitle.copyWith(color: t.ink),
        ),
        if (card != null && card.subtitle.isNotEmpty) ...[
          const SizedBox(height: AppTokens.space2),
          Text(
            card.subtitle,
            style: AppText.body.copyWith(fontSize: 16, color: t.inkMuted),
          ),
        ],
      ],
    );
  }
}

/// YouTube / Netflix home: the focused card and a d-pad. Left / right run full
/// height, up / down split the middle; Play below.
class HomePadView extends ConsumerWidget {
  const HomePadView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final card = ref.watch(
      siteStateControllerProvider.select((s) => s.focusCard),
    );
    final controller = ref.read(remoteControllerProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (card != null) ...[
          VideoCardView(card: card, maxThumbnailHeight: 196),
          const SizedBox(height: AppTokens.space6),
        ] else
          Padding(
            padding: const EdgeInsets.only(bottom: AppTokens.space6),
            child: Text(
              'Use the arrows to pick a video on the page.',
              textAlign: TextAlign.center,
              style: AppText.body.copyWith(color: context.tokens.inkMuted),
            ),
          ),
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 312),
            child: Column(
              children: [
                SizedBox(
                  height: 152,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ZpDirButton(
                          icon: Icons.chevron_left_rounded,
                          semanticLabel: 'Left',
                          onPressed: () => controller.nav(NavDirection.left),
                        ),
                      ),
                      const SizedBox(width: AppTokens.space2),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: ZpDirButton(
                                icon: Icons.keyboard_arrow_up_rounded,
                                semanticLabel: 'Up',
                                onPressed: () =>
                                    controller.nav(NavDirection.up),
                              ),
                            ),
                            const SizedBox(height: AppTokens.space2),
                            Expanded(
                              child: ZpDirButton(
                                icon: Icons.keyboard_arrow_down_rounded,
                                semanticLabel: 'Down',
                                onPressed: () =>
                                    controller.nav(NavDirection.down),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: AppTokens.space2),
                      Expanded(
                        child: ZpDirButton(
                          icon: Icons.chevron_right_rounded,
                          semanticLabel: 'Right',
                          onPressed: () => controller.nav(NavDirection.right),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppTokens.space3),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ZpDirButton(
                    label: 'Play',
                    filled: true,
                    onPressed: controller.navSelect,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// Connected, but the target tab has no video.
class NothingPlayingView extends ConsumerWidget {
  const NothingPlayingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ZpEmptyState(
      icon: Icons.graphic_eq_rounded,
      title: 'Nothing playing',
      message: 'No video is playing right now. Pick another tab, or paste a video link.',
      actions: [
        ZpButton(
          label: 'Pick a tab',
          expand: false,
          height: AppTokens.controlMd,
          icon: const ZpImageIcon('assets/images/ic_tabs.svg'),
          onPressed: () => context.go(AppRoutes.tabs),
        ),
        ZpButton(
          label: 'Paste a link',
          expand: false,
          height: AppTokens.controlMd,
          icon: const ZpImageIcon('assets/images/export.svg'),
          onPressed: () => showLinkPanel(context, ref),
        ),
      ],
    );
  }
}
