import 'package:flutter_test/flutter_test.dart';
import 'package:zappit/features/remote/controllers/playback_math.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/protocol/messages.dart';

void main() {
  group('speed buttons', () {
    test('a preset rate shows the 7 presets', () {
      expect(PlaybackMath.speedButtons(1.25), PlaybackMath.speedPresets);
      // Float noise still matches the preset.
      expect(PlaybackMath.speedButtons(1.2500001), PlaybackMath.speedPresets);
    });

    test('an off-preset rate adds one sorted temporary button', () {
      final buttons = PlaybackMath.speedButtons(1.2);
      expect(buttons, hasLength(8));
      expect(buttons.indexOf(1.2), 3);
      expect(PlaybackMath.speedButtons(0.25).first, 0.25);
      expect(PlaybackMath.speedButtons(4).last, 4);
    });

    test('labels drop trailing zeros', () {
      expect(PlaybackMath.speedLabel(1), '1×');
      expect(PlaybackMath.speedLabel(1.2), '1.2×');
      expect(PlaybackMath.speedLabel(0.75), '0.75×');
    });

    test('free speeds', () {
      expect(PlaybackMath.isFreeSpeed(1), isTrue);
      expect(PlaybackMath.isFreeSpeed(1.25), isTrue);
      expect(PlaybackMath.isFreeSpeed(1.5), isFalse);
    });
  });

  test('time format', () {
    expect(PlaybackMath.formatTime(0), '0:00');
    expect(PlaybackMath.formatTime(1420.9), '23:40');
    expect(PlaybackMath.formatTime(10800), '3:00:00');
    expect(PlaybackMath.formatTime(double.nan), '0:00');
  });

  group('timeline', () {
    PlaybackSnapshot snap(double t, {bool paused = false, double rate = 1, bool ad = false, double? duration = 600}) =>
        PlaybackSnapshot(currentTime: t, paused: paused, playbackRate: rate, isAd: ad, duration: duration);

    test('interpolates from the local receive time at the playback rate', () {
      final timeline = Timeline()..accept(snap(100, rate: 2), 1000);
      expect(timeline.positionAt(1500), closeTo(101, 1e-9));
    });

    test('does not move while paused, during an ad, or live', () {
      expect((Timeline()..accept(snap(100, paused: true), 0)).positionAt(5000), 100);
      expect((Timeline()..accept(snap(100, ad: true), 0)).positionAt(5000), 100);
      expect((Timeline()..accept(snap(100, duration: null), 0)).positionAt(5000), 100);
    });

    test('clamps to the duration', () {
      final timeline = Timeline()..accept(snap(599), 0);
      expect(timeline.positionAt(10000), 600);
    });

    test('after a seek, stale values are ignored until a nearby one arrives', () {
      final timeline = Timeline()..accept(snap(100), 0);
      timeline.seek(300, 1000);
      timeline.accept(snap(101), 1200); // old position, ignored
      expect(timeline.positionAt(1200), closeTo(300.2, 1e-9));
      timeline.accept(snap(300.5), 1400); // arrived
      expect(timeline.seekTarget, isNull);
      expect(timeline.positionAt(1400), 300.5);
    });

    test('after two seconds the incoming value wins', () {
      final timeline = Timeline()..accept(snap(100), 0);
      timeline.seek(300, 1000);
      timeline.accept(snap(102), 3100);
      expect(timeline.positionAt(3100), 102);
    });
  });

  group('chapters', () {
    const chapters = [
      Chapter(start: 0, title: 'A'),
      Chapter(start: 80, title: 'B'),
      Chapter(start: 290, title: 'C'),
    ];

    test('current chapter is the last start before the position', () {
      expect(Chapter.currentIndex(chapters, 0), 0);
      expect(Chapter.currentIndex(chapters, 100), 1);
      expect(Chapter.currentIndex(chapters, 1000), 2);
    });

    test('previous: restart within the chapter after 3 s, otherwise go back', () {
      expect(Chapter.previousTarget(chapters, 100), 80);
      expect(Chapter.previousTarget(chapters, 81), 0);
      expect(Chapter.previousTarget(chapters, 1), 0);
    });
  });
}
