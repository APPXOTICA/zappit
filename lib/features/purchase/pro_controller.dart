import 'package:flutter/foundation.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/storage/preferences.dart';

part 'pro_controller.g.dart';

/// Whether the user has Zappit Pro.
///
/// RevenueCat is not wired yet (IAP is screen-only for now). Until then this
/// is false, with a debug-only switch on the IAP screen to test Pro paths.
/// Later: read the RevenueCat entitlement here; callers don't change.
@Riverpod(keepAlive: true)
class ProController extends _$ProController {
  @override
  bool build() {
    if (!kDebugMode) return false;
    return ref.watch(preferencesProvider).debugPro;
  }

  /// Debug builds only.
  void setDebugPro(bool on) {
    if (!kDebugMode) return;
    ref.read(preferencesProvider).setDebugPro(on);
    state = on;
  }
}
