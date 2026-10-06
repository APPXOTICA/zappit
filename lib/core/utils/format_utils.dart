import 'dart:io';

import 'package:intl/intl.dart';

final class FormatUtils {
  static final countFormatter = NumberFormat.compact();

  static String dateTimeString(int createdAt) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(createdAt);
    final dateString = DateFormat.yMMMEd(Platform.localeName).format(dateTime);
    final timeString = DateFormat.j(Platform.localeName).format(dateTime);
    return '$dateString - $timeString';
  }

  static String durationString(Duration duration) {
    if (duration.inMilliseconds < 0) {
      return duration.inHours > 0 ? "0:00:00" : "0:00";
    }
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    if (hours > 0) {
      return "$hours:${twoDigits(minutes)}:$seconds";
    } else {
      return "${twoDigits(minutes)}:$seconds";
    }
  }
}