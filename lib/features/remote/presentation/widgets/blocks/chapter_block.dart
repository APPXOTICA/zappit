import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/remote/controllers/chapters_controller.dart';
import 'package:zappit/features/remote/controllers/playback_controller.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/presentation/sheets/chapters_sheet.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// YouTube chapters (2+): list · "Chapter 3/12" + name · previous · next.
/// Tablet shows the whole list inline instead.
class ChapterBlock extends ConsumerWidget {
  const ChapterBlock({super.key});

  static const _adMessage = "Chapters can't be skipped during an ad";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chapters = ref.watch(chaptersProvider).value ?? const <Chapter>[];
    if (chapters.length < 2) return const SizedBox.shrink();

    final t = context.tokens;
    final view = ref.watch(playbackControllerProvider);
    final controller = ref.read(remoteControllerProvider);
    final position = view.timeline.positionAt(DateTime.now().millisecondsSinceEpoch);
    final index = Chapter.currentIndex(chapters, position);
    final current = chapters[index];
    final isAd = view.isAd;
    final isLast = index == chapters.length - 1;

    if (context.isTablet) return const ChapterListView(inline: true);

    return ZpCluster(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Row(
        children: [
          ZpIconButton(
            semanticLabel: 'Chapters',
            onPressed: () => showChaptersSheet(context, ref),
            child: const Icon(Icons.format_list_bulleted_rounded, size: 28),
          ),
          const SizedBox(width: AppTokens.space2),
          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => showChaptersSheet(context, ref),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Chapter ${index + 1}/${chapters.length}',
                    style: AppText.label.copyWith(color: t.inkMuted, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    current.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppText.body.copyWith(fontSize: 15, height: 1.3, color: t.ink),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: AppTokens.space2),
          ZpIconButton(
            variant: ZpIconButtonVariant.outlined,
            semanticLabel: 'Previous chapter',
            onPressed: isAd ? null : () => controller.seekTo(Chapter.previousTarget(chapters, position)),
            onDisabledTap: () => AppNotice.snack(_adMessage),
            child: const Icon(Icons.skip_previous_rounded, size: 28),
          ),
          const SizedBox(width: AppTokens.space2),
          ZpIconButton(
            variant: ZpIconButtonVariant.outlined,
            semanticLabel: 'Next chapter',
            onPressed: isAd || isLast ? null : () => controller.seekTo(chapters[index + 1].start),
            onDisabledTap: isAd ? () => AppNotice.snack(_adMessage) : null,
            child: const Icon(Icons.skip_next_rounded, size: 28),
          ),
        ],
      ),
    );
  }
}
