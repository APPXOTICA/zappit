import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/remote/controllers/chapters_controller.dart';
import 'package:zappit/features/remote/controllers/playback_controller.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/presentation/sheets/chapters_sheet.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/core/barrel_files/localization.dart';

/// YouTube chapters (2+): list · "Chapter 3/12" + name · previous · next.
/// Tablet shows the whole list inline instead.
class ChapterBlock extends ConsumerWidget {
  const ChapterBlock({super.key});

  static String get _adMessage => getIt<S>().chaptersDuringAd;

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
            semanticLabel: S.of(context).chapters,
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
                    S.of(context).chapterPosition(index + 1, chapters.length),
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
            semanticLabel: S.of(context).previousChapter,
            onPressed: isAd ? null : () => controller.seekTo(Chapter.previousTarget(chapters, position)),
            onDisabledTap: () => AppNotice.snack(_adMessage),
            child: const Icon(Icons.skip_previous_rounded, size: 28),
          ),
          const SizedBox(width: AppTokens.space2),
          ZpIconButton(
            variant: ZpIconButtonVariant.outlined,
            semanticLabel: S.of(context).nextChapter,
            onPressed: isAd || isLast ? null : () => controller.seekTo(chapters[index + 1].start),
            onDisabledTap: isAd ? () => AppNotice.snack(_adMessage) : null,
            child: const Icon(Icons.skip_next_rounded, size: 28),
          ),
        ],
      ),
    );
  }
}
