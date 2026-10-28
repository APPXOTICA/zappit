import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/realtime/zappit_channel.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/routes/router_provider.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/connection/connection_controller.dart';
import 'package:zappit/protocol/messages.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/protocol/remote_command.dart';
import 'package:zappit/shared/widgets/web_view_page.dart';

part 'command_bus.g.dart';

/// Sends every command to the selected browser and waits for its `ack`.
///
/// - No selected browser: returns a local `no_browser` ack without sending.
/// - No ack within [defaultTimeout]: shows "Browser not responding" at the top.
/// - Failed ack: shows a snackbar with the reason, unless the caller handles it.
@Riverpod(keepAlive: true)
CommandBus commandBus(Ref ref) {
  final bus = CommandBus(ref);
  ref.onDispose(bus.dispose);
  return bus;
}

class CommandBus {
  CommandBus(this._ref) {
    _ref.listen(channelEventsProvider, (_, bus) => _listen(bus), fireImmediately: true);
  }

  final Ref _ref;
  final _pending = <String, Completer<Ack>>{};
  StreamSubscription<ChannelEvent>? _sub;
  static const _uuid = Uuid();

  static const defaultTimeout = Duration(seconds: 4);

  /// Browser not responding notices are spaced out so a burst of taps shows one.
  DateTime _lastTimeoutNotice = DateTime.fromMillisecondsSinceEpoch(0);

  void _listen(ChannelEventBus bus) {
    unawaited(_sub?.cancel());
    _sub = bus.stream.listen((event) {
      if (event is! AckEvent) return;
      final completer = _pending.remove(event.ack.requestId);
      if (completer != null && !completer.isCompleted) completer.complete(event.ack);
    });
  }

  /// Sends [command]. Set [handleErrors] to false to show your own message.
  Future<Ack> send(
    RemoteCommand command, {
    CommandSource source = CommandSource.button,
    Duration timeout = defaultTimeout,
    bool handleErrors = true,
  }) async {
    final requestId = _uuid.v4();
    final status = _ref.read(connectionStatusProvider);
    final target = status.selected;
    final publisher = _ref.read(commandPublisherProvider);

    if (target == null || !publisher.isReady) {
      return Ack.local(requestId, AckError.noBrowser);
    }

    final completer = Completer<Ack>();
    _pending[requestId] = completer;

    try {
      await publisher.publish(command.toPayload(
        requestId: requestId,
        targetInstanceId: target.instanceId,
        source: source,
        timestamp: DateTime.now().millisecondsSinceEpoch,
      ));
    } catch (e) {
      debugPrint('publish ${command.fn} failed: $e');
      _pending.remove(requestId);
      final ack = Ack.local(requestId, AckError.failed);
      if (handleErrors) _showTimeout(target.label);
      return ack;
    }

    final ack = await completer.future.timeout(timeout, onTimeout: () {
      _pending.remove(requestId);
      return Ack.local(requestId, AckError.timeout);
    });

    if (!ack.ok && handleErrors) {
      if (ack.error == AckError.timeout) {
        _showTimeout(target.label);
      } else if (ack.error == AckError.soundBlocked) {
        _showSoundBlocked();
      } else {
        AppNotice.snack(messageFor(ack), error: true);
      }
    }
    return ack;
  }

  /// Fire and forget for high-frequency controls (volume slider, d-pad).
  void fire(RemoteCommand command, {CommandSource source = CommandSource.button}) {
    unawaited(send(command, source: source));
  }

  void _showTimeout(String browserLabel) {
    final now = DateTime.now();
    if (now.difference(_lastTimeoutNotice) < const Duration(seconds: 5)) return;
    _lastTimeoutNotice = now;
    AppNotice.top(
      title: 'Browser not responding',
      message: "$browserLabel didn't answer. Check that it's open.",
    );
  }

  /// The browser kept the video muted (Chrome's autoplay policy). Shown
  /// every time; tapping it opens the Q&A entry.
  void _showSoundBlocked() {
    AppNotice.top(
      title: "Why can't I hear anything?",
      message: 'Tap to see how to turn the sound on.',
      icon: Icons.volume_off_rounded,
      error: false,
      onTap: () => rootNavigatorKey.currentContext?.push(
        AppRoutes.webView,
        extra: const WebViewArgs(title: 'Sound', url: soundBlockedHelpUrl),
      ),
    );
  }

  /// User-facing text for a failed ack.
  static String messageFor(Ack ack) {
    return switch (ack.error) {
      AckError.notFound => ack.message ?? "Couldn't find that button on the page",
      AckError.notSupported => "This site doesn't support that",
      AckError.noMedia => 'No video is playing',
      AckError.isAd => "Can't do that during an ad",
      AckError.startAfterEnd => 'The start point must be before the end point',
      AckError.endBeforeStart => 'The end point must be after the start point',
      AckError.notChanged => "The site didn't change it",
      AckError.tabNotFound => 'That tab is already closed',
      AckError.invalidUrl => 'That link can’t be opened',
      AckError.noBrowser => 'No browser is selected',
      _ => ack.message ?? 'Something went wrong',
    };
  }

  void dispose() {
    unawaited(_sub?.cancel());
    for (final c in _pending.values) {
      if (!c.isCompleted) c.complete(Ack.local('', AckError.failed));
    }
    _pending.clear();
  }
}
