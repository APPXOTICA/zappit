import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/firebase/user_settings_repository.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/sites/supported_sites.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/shared/l10n/site_label.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// More → Supported sites. Favorites on top in the user's order (touch and
/// hold, or drag the grip, to reorder); every site below, A → Z. The star
/// adds a site to the end of Favorites or takes it out (with Undo). A tap on
/// a row opens the site in the browser. Built from slivers so a long list of
/// sites only builds the rows on screen.
class SupportedSitesPage extends ConsumerWidget {
  const SupportedSitesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.tokens;
    final s = S.of(context);
    final favorites = watchFavoriteSites(ref);
    final all = [...Site.supported]..sort((a, b) => a.label(s).toLowerCase().compareTo(b.label(s).toLowerCase()));
    final settings = ref.read(userSettingsControllerProvider.notifier);

    void open(Site site) {
      openSiteHome(ref, site);
      context.go(AppRoutes.remote);
    }

    void add(Site site) {
      final now = ref.read(userSettingsControllerProvider).favoriteSites;
      if (!now.contains(site)) settings.setFavoriteSites([...now, site]);
    }

    void remove(Site site) {
      final now = ref.read(userSettingsControllerProvider).favoriteSites;
      final index = now.indexOf(site);
      if (index < 0) return;
      settings.setFavoriteSites([...now]..removeAt(index));
      AppNotice.snack(
        s.removedFromFavorites(site.label(s)),
        actionLabel: s.undo,
        // Back where it was, unless the user put it back already.
        onAction: () {
          final later = ref.read(userSettingsControllerProvider).favoriteSites;
          if (later.contains(site)) return;
          settings.setFavoriteSites([...later]..insert(index.clamp(0, later.length), site));
        },
      );
    }

    final card = BoxDecoration(
      color: t.surface100,
      borderRadius: BorderRadius.circular(AppTokens.radiusMd),
      border: Border.all(color: t.hairline),
    );

    return Scaffold(
      backgroundColor: t.bgBase,
      appBar: AppBar(title: Text(s.supportedSites)),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: AppTokens.contentMaxWidth + 32),
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(AppTokens.space4, AppTokens.space4, AppTokens.space4, 0),
                  sliver: SliverList.list(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4),
                        child: Text(s.supportedSitesIntro, textAlign: TextAlign.center, style: AppText.body.copyWith(fontSize: 16, height: 1.4, color: t.inkMuted)),
                      ),
                      const SizedBox(height: AppTokens.space6),
                      ZpSectionTitle(s.favorites),
                      if (favorites.isEmpty)
                        Container(
                          padding: const EdgeInsets.all(AppTokens.space4),
                          decoration: card,
                          child: Text(s.favoritesEmptyHint, textAlign: TextAlign.center, style: AppText.body.copyWith(color: t.inkMuted)),
                        )
                      else ...[
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: card,
                          child: ReorderableListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: favorites.length,
                            onReorderItem: (from, to) {
                              final next = [...favorites];
                              next.insert(to, next.removeAt(from));
                              settings.setFavoriteSites(next);
                            },
                            proxyDecorator: (child, _, _) => Material(color: t.surface200, elevation: 6, shadowColor: Colors.black, borderRadius: BorderRadius.circular(AppTokens.radiusSm), child: child),
                            itemBuilder: (context, i) => _SiteRow(
                              key: ValueKey(favorites[i]),
                              site: favorites[i],
                              favorite: true,
                              first: i == 0,
                              reorderIndex: i,
                              onTap: () => open(favorites[i]),
                              onStar: () => remove(favorites[i]),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppTokens.space3),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4),
                          child: Text(s.reorderHint, textAlign: TextAlign.center, style: AppText.label.copyWith(color: t.inkMuted)),
                        ),
                      ],
                      const SizedBox(height: AppTokens.space6),
                      ZpSectionTitle(s.allSites),
                    ],
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(AppTokens.space4, 0, AppTokens.space4, AppTokens.space8),
                  sliver: DecoratedSliver(
                    decoration: card,
                    sliver: SliverList.builder(
                      itemCount: all.length,
                      itemBuilder: (context, i) {
                        final site = all[i];
                        final favorite = favorites.contains(site);
                        return _SiteRow(
                          key: ValueKey(site),
                          site: site,
                          favorite: favorite,
                          first: i == 0,
                          last: i == all.length - 1,
                          onTap: () => open(site),
                          onStar: () => favorite ? remove(site) : add(site),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// `.za-ss-row`: logo, name, star, and the grip on Favorites rows. A hairline
/// above every row but the first.
class _SiteRow extends StatelessWidget {
  const _SiteRow({
    super.key,
    required this.site,
    required this.favorite,
    required this.onTap,
    required this.onStar,
    this.first = false,
    this.last = false,
    this.reorderIndex,
  });

  final Site site;
  final bool favorite;
  final bool first;
  final bool last;

  /// Position in Favorites: shows the grip. Null in the list of all sites.
  final int? reorderIndex;
  final VoidCallback onTap;
  final VoidCallback onStar;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final s = S.of(context);
    final name = site.label(s);
    final index = reorderIndex;
    // The card's rounded corners (a sliver list isn't clipped by it).
    final radius = BorderRadius.vertical(
      top: first ? const Radius.circular(AppTokens.radiusMd) : Radius.zero,
      bottom: last ? const Radius.circular(AppTokens.radiusMd) : Radius.zero,
    );
    return ZpPressable(
      onTap: onTap,
      scale: 1,
      builder: (context, pressed) => Container(
        constraints: const BoxConstraints(minHeight: 64),
        padding: EdgeInsets.fromLTRB(AppTokens.space4, 0, index == null ? AppTokens.space2 : 0, 0),
        decoration: BoxDecoration(
          color: pressed ? t.surface200 : Colors.transparent,
          borderRadius: radius,
          border: first ? null : Border(top: BorderSide(color: t.hairline)),
        ),
        child: Row(
          children: [
            ZpSiteLogo(site: site, size: 40),
            const SizedBox(width: AppTokens.space3),
            Expanded(
              child: Text(name, style: AppText.button.copyWith(fontWeight: FontWeight.w500, color: t.ink)),
            ),
            Semantics(
              button: true,
              label: favorite ? s.removeFromFavorites(name) : s.addToFavorites(name),
              excludeSemantics: true,
              child: IconButton(
                onPressed: onStar,
                icon: Icon(favorite ? Icons.star_rounded : Icons.star_outline_rounded, color: favorite ? t.accentText : t.inkMuted),
              ),
            ),
            // The grip drags right away; elsewhere on the row, touch and hold.
            if (index != null)
              ReorderableDragStartListener(
                index: index,
                child: Semantics(
                  label: s.reorderSite(name),
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
