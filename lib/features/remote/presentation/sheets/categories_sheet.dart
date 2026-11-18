import 'package:zappit/core/firebase/user_settings_repository.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/purchase/pro_sheet.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/remote/controllers/netflix_categories.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/core/barrel_files/localization.dart';

/// Netflix genres with a search field. Like More → Supported sites:
/// Favorites on top in the user's order (touch and hold, or drag the grip, to
/// reorder), every genre below A → Z. The star adds a genre to the end of
/// Favorites or takes it out (with Undo). A tap on a row opens its genre page
/// in the browser and closes the sheet.
Future<void> showCategoriesSheet(BuildContext context) {
  return showProSheet<void>(context, title: S.of(context).categories, scrollable: false, builder: (_) => const _CategoriesView());
}

class _CategoriesView extends ConsumerStatefulWidget {
  const _CategoriesView();

  @override
  ConsumerState<_CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends ConsumerState<_CategoriesView> {
  final _query = TextEditingController();
  final _lang = netflixCategoryLanguage();

  @override
  void dispose() {
    _query.dispose();
    super.dispose();
  }

  void _pick(NetflixCategory c) {
    ref.read(remoteControllerProvider).goGenre(c.code);
    Navigator.of(context).maybePop();
  }

  List<int> get _favoriteCodes => ref.read(userSettingsControllerProvider).favoriteCategories;

  void _setFavorites(List<int> codes) => ref.read(userSettingsControllerProvider.notifier).setFavoriteCategories(codes);

  void _add(NetflixCategory c) {
    final now = _favoriteCodes;
    if (!now.contains(c.code)) _setFavorites([...now, c.code]);
  }

  void _remove(NetflixCategory c) {
    final now = _favoriteCodes;
    final index = now.indexOf(c.code);
    if (index < 0) return;
    _setFavorites([...now]..removeAt(index));
    final s = S.of(context);
    AppNotice.snack(
      s.removedFromFavorites(c.nameIn(_lang)),
      actionLabel: s.undo,
      // Back where it was, unless the user put it back already.
      onAction: () {
        final later = _favoriteCodes;
        if (later.contains(c.code)) return;
        _setFavorites([...later]..insert(index.clamp(0, later.length), c.code));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final s = S.of(context);
    final groups = ref.watch(netflixCategoriesProvider).value;
    final favoriteCodes = ref.watch(userSettingsControllerProvider.select((v) => v.favoriteCategories));
    final query = _query.text.trim();

    final all = groups == null ? const <NetflixCategory>[] : allNetflixCategories(groups, _lang);
    final byCode = {for (final c in all) c.code: c};
    // Codes the data no longer has are skipped (kept in the saved list).
    final favorites = [for (final code in favoriteCodes) ?byCode[code]];
    final results = groups == null || query.isEmpty ? null : searchNetflixCategories(groups, query, _lang);

    Widget row(NetflixCategory c, {required bool first, required bool last, int? reorderIndex}) {
      final favorite = favoriteCodes.contains(c.code);
      return _CategoryRow(
        key: ValueKey(c.code),
        name: c.nameIn(_lang),
        favorite: favorite,
        first: first,
        last: last,
        reorderIndex: reorderIndex,
        onTap: () => _pick(c),
        onStar: () => favorite ? _remove(c) : _add(c),
      );
    }

    final card = BoxDecoration(
      color: t.surface100,
      borderRadius: BorderRadius.circular(AppTokens.radiusMd),
      border: Border.all(color: t.hairline),
    );

    SliverList listOf(List<NetflixCategory> items) => SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, i) => row(items[i], first: i == 0, last: i == items.length - 1),
    );

    return Column(
      children: [
        Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: AppTokens.space3),
          decoration: BoxDecoration(
            color: t.surface200,
            borderRadius: BorderRadius.circular(AppTokens.radiusSm),
            border: Border.all(color: t.hairlineStrong),
          ),
          child: Row(
            children: [
              Icon(Icons.search_rounded, color: t.inkMuted),
              const SizedBox(width: AppTokens.space2),
              Expanded(
                child: TextField(
                  controller: _query,
                  textInputAction: TextInputAction.search,
                  autocorrect: false,
                  onChanged: (_) => setState(() {}),
                  style: AppText.body.copyWith(color: t.ink),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: false,
                    isDense: true,
                    hintText: s.searchCategories,
                    hintStyle: AppText.body.copyWith(color: t.inkMuted),
                  ),
                ),
              ),
              if (query.isNotEmpty)
                IconButton(
                  onPressed: () => setState(_query.clear),
                  tooltip: s.clear,
                  icon: Icon(Icons.close_rounded, color: t.inkMuted, size: 20),
                ),
            ],
          ),
        ),
        const SizedBox(height: AppTokens.space2),
        Expanded(
          child: groups == null
              ? Center(child: CircularProgressIndicator(strokeWidth: 2, color: t.inkMuted))
              : results != null && results.isEmpty
              ? Center(child: Text(s.noCategoriesFound, style: AppText.body.copyWith(color: t.inkMuted)))
              : CustomScrollView(
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  slivers: [
                    if (results != null) ...[
                      const SliverToBoxAdapter(child: SizedBox(height: AppTokens.space3)),
                      DecoratedSliver(decoration: card, sliver: listOf(results)),
                    ] else ...[
                      const SliverToBoxAdapter(child: SizedBox(height: AppTokens.space3)),
                      SliverToBoxAdapter(child: ZpSectionTitle(s.favorites)),
                      if (favorites.isEmpty)
                        SliverToBoxAdapter(
                          child: Container(
                            padding: const EdgeInsets.all(AppTokens.space4),
                            decoration: card,
                            child: Text(s.categoryFavoritesEmptyHint, textAlign: TextAlign.center, style: AppText.body.copyWith(color: t.inkMuted)),
                          ),
                        )
                      else ...[
                        DecoratedSliver(
                          decoration: card,
                          sliver: SliverReorderableList(
                            itemCount: favorites.length,
                            onReorderItem: (from, to) {
                              final next = [for (final c in favorites) c.code];
                              next.insert(to, next.removeAt(from));
                              _setFavorites(next);
                            },
                            proxyDecorator: (child, _, _) => Material(color: t.surface200, elevation: 6, shadowColor: Colors.black, borderRadius: BorderRadius.circular(AppTokens.radiusSm), child: child),
                            itemBuilder: (context, i) => ReorderableDelayedDragStartListener(
                              key: ValueKey(favorites[i].code),
                              index: i,
                              child: row(favorites[i], first: i == 0, last: i == favorites.length - 1, reorderIndex: i),
                            ),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(AppTokens.space4, AppTokens.space3, AppTokens.space4, 0),
                            child: Text(s.reorderHint, textAlign: TextAlign.center, style: AppText.label.copyWith(color: t.inkMuted)),
                          ),
                        ),
                      ],
                      const SliverToBoxAdapter(child: SizedBox(height: AppTokens.space6)),
                      SliverToBoxAdapter(child: ZpSectionTitle(s.allCategories)),
                      DecoratedSliver(decoration: card, sliver: listOf(all)),
                    ],
                    SliverToBoxAdapter(child: SizedBox(height: AppTokens.space6 + MediaQuery.viewInsetsOf(context).bottom)),
                  ],
                ),
        ),
      ],
    );
  }
}

/// Name, star, and the grip on Favorites rows (Supported sites' row without
/// the logo). A hairline above every row but the first.
class _CategoryRow extends StatelessWidget {
  const _CategoryRow({
    super.key,
    required this.name,
    required this.favorite,
    required this.onTap,
    required this.onStar,
    this.first = false,
    this.last = false,
    this.reorderIndex,
  });

  final String name;
  final bool favorite;
  final bool first;
  final bool last;

  /// Position in Favorites: shows the grip. Null in the other lists.
  final int? reorderIndex;
  final VoidCallback onTap;
  final VoidCallback onStar;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final s = S.of(context);
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
        constraints: const BoxConstraints(minHeight: 56),
        padding: EdgeInsets.fromLTRB(AppTokens.space4, 0, index == null ? AppTokens.space2 : 0, 0),
        decoration: BoxDecoration(
          color: pressed ? t.surface200 : Colors.transparent,
          borderRadius: radius,
          border: first ? null : Border(top: BorderSide(color: t.hairline)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(name, style: AppText.body.copyWith(color: t.ink)),
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
