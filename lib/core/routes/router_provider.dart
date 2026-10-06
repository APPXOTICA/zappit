import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/auth/data/models/auth_state.dart';
import 'package:zappit/features/auth/presentation/controllers/auth_state_provider.dart';
import 'package:zappit/features/auth/presentation/pages/login_page.dart';
import 'package:zappit/features/home/presentation/pages/home_page.dart';
import 'package:zappit/features/loading/presentation/pages/loading_page.dart';
import 'package:zappit/features/settings/presentation/pages/settings_page.dart';
import 'package:go_router/go_router.dart';

part 'router_provider.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final homeTabNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');

@riverpod
GoRouter router(Ref ref) {
  final router = RouteNotifier(ref);

  return GoRouter(
    initialLocation: '/loading',
    navigatorKey: rootNavigatorKey,
    refreshListenable: router,
    redirect: router._redirect,
    routes: router._routes,
  );
}

class RouteNotifier extends ChangeNotifier {
  final Ref ref;

  ProviderSubscription? _authSub;

  RouteNotifier(this.ref) {
    _authSub = ref.listen<AuthenticationState>(
      authStateProvider,
      (_, next) => notifyListeners(),
    );

    ref.onDispose(() {
      _authSub?.close();
    });
  }

  String? _redirect(BuildContext context, GoRouterState state) {
    final isOnLoadingScreen = state.matchedLocation == '/loading';
    final isOnLoginScreen = state.matchedLocation == '/login';

    final authState = ref.read(authStateProvider);
    final isAuthenticated = authState is AuthStateAuthenticated;

    if (isOnLoadingScreen) {
      return isAuthenticated ? '/home' : '/login';
    }

    if (!isAuthenticated && !isOnLoginScreen) {
      return '/login';
    } else if (isAuthenticated && isOnLoginScreen) {
      return '/home';
    }

    return null;
  }

  List<RouteBase> get _routes {
    return [
      GoRoute(
        name: 'loading',
        path: '/loading',
        builder: (context, state) => const LoadingPage(),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        name: 'home',
        path: '/home',
        builder: (context, state) => HomePage(),
        routes: [
          GoRoute(
            name: 'settings',
            path: 'settings',
            builder: (context, state) => SettingsPage(),
          ),
        ]
      ),
    ];
  }
}


