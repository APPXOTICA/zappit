import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// This phone, for pairing and the Pro preview (native: `AppDelegate.swift`,
/// `MainActivity.kt`, channel `tv.zappit/device`).
///
/// [marker]: a random value in the iOS Keychain or Android's ANDROID_ID; both
/// survive an app reinstall. The server stores only its hash ([phoneId]), which
/// is also this phone's entry in `users/{uid}/phones`.
///
/// A phone whose OS gives no usable marker (rare, mostly modified Android
/// builds) still connects with a random one kept in the app's storage
/// ([fallback]). A reinstall would make a new one, so the server never gives
/// such a phone the Pro preview.
@immutable
class PhoneIdentity {
  const PhoneIdentity({required this.marker, required this.name, required this.platform, this.fallback = false});

  final String marker;
  final String name;

  /// 'ios' or 'android'.
  final String platform;

  /// [marker] is the app's own random value, not the OS's.
  final bool fallback;

  /// Same hash as the server's `phoneIdFor` (functions/device.js).
  String get phoneId => sha256.convert(utf8.encode('zappit-phone:$marker')).toString();

  static const _channel = MethodChannel('tv.zappit/device');
  static const _fallbackKey = 'phoneFallbackMarker';
  static PhoneIdentity? _cached;

  /// Same rule as the server's `validMarker` (functions/device.js).
  static final _validMarker = RegExp(r'^[A-Za-z0-9-]{8,64}$');

  static Future<PhoneIdentity?> load() async {
    if (_cached != null) return _cached;
    String? marker;
    try {
      marker = await _channel.invokeMethod<String>('getMarker');
    } catch (e) {
      debugPrint('phone marker failed: $e');
    }
    var fallback = false;
    if (marker == null || !_validMarker.hasMatch(marker)) {
      fallback = true;
      final prefs = await SharedPreferences.getInstance();
      marker = prefs.getString(_fallbackKey);
      if (marker == null) {
        final random = Random.secure();
        marker = List.generate(32, (_) => random.nextInt(16).toRadixString(16)).join();
        await prefs.setString(_fallbackKey, marker);
      }
    }
    final info = DeviceInfoPlugin();
    String name;
    if (Platform.isIOS) {
      final ios = await info.iosInfo;
      name = ios.modelName.isNotEmpty ? ios.modelName : ios.model;
    } else {
      final android = await info.androidInfo;
      name = android.model;
    }
    return _cached = PhoneIdentity(marker: marker, name: name, platform: Platform.isIOS ? 'ios' : 'android', fallback: fallback);
  }

  /// iOS: a DeviceCheck token (null on the simulator).
  static Future<String?> deviceCheckToken() async {
    if (!Platform.isIOS) return null;
    try {
      return await _channel.invokeMethod<String>('deviceCheckToken');
    } catch (e) {
      debugPrint('DeviceCheck token failed: $e');
      return null;
    }
  }

  /// Android: a classic Play Integrity token for the Pro preview of [uid].
  static Future<String?> integrityToken(String uid) async {
    if (!Platform.isAndroid) return null;
    try {
      return await _channel.invokeMethod<String>('integrityToken', {'nonce': integrityNonceFor(uid)});
    } catch (e) {
      debugPrint('Play Integrity token failed: $e');
      return null;
    }
  }

  /// Same as the server's `integrityNonceFor` (functions/device.js): base64url, no padding.
  static String integrityNonceFor(String uid) =>
      base64Url.encode(sha256.convert(utf8.encode('zappit-preview:$uid')).bytes).replaceAll('=', '');
}
