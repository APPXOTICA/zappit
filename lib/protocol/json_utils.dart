/// Lenient readers for JSON coming from the extension, Ably and RTDB.
///
/// RTDB returns `Map<Object?, Object?>` and numbers as int or double, so every
/// model parses through these helpers instead of casting directly.
Map<String, dynamic> asJsonMap(Object? value) {
  if (value is Map<String, dynamic>) return value;
  if (value is Map) {
    return value.map((key, v) => MapEntry(key.toString(), v));
  }
  return const {};
}

List<Object?> asJsonList(Object? value) {
  if (value is List) return value;
  if (value is Map) {
    // RTDB turns arrays with int keys into maps.
    final entries = value.entries.toList()
      ..sort((a, b) => a.key.toString().compareTo(b.key.toString()));
    return entries.map((e) => e.value).toList();
  }
  return const [];
}

double? asDouble(Object? value) {
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value);
  return null;
}

int? asInt(Object? value) {
  if (value is int) return value;
  if (value is num) return value.toInt();
  if (value is String) return int.tryParse(value);
  return null;
}

bool asBool(Object? value, {bool fallback = false}) {
  if (value is bool) return value;
  return fallback;
}

String? asString(Object? value) {
  if (value == null) return null;
  if (value is String) return value;
  return value.toString();
}
