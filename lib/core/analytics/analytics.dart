import 'package:flutter/foundation.dart';
import 'package:posthog_flutter/posthog_flutter.dart';
import 'package:zappit/core/constants/config.dart';

/// PostHog wrapper. Event names are snake_case nouns + past-tense verbs.
abstract final class Analytics {
  static bool _ready = false;

  static Future<void> init() async {
    if (_ready) return;
    try {
      final config = PostHogConfig(postHogApiKey)
        ..host = postHogHost
        ..captureApplicationLifecycleEvents = true
        ..debug = kDebugMode;
      await Posthog().setup(config);
      _ready = true;
    } catch (e) {
      debugPrint('PostHog setup failed: $e');
    }
  }

  static Future<void> identify(String uid) async {
    if (!_ready) return;
    await Posthog().identify(userId: uid);
  }

  static Future<void> reset() async {
    if (!_ready) return;
    await Posthog().reset();
  }

  static Future<void> event(String name, [Map<String, Object>? properties]) async {
    if (!_ready) return;
    try {
      await Posthog().capture(eventName: name, properties: properties);
    } catch (e) {
      debugPrint('PostHog capture failed: $e');
    }
  }
}
