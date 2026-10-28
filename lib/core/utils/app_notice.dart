import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:zappit/core/routes/router_provider.dart';
import 'package:zappit/core/theme/app_tokens.dart';
import 'package:zappit/core/utils/haptic_utils.dart';
import 'package:zappit/core/utils/ui_helper.dart';

/// App-wide notices.
///
/// [top] is for status notices such as "Browser not responding" (design
/// `TopSnack`). [snack] is the regular bottom snackbar for short feedback.
abstract final class AppNotice {
  static OverlayState? get _overlay => rootNavigatorKey.currentState?.overlay;

  static void top({
    required String title,
    String? message,
    IconData icon = Icons.warning_rounded,
    bool error = true,
    VoidCallback? onTap,
  }) {
    final overlay = _overlay;
    if (overlay == null) return;
    HapticUtils.hapticFeedback(error ? HapticType.warning : HapticType.light);
    showTopSnackBar(
      overlay,
      _TopSnack(title: title, message: message, icon: icon, error: error),
      displayDuration: const Duration(seconds: 3),
      onTap: onTap,
      padding: const EdgeInsets.symmetric(horizontal: 12),
    );
  }

  /// Every snack comes with a haptic: a warning buzz for errors, a light tap otherwise.
  static void snack(String message, {bool error = false}) {
    final messenger = scaffoldKey.currentState;
    if (messenger == null) {
      top(title: message, error: error);
      return;
    }
    HapticUtils.hapticFeedback(error ? HapticType.error : HapticType.light);
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message, textAlign: TextAlign.center),
          duration: Duration(milliseconds: message.length > 40 ? 2600 : 1800),
        ),
      );
  }
}

class _TopSnack extends StatelessWidget {
  const _TopSnack({required this.title, required this.message, required this.icon, required this.error});

  final String title;
  final String? message;
  final IconData icon;
  final bool error;

  @override
  Widget build(BuildContext context) {
    const t = AppTokens.dark;
    final iconColor = error ? t.signalOff : t.accentText;
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4, vertical: AppTokens.space3),
        decoration: BoxDecoration(
          color: t.surface300,
          borderRadius: BorderRadius.circular(AppTokens.radiusMd),
          border: Border.all(color: t.hairlineStrong),
          boxShadow: const [BoxShadow(color: Color(0x80000000), blurRadius: 32, offset: Offset(0, 12))],
        ),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(color: iconColor.withValues(alpha: 0.16), shape: BoxShape.circle),
              child: Icon(icon, size: 20, color: iconColor),
            ),
            const SizedBox(width: AppTokens.space3),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppText.bodyStrong.copyWith(color: t.ink)),
                  if (message != null)
                    Text(message!, style: AppText.label.copyWith(color: t.inkMuted, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
