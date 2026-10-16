import 'package:flutter/material.dart';
import 'package:zappit/core/extensions/context_extensions.dart';
import 'package:zappit/core/theme/app_tokens.dart';
import 'package:zappit/shared/widgets/ds/zp_pressable.dart';

enum ZpButtonStyle {
  /// surface-200, hairline-strong border
  tonal,

  /// ink background, base text (Play now, Sign in with Apple)
  ink,

  /// accent background (Subscribe, Upgrade)
  accent,

  /// ad yellow (Skip Ad / Skip Intro)
  signal,

  /// transparent, hairline border
  quiet,
}

/// Pill / rounded button used across screens (`.za-bigbtn`, `.za-btn`, `.za-signin`, `.za-action`).
class ZpButton extends StatelessWidget {
  const ZpButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.trailingIcon,
    this.style = ZpButtonStyle.tonal,
    this.height = AppTokens.controlMd,
    this.radius = AppTokens.radiusFull,
    this.expand = true,
    this.textStyle,
  });

  final String label;
  final VoidCallback? onPressed;
  final Widget? icon;
  final Widget? trailingIcon;
  final ZpButtonStyle style;
  final double height;
  final double radius;
  final bool expand;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final enabled = onPressed != null;

    final (Color bg, Color fg, Color border) = switch (style) {
      ZpButtonStyle.tonal => (t.surface200, t.ink, t.hairlineStrong),
      ZpButtonStyle.ink => (t.ink, t.bgBase, Colors.transparent),
      ZpButtonStyle.accent => (t.accent, t.onAccent, Colors.transparent),
      ZpButtonStyle.signal => (t.signalAd, t.onAccent, Colors.transparent),
      ZpButtonStyle.quiet => (Colors.transparent, t.ink, t.hairline),
    };

    return ZpPressable(
      onTap: onPressed,
      scale: enabled ? 0.97 : 1,
      builder: (context, pressed) => AnimatedOpacity(
        duration: const Duration(milliseconds: 150),
        opacity: enabled ? 1 : 0.38,
        child: Container(
          height: height,
          width: expand ? double.infinity : null,
          padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4),
          decoration: BoxDecoration(
            color: pressed && style == ZpButtonStyle.tonal ? t.surface300 : bg,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: border),
          ),
          child: Row(
            mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                IconTheme.merge(data: IconThemeData(color: fg, size: 22), child: icon!),
                const SizedBox(width: AppTokens.space2),
              ],
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: (textStyle ?? AppText.button).copyWith(color: fg),
                ),
              ),
              if (trailingIcon != null) ...[
                const SizedBox(width: AppTokens.space2),
                IconTheme.merge(data: IconThemeData(color: fg, size: 22), child: trailingIcon!),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

/// Bordered direction button (`.za-dirbtn`) for the d-pad and short-form rail.
class ZpDirButton extends StatelessWidget {
  const ZpDirButton({
    super.key,
    required this.onPressed,
    this.icon,
    this.label,
    this.radius = AppTokens.radiusMd,
    this.filled = false,
    this.semanticLabel,
  });

  final VoidCallback? onPressed;
  final IconData? icon;
  final String? label;
  final double radius;

  /// surface-300 background (the OK / Play button).
  final bool filled;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return ZpPressable(
      onTap: onPressed,
      semanticLabel: semanticLabel ?? label,
      scale: 0.97,
      builder: (context, pressed) => Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: pressed ? t.surface300 : (filled ? t.surface300 : t.surface200),
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: t.hairlineStrong),
        ),
        child: label != null
            ? Text(
                label!,
                style: AppText.bodyStrong.copyWith(letterSpacing: 0.6, color: t.ink),
              )
            : Icon(icon, size: 30, color: onPressed == null ? t.inkDisabled : t.ink),
      ),
    );
  }
}

/// Text link in accent colour.
class ZpLinkText extends StatelessWidget {
  const ZpLinkText(this.text, {super.key, required this.onTap, this.underline = false, this.style});

  final String text;
  final VoidCallback onTap;
  final bool underline;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: (style ?? AppText.bodyStrong).copyWith(
          color: t.accentText,
          decoration: underline ? TextDecoration.underline : null,
          decorationColor: t.accentText,
        ),
      ),
    );
  }
}
