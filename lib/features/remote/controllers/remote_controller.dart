import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/firebase/user_settings_repository.dart';
import 'package:zappit/core/realtime/command_bus.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/routes/router_provider.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/core/utils/haptic_utils.dart';
import 'package:zappit/core/utils/link_utils.dart';
import 'package:zappit/features/purchase/pro_controller.dart';
import 'package:zappit/features/remote/controllers/playback_controller.dart';
import 'package:zappit/features/remote/controllers/playback_math.dart';
import 'package:zappit/features/remote/controllers/target_controller.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/protocol/remote_command.dart';

part 'remote_controller.g.dart';

@Riverpod(keepAlive: true)
RemoteController remoteController(Ref ref) => RemoteController(ref);

/// Turns remote UI actions into commands. Widgets call these methods only.
class RemoteController {
  RemoteController(this._ref);

  final Ref _ref;

  CommandBus get _bus => _ref.read(commandBusProvider);
  PlaybackController get _playback => _ref.read(playbackControllerProvider.notifier);
  PlaybackView get _view => _ref.read(playbackControllerProvider);
  UserSettings get _settings => _ref.read(userSettingsControllerProvider);
  bool get _isPro => _ref.read(proControllerProvider);

  static const proTrialSeconds = 5;

  /// Free users try Voice Boost this long; then it turns off and Pro opens.
  static const voiceBoostTrialSeconds = 10;

  void _tap() => unawaited(HapticUtils.hapticFeedback(HapticType.light));

  void openPro() => _ref.read(routerProvider).push(AppRoutes.pro);

  // ---------------------------------------------------------------- playback

  void togglePlay() {
    _tap();
    _bus.fire(_view.paused ? const RemoteCommand.play() : const RemoteCommand.pause());
  }

  Timer? _holdTimer;
  double _rateBeforeHold = 1;

  /// Press-and-hold Play: 2x until [endSpeedHold], like holding Space on
  /// YouTube. Free for everyone, since the speed lasts only while held.
  void startSpeedHold() {
    unawaited(HapticUtils.hapticFeedback(HapticType.medium));
    _rateBeforeHold = _view.rate;
    _playback.holdRate(2);
    _bus.fire(RemoteCommand.holdSpeed(on: true));
    _holdTimer?.cancel();
    // The extension lets go 8 s after the last renewal, e.g. if the app dies mid-hold.
    _holdTimer = Timer.periodic(const Duration(seconds: 3), (_) => _bus.fire(RemoteCommand.holdSpeed(on: true)));
  }

  void endSpeedHold() {
    if (_holdTimer == null) return;
    _holdTimer!.cancel();
    _holdTimer = null;
    _playback.holdRate(_rateBeforeHold);
    _bus.fire(RemoteCommand.holdSpeed(on: false));
  }

  void replay() {
    _tap();
    _playback.seekTo(0);
    _bus.fire(const RemoteCommand.replay());
  }

  void seekForward() {
    _tap();
    final seconds = _settings.seekInterval;
    _playback.seekBy(seconds.toDouble());
    _bus.fire(RemoteCommand.seekForward(seconds));
  }

  void seekBackward() {
    _tap();
    final seconds = _settings.seekInterval;
    _playback.seekBy(-seconds.toDouble());
    _bus.fire(RemoteCommand.seekBackward(seconds));
  }

  void beginScrub() => _playback.beginSeekDrag();

  void seekTo(double seconds) {
    _playback.seekTo(seconds);
    _bus.fire(RemoteCommand.seekTo(seconds));
  }

  // ------------------------------------------------------------------- speed

  /// Free users get 1x and 1.25x; other presets play for 5 s (trial).
  void setSpeed(double rate) {
    _tap();
    final free = _isPro || PlaybackMath.isFreeSpeed(rate);
    _playback.holdRate(rate);
    _bus.fire(RemoteCommand.setSpeed(rate, trialSeconds: free ? null : proTrialSeconds));
  }

  // ------------------------------------------------------------------ volume

  DateTime _lastVolumeSent = DateTime.fromMillisecondsSinceEpoch(0);

  void beginVolumeSlide() => _playback.beginVolumeDrag();

