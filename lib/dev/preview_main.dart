// Dev-only: renders app screens with fake data to compare with the design
// PNGs (zappit_assets/docs/design/screens). Not part of the real app.
//
//   flutter run -t lib/dev/preview_main.dart --dart-define=SCENARIO=main
//   or build once and write the scenario to tmp/scenario.txt in the app container
//
// Scenarios: main, ad, live, ab, upnext, pick, home, playlist, netflix, shorts, photo, web,
// disconnected, nobrowser, nothing, more, settings, pro, login, tabs, sleep, episodes.
import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/firebase/browser_tabs_repository.dart';
import 'package:zappit/core/firebase/session_repository.dart';
import 'package:zappit/core/firebase/user_settings_repository.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/routes/router_provider.dart';
import 'package:zappit/core/services/service_locator.dart';
import 'package:zappit/core/storage/preferences.dart';
import 'package:zappit/core/theme/theme.dart';
import 'package:zappit/core/utils/ui_helper.dart';
import 'package:zappit/features/auth/presentation/pages/login_page.dart';
import 'package:zappit/features/connection/connection_controller.dart';
import 'package:zappit/features/purchase/presentation/pages/pro_page.dart';
import 'package:zappit/features/purchase/pro_controller.dart';
import 'package:zappit/features/remote/controllers/chapters_controller.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/features/remote/presentation/pages/remote_page.dart';
import 'package:zappit/features/remote/presentation/sheets/episodes_sheet.dart';
import 'package:zappit/features/remote/presentation/sheets/sleep_timer_sheet.dart';
import 'package:zappit/features/settings/presentation/pages/more_page.dart';
import 'package:zappit/features/settings/presentation/pages/remote_settings_page.dart';
import 'package:zappit/features/shell/presentation/app_shell.dart';
import 'package:zappit/features/sites/presentation/supported_sites_page.dart';
import 'package:zappit/features/tabs/presentation/pages/tabs_page.dart';
import 'package:zappit/firebase_options.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/protocol.dart';

final scenario = _readScenario();

/// `tmp/scenario.txt` in the app container (written by the
/// screenshot script), else `--dart-define=SCENARIO=…`.
String _readScenario() {
  try {
    final file = File('${Directory.systemTemp.path}/scenario.txt');
    if (file.existsSync()) {
      final text = file.readAsStringSync().trim();
      if (text.isNotEmpty) return text;
    }
  } catch (_) {}
  return const String.fromEnvironment('SCENARIO', defaultValue: 'main');
}

const _chrome = BrowserInstance(instanceId: 'i1', browserName: 'Chrome', os: 'Mac', targetTitle: 'Lo-fi beats to study to — YouTube');
const _edge = BrowserInstance(instanceId: 'i2', browserName: 'Edge', os: 'Windows', targetTitle: 'Netflix');

const _ytCaps = {
  Capability.play, Capability.seek, Capability.speed, Capability.volume, Capability.replay, Capability.loop,
  Capability.abLoop, Capability.sleepTimer, Capability.theater, Capability.voiceBoost,
  Capability.chat, Capability.captions, Capability.chapters, Capability.skipAd, Capability.endScreen,
  Capability.home, Capability.openInApp, Capability.quality, Capability.spatialNav, Capability.browseMenu,
  Capability.playlist,
};
const _nfCaps = {
  Capability.play, Capability.seek, Capability.speed, Capability.volume, Capability.replay, Capability.loop,
  Capability.abLoop, Capability.sleepTimer, Capability.fullscreen, Capability.captions, Capability.episodes,
  Capability.nextEpisode, Capability.skipIntro, Capability.home, Capability.openInApp,
};
const _shortCaps = {
  Capability.play, Capability.seek, Capability.speed, Capability.volume, Capability.abLoop, Capability.sleepTimer,
  Capability.fullscreen, Capability.prevNext, Capability.openInApp, Capability.home, Capability.browseMenu,
};
const _tiktokCaps = {
  Capability.play, Capability.seek, Capability.speed, Capability.volume, Capability.abLoop, Capability.sleepTimer,
  Capability.fullscreen, Capability.prevNext, Capability.openInApp,
};
const _genericCaps = {
  Capability.play, Capability.seek, Capability.speed, Capability.volume, Capability.replay, Capability.loop,
  Capability.abLoop, Capability.sleepTimer, Capability.fullscreen,
};

