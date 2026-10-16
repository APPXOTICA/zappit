import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/realtime/command_bus.dart';
import 'package:zappit/core/storage/preferences.dart';
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
/// short timeout, then fails with a notice. The app stays on screen.
@Riverpod(keepAlive: true)
class ShareIntentController extends _$ShareIntentController {
  StreamSubscription<List<SharedMediaFile>>? _sub;
  Timer? _giveUp;

  static const _waitForBrowser = Duration(seconds: 12);

  @override
  void build() {
    if (kIsWeb) return;
    _sub = ReceiveSharingIntent.instance.getMediaStream().listen(_handle, onError: (Object e) {
      debugPrint('share stream error: $e');
    });
    unawaited(ReceiveSharingIntent.instance.getInitialMedia().then((files) {
      _handle(files);
      ReceiveSharingIntent.instance.reset();
    }));

    // Retry a waiting URL when the connection becomes usable.
    ref.listen(connectionStatusProvider, (_, status) {
      if (status.canSendCommands) unawaited(_flushPending());
    });

    ref.onDispose(() {
      unawaited(_sub?.cancel());
      _giveUp?.cancel();
    });
  }

  void _handle(List<SharedMediaFile> files) {
    for (final file in files) {
      final text = [file.path, file.message].whereType<String>().join(' ');
      final url = LinkUtils.firstUrlIn(text);
      if (url != null) {
        ref.read(preferencesProvider).setPendingSharedUrl(url.toString());
        unawaited(_flushPending());
        return;
      }
    }
  }

  Future<void> _flushPending() async {
    final prefs = ref.read(preferencesProvider);
    final url = prefs.pendingSharedUrl;
    if (url == null) return;

    final status = ref.read(connectionStatusProvider);
    if (!status.canSendCommands) {
      _giveUp ??= Timer(_waitForBrowser, () {
        _giveUp = null;
        if (prefs.pendingSharedUrl == null) return;
        prefs.setPendingSharedUrl(null);
        AppNotice.top(
          title: "Couldn't open the link",
          message: 'No browser is connected. Open your browser with Zappit signed in and try again.',
        );
      });
      return;
    }

    _giveUp?.cancel();
    _giveUp = null;
    prefs.setPendingSharedUrl(null);
    final ack = await ref.read(commandBusProvider).send(RemoteCommand.openUrl(url));
    if (ack.ok) AppNotice.snack('Opened in ${status.selectedLabel ?? 'your browser'}');
  }
}