  /// While dragging: at most ~10 messages per second, absolute values.
  void slideVolume(int volume) {
    _playback.holdVolume(volume, dragging: true);
    final now = DateTime.now();
    if (now.difference(_lastVolumeSent) < const Duration(milliseconds: 100)) return;
    _lastVolumeSent = now;
    _bus.fire(RemoteCommand.setVolume(volume));
  }

  void endVolumeSlide(int volume) {
    _playback.holdVolume(volume);
    _bus.fire(RemoteCommand.setVolume(volume));
  }

  void volumeStep(int delta) {
    _tap();
    final next = (_view.volume + delta).clamp(0, 100);
    _playback.holdVolume(next);
    _bus.fire(delta > 0 ? RemoteCommand.volumeUp(delta) : RemoteCommand.volumeDown(-delta));
  }

  void toggleMute() {
    _tap();
    final muted = !_view.muted;
    _playback.holdMute(muted);
    _bus.fire(RemoteCommand.setMute(muted));
  }

  // ------------------------------------------------------------- loop / A-B

  void toggleLoop() {
    _tap();
    final loop = !(_view.snapshot?.loop ?? false);
    _bus.fire(RemoteCommand.setLoop(loop, count: _isPro ? null : 3));
  }

  /// `[` / `]`. Tapping a set point clears it; otherwise it is set at the
  /// browser's current time. Order is checked here with the interpolated time
  /// and again in the extension with the real one.
  Future<void> toggleAbPoint(String point) async {
    final snapshot = _view.snapshot;
    if (snapshot == null) return;
    final isSet = point == 'a' ? snapshot.loopStart != null : snapshot.loopEnd != null;
    final now = _view.timeline.positionAt(DateTime.now().millisecondsSinceEpoch);

    if (!isSet) {
      if (point == 'a' && snapshot.loopEnd != null && now >= snapshot.loopEnd!) {
        _rejectAb(AckError.startAfterEnd);
        return;
      }
      if (point == 'b' && snapshot.loopStart != null && now <= snapshot.loopStart!) {
        _rejectAb(AckError.endBeforeStart);
        return;
      }
    }

    _tap();
    final count = _isPro ? _settings.abLoopCount : UserSettings.freeAbLoopCount;
    final ack = await _bus.send(RemoteCommand.setAb(point, !isSet, count: count), handleErrors: false);
    if (!ack.ok) {
      if (ack.error == AckError.startAfterEnd || ack.error == AckError.endBeforeStart) {
        _rejectAb(ack.error!);
      } else {
        AppNotice.snack(CommandBus.messageFor(ack), error: true);
      }
    }
  }

  void _rejectAb(String error) {
    unawaited(HapticUtils.hapticFeedback(HapticType.error));
    AppNotice.snack(CommandBus.messageFor(Ack.local('', error)));
  }

  // ------------------------------------------------------------ sleep timer

  /// [minutes] 0 turns it off. Pro feature.
  void setSleepTimer(int minutes) {
    if (!_isPro && minutes != 0) {
      openPro();
      return;
    }
    _tap();
    _bus.fire(RemoteCommand.setSleepTimer(minutes));
  }

  void sleepAtEndOfVideo() {
    if (!_isPro) {
      openPro();
      return;
    }
    _tap();
    _bus.fire(RemoteCommand.sleepAtEndOfVideo());
  }

  // -------------------------------------------------------------------- view

  void fullscreen() {
    _tap();
    _bus.fire(const RemoteCommand.setFullscreen());
  }

  void toggleTheater() {
    _tap();
    _bus.fire(const RemoteCommand.toggleTheater());
  }

  void toggleChat() {
    _tap();
    _bus.fire(const RemoteCommand.toggleChat());
  }

  /// Free users: a 10 s trial when it's off. Turning it off (or ending a
  /// running trial) is always allowed.
  void toggleVoiceBoost() {
    _tap();
    final site = _ref.read(siteStateControllerProvider);
    final startTrial = !_isPro && !site.voiceBoostOn && site.voiceBoostTrialEndsAt == null;
    _bus.fire(RemoteCommand.toggleVoiceBoost(trialSeconds: startTrial ? voiceBoostTrialSeconds : null));
  }

  // ---------------------------------------------------------------- captions

