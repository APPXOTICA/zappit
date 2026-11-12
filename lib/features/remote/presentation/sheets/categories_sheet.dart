import 'package:zappit/features/purchase/pro_sheet.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/remote/controllers/netflix_categories.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/core/barrel_files/localization.dart';

/// Netflix genres, grouped, with a search field. Picking one opens its genre
/// page in the browser and closes the sheet.
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

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final groups = ref.watch(netflixCategoriesProvider).value;
    final query = _query.text.trim();

    // Rows: a group title (String) or a genre. The group is a genre too and
    // comes first in it.
    final rows = <Object>[];
    if (groups != null) {
      if (query.isEmpty) {
        for (final g in groups) {
          rows
            ..add(g.genre.nameIn(_lang))
            ..add(g.genre)
            ..addAll(g.items.where((c) => c.code != g.genre.code));
        }
      } else {
        rows.addAll(searchNetflixCategories(groups, query, _lang));
      }
    }

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
                    hintText: S.of(context).searchCategories,
                    hintStyle: AppText.body.copyWith(color: t.inkMuted),
                  ),
                ),
              ),
              if (query.isNotEmpty)
                IconButton(
                  onPressed: () => setState(_query.clear),
                  tooltip: S.of(context).clear,
                  icon: Icon(Icons.close_rounded, color: t.inkMuted, size: 20),
                ),
            ],
          ),
        ),
        const SizedBox(height: AppTokens.space2),
        Expanded(
          child: groups == null
              ? Center(child: CircularProgressIndicator(strokeWidth: 2, color: t.inkMuted))
              : rows.isEmpty
              ? Center(child: Text(S.of(context).noCategoriesFound, style: AppText.body.copyWith(color: t.inkMuted)))
              : ListView.builder(
                  padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  itemCount: rows.length,
                  itemBuilder: (context, i) => switch (rows[i]) {
                    final String title => Padding(
                      padding: EdgeInsets.only(top: i == 0 ? AppTokens.space3 : AppTokens.space6),
                      // Accent colour: tells the group titles from the genre rows.
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(AppTokens.space4, 0, 0, AppTokens.space2),
                        child: Text(title.toUpperCase(), style: AppText.section.copyWith(color: t.accentText)),
                      ),
                    ),
                    final NetflixCategory c => ZpListRow(title: c.nameIn(_lang), onTap: () => _pick(c)),
                    _ => const SizedBox.shrink(),
                  },
                ),
        ),
      ],
    );
  }
}