const _subs = SubtitleState(
  available: true,
  enabled: true,
  currentTrackId: 'en',
  tracks: [SubtitleTrack(id: 'en', label: 'English'), SubtitleTrack(id: 'ko', label: '한국어')],
);

const _rainy = VideoCard(title: 'Rainy Tokyo night drive — 2 hour jazz for focus', channel: 'Night Owl Radio', duration: '2:04:18');

TargetInfo? _target() {
  final now = DateTime.now().millisecondsSinceEpoch;
  return switch (scenario) {
    'home' => TargetInfo(instanceId: 'i1', tabId: 1, site: Site.youtube, page: PageKind.home, hasMedia: false, capabilities: const {Capability.home, Capability.spatialNav, Capability.browseMenu}, timestamp: now),
    'netflix' || 'episodes' => TargetInfo(instanceId: 'i1', tabId: 1, site: Site.netflix, page: PageKind.watch, hasMedia: true, title: 'S2 · E4 — The Lighthouse Keeper', capabilities: _nfCaps, timestamp: now),
    'shorts' => TargetInfo(instanceId: 'i1', tabId: 1, site: Site.shorts, page: PageKind.watch, isShortForm: true, hasMedia: true, title: 'One-pan garlic noodles in 60 seconds', capabilities: _shortCaps, timestamp: now),
    'photo' => TargetInfo(instanceId: 'i1', tabId: 1, site: Site.tiktok, page: PageKind.watch, isShortForm: true, hasMedia: true, title: 'Autumn in Kyoto | TikTok', capabilities: _tiktokCaps, timestamp: now),
    'web' => TargetInfo(instanceId: 'i1', tabId: 1, site: Site.generic, page: PageKind.other, hasMedia: true, title: 'Field recording: Jeju coastline at dawn', capabilities: _genericCaps, timestamp: now),
    'nothing' => TargetInfo(instanceId: 'i1', tabId: 1, site: Site.generic, hasMedia: false, capabilities: _genericCaps, timestamp: now),
    _ => TargetInfo(instanceId: 'i1', tabId: 1, site: Site.youtube, page: PageKind.watch, hasMedia: true, title: 'Lo-fi beats to study to — 3 hour mix, rainy café edition', capabilities: _ytCaps, timestamp: now),
  };
}

SiteState _site() => switch (scenario) {
      'ad' => const SiteState(skipAd: true, voiceBoostAvailable: true, subtitle: _subs, chapterCount: 12),
      'live' => const SiteState(chatAvailable: true, chatVisible: true, voiceBoostAvailable: true, voiceBoostOn: true, subtitle: SubtitleState(available: true, sizePercent: 150, tracks: [SubtitleTrack(id: 'en', label: 'English')])),
      'upnext' => const SiteState(endScreenMode: EndScreenMode.upNext, endScreenCountdown: 8, endScreenCard: _rainy),
      'pick' => const SiteState(endScreenMode: EndScreenMode.pick, focusCard: VideoCard(title: 'Study with me — 4 hours, rain sounds', channel: 'Quiet Desk', duration: '4:00:12')),
      'home' => const SiteState(focusCard: _rainy),
      'playlist' => const SiteState(
          voiceBoostAvailable: true,
          subtitle: _subs,
          playlist: PlaylistState(available: true, title: 'Watch later', index: 2, count: 29, canShuffle: true, shuffle: true, canLoop: true, loop: true),
        ),
      'netflix' || 'episodes' => const SiteState(skipIntro: true, isSeries: true, nextEpisodeAvailable: true, subtitle: SubtitleState(available: true, enabled: true, sizePercent: 150, tracks: [SubtitleTrack(id: 'en', label: 'English')])),
      'shorts' || 'photo' || 'web' || 'nothing' => SiteState.empty,
      _ => const SiteState(voiceBoostAvailable: true, subtitle: _subs, chapterCount: 12),
    };

