import 'package:shared_preferences/shared_preferences.dart';
import 'package:zappit/features/auth/data/models/auth_provider.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';

part 'preferences.g.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) => throw UnimplementedError());

@Riverpod(keepAlive: true)
Preferences preferences(Ref ref) => Preferences(instance: ref.watch(sharedPreferencesProvider));

class Preferences {
  static const _shouldSaveEmail = 'shouldSaveEmail';
  static const _email = 'email';
  static const _launchCountKey = 'launchCount';
  static const _lastLoginMethodKey = 'lastLoginMethod';
  static const _debugProKey = 'debugPro';

  final SharedPreferences instance;

  Preferences({required this.instance});


  bool get shouldSaveEmail => instance.getBool(_shouldSaveEmail) ?? false;
  void setShouldSaveEmail(bool shouldSaveEmail) {
    instance.setBool(_shouldSaveEmail, shouldSaveEmail);
    if (!shouldSaveEmail) {
      instance.remove(_email);
    }
  }

  String? get email => instance.getString(_email);
  void setEmail(String email) => instance.setString(_email, email);

  String get lastLoginMethod => instance.getString(_lastLoginMethodKey) ?? AuthProvider.unknown.name;
  void setLastLoginMethod(String method) => instance.setString(_lastLoginMethodKey, method);

  bool get debugPro => instance.getBool(_debugProKey) ?? false;
  void setDebugPro(bool on) => instance.setBool(_debugProKey, on);

  int get launchCount => instance.getInt(_launchCountKey) ?? 0;
  void setLaunchCount(int count) => instance.setInt(_launchCountKey, count);

  Future<bool> clearAll() async {
    return instance.clear();
  }

  /// Clears device-persisted keys that are bound to the user's account.
  /// Call this when the user deletes their account.
  /// Device-only counters/flags (launchCount, didReview) are intentionally kept.
  // Future<void> clearOnAccountDeletion() async {
  //   // Auth/session related
  //   await instance.remove(_lastLoginMethodKey);
  //
  //   // Saved email / login convenience
  //   await instance.remove(_shouldSaveEmail);
  //   await instance.remove(_email);
  //
  //   // Audio settings
  //   await instance.remove(_voiceTypeKey);
  //
  //   // Script display masks (per language)
  //   final keys = instance.getKeys();
  //   for (final k in keys) {
  //     if (k.startsWith(_scriptDisplayMaskPrefix)) {
  //       await instance.remove(k);
  //     }
  //   }
  // }
}