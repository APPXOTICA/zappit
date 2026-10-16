import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zappit/core/analytics/analytics.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/strings.dart';
import 'package:zappit/core/firebase/session_repository.dart';
import 'package:zappit/core/firebase/user_settings_repository.dart';
import 'package:zappit/core/routes/router_provider.dart';
import 'package:zappit/core/services/service_locator.dart';
import 'package:zappit/core/storage/preferences.dart';
import 'package:zappit/core/theme/theme.dart';
import 'package:zappit/core/utils/ui_helper.dart';
import 'package:zappit/features/loading/presentation/pages/loading_page.dart';
import 'package:zappit/features/share_intent/share_intent_controller.dart';
import 'package:zappit/features/voice/voice_command_service.dart';
import 'package:zappit/firebase_options.dart';
import 'package:zappit/generated/l10n.dart';
import 'package:zappit/shared/providers/initializer_provider.dart';
import 'package:zappit/shared/widgets/activity_indicator_overlay.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Portrait only; upside down is allowed (UI Strategies).
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  registerSingletons();

  if (kReleaseMode) {
    debugPrint = (String? message, {int? wrapWidth}) {};
  }

  final sharedPreferences = await SharedPreferences.getInstance();
  unawaited(Analytics.init());

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
      theme: darkTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
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
          _EagerInitialization(child: child ?? const SizedBox.shrink()),
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

    if (initializerAsync.isLoading) return const LoadingPage();
    if (initializerAsync.hasError) return ErrorWidget(initializerAsync.error.toString());

    return _AppServices(child: child);
  }
}

/// Starts app-wide listeners once the app is initialised.
class _AppServices extends ConsumerStatefulWidget {
  const _AppServices({required this.child});

  final Widget child;

  @override
  ConsumerState<_AppServices> createState() => _AppServicesState();
}

class _AppServicesState extends ConsumerState<_AppServices> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    ref.listenManual(currentUidProvider, (previous, uid) {
      if (uid != null) {
        unawaited(Analytics.identify(uid));
      } else if (previous != null) {
        unawaited(Analytics.reset());
      }
    }, fireImmediately: true);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  /// Voice Control listens only in the foreground with the toggle on.
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final voice = ref.read(voiceCommandServiceProvider);
    if (state == AppLifecycleState.resumed && ref.read(userSettingsControllerProvider).voiceControl) {
      unawaited(voice.start());
    } else if (state == AppLifecycleState.paused) {
      unawaited(voice.stop());
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(shareIntentControllerProvider);

    ref.listen(userSettingsControllerProvider.select((s) => s.voiceControl), (_, on) {
      final voice = ref.read(voiceCommandServiceProvider);
      unawaited(on ? voice.start() : voice.stop());
    });

    return widget.child;
  }
}