PlaybackSnapshot? _playback() {
  final now = DateTime.now().millisecondsSinceEpoch;
  return switch (scenario) {
    'home' || 'nothing' => null,
    'ad' => PlaybackSnapshot(source: 'i1:1', site: Site.youtube, currentTime: 1420, duration: 10800, paused: false, isAd: true, volume: 0.64, updatedAt: now),
    'live' => PlaybackSnapshot(source: 'i1:1', site: Site.youtube, currentTime: 5, duration: null, paused: false, volume: 0.72, sleepMode: SleepMode.timer, sleepEndsAt: now + 13 * 60000, updatedAt: now),
    'ab' => PlaybackSnapshot(source: 'i1:1', site: Site.youtube, currentTime: 1640, duration: 10800, paused: false, volume: 0.64, loopStart: 1500, loopEnd: 1900, loopLeft: 2, updatedAt: now),
    'netflix' || 'episodes' => PlaybackSnapshot(source: 'i1:1', site: Site.netflix, currentTime: 62, duration: 3104, paused: false, volume: 0.48, updatedAt: now),
    'shorts' => PlaybackSnapshot(source: 'i1:1', site: Site.shorts, currentTime: 23, duration: 58, paused: false, volume: 0.64, updatedAt: now),
    'photo' => PlaybackSnapshot(source: 'i1:1', site: Site.tiktok, kind: MediaKind.photo, updatedAt: now),
    'web' => PlaybackSnapshot(source: 'i1:1', site: Site.generic, currentTime: 312, duration: 1260, paused: false, volume: 0.8, updatedAt: now),
    _ => PlaybackSnapshot(source: 'i1:1', site: Site.youtube, currentTime: 1420, duration: 10800, paused: false, volume: 0.64, updatedAt: now),
  };
}

ConnectionStatus _connection() => switch (scenario) {
      'disconnected' => const ConnectionStatus(phase: ConnectionPhase.noBrowser),
      'nobrowser' => const ConnectionStatus(phase: ConnectionPhase.notSelected, browsers: [_chrome, _edge]),
      _ => const ConnectionStatus(phase: ConnectionPhase.connected, selected: _chrome, browsers: [_chrome]),
    };

class _FakeTarget extends Target {
  @override
  TargetInfo? build() => _target();
}

class _FakeSite extends SiteStateController {
  @override
  SiteState build() => _site();
}

class _FakePro extends ProController {
  @override
  bool build() => false;
}

class _FakeSettings extends UserSettingsController {
  @override
  UserSettings build() => const UserSettings();

  // Kept in memory: lets Supported sites be reordered in the preview.
  @override
  Future<void> update(UserSettings next) async => state = next;
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  registerSingletons();
  final prefs = await SharedPreferences.getInstance();
  // Shows the "Last used" pill on the login screen.
  if (scenario == 'login') await prefs.setString('lastLoginMethod', 'google');

  final initial = switch (scenario) {
    'more' => AppRoutes.more,
    'settings' => AppRoutes.remoteSettings,
    'pro' => AppRoutes.pro,
    'login' => AppRoutes.login,
    'tabs' => AppRoutes.tabs,
    'sites' => AppRoutes.supportedSites,
    _ => AppRoutes.remote,
  };

