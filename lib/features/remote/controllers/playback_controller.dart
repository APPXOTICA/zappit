import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/firebase/session_repository.dart';
import 'package:zappit/features/connection/connection_controller.dart';
import 'package:zappit/features/remote/controllers/playback_math.dart';
import 'package:zappit/protocol/messages.dart';

part 'playback_controller.g.dart';

/// What the remote shows for the media timeline, volume and speed.
class PlaybackView {
  const PlaybackView({
    required this.snapshot,
    required this.timeline,
    required this.rate,
    required this.volume,
    required this.muted,
  });

  /// Null until the selected browser writes `playback/{uid}`.
  final PlaybackSnapshot? snapshot;
  final Timeline timeline;
  final double rate;

  /// 0–100
  final int volume;
  final bool muted;

  bool get hasData => snapshot != null;
  bool get isAd => snapshot?.isAd ?? false;
  bool get isLive => snapshot?.isLive ?? false;

  /// TikTok photo post: only previous / next work.
  bool get isPhoto => snapshot?.isPhoto ?? false;

  /// Live stream that can be rewound.
  bool get isDvr => isLive && (snapshot?.dvr ?? false);

  /// False for live and while the page has not loaded the video yet.
  bool get hasDuration => snapshot?.hasDuration ?? false;
  bool get paused => snapshot?.paused ?? true;
  double get duration => snapshot?.duration ?? 0;
}

/// Merges RTDB `playback/{uid}` with the app's optimistic updates.
@Riverpod(keepAlive: true)
class PlaybackController extends _$PlaybackController {
  final _timeline = Timeline();
  Held<double>? _rateHold;
  Held<int>? _volumeHold;
  Held<bool>? _muteHold;
  bool _volumeDragging = false;
  bool _seekDragging = false;
  String? _source;

  static int get _now => DateTime.now().millisecondsSinceEpoch;

  @override
  PlaybackView build() {
    final instanceId = ref.watch(targetInstanceIdProvider);
    final snapshot = ref.watch(playbackSnapshotProvider).value;

    // Ignore playback written by a browser that is no longer selected.
    final fromSelected = snapshot != null &&
        instanceId != null &&
        (snapshot.source == null || snapshot.source!.startsWith('$instanceId:'));
    final accepted = fromSelected ? snapshot : null;

    if (accepted != null) {
      if (accepted.source != _source) {
        // New target tab: drop holds from the previous one.
        _source = accepted.source;
        _timeline.seekTarget = null;
        _rateHold = null;
      }
      if (!_seekDragging) _timeline.accept(accepted, _now);
    }
    return _compose(accepted);
  }

  PlaybackView _compose(PlaybackSnapshot? snapshot) {
    final now = _now;

    var rate = snapshot?.playbackRate ?? 1;
    final rateHold = _rateHold;
    if (rateHold != null) {
      if (rateHold.active(now) && (rate - rateHold.value).abs() > 0.005) {
        rate = rateHold.value;
      } else {
        _rateHold = null;
      }
    }

    var volume = ((snapshot?.volume ?? 1) * 100).round();
    final volumeHold = _volumeHold;
    if (_volumeDragging && volumeHold != null) {
      volume = volumeHold.value;
    } else if (volumeHold != null) {
      if (volumeHold.active(now) && (volume - volumeHold.value).abs() > 1) {
        volume = volumeHold.value;
      } else {
        _volumeHold = null;
      }
    }

    var muted = snapshot?.muted ?? false;
    final muteHold = _muteHold;
    if (muteHold != null) {
      if (muteHold.active(now) && muted != muteHold.value) {
        muted = muteHold.value;
      } else {
        _muteHold = null;
      }
    }

    return PlaybackView(snapshot: snapshot, timeline: _timeline, rate: rate, volume: volume, muted: muted);
  }

  void _recompose() => state = _compose(state.snapshot);

  // Seek
  void beginSeekDrag() => _seekDragging = true;

  void seekTo(double seconds) {
    _seekDragging = false;
    _timeline.seek(seconds, _now);
    _recompose();
  }

  /// ±N seconds from the interpolated position.
  double seekBy(double delta) {
    final target = _timeline.positionAt(_now) + delta;
    _timeline.seek(target, _now);
    _recompose();
    return target;
  }

  // Speed
  void holdRate(double rate) {
    _rateHold = Held(rate, _now);
    _recompose();
  }

  // Volume
  void beginVolumeDrag() => _volumeDragging = true;

  void holdVolume(int volume, {bool dragging = false}) {
    _volumeDragging = dragging;
    _volumeHold = Held(volume.clamp(0, 100), _now);
    _recompose();
  }

  void holdMute(bool muted) {
    _muteHold = Held(muted, _now);
    _recompose();
  }
}
