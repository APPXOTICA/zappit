import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/features/auth/data/models/auth_state.dart';
import 'package:zappit/features/auth/presentation/controllers/auth_state_provider.dart';
import 'package:zappit/features/auth/presentation/pages/login_page.dart';
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
      GoRoute(path: AppRoutes.login, builder: (context, state) => const LoginPage()),
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
    final sub = ref.listen<AuthenticationState>(authStateProvider, (_, _) => notifyListeners());
    ref.onDispose(sub.close);
  }

  final Ref ref;

  String? redirect(BuildContext context, GoRouterState state) {
    final location = state.matchedLocation;
    final authenticated = ref.read(authStateProvider) is AuthStateAuthenticated;

    if (location == AppRoutes.loading) {
      return authenticated ? AppRoutes.remote : AppRoutes.login;
    }
    if (!authenticated && location != AppRoutes.login && location != AppRoutes.webView) {
      return AppRoutes.login;
    }
    if (authenticated && location == AppRoutes.login) return AppRoutes.remote;
    return null;
  }
}
