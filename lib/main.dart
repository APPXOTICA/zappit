import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/strings.dart';
import 'package:zappit/core/routes/router_provider.dart';
import 'package:zappit/core/services/service_locator.dart';
import 'package:zappit/core/storage/preferences.dart';
import 'package:zappit/core/theme/theme.dart';
import 'package:zappit/core/utils/ui_helper.dart';
import 'package:zappit/features/loading/presentation/pages/loading_page.dart';
import 'package:zappit/firebase_options.dart';
import 'package:zappit/generated/l10n.dart';
import 'package:zappit/shared/providers/initializer_provider.dart';
import 'package:zappit/shared/widgets/activity_indicator_overlay.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  registerSingletons();

  if (kReleaseMode) {
    debugPrint = (String? message, {int? wrapWidth}) {};
  }

  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: const Zappit(),
    ),
  );
}

class Zappit extends ConsumerWidget {
  const Zappit({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(routerProvider),
      title: Strings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      scaffoldMessengerKey: scaffoldKey,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      builder: (context, child) => Stack(
        children: [
          _EagerInitialization(
            child: child ?? const SizedBox.shrink(),
          ),
          const ActivityIndicatorOverlay(),
        ],
      ),
    );
  }
}

class _EagerInitialization extends ConsumerWidget {
  const _EagerInitialization({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initializerAsync = ref.watch(initializerProvider);

    if (initializerAsync.isLoading) {
      return const LoadingPage();
    } else if (initializerAsync.hasError) {
      return ErrorWidget(initializerAsync.error.toString());
    }
    return child;
  }
}


