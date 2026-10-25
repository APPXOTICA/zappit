import 'package:extended_image/extended_image.dart';
import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/features/remote/presentation/widgets/link_panel.dart';
import 'package:zappit/features/sites/supported_sites.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/protocol/remote_command.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// Card thumbnail, title and channel · duration (home focus, end screen).
///
/// Without a card yet (still loading), the thumbnail shimmers. [reserveSpace]
/// keeps the same height with or without a card (two title lines, one
/// subtitle line) so the controls below don't jump, with shimmering lines in
/// place of the text.
class VideoCardView extends StatelessWidget {
  const VideoCardView({super.key, required this.card, this.titleStyle, this.maxThumbnailHeight = double.infinity, this.reserveSpace = false});

  final VideoCard? card;
  final TextStyle? titleStyle;
  final double maxThumbnailHeight;
  final bool reserveSpace;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final card = this.card;
    final thumbnail = card?.thumbnail;
    final title = titleStyle ?? AppText.bigTitle.copyWith(color: t.ink);
    final subtitle = AppText.body.copyWith(fontSize: 16, color: t.inkMuted);
    double lines(TextStyle style, int count) => MediaQuery.textScalerOf(context).scale(style.fontSize ?? 14) * (style.height ?? 1.2) * count;

    final Widget? image = thumbnail != null && thumbnail.startsWith('http')
        ? ExtendedImage.network(
            thumbnail,
            fit: BoxFit.cover,
            loadStateChanged: (state) => switch (state.extendedImageLoadState) {
              LoadState.loading => const ZpShimmer(radius: 0),
              LoadState.failed => Center(child: Icon(Icons.image_not_supported_outlined, color: t.inkMuted)),
              LoadState.completed => null,
            },
          )
        : (card == null ? const ZpShimmer(radius: 0) : null);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  borderRadius: BorderRadius.circular(AppTokens.radiusSm),
                  border: Border.all(color: t.hairlineStrong),
                ),
                child: image,
              ),
            ),
          ),
        ),
        const SizedBox(height: AppTokens.space4),
        SizedBox(
          height: reserveSpace ? lines(title, 2) : null,
          child: card == null && reserveSpace
              ? Align(
                  alignment: Alignment.topCenter,
                  child: FractionallySizedBox(widthFactor: 0.75, child: ZpShimmer(height: lines(title, 1) * 0.7)),
                )
              : Text(card?.title ?? '', maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: title),
        ),
        if (reserveSpace || (card != null && card.subtitle.isNotEmpty)) ...[
          const SizedBox(height: AppTokens.space2),
          SizedBox(
            height: reserveSpace ? lines(subtitle, 1) : null,
            child: card == null && reserveSpace
                ? Align(
                    alignment: Alignment.center,
                    child: FractionallySizedBox(widthFactor: 0.4, child: ZpShimmer(height: lines(subtitle, 1) * 0.7)),
                  )
                : Text(card?.subtitle ?? '', maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: subtitle),
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
    final card = ref.watch(siteStateControllerProvider.select((s) => s.focusCard));
    final noCards = ref.watch(siteStateControllerProvider.select((s) => s.noCards));
    final controller = ref.read(remoteControllerProvider);
    final muted = AppText.body.copyWith(color: context.tokens.inkMuted);

    // Same height with or without a card: the d-pad never jumps. No card
    // yet: the page is still loading, so the card shimmers.
    final cardView = VideoCardView(card: card, maxThumbnailHeight: 196, reserveSpace: true);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // An empty page (no downloads, empty playlist): no card box, just
        // the message, in the card's space.
        if (card == null && noCards)
          Stack(
            alignment: Alignment.center,
            children: [
              Visibility(visible: false, maintainSize: true, maintainAnimation: true, maintainState: true, child: cardView),
              Text('There are no videos on this page.', textAlign: TextAlign.center, style: muted),
            ],
          )
        else
          cardView,
        const SizedBox(height: AppTokens.space6),
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
                        child: ZpDirButton(icon: Icons.chevron_left_rounded, semanticLabel: 'Left', onPressed: () => controller.nav(NavDirection.left)),
                      ),
                      const SizedBox(width: AppTokens.space2),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: ZpDirButton(icon: Icons.keyboard_arrow_up_rounded, semanticLabel: 'Up', onPressed: () => controller.nav(NavDirection.up)),
                            ),
                            const SizedBox(height: AppTokens.space2),
                            Expanded(
                              child: ZpDirButton(icon: Icons.keyboard_arrow_down_rounded, semanticLabel: 'Down', onPressed: () => controller.nav(NavDirection.down)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: AppTokens.space2),
                      Expanded(
                        child: ZpDirButton(icon: Icons.chevron_right_rounded, semanticLabel: 'Right', onPressed: () => controller.nav(NavDirection.right)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppTokens.space3),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ZpDirButton(label: 'Play', filled: true, onPressed: controller.navSelect),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// Connected, but the target tab has no video: the empty state in the middle,
/// the supported sites along the bottom. Needs a bounded height.
class NothingPlayingView extends ConsumerWidget {
  const NothingPlayingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: ZpEmptyState(
              icon: Icons.graphic_eq_rounded,
              title: 'Nothing playing',
              message: 'No video is playing right now. Pick another tab, or paste a video link.',
              actions: [
                ZpButton(label: 'Pick a tab', expand: false, height: AppTokens.controlMd, icon: const ZpImageIcon('assets/images/ic_tabs.svg'), onPressed: () => context.go(AppRoutes.tabs)),
                ZpButton(label: 'Paste a link', expand: false, height: AppTokens.controlMd, icon: const ZpImageIcon('assets/images/export.svg'), onPressed: () => showLinkPanel(context, ref)),
              ],
            ),
          ),
        ),
        const _SiteStrip(),
      ],
    );
  }
}

/// "Open one of these to start" (`.za-sites`): the supported sites in the
/// user's order, scrolling sideways. A tap opens the site in the browser.
class _SiteStrip extends ConsumerWidget {
  const _SiteStrip();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.tokens;
    final order = watchSiteOrder(ref);
    final side = context.isTablet ? AppTokens.space8 : AppTokens.space4;

    return Padding(
      padding: const EdgeInsets.only(bottom: AppTokens.space3),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: side),
            child: Text(
              'Open one of these to start',
              textAlign: TextAlign.center,
              style: AppText.label.copyWith(fontSize: 14, color: t.inkMuted),
            ),
          ),
          const SizedBox(height: AppTokens.space3),
          // A Row in a scroll view (not a ListView) so the page can measure it.
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: side),
            child: Row(
              children: [
                for (final (i, site) in order.indexed) ...[if (i > 0) const SizedBox(width: AppTokens.space3), _SiteItem(site: site, onTap: () => openSiteHome(ref, site))],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SiteItem extends StatelessWidget {
  const _SiteItem({required this.site, required this.onTap});

  final Site site;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: 'Open ${site.displayName}',
      excludeSemantics: true,
      child: ZpPressable(
        onTap: onTap,
        builder: (context, pressed) => SizedBox(
          width: 72,
          child: Column(
            children: [
              ZpSiteLogo(site: site),
              const SizedBox(height: AppTokens.space2),
              Text(
                site.displayName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppText.caption.copyWith(fontSize: 13, color: context.tokens.ink),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
