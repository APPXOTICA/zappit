import 'package:zappit/protocol/json_utils.dart';
import 'package:zappit/protocol/protocol.dart';

/// `target` event: the selected browser's current target tab.
final class TargetInfo {
  const TargetInfo({
    required this.instanceId,
    this.tabId,
    this.site = Site.none,
    this.page = PageKind.other,
    this.isShortForm = false,
    this.title,
    this.hasMedia = false,
    this.capabilities = const {},
    this.timestamp = 0,
  });

  final String instanceId;
  final int? tabId;
  final Site site;
  final PageKind page;
  final bool isShortForm;
  final String? title;
  final bool hasMedia;
  final Set<Capability> capabilities;
  final int timestamp;

  bool has(Capability capability) => capabilities.contains(capability);

  /// YouTube or Netflix home where the d-pad replaces "nothing playing".
  bool get isSpatialHome => page == PageKind.home && has(Capability.spatialNav);

  factory TargetInfo.fromJson(Object? raw) {
    final json = asJsonMap(raw);
    return TargetInfo(
      instanceId: asString(json['instanceId']) ?? '',
      tabId: asInt(json['tabId']),
      site: Site.fromName(asString(json['site'])),
      page: PageKind.fromName(asString(json['page'])),
      isShortForm: asBool(json['isShortForm']),
      title: asString(json['title']),
      hasMedia: asBool(json['hasMedia']),
      capabilities: asJsonList(json['capabilities'])
          .map((c) => Capability.fromWire(asString(c)))
          .whereType<Capability>()
          .toSet(),
      timestamp: asInt(json['timestamp']) ?? 0,
    );
  }
}

/// `ack` event: result of one command.
final class Ack {
  const Ack({
    required this.requestId,
    required this.ok,
    this.instanceId,
    this.error,
    this.message,
    this.data,
  });

  final String requestId;
  final String? instanceId;
  final bool ok;
  final String? error;
  final String? message;
  final Object? data;

  Map<String, dynamic> get dataMap => asJsonMap(data);

  factory Ack.fromJson(Object? raw) {
    final json = asJsonMap(raw);
    return Ack(
      requestId: asString(json['requestId']) ?? '',
      instanceId: asString(json['instanceId']),
      ok: asBool(json['ok']),
      error: asString(json['error']),
      message: asString(json['message']),
      data: json['data'],
    );
  }

  factory Ack.local(String requestId, String error) =>
      Ack(requestId: requestId, ok: false, error: error);
}

/// A video card read from the page (end screen, home focus).
final class VideoCard {
  const VideoCard({this.title, this.channel, this.duration, this.thumbnail});

  final String? title;
  final String? channel;
  final String? duration;
  final String? thumbnail;

  static VideoCard? fromJson(Object? raw) {
    if (raw == null) return null;
    final json = asJsonMap(raw);
    return VideoCard(
      title: asString(json['title']),
      channel: asString(json['channel']),
      duration: asString(json['duration']),
      thumbnail: asString(json['thumbnail']),
    );
  }

  String get subtitle => [channel, duration].whereType<String>().where((s) => s.isNotEmpty).join(' · ');
}

final class SubtitleTrack {
  const SubtitleTrack({required this.id, required this.label});

  final String id;
  final String label;
}

final class SubtitleState {
  const SubtitleState({
    this.available = false,
    this.enabled = false,
    this.currentTrackId,
    this.currentLanguage,
    this.tracks = const [],
    this.sizePercent = 100,
  });

  final bool available;
  final bool enabled;
  final String? currentTrackId;
  final String? currentLanguage;
  final List<SubtitleTrack> tracks;
  final int sizePercent;

  factory SubtitleState.fromJson(Object? raw) {
    final json = asJsonMap(raw);
    return SubtitleState(
      available: asBool(json['available']),
      enabled: asBool(json['enabled']),
      currentTrackId: asString(json['currentTrackId']),
      currentLanguage: asString(json['currentLanguage']),
      tracks: asJsonList(json['tracks']).map((t) {
        final m = asJsonMap(t);
        return SubtitleTrack(id: asString(m['id']) ?? '', label: asString(m['label']) ?? '');
      }).where((t) => t.id.isNotEmpty).toList(),
      sizePercent: asInt(json['sizePercent']) ?? 100,
    );
  }
}

