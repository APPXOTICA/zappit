import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/firebase/session_repository.dart';
import 'package:zappit/features/pairing/pairing_service.dart';
import 'package:zappit/features/pairing/presentation/pair_page.dart';
import 'package:zappit/features/loading/presentation/pages/loading_page.dart';
import 'package:zappit/features/onboarding/presentation/pages/how_to_connect_page.dart';
import 'package:zappit/features/purchase/presentation/pages/pro_page.dart';
import 'package:zappit/features/remote/presentation/pages/remote_page.dart';
import 'package:zappit/features/settings/presentation/pages/more_page.dart';
import 'package:zappit/features/settings/presentation/pages/remote_settings_page.dart';
import 'package:zappit/features/shell/presentation/app_shell.dart';
import 'package:zappit/features/sites/presentation/supported_sites_page.dart';
import 'package:zappit/features/tabs/presentation/pages/tabs_page.dart';
import 'package:zappit/shared/widgets/web_view_page.dart';

part 'router_provider.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  final notifier = _RouteNotifier(ref);

  return GoRouter(
    initialLocation: AppRoutes.loading,
    navigatorKey: rootNavigatorKey,
    refreshListenable: notifier,
    redirect: notifier.redirect,
    routes: [
      GoRoute(path: AppRoutes.loading, builder: (context, state) => const LoadingPage()),
      GoRoute(path: AppRoutes.pair, builder: (context, state) => const PairPage()),
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => AppShell(shell: shell),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(path: AppRoutes.remote, builder: (context, state) => const RemotePage()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: AppRoutes.tabs, builder: (context, state) => const TabsPage()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: AppRoutes.more, builder: (context, state) => const MorePage()),
          ]),
        ],
      ),
      GoRoute(
        path: AppRoutes.pro,
        parentNavigatorKey: rootNavigatorKey,
        pageBuilder: (context, state) => _push(state, const ProPage()),
      ),
      GoRoute(
        path: AppRoutes.remoteSettings,
        parentNavigatorKey: rootNavigatorKey,
        pageBuilder: (context, state) => _modal(state, const RemoteSettingsPage()),
      ),
      GoRoute(
        path: AppRoutes.howToConnect,
        parentNavigatorKey: rootNavigatorKey,
        pageBuilder: (context, state) => _push(state, const HowToConnectPage()),
      ),
      GoRoute(
        path: AppRoutes.supportedSites,
        parentNavigatorKey: rootNavigatorKey,
        pageBuilder: (context, state) => _push(state, const SupportedSitesPage()),
      ),
      GoRoute(
        path: AppRoutes.webView,
        parentNavigatorKey: rootNavigatorKey,
        pageBuilder: (context, state) {
          final args = state.extra is WebViewArgs ? state.extra! as WebViewArgs : null;
          return _modal(
            state,
            WebViewPage(
              title: args?.title ?? '',
              url: args?.url ?? state.uri.queryParameters['url'] ?? '',
            ),
          );
        },
      ),
    ],
  );
}

/// Pages above the tab shell. Back-button pages slide in from the right
/// (swipe back on iOS); close-button pages rise from the bottom.
Page<void> _push(GoRouterState state, Widget child) =>
    CupertinoPage(key: state.pageKey, name: state.name, child: child);

Page<void> _modal(GoRouterState state, Widget child) =>
    CupertinoPage(key: state.pageKey, name: state.name, fullscreenDialog: true, child: child);

class _RouteNotifier extends ChangeNotifier {
  _RouteNotifier(this.ref) {
    final uidSub = ref.listen(currentUidProvider, (_, _) => notifyListeners());
    final pairedSub = ref.listen(phonePairedProvider, (_, _) => notifyListeners());
    ref.onDispose(uidSub.close);
    ref.onDispose(pairedSub.close);
  }

  final Ref ref;

  String? redirect(BuildContext context, GoRouterState state) {
    final location = state.matchedLocation;
    // Null until the anonymous account and this phone's entry are known.
    final paired = ref.read(currentUidProvider) == null ? null : ref.read(phonePairedProvider).value;

    if (location == AppRoutes.loading) {
      return switch (paired) {
        null => null,
        true => AppRoutes.remote,
        false => AppRoutes.pair,
      };
    }
    // Not paired: the QR screen, and the pages it opens.
    const unpairedPages = {AppRoutes.pair, AppRoutes.webView, AppRoutes.howToConnect};
    if (paired == false && !unpairedPages.contains(location)) return AppRoutes.pair;
    if (paired == true && location == AppRoutes.pair) return AppRoutes.remote;
    return null;
  }
}
