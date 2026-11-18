import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:zappit/core/routes/router_provider.dart';
import 'package:zappit/core/theme/app_tokens.dart';
import 'package:zappit/core/utils/haptic_utils.dart';

/// App-wide notices.
///
/// [top] is for status notices such as "Browser not responding" (design
/// `TopSnack`). [snack] is short feedback. Both show at the top: a bottom
/// snackbar covered the remote's controls.
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
  /// [actionLabel] / [onAction]: a button on the right (e.g. Undo); the bar stays longer.
  static void snack(String message, {bool error = false, String? actionLabel, VoidCallback? onAction}) {
    final overlay = _overlay;
    if (overlay == null) return;
    HapticUtils.hapticFeedback(error ? HapticType.error : HapticType.light);
    // A new one replaces the one showing (top_snackbar_flutter).
    AnimationController? controller;
    showTopSnackBar(
      overlay,
      _Snack(
        message: message,
        actionLabel: onAction == null ? null : actionLabel,
        onAction: onAction == null
            ? null
            : () {
                onAction();
                controller?.reverse();
              },
      ),
      displayDuration: onAction != null ? const Duration(seconds: 4) : Duration(milliseconds: message.length > 40 ? 2600 : 1800),
      onAnimationControllerInit: (c) => controller = c,
      padding: const EdgeInsets.symmetric(horizontal: 12),
    );
  }
}

/// One line of feedback (with an optional action such as Undo).
class _Snack extends StatelessWidget {
  const _Snack({required this.message, this.actionLabel, this.onAction});

  final String message;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    const t = AppTokens.dark;
    return Material(
      color: Colors.transparent,
      child: Container(
        constraints: const BoxConstraints(minHeight: 48),
        padding: EdgeInsets.fromLTRB(AppTokens.space4, AppTokens.space2, onAction == null ? AppTokens.space4 : AppTokens.space1, AppTokens.space2),
        decoration: BoxDecoration(
          color: t.surface300,
          borderRadius: BorderRadius.circular(AppTokens.radiusMd),
          border: Border.all(color: t.hairlineStrong),
          boxShadow: const [BoxShadow(color: Color(0x80000000), blurRadius: 32, offset: Offset(0, 12))],
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                message,
                textAlign: onAction == null ? TextAlign.center : TextAlign.start,
                style: AppText.body.copyWith(color: t.ink),
              ),
            ),
            if (onAction != null)
              TextButton(
                onPressed: onAction,
                child: Text(actionLabel ?? '', style: AppText.bodyStrong.copyWith(color: t.signalAd)),
              ),
          ],
        ),
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
