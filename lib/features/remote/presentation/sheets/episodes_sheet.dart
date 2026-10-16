import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/remote/controllers/chapters_controller.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

Future<void> showEpisodesSheet(BuildContext context, WidgetRef ref) {
  ref.invalidate(episodesProvider);
  return ZpSheet.show<void>(
    context,
    title: 'Episodes',
    builder: (sheetContext) => EpisodeListView(onPicked: () => Navigator.of(sheetContext).maybePop()),
  );
}

/// Season pills (only with 2+ seasons) and the episode list. Tapping an
/// episode plays it. [inline] is the tablet Episode block.
class EpisodeListView extends ConsumerStatefulWidget {
  const EpisodeListView({super.key, this.inline = false, this.onPicked});

  final bool inline;
  final VoidCallback? onPicked;

  @override
  ConsumerState<EpisodeListView> createState() => _EpisodeListState();
}

class _EpisodeListState extends ConsumerState<EpisodeListView> {
  int? _season;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final async = ref.watch(episodesProvider);
    final list = async.value;
    final controller = ref.read(remoteControllerProvider);

    if (list == null || list.seasons.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(AppTokens.space6),
        child: Center(
          child: async.isLoading
              ? CircularProgressIndicator(strokeWidth: 2, color: t.inkMuted)
              : Text("Couldn't load episodes", style: AppText.body.copyWith(color: t.inkMuted)),
        ),
      );
    }

    final seasonIndex = (_season ?? list.currentSeasonIndex).clamp(0, list.seasons.length - 1);
    final season = list.seasons[seasonIndex];

    final rows = [
      for (final episode in season.episodes)
        ZpListRow(
          title: '${episode.number}. ${episode.title}',
          subtitle: [
            if (episode.id == list.currentEpisodeId) 'Watching',
            if (episode.durationSec != null) '${(episode.durationSec! / 60).round()} min',
          ].join(' · '),
          minHeight: widget.inline ? 48 : 56,
          selected: episode.id == list.currentEpisodeId,
          onTap: () {
            controller.playEpisode(episode.id);
            widget.onPicked?.call();
          },
        ),
    ];

    final content = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (list.seasons.length > 1) ...[
          SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: list.seasons.length,
              separatorBuilder: (_, _) => const SizedBox(width: AppTokens.space2),
              itemBuilder: (_, i) => ZpPill(
                label: list.seasons[i].title,
                selected: i == seasonIndex,
                onTap: () => setState(() => _season = i),
              ),
            ),
          ),
          const SizedBox(height: AppTokens.space3),
        ],
        if (widget.inline)
          SizedBox(
            height: 148,
            child: SingleChildScrollView(child: ZpGroup(color: t.surface200, children: rows)),
          )
        else
          ZpGroup(children: rows),
      ],
    );

    if (!widget.inline) return content;
    return ZpCluster(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10), child: content);
  }
}