  void toggleCc() {
    _tap();
    _bus.fire(const RemoteCommand.toggleCc());
  }

  void setSubtitleTrack(String trackId) => _bus.fire(RemoteCommand.setSubtitleTrack(trackId));

  /// Moves one step on the YouTube caption size scale.
  void stepSubtitleSize(int current, int direction) {
    const sizes = UserSettings.subtitleSizes;
    var index = sizes.indexOf(current);
    if (index < 0) index = sizes.indexOf(100);
    final next = (index + direction).clamp(0, sizes.length - 1);
    if (next == index) return;
    _tap();
    final percent = sizes[next];
    unawaited(_ref.read(userSettingsControllerProvider.notifier).setSubtitleSize(percent));
    _bus.fire(RemoteCommand.setSubtitleSize(percent));
  }

  // ------------------------------------------------------------ site actions

  void skipAd() {
    _tap();
    _bus.fire(const RemoteCommand.skipAd());
  }

  void skipIntro() {
    _tap();
    _bus.fire(const RemoteCommand.skipIntro());
  }

  void nextEpisode() {
    _tap();
    _bus.fire(const RemoteCommand.nextEpisode());
  }

  void nextVideo() {
    _tap();
    _bus.fire(const RemoteCommand.nextVideo());
  }

  void prevVideo() {
    _tap();
    _bus.fire(const RemoteCommand.prevVideo());
  }

  // ---------------------------------------------------------------- chapters

  Future<List<Chapter>> fetchChapters() async {
    final ack = await _bus.send(const RemoteCommand.getTracks());
    if (!ack.ok) return const [];
    return Chapter.listFromAck(ack);
  }

  void seekToChapter(Chapter chapter) {
    _tap();
    seekTo(chapter.start);
  }

  // ---------------------------------------------------------------- episodes

  Future<EpisodeList?> fetchEpisodes() async {
    final ack = await _bus.send(const RemoteCommand.getEpisodes());
    if (!ack.ok) return null;
    return EpisodeList.fromAck(ack);
  }

  void playEpisode(String episodeId) {
    _tap();
    _bus.fire(RemoteCommand.playEpisode(episodeId));
  }

  // ----------------------------------------------------------------- quality

  Future<QualityList?> fetchQuality() async {
    final ack = await _bus.send(const RemoteCommand.getQuality(), timeout: const Duration(seconds: 6));
    if (!ack.ok) return null;
    return QualityList.fromAck(ack);
  }

  Future<bool> setQuality(String id) async {
    final ack = await _bus.send(RemoteCommand.setQuality(id), timeout: const Duration(seconds: 6));
    return ack.ok;
  }

  // -------------------------------------------------------------- navigation

  /// Validates and sends a link to open in a new tab. Returns an error text
  /// to show under the field, or null on success.
  Future<String?> openUrl(String input) async {
    final uri = LinkUtils.normalize(input);
    if (uri == null) return 'Enter a link that starts with http or https';
    final ack = await _bus.send(RemoteCommand.openUrl(uri.toString()));
    if (!ack.ok) return null; // The bus already showed why.
    return null;
  }

  /// Opens the browser's media in the phone's app at the current time, and
  /// pauses the browser.
  Future<void> openInNativeApp() async {
    final target = _ref.read(targetProvider);
    final ack = await _bus.send(const RemoteCommand.getMediaUrl());
    if (!ack.ok) return;
    final uri = LinkUtils.normalize(ack.dataMap['url']?.toString() ?? '');
    if (uri == null) {
      AppNotice.snack("Couldn't get the video link");
      return;
    }
    final view = _view;
    final seconds = view.isAd
        ? (view.snapshot?.currentTime ?? 0)
        : view.timeline.positionAt(DateTime.now().millisecondsSinceEpoch);
    final link = LinkUtils.nativeAppUrl(target?.site ?? Site.generic, uri, seconds);
    try {
      await launchUrl(link, mode: LaunchMode.externalApplication);
    } catch (e) {
      debugPrint('launch failed: $e');
    }
  }

  void goHome() {
    _tap();
    _bus.fire(const RemoteCommand.goHome());
  }

