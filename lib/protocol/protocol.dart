/// App ↔ extension protocol constants.
///
/// The reference is `zappit_assets/protocol/README.md`.
abstract final class Protocol {
  static const schemaVersion = '1.0';

  // Ably event names
  static const command = 'command';
  static const ack = 'ack';
  static const target = 'target';
  static const state = 'state';

  // Presence
  static const appClientId = 'zappit-flutter';
  static const extensionClientIdPrefix = 'extension-';
  static const deviceApp = 'flutter';
  static const deviceBrowser = 'browser';
}

/// Site kinds reported by the extension.
enum Site {
  youtube,
  shorts,
  netflix,
  tiktok,
  reels,
  generic,
  none;

  static Site fromName(String? name) =>
      Site.values.firstWhere((s) => s.name == name, orElse: () => Site.none);

  bool get isShortForm => this == shorts || this == tiktok || this == reels;

  String get displayName => switch (this) {
        youtube => 'YouTube',
        shorts => 'Shorts',
        netflix => 'Netflix',
        tiktok => 'TikTok',
        reels => 'Reels',
        generic => 'Web',
        none => 'Zappit',
      };

  /// Brand image in `assets/images/`, null for generic sites.
  String? get brandAsset => switch (this) {
        youtube => 'assets/images/youtube.png',
        shorts => 'assets/images/shorts.png',
        netflix => 'assets/images/netflix.png',
        tiktok => 'assets/images/tiktok.png',
        reels => 'assets/images/reels.png',
        generic || none => null,
      };
}

enum PageKind {
  watch,
  home,
  other;

  static PageKind fromName(String? name) =>
      PageKind.values.firstWhere((p) => p.name == name, orElse: () => PageKind.other);
}

/// Controls a site can have. A capability says the control exists for the
/// site; `SiteState` says whether it is available right now.
enum Capability {
  play,
  seek,
  speed,
  volume,
  replay,
  loop,
  abLoop('ab_loop'),
  sleepTimer('sleep_timer'),
  fullscreen,
  theater,
  voiceBoost('voice_boost'),
  chat,
  captions,
  chapters,
  episodes,
  nextEpisode('next_episode'),
  skipAd('skip_ad'),
  skipIntro('skip_intro'),
  endScreen('end_screen'),
  prevNext('prev_next'),
  home,
  openInApp('open_in_app'),
  quality,
  spatialNav('spatial_nav');

  const Capability([this._wireName]);

  final String? _wireName;

  String get wireName => _wireName ?? name;

  static Capability? fromWire(String? value) {
    for (final c in Capability.values) {
      if (c.wireName == value) return c;
    }
    return null;
  }
}

/// Ack error codes.
abstract final class AckError {
  static const notFound = 'not_found';
  static const notSupported = 'not_supported';
  static const noMedia = 'no_media';
  static const isAd = 'is_ad';
  static const startAfterEnd = 'start_after_end';
  static const endBeforeStart = 'end_before_start';
  static const notChanged = 'not_changed';
  static const tabNotFound = 'tab_not_found';
  static const invalidUrl = 'invalid_url';
  static const failed = 'failed';
  // App-side only
  static const timeout = 'timeout';
  static const noBrowser = 'no_browser';
}
