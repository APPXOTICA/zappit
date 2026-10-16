import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/remote/controllers/chapters_controller.dart';
import 'package:zappit/features/remote/controllers/playback_controller.dart';
import 'package:zappit/features/remote/controllers/playback_math.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

Future<void> showChaptersSheet(BuildContext context, WidgetRef ref) {
  return ZpSheet.show<void>(
    context,
    title: 'Chapters',
    builder: (sheetContext) => ChapterListView(onPicked: () => Navigator.of(sheetContext).maybePop()),
  );
}

/// Chapter rows; the current one is told by colour. Tapping jumps there.
/// [inline] is the tablet block: fixed height, scrolls, keeps the current
/// chapter in view.
class ChapterListView extends ConsumerStatefulWidget {
  const ChapterListView({super.key, this.inline = false, this.onPicked});

  final bool inline;
  final VoidCallback? onPicked;

  @override
  ConsumerState<ChapterListView> createState() => _ChapterListState();
}

class _ChapterListState extends ConsumerState<ChapterListView> {
  final _scroll = ScrollController();
  int _lastIndex = -1;
  static const _rowHeight = 56.0;

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  void _keepVisible(int index) {
    if (index == _lastIndex) return;
    _lastIndex = index;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scroll.hasClients) return;
      final target = (index * _rowHeight - _rowHeight).clamp(0.0, _scroll.position.maxScrollExtent);
      _scroll.animateTo(target, duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final chapters = ref.watch(chaptersProvider).value ?? const <Chapter>[];
    final view = ref.watch(playbackControllerProvider);
    final controller = ref.read(remoteControllerProvider);
    final position = view.timeline.positionAt(DateTime.now().millisecondsSinceEpoch);
    final current = chapters.isEmpty ? -1 : Chapter.currentIndex(chapters, position);
    if (chapters.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(AppTokens.space6),
        child: Center(child: CircularProgressIndicator(strokeWidth: 2, color: t.inkMuted)),
      );
    }

    final rows = [
      for (var i = 0; i < chapters.length; i++)
        _ChapterRow(
          chapter: chapters[i],
          current: i == current,
          onTap: () {
            if (view.isAd) {
              AppNotice.snack("Chapters can't be skipped during an ad");
              return;
            }
            controller.seekToChapter(chapters[i]);
            widget.onPicked?.call();
          },
        ),
    ];

    if (!widget.inline) return ZpGroup(children: rows);

    _keepVisible(current);
    return ZpCluster(
      padding: const EdgeInsets.fromLTRB(8, 10, 8, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 6),
            child: Row(
              children: [
                Text('Chapters', style: AppText.bodyStrong.copyWith(color: t.ink)),
                const Spacer(),
                Text('${current + 1}/${chapters.length}', style: AppText.label.copyWith(color: t.inkMuted)),
              ],
            ),
          ),
          Container(
            height: 196,
            decoration: BoxDecoration(color: t.surface200, borderRadius: BorderRadius.circular(AppTokens.radiusMd)),
            clipBehavior: Clip.antiAlias,
            child: ListView.separated(
              controller: _scroll,
              itemCount: rows.length,
              separatorBuilder: (_, _) => Divider(height: 1, color: t.hairline),
              itemBuilder: (_, i) => rows[i],
            ),
          ),
        ],
      ),
    );
  }
}

class _ChapterRow extends StatelessWidget {
  const _ChapterRow({required this.chapter, required this.current, required this.onTap});

  final Chapter chapter;
  final bool current;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final color = current ? t.accentText : t.ink;
    return ZpPressable(
      onTap: onTap,
      scale: 1,
      builder: (context, pressed) => Container(
        constraints: const BoxConstraints(minHeight: 56),
        color: pressed ? t.surface300 : Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4, vertical: 6),
        child: Row(
          children: [
            SizedBox(
              width: 64,
              child: Text(
                PlaybackMath.formatTime(chapter.start),
                style: AppText.label.merge(AppText.tabular).copyWith(color: current ? t.accentText : t.inkMuted),
              ),
            ),
            Expanded(
              child: Text(
                chapter.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppText.body.copyWith(color: color, fontWeight: current ? FontWeight.w600 : FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