  void nav(NavDirection direction) {
    unawaited(HapticUtils.hapticFeedback(HapticType.selection));
    _bus.fire(RemoteCommand.nav(direction));
  }

  void navSelect() {
    _tap();
    _bus.fire(const RemoteCommand.navSelect());
  }

  void endScreenPlayNow() {
    _tap();
    _bus.fire(const RemoteCommand.endScreenPlayNow());
  }

  void endScreenCancel() {
    _tap();
    _bus.fire(const RemoteCommand.endScreenCancel());
  }

  void endScreenDismiss() {
    _tap();
    _bus.fire(const RemoteCommand.endScreenDismiss());
  }
}

/// A chapter / track (`get_tracks`).
class Chapter {
  const Chapter({required this.start, required this.title});

  final double start;
  final String title;

  static List<Chapter> listFromAck(Ack ack) {
    final raw = ack.dataMap['tracks'];
    if (raw is! List) return const [];
    return raw
        .map((t) {
          if (t is! Map) return null;
          final start = (t['start'] as num?)?.toDouble();
          final title = t['title']?.toString() ?? '';
          return start == null ? null : Chapter(start: start, title: title);
        })
        .whereType<Chapter>()
        .toList()
      ..sort((a, b) => a.start.compareTo(b.start));
  }

  /// Index of the chapter playing at [position] (last start ≤ position).
  static int currentIndex(List<Chapter> chapters, double position) {
    var index = 0;
    for (var i = 0; i < chapters.length; i++) {
      if (chapters[i].start <= position + 0.25) index = i;
    }
    return index;
  }

  /// Music-player rule: within 3 s of the start goes to the previous chapter,
  /// otherwise to the start of the current one.
  static double previousTarget(List<Chapter> chapters, double position) {
    final i = currentIndex(chapters, position);
    if (position - chapters[i].start >= 3 || i == 0) return chapters[i].start;
    return chapters[i - 1].start;
  }
}

class Episode {
  const Episode({required this.id, required this.number, required this.title, this.durationSec});

  final String id;
  final int number;
  final String title;
  final int? durationSec;
}

class Season {
  const Season({required this.number, required this.title, required this.episodes});

  final int number;
  final String title;
  final List<Episode> episodes;
}

class EpisodeList {
  const EpisodeList({required this.seasons, this.currentEpisodeId});

  final List<Season> seasons;
  final String? currentEpisodeId;

  int get currentSeasonIndex {
    for (var i = 0; i < seasons.length; i++) {
      if (seasons[i].episodes.any((e) => e.id == currentEpisodeId)) return i;
    }
    return 0;
  }

  static EpisodeList fromAck(Ack ack) {
    final data = ack.dataMap;
    final seasons = <Season>[];
    final rawSeasons = data['seasons'];
    if (rawSeasons is List) {
      for (final s in rawSeasons) {
        if (s is! Map) continue;
        final episodes = <Episode>[];
        final rawEpisodes = s['episodes'];
        if (rawEpisodes is List) {
          for (final e in rawEpisodes) {
            if (e is! Map) continue;
            final id = e['id']?.toString();
            if (id == null) continue;
            episodes.add(Episode(
              id: id,
              number: (e['number'] as num?)?.toInt() ?? episodes.length + 1,
              title: e['title']?.toString() ?? '',
              durationSec: (e['durationSec'] as num?)?.toInt(),
            ));
          }
        }
        final number = (s['number'] as num?)?.toInt() ?? seasons.length + 1;
        seasons.add(Season(number: number, title: s['title']?.toString() ?? 'Season $number', episodes: episodes));
      }
    }
    return EpisodeList(seasons: seasons, currentEpisodeId: data['currentEpisodeId']?.toString());
  }
}

class QualityList {
  const QualityList({required this.items, this.current});

  final List<({String id, String label})> items;
  final String? current;

  static QualityList fromAck(Ack ack) {
    final data = ack.dataMap;
    final items = <({String id, String label})>[];
    final raw = data['items'];
    if (raw is List) {
      for (final item in raw) {
        if (item is! Map) continue;
        final id = item['id']?.toString();
        if (id == null) continue;
        items.add((id: id, label: item['label']?.toString() ?? id));
      }
    }
    return QualityList(items: items, current: data['current']?.toString());
  }
}
