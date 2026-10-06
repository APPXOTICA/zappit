import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

import 'package:zappit/core/constants/strings.dart';

class RemoteConfigService {
  final instance = FirebaseRemoteConfig.instance;

  bool _didInit = false;
  Future<void>? _initFuture;

  Future<void> init() {
    if (_didInit) return Future.value();
    return _initFuture ??= _initInternal();
  }

  Future<void> _initInternal() async {
    final setting = RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 30),
      // Should set 12 hours or more in production
      minimumFetchInterval:
          kReleaseMode ? const Duration(hours: 12) : const Duration(seconds: 1),
    );

    try {
      await instance.setConfigSettings(setting);
      await instance.setDefaults(const {
        // TODO: set default values here
        Strings.supportEmailKey: 'hello@zappit.tv'
      });
      await instance.fetchAndActivate();
      _didInit = true;
    } on PlatformException catch (exception) {
      debugPrint(exception.toString());
    } catch (exception) {
      debugPrint(exception.toString());
    }
  }
}