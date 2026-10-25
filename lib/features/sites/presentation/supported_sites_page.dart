import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/firebase/user_settings_repository.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/features/sites/supported_sites.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// More → Supported sites: the sites with a dedicated remote. Touch and hold
/// (or drag the grip) to reorder; tap to open the site in the browser.
class SupportedSitesPage extends ConsumerWidget {
  const SupportedSitesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.tokens;
    final order = watchSiteOrder(ref);

    return Scaffold(
      backgroundColor: t.bgBase,
      appBar: AppBar(title: const Text('Supported sites')),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: AppTokens.contentMaxWidth + 32),
            child: ListView(
              padding: const EdgeInsets.all(AppTokens.space4),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4),
                  child: Text("Zappit's remote is optimized for these websites.", style: AppText.body.copyWith(fontSize: 16, height: 1.4, color: t.inkMuted)),
                ),
                const SizedBox(height: AppTokens.space4),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: t.surface100,
                    borderRadius: BorderRadius.circular(AppTokens.radiusMd),
                    border: Border.all(color: t.hairline),
                  ),
                  child: ReorderableListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: order.length,
                    onReorderItem: (from, to) {
                      final next = [...order];
                      next.insert(to, next.removeAt(from));
                      ref.read(userSettingsControllerProvider.notifier).setSiteOrder(next);
                    },
                    proxyDecorator: (child, _, _) => Material(color: t.surface200, elevation: 6, shadowColor: Colors.black, borderRadius: BorderRadius.circular(AppTokens.radiusSm), child: child),
                    itemBuilder: (context, i) => _SiteRow(
                      key: ValueKey(order[i]),
                      site: order[i],
                      index: i,
                      onTap: () {
                        openSiteHome(ref, order[i]);
                        context.go(AppRoutes.remote);
                      },
                    ),
                  ),
                ),
                const SizedBox(height: AppTokens.space4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4),
                  child: Text('Touch and hold a site, then drag to reorder. The same order is used in "Open one of these to start".', style: AppText.label.copyWith(color: t.inkMuted)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// `.za-ss-row`: logo, name, grip. A hairline above every row but the first.
class _SiteRow extends StatelessWidget {
  const _SiteRow({super.key, required this.site, required this.index, required this.onTap});

  final Site site;
  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return ZpPressable(
      onTap: onTap,
      scale: 1,
      builder: (context, pressed) => Container(
        constraints: const BoxConstraints(minHeight: 64),
        padding: const EdgeInsets.fromLTRB(AppTokens.space4, 0, AppTokens.space2, 0),
        decoration: BoxDecoration(
          color: pressed ? t.surface200 : Colors.transparent,
          border: index > 0 ? Border(top: BorderSide(color: t.hairline)) : null,
        ),
        child: Row(
          children: [
            ZpSiteLogo(site: site, size: 40),
            const SizedBox(width: AppTokens.space3),
            Expanded(
              child: Text(
                site.displayName,
                style: AppText.button.copyWith(fontWeight: FontWeight.w500, color: t.ink),
              ),
            ),
            // The grip drags right away; elsewhere on the row, touch and hold.
            ReorderableDragStartListener(
              index: index,
              child: Semantics(
                label: 'Reorder ${site.displayName}',
                child: SizedBox(
                  width: AppTokens.targetMin,
                  height: AppTokens.targetMin,
                  child: Icon(Icons.drag_handle_rounded, color: t.inkMuted),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
