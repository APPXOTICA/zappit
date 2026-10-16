import 'package:flutter/material.dart';
import 'package:zappit/core/extensions/context_extensions.dart';
import 'package:zappit/core/theme/app_tokens.dart';
import 'package:zappit/shared/widgets/ds/zp_pressable.dart';

/// Settings / sheet row (`.zp-row`), 56pt or taller.
class ZpListRow extends StatelessWidget {
  const ZpListRow({
    super.key,
    required this.title,
    this.subtitle,
    this.detail,
    this.leading,
    this.showChevron = false,
    this.selected = false,
    this.danger = false,
    this.centered = false,
    this.minHeight = 56,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final String? detail;
  final Widget? leading;
  final bool showChevron;
  final bool selected;
  final bool danger;
  final bool centered;
  final double minHeight;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final titleColor = danger ? t.signalOff : (selected ? t.accentText : t.ink);

    return ZpPressable(
      onTap: onTap,
      scale: 1,
      selected: selected,
      builder: (context, pressed) => Container(
        constraints: BoxConstraints(minHeight: minHeight),
        color: pressed && onTap != null ? t.surface200 : Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4, vertical: AppTokens.space2),
        child: Row(
          children: [
            if (leading != null) ...[
              IconTheme.merge(data: IconThemeData(color: t.inkMuted), child: leading!),
              const SizedBox(width: AppTokens.space3),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: centered ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    textAlign: centered ? TextAlign.center : TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppText.body.copyWith(
                      color: titleColor,
                      fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                    ),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppText.label.copyWith(color: t.inkMuted, fontWeight: FontWeight.w400),
                    ),
                ],
              ),
            ),
            if (detail != null) ...[
              const SizedBox(width: AppTokens.space2),
              Text(detail!, style: AppText.body.copyWith(color: t.inkMuted)),
            ],
            if (showChevron) ...[
              const SizedBox(width: AppTokens.space2),
              Icon(Icons.chevron_right_rounded, color: t.inkMuted),
            ],
          ],
        ),
      ),
    );
  }
}