  final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: initial,
    routes: [
      GoRoute(path: AppRoutes.login, builder: (_, _) => const LoginPage()),
      GoRoute(path: AppRoutes.pro, builder: (_, _) => const ProPage()),
      GoRoute(path: AppRoutes.remoteSettings, builder: (_, _) => const RemoteSettingsPage()),
      GoRoute(path: AppRoutes.supportedSites, builder: (_, _) => const SupportedSitesPage()),
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => AppShell(shell: shell),
        branches: [
          StatefulShellBranch(routes: [GoRoute(path: AppRoutes.remote, builder: (_, _) => const _RemoteWithSheet())]),
          StatefulShellBranch(routes: [GoRoute(path: AppRoutes.tabs, builder: (_, _) => const TabsPage())]),
          StatefulShellBranch(routes: [GoRoute(path: AppRoutes.more, builder: (_, _) => const MorePage())]),
        ],
      ),
    ],
  );

  final chapters = [
    for (var i = 0; i < 12; i++) Chapter(start: i * 600.0, title: i == 2 ? 'Midnight Window — late-night lo-fi set with rain' : 'Track ${i + 1}'),
  ];

  runApp(ProviderScope(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(prefs),
      currentUidProvider.overrideWithValue('preview'),
      connectionStatusProvider.overrideWithValue(_connection()),
      targetInstanceIdProvider.overrideWithValue('i1'),
      targetProvider.overrideWith(_FakeTarget.new),
      siteStateControllerProvider.overrideWith(_FakeSite.new),
      playbackSnapshotProvider.overrideWith((ref) => Stream.value(_playback())),
      chaptersProvider.overrideWith((ref) async => chapters),
      episodesProvider.overrideWith((ref) async => const EpisodeList(currentEpisodeId: 'e4', seasons: [
            Season(number: 1, title: 'Season 1', episodes: []),
            Season(number: 2, title: 'Season 2', episodes: [
              Episode(id: 'e1', number: 1, title: 'Low Tide', durationSec: 3060),
              Episode(id: 'e2', number: 2, title: 'The Ferry Line', durationSec: 2820),
              Episode(id: 'e3', number: 3, title: 'Salt and Glass', durationSec: 2940),
              Episode(id: 'e4', number: 4, title: 'The Lighthouse Keeper', durationSec: 3120),
              Episode(id: 'e5', number: 5, title: 'North Wind', durationSec: 2760),
            ]),
            Season(number: 3, title: 'Season 3', episodes: []),
          ])),
      proControllerProvider.overrideWith(_FakePro.new),
      userSettingsControllerProvider.overrideWith(_FakeSettings.new),
      browserTabsProvider('i1').overrideWith((ref) => Stream.value(const BrowserTabsSnapshot(updatedAt: 0, tabs: [
            BrowserTab(tabId: 1, windowId: 1, title: 'Lo-fi beats to study to — 3 hour mix', site: Site.youtube, host: 'youtube.com', active: true),
            BrowserTab(tabId: 2, windowId: 1, title: 'Inbox (3)', host: 'mail.google.com'),
            BrowserTab(tabId: 3, windowId: 1, title: 'Rainy Tokyo night drive — 2 hour jazz', site: Site.youtube, host: 'youtube.com'),
            BrowserTab(tabId: 4, windowId: 2, title: 'Netflix', site: Site.netflix, host: 'netflix.com', active: true),
            BrowserTab(tabId: 5, windowId: 2, title: 'Flutter docs — Navigation', host: 'docs.flutter.dev'),
          ]))),
    ],
    child: MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      routerConfig: router,
      scaffoldMessengerKey: scaffoldKey,
    ),
  ));
}

/// Opens the sleep / episodes sheet for those scenarios.
class _RemoteWithSheet extends ConsumerStatefulWidget {
  const _RemoteWithSheet();

  @override
  ConsumerState<_RemoteWithSheet> createState() => _RemoteWithSheetState();
}

class _RemoteWithSheetState extends ConsumerState<_RemoteWithSheet> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      if (scenario == 'sleep') unawaited(showSleepTimerSheet(context, ref));
      if (scenario == 'episodes') unawaited(showEpisodesSheet(context, ref));
    });
  }

  @override
  Widget build(BuildContext context) => const RemotePage();
}
