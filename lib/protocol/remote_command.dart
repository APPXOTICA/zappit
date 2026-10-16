import 'package:zappit/protocol/protocol.dart';

enum CommandSource { button, voice }

enum NavDirection { up, down, left, right }

/// One control sent to the selected browser.
///
/// Every command the app can send is a named constructor here, so the list
/// matches the protocol table and the Voice Command function list one to one.
/// [fromFunctionCall] accepts only names in [functionNames] (Gemini output).
final class RemoteCommand {
  const RemoteCommand._(this.fn, [this.args = const {}]);

  final String fn;
  final Map<String, Object?> args;

  // Playback
  const RemoteCommand.play() : this._('play');
  const RemoteCommand.pause() : this._('pause');
  const RemoteCommand.replay() : this._('replay');
  RemoteCommand.seekForward(int seconds) : this._('seek_forward', {'seconds': seconds});
  RemoteCommand.seekBackward(int seconds) : this._('seek_backward', {'seconds': seconds});
  RemoteCommand.seekTo(double seconds) : this._('seek_to', {'seconds': seconds});

  // Volume
  RemoteCommand.setVolume(int volume) : this._('set_volume', {'volume': volume.clamp(0, 100)});
  RemoteCommand.volumeUp([int step = 5]) : this._('volume_up', {'step': step});
  RemoteCommand.volumeDown([int step = 5]) : this._('volume_down', {'step': step});
  RemoteCommand.setMute(bool muted) : this._('set_mute', {'muted': muted});

  // Speed, loop, A-B, sleep
  RemoteCommand.setSpeed(double rate, {int? trialSeconds})
      : this._('set_speed', {'rate': rate, 'trialSeconds': ?trialSeconds});

  /// [count] null means unlimited (Pro).
  RemoteCommand.setLoop(bool loop, {int? count}) : this._('set_loop', {'loop': loop, 'count': count});

  /// [point] is `a` or `b`. [count] null means unlimited.
  RemoteCommand.setAb(String point, bool on, {int? count})
      : this._('set_ab', {'point': point, 'on': on, 'count': count});
  const RemoteCommand.clearAb() : this._('clear_ab');

  /// [minutes] 0 turns the timer off.
  RemoteCommand.setSleepTimer(int minutes) : this._('set_sleep_timer', {'minutes': minutes});
  RemoteCommand.sleepAtEndOfVideo() : this._('set_sleep_timer', {'minutes': 'end_of_video'});

  // View
  const RemoteCommand.setFullscreen() : this._('set_fullscreen');
  const RemoteCommand.toggleTheater() : this._('toggle_theater');
  const RemoteCommand.toggleChat() : this._('toggle_chat');
  const RemoteCommand.toggleVoiceBoost() : this._('toggle_voice_boost');

  // Captions
  const RemoteCommand.toggleCc() : this._('toggle_cc');
  RemoteCommand.setSubtitleTrack(String trackId) : this._('set_subtitle_track', {'trackId': trackId});
  RemoteCommand.setSubtitleSize(int percent) : this._('set_subtitle_size', {'percent': percent});

  // Site actions
  const RemoteCommand.skipAd() : this._('skip_ad');
  const RemoteCommand.skipIntro() : this._('skip_intro');
  const RemoteCommand.nextEpisode() : this._('next_episode');
  const RemoteCommand.nextVideo() : this._('next_video');
  const RemoteCommand.prevVideo() : this._('prev_video');

  // Lists (answered in ack data)
  const RemoteCommand.getTracks() : this._('get_tracks');
  const RemoteCommand.getEpisodes() : this._('get_episodes');
  RemoteCommand.playEpisode(String episodeId) : this._('play_episode', {'episodeId': episodeId});
  const RemoteCommand.getQuality() : this._('get_quality');
  RemoteCommand.setQuality(String id) : this._('set_quality', {'id': id});
  const RemoteCommand.getMediaUrl() : this._('get_media_url');

  // Navigation
  RemoteCommand.openUrl(String url) : this._('open_url', {'url': url});
  const RemoteCommand.goHome() : this._('go_home');
  RemoteCommand.nav(NavDirection direction) : this._('nav', {'direction': direction.name});
  const RemoteCommand.navSelect() : this._('nav_select');
  const RemoteCommand.endScreenPlayNow() : this._('end_screen_play_now');
  const RemoteCommand.endScreenCancel() : this._('end_screen_cancel');
  const RemoteCommand.endScreenDismiss() : this._('end_screen_dismiss');

  // Tabs
  const RemoteCommand.watchTabs() : this._('watch_tabs');
  const RemoteCommand.unwatchTabs() : this._('unwatch_tabs');
  RemoteCommand.activateTab({required int tabId, required int windowId})
      : this._('activate_tab', {'tabId': tabId, 'windowId': windowId});

  const RemoteCommand.ping() : this._('ping');

  /// Every function name the extension understands.
  static const functionNames = <String>{
    'play', 'pause', 'replay', 'seek_forward', 'seek_backward', 'seek_to',
    'set_volume', 'volume_up', 'volume_down', 'set_mute',
    'set_speed', 'set_loop', 'set_ab', 'clear_ab', 'set_sleep_timer',
    'set_fullscreen', 'toggle_theater', 'toggle_chat', 'toggle_voice_boost',
    'toggle_cc', 'set_subtitle_track', 'set_subtitle_size',
    'skip_ad', 'skip_intro', 'next_episode', 'next_video', 'prev_video',
    'get_tracks', 'get_episodes', 'play_episode', 'get_quality', 'set_quality', 'get_media_url',
    'open_url', 'go_home', 'nav', 'nav_select',
    'end_screen_play_now', 'end_screen_cancel', 'end_screen_dismiss',
    'watch_tabs', 'unwatch_tabs', 'activate_tab', 'ping',
  };

  /// Builds a command from a model function call. Returns null for unknown names.
  static RemoteCommand? fromFunctionCall(String fn, Map<String, Object?> args) {
    if (!functionNames.contains(fn)) return null;
    return RemoteCommand._(fn, Map.unmodifiable(args));
  }

  /// Commands that only read; they may be sent without a playing video.
  bool get isQuery => fn.startsWith('get_') || fn == 'ping';

  Map<String, Object?> toPayload({
    required String requestId,
    required String targetInstanceId,
    required CommandSource source,
    required int timestamp,
  }) =>
      {
        'fn': fn,
        'args': args,
        'source': source.name,
        'requestId': requestId,
        'targetInstanceId': targetInstanceId,
        'schema_version': Protocol.schemaVersion,
        'timestamp': timestamp,
      };

  @override
  String toString() => 'RemoteCommand($fn, $args)';
}
