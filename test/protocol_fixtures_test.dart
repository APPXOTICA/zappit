import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:zappit/core/firebase/user_settings_repository.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/protocol/remote_command.dart';

/// Parses the shared fixtures in `zappit_assets/protocol/fixtures`. The
/// extension's tests read the same files; when a message changes, both fail.
void main() {
  final dir = Directory('../zappit_assets/protocol/fixtures');

  Object? fixture(String name) => jsonDecode(File('${dir.path}/$name.json').readAsStringSync());

  setUpAll(() {
    if (!dir.existsSync()) fail('Protocol fixtures not found at ${dir.absolute.path}');
  });

  group('command', () {
    test('every fixture fn is a known function and payload round-trips', () {
      for (final name in ['command_seek_forward', 'command_set_ab', 'command_set_sleep_timer_eov']) {
        final json = fixture(name)! as Map<String, dynamic>;
        expect(RemoteCommand.functionNames, contains(json['fn']), reason: name);
        expect(json['schema_version'], Protocol.schemaVersion);

        final command = RemoteCommand.fromFunctionCall(json['fn'] as String, Map<String, Object?>.from(json['args'] as Map))!;
        final payload = command.toPayload(
          requestId: json['requestId'] as String,
          targetInstanceId: json['targetInstanceId'] as String,
          source: CommandSource.values.byName(json['source'] as String),
          timestamp: json['timestamp'] as int,
        );
        expect(payload, json, reason: name);
      }
    });

    test('named constructors produce the fixture payloads', () {
      expect(RemoteCommand.seekForward(10).args, {'seconds': 10});
      expect(RemoteCommand.setAb('a', true, count: 3).args, {'point': 'a', 'on': true, 'count': 3});
      expect(RemoteCommand.sleepAtEndOfVideo().args, {'minutes': 'end_of_video'});
      expect(RemoteCommand.setSpeed(1.5).args, {'rate': 1.5});
      expect(RemoteCommand.setSpeed(2, trialSeconds: 5).args, {'rate': 2.0, 'trialSeconds': 5});
    });

    test('unknown function names are rejected', () {
      expect(RemoteCommand.fromFunctionCall('format_disk', const {}), isNull);
    });
  });

  group('ack', () {
    test('ok, error and data', () {
      final ok = Ack.fromJson(fixture('ack_ok'));
      expect(ok.ok, isTrue);
      expect(ok.instanceId, 'inst-chrome-mac');

      final error = Ack.fromJson(fixture('ack_error'));
      expect(error.ok, isFalse);
      expect(error.error, AckError.startAfterEnd);

      final episodes = EpisodeList.fromAck(Ack.fromJson(fixture('ack_episodes')));
      expect(episodes.seasons, hasLength(2));
      expect(episodes.seasons.first.episodes.last.title, 'The Ferry Line');
      expect(episodes.currentEpisodeId, '80002');
      expect(episodes.currentSeasonIndex, 0);

      final tracks = Chapter.listFromAck(Ack.fromJson(fixture('ack_tracks')));
      expect(tracks.map((c) => c.start), [0, 80, 290]);
    });
  });

  group('target', () {
    test('youtube watch page', () {
      final target = TargetInfo.fromJson(fixture('target_youtube_watch'));
      expect(target.site, Site.youtube);
      expect(target.page, PageKind.watch);
      expect(target.hasMedia, isTrue);
      expect(target.has(Capability.chapters), isTrue);
      expect(target.has(Capability.episodes), isFalse);
      expect(target.has(Capability.abLoop), isTrue);
    });

    test('no target', () {
      final target = TargetInfo.fromJson(fixture('target_none'));
      expect(target.site, Site.none);
      expect(target.tabId, isNull);
      expect(target.capabilities, isEmpty);
    });
  });

  group('state', () {
    test('full youtube snapshot', () {
      final state = SiteState.fromJson(fixture('state_youtube'));
      expect(state.skipAd, isTrue);
      expect(state.chatAvailable, isTrue);
      expect(state.subtitle.tracks.map((t) => t.id), ['en', 'ko']);
      expect(state.chapterCount, 12);
      expect(state.endScreenMode, EndScreenMode.upNext);
      expect(state.endScreenCountdown, 8);
      expect(state.endScreenCard?.channel, 'Night Owl Radio');
    });

    test('missing fields fall back to defaults', () {
      final state = SiteState.fromJson(fixture('state_minimal'));
      expect(state.skipAd, isFalse);
      expect(state.subtitle.available, isFalse);
      expect(state.endScreenMode, EndScreenMode.none);
      expect(state.focusCard, isNull);
    });
  });

  group('playback', () {
    test('youtube with loop, A-B start and sleep timer', () {
      final p = PlaybackSnapshot.fromJson(fixture('playback_youtube'));
      expect(p.source, 'inst-chrome-mac:12');
      expect(p.duration, 10800);
      expect(p.isLive, isFalse);
      expect(p.volume, 0.64);
      expect(p.loopStart, 1500);
      expect(p.abActive, isTrue);
      expect(p.sleepMode, SleepMode.timer);
    });

    test('live has no duration', () {
      final p = PlaybackSnapshot.fromJson(fixture('playback_live'));
      expect(p.isLive, isTrue);
      expect(p.loopStart, isNull);
    });
  });

  group('presence and tabs', () {
    test('extension presence', () {
      final browser = BrowserInstance.fromPresence(fixture('presence_extension'));
      expect(browser?.label, 'Chrome · Mac');
      expect(BrowserInstance.fromPresence(fixture('presence_app')), isNull);
    });

    test('browser tabs', () {
      final tabs = BrowserTab.listFromJson(fixture('browser_tabs'));
      expect(tabs, hasLength(2));
      expect(tabs.first.site, Site.youtube);
      expect(tabs.last.favIconUrl, isNull);
    });
  });

  test('settings stored as 0 mean unlimited A-B loops', () {
    expect(UserSettings.fromJson({'abLoopCount': 0}).abLoopCount, isNull);
    expect(UserSettings.fromJson({'abLoopCount': 7}).abLoopCount, 3);
    expect(const UserSettings(abLoopCount: null).toJson()['abLoopCount'], 0);
  });
}