enum EndScreenMode {
  none,
  upNext('up_next'),
  pick;

  const EndScreenMode([this._wire]);

  final String? _wire;

  static EndScreenMode fromWire(String? value) =>
      EndScreenMode.values.firstWhere((m) => (m._wire ?? m.name) == value, orElse: () => none);
}

/// `state` event: site UI state snapshot.
final class SiteState {
  const SiteState({
    this.instanceId = '',
    this.skipAd = false,
    this.skipIntro = false,
    this.nextEpisodeAvailable = false,
    this.chatAvailable = false,
    this.chatVisible = false,
    this.theaterOn = false,
    this.voiceBoostAvailable = false,
    this.voiceBoostOn = false,
    this.voiceBoostTrialEndsAt,
    this.subtitle = const SubtitleState(),
    this.chapterCount = 0,
    this.isSeries = false,
    this.endScreenMode = EndScreenMode.none,
    this.endScreenCountdown,
    this.endScreenCard,
    this.focusCard,
  });

  final String instanceId;
  final bool skipAd;
  final bool skipIntro;
  final bool nextEpisodeAvailable;
  final bool chatAvailable;
  final bool chatVisible;
  final bool theaterOn;
  final bool voiceBoostAvailable;
  final bool voiceBoostOn;

  /// Free trial running until then (browser clock, epoch ms).
  final int? voiceBoostTrialEndsAt;
  final SubtitleState subtitle;
  final int chapterCount;
  final bool isSeries;
  final EndScreenMode endScreenMode;
  final int? endScreenCountdown;
  final VideoCard? endScreenCard;
  final VideoCard? focusCard;

  static const empty = SiteState();

  factory SiteState.fromJson(Object? raw) {
    final json = asJsonMap(raw);
    final chat = asJsonMap(json['chat']);
    final voiceBoost = asJsonMap(json['voiceBoost']);
    final endScreen = asJsonMap(json['endScreen']);
    return SiteState(
      instanceId: asString(json['instanceId']) ?? '',
      skipAd: asBool(json['skipAd']),
      skipIntro: asBool(json['skipIntro']),
      nextEpisodeAvailable: asBool(asJsonMap(json['nextEpisode'])['available']),
      chatAvailable: asBool(chat['available']),
      chatVisible: asBool(chat['visible']),
      theaterOn: asBool(asJsonMap(json['theater'])['on']),
      voiceBoostAvailable: asBool(voiceBoost['available']),
      voiceBoostOn: asBool(voiceBoost['on']),
      voiceBoostTrialEndsAt: asInt(voiceBoost['trialEndsAt']),
      subtitle: SubtitleState.fromJson(json['subtitle']),
      chapterCount: asInt(asJsonMap(json['chapters'])['count']) ?? 0,
      isSeries: asBool(json['isSeries']),
      endScreenMode: EndScreenMode.fromWire(asString(endScreen['mode'])),
      endScreenCountdown: asInt(endScreen['countdownSec']),
      endScreenCard: VideoCard.fromJson(endScreen['card']),
      focusCard: VideoCard.fromJson(json['focusCard']),
    );
  }
}

enum SleepMode {
  off,
  timer,
  endOfVideo('end_of_video');

  const SleepMode([this._wire]);

  final String? _wire;

  static SleepMode fromWire(String? value) =>
      SleepMode.values.firstWhere((m) => (m._wire ?? m.name) == value, orElse: () => off);
}

/// RTDB `playback/{uid}`.
final class PlaybackSnapshot {
  const PlaybackSnapshot({
    this.source,
    this.site = Site.none,
    this.title,
    this.currentTime = 0,
    this.duration,
    this.paused = true,
    this.playbackRate = 1,
    this.volume = 1,
    this.muted = false,
    this.isAd = false,
    this.loop = false,
    this.loopRepeatLeft,
    this.loopStart,
    this.loopEnd,
    this.loopLeft,
    this.sleepMode = SleepMode.off,
    this.sleepEndsAt,
    this.speedTrialEndsAt,
    this.updatedAt = 0,
  });

