import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';

part 'chapters_controller.g.dart';

/// Chapters of the current video. The extension says how many there are in
/// `state`; the list itself is fetched with `get_tracks` when there are 2+
/// and refetched when the video changes.
@Riverpod(keepAlive: true)
Future<List<Chapter>> chapters(Ref ref) async {
  final count = ref.watch(siteStateControllerProvider.select((s) => s.chapterCount));
  final tabId = ref.watch(targetProvider.select((t) => t?.tabId));
  // The title identifies the video; watching it refetches on change.
  ref.watch(targetProvider.select((t) => t?.title));
  if (count < 2 || tabId == null) return const [];
  return ref.read(remoteControllerProvider).fetchChapters();
}

/// Netflix episodes for the current series; fetched on demand (sheet open,
/// tablet block) and when the episode changes.
@Riverpod(keepAlive: true)
Future<EpisodeList?> episodes(Ref ref) async {
  final isSeries = ref.watch(siteStateControllerProvider.select((s) => s.isSeries));
  ref.watch(targetProvider.select((t) => t?.title));
  if (!isSeries) return null;
  return ref.read(remoteControllerProvider).fetchEpisodes();
}
