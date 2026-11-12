import 'dart:async';

import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/routes/router_provider.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/purchase/pro_controller.dart';
import 'package:zappit/features/purchase/pro_preview.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/core/barrel_files/localization.dart';

/// [ZpSheet.show] for a Pro feature (captions, chapters, episodes, …). When
/// Pro ends while it's open (the preview runs out, the subscription expires)
/// the sheet closes and says why, instead of staying usable.
Future<T?> showProSheet<T>(BuildContext context, {required String title, required WidgetBuilder builder, bool scrollable = true}) {
  return ZpSheet.show<T>(context, title: title, scrollable: scrollable, builder: (context) => _ProSheetGuard(child: builder(context)));
}

class _ProSheetGuard extends ConsumerStatefulWidget {
  const _ProSheetGuard({required this.child});

  final Widget child;

  @override
  ConsumerState<_ProSheetGuard> createState() => _ProSheetGuardState();
}

class _ProSheetGuardState extends ConsumerState<_ProSheetGuard> {
  bool _closed = false;

  @override
  Widget build(BuildContext context) {
    ref.listen(proAccessProvider, (previous, pro) {
      if (pro || _closed) return;
      _closed = true;
      final previewEnded = !ref.read(proControllerProvider) && ref.read(proPreviewProvider).startedAt != null;
      final router = ref.read(routerProvider);
      Navigator.of(context).maybePop();
      // The preview's end shows its own popup. Otherwise a notice, so the
      // sheet doesn't seem to crash.
      if (previewEnded) return;
      Timer(const Duration(milliseconds: 400), () {
        if (router.routerDelegate.currentConfiguration.uri.path == AppRoutes.pro) return;
        AppNotice.top(
          title: getIt<S>().proSubscriptionEnded,
          message: getIt<S>().tapToKeepPro,
          icon: Icons.auto_awesome_rounded,
          error: false,
          onTap: () => router.push(AppRoutes.pro),
        );
      });
    });
    return widget.child;
  }
}
