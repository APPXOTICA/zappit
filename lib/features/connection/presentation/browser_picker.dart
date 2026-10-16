import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/firebase/session_repository.dart';
import 'package:zappit/core/realtime/zappit_channel.dart';
import 'package:zappit/core/utils/haptic_utils.dart';
import 'package:zappit/features/connection/connection_controller.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// List of online browsers. Picking one writes `session/{uid}/selectedInstanceId`.
class BrowserList extends ConsumerWidget {
  const BrowserList({super.key, this.onPicked, this.color});

  final VoidCallback? onPicked;
  final Color? color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(connectionStatusProvider);
    final browsers = status.browsers;
    if (browsers.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(AppTokens.space4),
        child: Text(
          'No browser is online.',
          style: AppText.body.copyWith(color: context.tokens.inkMuted),
        ),
      );
    }
    return ZpGroup(
      color: color,
      children: [
        for (final browser in browsers)
          ZpListRow(
            title: browser.label,
            subtitle: browser.targetTitle,
            minHeight: 64,
            selected: browser.instanceId == status.selected?.instanceId,
            showChevron: true,
            onTap: () => _pick(ref, browser),
          ),
      ],
    );
  }

  Future<void> _pick(WidgetRef ref, BrowserInstance browser) async {
    HapticUtils.hapticFeedback(HapticType.selection);
    await ref.read(sessionRepositoryProvider).select(browser.instanceId);
    onPicked?.call();
  }
}

/// Bottom sheet opened from the connection pill.
Future<void> showBrowserPicker(BuildContext context, WidgetRef ref) {
  ref.read(browserPresenceProvider.notifier).refresh();
  return ZpSheet.show<void>(
    context,
    title: 'Browsers',
    builder: (sheetContext) => Padding(
      padding: const EdgeInsets.only(top: AppTokens.space2),
      child: BrowserList(onPicked: () => Navigator.of(sheetContext).maybePop()),
    ),
  );
}