  final String? source;
  final Site site;
  final String? title;
  final double currentTime;

  /// Null for live streams.
  final double? duration;
  final bool paused;
  final double playbackRate;

  /// 0–1
  final double volume;
  final bool muted;
  final bool isAd;
  final bool loop;
  final int? loopRepeatLeft;
  final double? loopStart;
  final double? loopEnd;
  final int? loopLeft;
  final SleepMode sleepMode;
  final int? sleepEndsAt;
  final int? speedTrialEndsAt;
  final int updatedAt;

  bool get isLive => duration == null;
  bool get abActive => loopStart != null || loopEnd != null;

  factory PlaybackSnapshot.fromJson(Object? raw) {
    final json = asJsonMap(raw);
    final duration = asDouble(json['duration']);
    return PlaybackSnapshot(
      source: asString(json['source']),
      site: Site.fromName(asString(json['site'])),
      title: asString(json['title']),
      currentTime: asDouble(json['currentTime']) ?? 0,
      duration: (duration == null || duration.isInfinite || duration.isNaN) ? null : duration,
      paused: asBool(json['paused'], fallback: true),
      playbackRate: asDouble(json['playbackRate']) ?? 1,
      volume: (asDouble(json['volume']) ?? 1).clamp(0, 1).toDouble(),
      muted: asBool(json['muted']),
      isAd: asBool(json['isAd']),
      loop: asBool(json['loop']),
      loopRepeatLeft: asInt(json['loopRepeatLeft']),
      loopStart: asDouble(json['loopStart']),
      loopEnd: asDouble(json['loopEnd']),
      loopLeft: asInt(json['loopLeft']),
      sleepMode: SleepMode.fromWire(asString(json['sleepMode'])),
      sleepEndsAt: asInt(json['sleepEndsAt']),
      speedTrialEndsAt: asInt(json['speedTrialEndsAt']),
      updatedAt: asInt(json['updatedAt']) ?? 0,
    );
  }
}

/// A browser instance in Ably presence.
final class BrowserInstance {
  const BrowserInstance({
    required this.instanceId,
    this.browserName = 'Browser',
    this.os = '',
    this.deviceName,
    this.targetTitle,
  });

  final String instanceId;
  final String browserName;
  final String os;
  final String? deviceName;
  final String? targetTitle;

  /// `Chrome · Mac`
  String get label => [browserName, os].where((s) => s.isNotEmpty).join(' · ');

  static BrowserInstance? fromPresence(Object? raw) {
    final json = asJsonMap(raw);
    if (asString(json['device']) != Protocol.deviceBrowser) return null;
    final id = asString(json['instanceId']);
    if (id == null || id.isEmpty) return null;
    return BrowserInstance(
      instanceId: id,
      browserName: asString(json['browserName']) ?? 'Browser',
      os: asString(json['os']) ?? '',
      deviceName: asString(json['deviceName']),
      targetTitle: asString(json['targetTitle']),
    );
  }
}

/// One tab in `users/{uid}/browserTabs/{instanceId}`.
final class BrowserTab {
  const BrowserTab({
    required this.tabId,
    required this.windowId,
    required this.title,
    this.favIconUrl,
    this.active = false,
    this.site = Site.generic,
    this.host,
  });

  final int tabId;
  final int windowId;
  final String title;
  final String? favIconUrl;
  final bool active;
  final Site site;
  final String? host;

  static List<BrowserTab> listFromJson(Object? raw) {
    final json = asJsonMap(raw);
    return asJsonList(json['tabs']).map((t) {
      final m = asJsonMap(t);
      return BrowserTab(
        tabId: asInt(m['tabId']) ?? -1,
        windowId: asInt(m['windowId']) ?? -1,
        title: asString(m['title']) ?? '',
        favIconUrl: asString(m['favIconUrl']),
        active: asBool(m['active']),
        site: Site.fromName(asString(m['site'])),
        host: asString(m['host']),
      );
    }).where((t) => t.tabId >= 0).toList();
  }
}
