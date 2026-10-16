import 'package:zappit/protocol/messages.dart';

/// Pure playback rules (Notion: Media Progressbar). Unit tested.
abstract final class PlaybackMath {
  /// Presets on the speed control.
  static const speedPresets = [0.5, 0.75, 1.0, 1.25, 1.5, 2.0, 3.0];

  /// Free users get these; others are Pro (5 s trial).
  static const freeSpeeds = [1.0, 1.25];

  static const holdDuration = Duration(seconds: 2);

  /// Seconds within which an incoming position counts as "arrived" after a seek.
  static const seekArrivalTolerance = 2.0;

  /// Rounds to two decimals; a preset within 0.005 counts as that preset.
  static double? matchingPreset(double rate) {
    final rounded = (rate * 100).round() / 100;
    for (final preset in speedPresets) {
      if ((preset - rounded).abs() < 0.005) return preset;
    }
    return null;
  }

  /// Speed buttons: the presets, plus one temporary button for an off-preset
  /// rate (e.g. 1.2x picked on the web), sorted ascending.
  static List<double> speedButtons(double currentRate) {
    final preset = matchingPreset(currentRate);
    if (preset != null) return speedPresets;
    final rounded = (currentRate * 100).round() / 100;
    return [...speedPresets, rounded]..sort();
  }

  /// `1.2×`, `0.75×`, `1×`
  static String speedLabel(double rate) {
    var text = rate.toStringAsFixed(2);
    text = text.replaceFirst(RegExp(r'0+$'), '').replaceFirst(RegExp(r'\.$'), '');
    return '$text×';
  }

  static bool isFreeSpeed(double rate) => freeSpeeds.any((f) => (f - rate).abs() < 0.005);

  /// `23:40`, `3:00:00`
  static String formatTime(double seconds) {
    if (seconds.isNaN || seconds.isInfinite || seconds < 0) seconds = 0;
    final total = seconds.floor();
    final h = total ~/ 3600;
    final m = (total % 3600) ~/ 60;
    final s = total % 60;
    String two(int n) => n.toString().padLeft(2, '0');
    return h > 0 ? '$h:${two(m)}:${two(s)}' : '$m:${two(s)}';
  }
}

/// The timeline shown on the scrub bar.
///
/// RTDB delivers about one update per second. Between updates the position is
/// interpolated from the local receive time (not the server `updatedAt`, so
/// phone clock skew doesn't matter). After a seek the app keeps its own
/// target until a nearby value arrives or two seconds pass, so the thumb
/// doesn't jump back.
class Timeline {
  Timeline({
    this.base = 0,
    this.baseAtMs = 0,
    this.rate = 1,
    this.running = false,
    this.duration,
    this.seekTarget,
    this.seekUntilMs,
  });

  /// Position (s) at [baseAtMs].
  double base;
  int baseAtMs;
  double rate;

  /// True when the position advances (playing, not an ad, not live).
  bool running;
  double? duration;
  double? seekTarget;
  int? seekUntilMs;

  bool seekHeld(int nowMs) => seekTarget != null && seekUntilMs != null && nowMs < seekUntilMs!;

  /// Applies an RTDB snapshot received at [nowMs].
  void accept(PlaybackSnapshot snapshot, int nowMs) {
    duration = snapshot.duration;
    rate = snapshot.playbackRate <= 0 ? 1 : snapshot.playbackRate;
    running = !snapshot.paused && !snapshot.isAd && !snapshot.isLive;

    if (seekHeld(nowMs)) {
      final arrived = (snapshot.currentTime - seekTarget!).abs() <= PlaybackMath.seekArrivalTolerance;
      if (!arrived) return;
    }
    seekTarget = null;
    seekUntilMs = null;
    base = snapshot.currentTime;
    baseAtMs = nowMs;
  }

  /// The user released the scrub bar (or tapped ±N s) at [seconds].
  void seek(double seconds, int nowMs) {
    final d = duration;
    final clamped = d == null ? seconds : seconds.clamp(0.0, d).toDouble();
    seekTarget = clamped;
    seekUntilMs = nowMs + PlaybackMath.holdDuration.inMilliseconds;
    base = clamped;
    baseAtMs = nowMs;
  }

  double positionAt(int nowMs) {
    var position = base;
    if (running) position += (nowMs - baseAtMs) / 1000 * rate;
    final d = duration;
    if (d != null && position > d) position = d;
    return position < 0 ? 0 : position;
  }
}

/// A value the app set optimistically (speed, volume, mute). Incoming values
/// are ignored until they match or [PlaybackMath.holdDuration] passes; then
/// the incoming value wins (the site may have refused or reverted it).
class Held<T> {
  Held(this.value, int nowMs) : untilMs = nowMs + PlaybackMath.holdDuration.inMilliseconds;

  final T value;
  final int untilMs;

  bool active(int nowMs) => nowMs < untilMs;
}
