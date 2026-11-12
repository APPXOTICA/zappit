import 'package:zappit/features/purchase/pro_sheet.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/core/barrel_files/localization.dart';

/// Caption language. Tapping a track applies it and closes the sheet.
Future<void> showSubtitleSheet(BuildContext context, WidgetRef ref) {
  return showProSheet<void>(context, title: S.of(context).captions, builder: (_) => const _SubtitleTracks());
}

class _SubtitleTracks extends ConsumerWidget {
  const _SubtitleTracks();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subtitle = ref.watch(siteStateControllerProvider.select((s) => s.subtitle));
    final controller = ref.read(remoteControllerProvider);
    return ZpGroup(
      children: [
        for (final track in subtitle.tracks)
          ZpListRow(
            title: track.label,
            centered: true,
            selected: subtitle.enabled && track.id == subtitle.currentTrackId,
            onTap: () {
              controller.setSubtitleTrack(track.id);
              Navigator.of(context).maybePop();
            },
          ),
      ],
    );
  }
}
