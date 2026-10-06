import 'package:flutter/services.dart';
import 'package:haptic_feedback/haptic_feedback.dart';

enum HapticType {
  success,
  warning,
  error,
  light,
  medium,
  heavy,
  rigid,
  soft,
  selection,
}

final class HapticUtils {
  static Future<void> hapticFeedback(HapticType type) async {
    if (!await Haptics.canVibrate()) return;

    switch (type) {
      case HapticType.success:
        Haptics.vibrate(HapticsType.success);
        break;
      case HapticType.warning:
        Haptics.vibrate(HapticsType.warning);
        break;
      case HapticType.error:
        Haptics.vibrate(HapticsType.error);
        break;
      case HapticType.light:
        HapticFeedback.lightImpact();
        break;
      case HapticType.medium:
        HapticFeedback.mediumImpact();
        break;
      case HapticType.heavy:
        HapticFeedback.heavyImpact();
        break;
      case HapticType.rigid:
        Haptics.vibrate(HapticsType.heavy);
        break;
      case HapticType.soft:
        Haptics.vibrate(HapticsType.heavy);
        break;
      case HapticType.selection:
        HapticFeedback.selectionClick();
        break;
    }
  }
}