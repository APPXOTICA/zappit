import 'package:extended_image/extended_image.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/purchase/pro_sheet.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/core/barrel_files/localization.dart';

/// The video's channel / creator above the title (capability `channel`,
/// Pro): avatar, name and subscribers (TikTok: nickname and @id).
/// YouTube and Shorts: a tap lists the channel's pages (only those it has,
/// once the extension knows them). TikTok and Reels: a tap opens the
/// creator's page right away (videos picked with the d-pad there). Picking
/// one opens it in the tab, and the remote becomes the d-pad (channel pages
/// are browse pages) until a video plays.
class ChannelButton extends ConsumerWidget {
  const ChannelButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final has = ref.watch(targetProvider.select((t) => t?.has(Capability.channel) ?? false));
    final direct = ref.watch(targetProvider.select((t) => t?.site.isSocialShortForm ?? false));
    final channel = ref.watch(siteStateControllerProvider.select((s) => s.channel));
    if (!has || channel == null) return const SizedBox.shrink();
    final t = context.tokens;

    return Padding(
      padding: const EdgeInsets.only(bottom: AppTokens.space2),
      child: Center(
        child: ZpPressable(
          onTap: direct ? () => ref.read(remoteControllerProvider).goChannel(ChannelTab.home) : () => _showChannelSheet(context, ref, channel),
          semanticLabel: S.of(context).channelLabel(channel.name),
          builder: (context, pressed) => Container(
            height: 52,
            constraints: const BoxConstraints(maxWidth: 320),
            padding: EdgeInsets.fromLTRB(6, 6, direct ? 18 : 14, 6),
            decoration: BoxDecoration(
              color: pressed ? t.surface200 : t.surface100,
              borderRadius: BorderRadius.circular(26),
              border: Border.all(color: t.hairlineStrong),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _Avatar(url: channel.avatar, size: 40),
                const SizedBox(width: 10),
                Flexible(child: _ChannelText(channel: channel)),
                if (!direct) ...[
                  const SizedBox(width: 8),
                  Icon(Icons.keyboard_arrow_down_rounded, size: 22, color: t.inkMuted),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ChannelText extends StatelessWidget {
  const _ChannelText({required this.channel});

  final ChannelInfo channel;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final subscribers = channel.subscribers ?? channel.handle;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(channel.name, maxLines: 1, overflow: TextOverflow.ellipsis, style: AppText.bodyStrong.copyWith(color: t.ink, height: 1.2)),
        if (subscribers != null && subscribers.isNotEmpty)
          Text(subscribers, maxLines: 1, overflow: TextOverflow.ellipsis, style: AppText.caption.copyWith(color: t.inkMuted)),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({required this.url, required this.size});

  final String? url;
  final double size;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final url = this.url;
    final placeholder = Icon(Icons.person_rounded, size: size * 0.6, color: t.inkMuted);
    return Container(
      width: size,
      height: size,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: t.surface300, shape: BoxShape.circle),
      alignment: Alignment.center,
      child: url != null && url.startsWith('https://')
          ? ExtendedImage.network(
              url,
              width: size,
              height: size,
              fit: BoxFit.cover,
              loadStateChanged: (state) => switch (state.extendedImageLoadState) {
                LoadState.loading => const SizedBox.shrink(),
                LoadState.failed => placeholder,
                LoadState.completed => null,
              },
            )
          : placeholder,
    );
  }
}

Future<void> _showChannelSheet(BuildContext context, WidgetRef ref, ChannelInfo channel) {
  final controller = ref.read(remoteControllerProvider);
  return showProSheet<void>(
    context,
    title: channel.name,
    builder: (sheetContext) => Consumer(
      builder: (context, ref, _) {
        // The tabs may arrive while the sheet is open.
        final tabs = ref.watch(siteStateControllerProvider.select((s) => s.channel?.tabs)) ?? channel.tabs ?? ChannelTab.values;
        return ZpGroup(
          children: [
            for (final tab in ChannelTab.values)
              if (tab == ChannelTab.home || tabs.contains(tab))
                ZpListRow(
                  title: _tabLabel(S.of(sheetContext), tab),
                  leading: _tabIcon(tab),
                  onTap: () {
                    Navigator.of(sheetContext).maybePop();
                    controller.goChannel(tab);
                  },
                ),
          ],
        );
      },
    ),
  );
}

String _tabLabel(S s, ChannelTab tab) => switch (tab) {
  ChannelTab.home => s.home,
  ChannelTab.videos => s.ytVideos,
  ChannelTab.shorts => s.ytShorts,
  ChannelTab.live => s.ytLive,
  ChannelTab.playlists => s.ytPlaylists,
};

Widget _tabIcon(ChannelTab tab) => switch (tab) {
  ChannelTab.home => const Icon(Icons.home_rounded, size: 24),
  ChannelTab.videos => const Icon(Icons.video_library_rounded, size: 24),
  ChannelTab.shorts => const ZpImageIcon('assets/images/shorts_gray.png', size: 24),
  ChannelTab.live => const ZpImageIcon('assets/images/live.png', size: 24),
  ChannelTab.playlists => const ZpImageIcon('assets/images/playlists.png', size: 24),
};
