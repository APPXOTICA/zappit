import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zappit/core/extensions/context_extensions.dart';
import 'package:zappit/core/theme/app_tokens.dart';
import 'package:zappit/shared/widgets/ds/zp_pressable.dart';

enum ZpIconButtonVariant { ghost, tonal, primary, outlined }

enum ZpIconButtonSize {
  sm(AppTokens.targetMin),
  md(AppTokens.controlMd),
  lg(AppTokens.controlLg);

  const ZpIconButtonSize(this.extent);

  final double extent;
}

/// DS IconButton (`.zp-ib`). Round, 48 / 56 / 72.
///
/// [pressed] is the toggle state (`aria-pressed`): accent-soft fill and
/// accent text. Toggles whose state is told by the icon pass `pressed: null`.
class ZpIconButton extends StatelessWidget {
  const ZpIconButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.variant = ZpIconButtonVariant.ghost,
    this.size = ZpIconButtonSize.md,
    this.pressed,
    this.semanticLabel,
    this.onDisabledTap,
    this.extent,
  });

  /// Icon or image. Use [ZpIcon] / [ZpImageIcon] so the disabled colour applies.
  final Widget child;
  final VoidCallback? onPressed;
  final ZpIconButtonVariant variant;
  final ZpIconButtonSize size;
  final bool? pressed;
  final String? semanticLabel;

  /// Called when tapped while disabled (to explain why in a snackbar).
  final VoidCallback? onDisabledTap;

  /// Overrides [size] when set.
  final double? extent;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final enabled = onPressed != null;
    final isOn = pressed == true;

    return ZpPressable(
      onTap: enabled ? onPressed : onDisabledTap,
      semanticLabel: semanticLabel,
      selected: pressed,
      scale: enabled ? 0.96 : 1,
      builder: (context, down) {
        Color background;
        Color border = Colors.transparent;
        switch (variant) {
          case ZpIconButtonVariant.ghost:
            background = down && enabled ? t.surface300 : Colors.transparent;
          case ZpIconButtonVariant.tonal:
            background = !enabled ? t.surface100 : (down ? t.surface300 : t.surface200);
            border = t.hairline;
          case ZpIconButtonVariant.primary:
            background = enabled ? t.accent : t.surface200;
          case ZpIconButtonVariant.outlined:
            background = down && enabled ? t.surface300 : Colors.transparent;
            border = enabled ? t.hairlineStrong : t.hairline;
        }
        if (isOn) {
          background = t.accentSoft;
          border = Colors.transparent;
        }

        final foreground = !enabled
            ? t.inkDisabled
            : isOn
                ? t.accentText
                : variant == ZpIconButtonVariant.primary
                    ? t.onAccent
                    : t.ink;

        final side = extent ?? size.extent;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          curve: Curves.easeOut,
          width: side,
          height: side,
          decoration: BoxDecoration(
            color: background,
            shape: BoxShape.circle,
            border: Border.all(color: border),
          ),
          alignment: Alignment.center,
          child: IconTheme.merge(
            data: IconThemeData(color: foreground, size: AppTokens.iconMd),
            child: _DisabledOpacity(enabled: enabled, child: child),
          ),
        );
      },
    );
  }
}

/// Image icons lower their opacity when disabled (`zappit-app.css` v35).
class _DisabledOpacity extends InheritedWidget {
  const _DisabledOpacity({required this.enabled, required super.child});

  final bool enabled;

  static bool of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<_DisabledOpacity>()?.enabled ?? true;

  @override
  bool updateShouldNotify(_DisabledOpacity oldWidget) => oldWidget.enabled != enabled;
}

/// A PNG/SVG icon from `assets/images` that follows the button's disabled state.
class ZpImageIcon extends StatelessWidget {
  const ZpImageIcon(this.asset, {super.key, this.size = AppTokens.iconMd});

  final String asset;
  final double size;

  @override
  Widget build(BuildContext context) {
    final enabled = _DisabledOpacity.of(context);
    final color = enabled ? IconTheme.of(context).color : context.tokens.ink;
    final image = asset.endsWith('.svg')
        ? SvgPicture.asset(asset, width: size, height: size, colorFilter: ColorFilter.mode(color!, BlendMode.srcIn))
        : Image.asset(asset, width: size, height: size, color: color, colorBlendMode: BlendMode.srcIn);
    return Opacity(opacity: enabled ? 1 : 0.43, child: image);
  }
}
