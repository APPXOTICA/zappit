import 'dart:convert';

import 'package:crypto/crypto.dart';

final class CryptoUtils {
  static String hashStringFromString(String source) {
    final bytes = utf8.encode(source);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  static String hashStringFromBytes(List<int> source) {
    final digest = sha256.convert(source);
    return digest.toString();
  }
}