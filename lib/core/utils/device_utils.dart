import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

final class DeviceUtils {
  static Future<String> deviceInfo() async {
    final info = DeviceInfoPlugin();
    String deviceInfo = 'unknown';
    if (Platform.isIOS) {
      final iosInfo = await info.iosInfo;
      deviceInfo = 'iOS ${iosInfo.systemVersion} | ${iosInfo.utsname.machine}';
    } else if (Platform.isAndroid) {
      final androidInfo = await info.androidInfo;
      deviceInfo = 'AOS ${androidInfo.version.sdkInt} | ${androidInfo.model}';
    }

    return deviceInfo;
  }
}