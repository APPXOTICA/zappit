import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/realtime/command_bus.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/core/utils/link_utils.dart';
import 'package:zappit/features/connection/connection_controller.dart';
import 'package:zappit/protocol/remote_command.dart';

part 'share_intent_controller.g.dart';

/// Text shared into Zappit from YouTube, Netflix, TikTok, Instagram…
///
/// The first http(s) URL in the text is opened in the selected browser, the
/// same way as the link panel. If the app was launched by the share, the URL
/// waits until the browser is reachable (auth + Ably + selection), up to a
/// short timeout, then fails with a notice. The app stays on screen. The URL
/// is kept in memory only: a share that never went out is not sent on a
/// later launch.
///
/// iOS: the Share Extension (`ios/ShareExtension`) leaves the text in the App
/// Group and opens the app; it is read through the `tv.zappit/share` channel
/// at launch and on every resume. Android: receive_sharing_intent.
@Riverpod(keepAlive: true)
class ShareIntentController extends _$ShareIntentController {
  StreamSubscription<List<SharedMediaFile>>? _sub;
  AppLifecycleListener? _lifecycle;
  Timer? _giveUp;
  String? _pending;

  static const _waitForBrowser = Duration(seconds: 12);
  static const _iosChannel = MethodChannel('tv.zappit/share');

  @override
  void build() {
    if (kIsWeb) return;
    final ios = defaultTargetPlatform == TargetPlatform.iOS;
    // On resume, BrowserPresence may drop a stale browser list; the microtask
    // runs after every resume callback, so the flush sees the new list.
    _lifecycle = AppLifecycleListener(onResume: () {
      if (ios) unawaited(_readIosShare());
      scheduleMicrotask(() => unawaited(_flushPending()));
    });
    if (ios) {
      unawaited(_readIosShare());
    } else {
      _sub = ReceiveSharingIntent.instance.getMediaStream().listen(_handleFiles, onError: (Object e) {
        debugPrint('share stream error: $e');
      });
      unawaited(ReceiveSharingIntent.instance.getInitialMedia().then((files) {
        _handleFiles(files);
        ReceiveSharingIntent.instance.reset();
      }));
    }

    // Retry a waiting URL when the connection becomes usable.
    ref.listen(connectionStatusProvider, (_, status) {
      if (_giveUp != null) _log('status ${status.phase.name} browsers=${status.browsers.length} selected=${status.selected != null}');
      if (status.canSendCommands) unawaited(_flushPending());
    });

    ref.onDispose(() {
      unawaited(_sub?.cancel());
      _lifecycle?.dispose();
      _giveUp?.cancel();
    });
  }

  Future<void> _readIosShare() async {
    try {
      final text = await _iosChannel.invokeMethod<String>('getSharedUrl');
      if (text != null) _handleText(text);
    } on PlatformException catch (e) {
      debugPrint('share channel error: $e');
    } on MissingPluginException {
      // Engine without the channel (e.g. tests).
    }
  }

  // TEMP diagnostic (share delay on Android, 2026-10-30): remove after.
  final _clock = Stopwatch();
  void _log(String message) => debugPrint('[share] ${_clock.elapsedMilliseconds} ms $message');

  void _handleFiles(List<SharedMediaFile> files) {
    _clock
      ..reset()
      ..start();
    _log('received ${files.length} item(s) via plugin');
    for (final file in files) {
      if (_handleText([file.path, file.message].whereType<String>().join(' '))) return;
    }
  }

  /// True when [text] had a link.
  bool _handleText(String text) {
    final url = LinkUtils.firstUrlIn(text);
    if (!_clock.isRunning) _clock.start();
    _log('link ${url != null}');
    if (url == null) {
      if (text.trim().isNotEmpty) AppNotice.snack('No link found in what you shared');
      return false;
    }
    _pending = url.toString();
    unawaited(_flushPending());
    return true;
  }

  Future<void> _flushPending() async {
    final url = _pending;
    if (url == null) return;

    // Android delivers the share before the app resumes: the resume flush
    // sends it, after the browser list was checked.
    final lifecycle = WidgetsBinding.instance.lifecycleState;
    if (lifecycle == AppLifecycleState.paused || lifecycle == AppLifecycleState.hidden) return;

    final status = ref.read(connectionStatusProvider);
    _log('flush: phase ${status.phase.name} canSend=${status.canSendCommands}');
    if (!status.canSendCommands) {
      if (_giveUp == null) AppNotice.snack('Waiting for your browser…');
      _giveUp ??= Timer(_waitForBrowser, () {
        _giveUp = null;
        _log('gave up, pending=${_pending != null}');
        if (_pending == null) return;
        _pending = null;
        AppNotice.top(
          title: "Couldn't open the link",
          message: 'No browser is connected. Open your browser with Zappit signed in and try again.',
        );
      });
      return;
    }

    _giveUp?.cancel();
    _giveUp = null;
    _pending = null;
    AppNotice.snack('Opening in ${status.selectedLabel ?? 'your browser'}…');
    _log('sending open_url');
    final ack = await ref.read(commandBusProvider).send(RemoteCommand.openUrl(url));
    _log('ack ok=${ack.ok} error=${ack.error}');
    if (ack.ok) AppNotice.snack('Opened in ${status.selectedLabel ?? 'your browser'}');
  }
}
