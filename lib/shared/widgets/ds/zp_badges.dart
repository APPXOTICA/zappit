import 'package:flutter/material.dart';
import 'package:zappit/core/extensions/context_extensions.dart';
import 'package:zappit/core/theme/app_tokens.dart';
import 'package:zappit/protocol/protocol.dart';
import 'package:zappit/shared/widgets/ds/zp_pressable.dart';

/// Connection pill (`.zp-conn`): green / red dot, state, `Chrome · Mac`, chevron.
class ZpConnectionStatus extends StatelessWidget {
  const ZpConnectionStatus({
    super.key,
    required this.connected,
    required this.stateLabel,
    this.deviceLabel,
    this.onTap,
  });

  final bool connected;
  final String stateLabel;
  final String? deviceLabel;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final dot = connected ? t.signalLive : t.signalOff;

    return ZpPressable(
      onTap: onTap,
      scale: 0.97,
      builder: (context, pressed) => Container(
        constraints: const BoxConstraints(minHeight: AppTokens.targetMin),
        padding: const EdgeInsets.fromLTRB(AppTokens.space3, 6, AppTokens.space4, 6),
        decoration: BoxDecoration(
          color: pressed ? t.surface200 : t.surface100,
          borderRadius: BorderRadius.circular(AppTokens.radiusFull),
          border: Border.all(color: t.hairline),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: dot,
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(color: dot.withValues(alpha: 0.18), spreadRadius: 3)],
              ),
            ),
            const SizedBox(width: AppTokens.space3),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(stateLabel, style: AppText.label.copyWith(color: t.inkMuted)),
                  if (deviceLabel != null)
                    Text(
                      deviceLabel!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppText.body.copyWith(color: t.ink),
                    ),
                ],
              ),
            ),
            if (onTap != null) ...[
              const SizedBox(width: AppTokens.space2),
              Icon(Icons.keyboard_arrow_down_rounded, size: 20, color: t.inkMuted),
            ],
          ],
        ),
      ),
    );
  }
}

/// Site badge (`.zp-site`): brand favicon or monogram + site name.
class ZpSiteBadge extends StatelessWidget {
  const ZpSiteBadge({super.key, required this.site});

  final Site site;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final asset = site.brandAsset;
    return Container(
      height: 36,
      padding: const EdgeInsets.fromLTRB(4, 0, AppTokens.space4, 0),
      decoration: BoxDecoration(
        color: t.surface200,
        borderRadius: BorderRadius.circular(AppTokens.radiusFull),
        border: Border.all(color: t.hairline),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (asset != null)
            ClipOval(child: Image.asset(asset, width: 28, height: 28, fit: BoxFit.cover))
          else
            ZpMonogram(text: site.displayName, size: 28),
          const SizedBox(width: AppTokens.space2),
          Text(site.displayName, style: AppText.bodyStrong.copyWith(color: t.ink)),
        ],
      ),
    );
  }
}

/// Round monogram (`.zp-site-mono`, `.zp-tab-fav`).
class ZpMonogram extends StatelessWidget {
  const ZpMonogram({super.key, required this.text, this.size = 32});

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final trimmed = text.trim();
    // Short upper-case marks (YT, IG) are shown as is; otherwise the first letter.
    final letters = trimmed.isEmpty
        ? '?'
        : (trimmed.length <= 3 && trimmed == trimmed.toUpperCase())
            ? trimmed
            : trimmed.characters.first.toUpperCase();
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: t.surface300,
        shape: BoxShape.circle,
        border: Border.all(color: t.hairline),
      ),
      child: Text(
        letters,
        style: TextStyle(fontSize: size * 0.38, fontWeight: FontWeight.w600, color: t.ink),
      ),
    );
  }
}
