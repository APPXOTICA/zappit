import 'package:flutter/material.dart';
import 'package:zappit/core/extensions/context_extensions.dart';
import 'package:zappit/core/theme/app_tokens.dart';
import 'package:zappit/shared/widgets/ds/zp_badges.dart';
import 'package:zappit/shared/widgets/ds/zp_pressable.dart';

/// Open-tab row (`.zp-tab`). The controlled tab is told by colour only.
class ZpTabRow extends StatelessWidget {
  const ZpTabRow({
    super.key,
    required this.title,
    required this.host,
    required this.monogram,
    this.favIconUrl,
    this.isTarget = false,
    this.onTap,
  });

  final String title;
  final String host;
  final String monogram;
  final String? favIconUrl;
  final bool isTarget;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final titleColor = isTarget ? t.accentText : t.ink;
    final hostColor = isTarget ? t.accentText.withValues(alpha: 0.8) : t.inkMuted;

    return ZpPressable(
      onTap: onTap,
      scale: 1,
      builder: (context, pressed) => Container(
        constraints: const BoxConstraints(minHeight: 64),
        color: pressed ? t.surface200 : Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4, vertical: AppTokens.space2),
        child: Row(
          children: [
            _Favicon(url: favIconUrl, monogram: monogram),
            const SizedBox(width: AppTokens.space3),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppText.body.copyWith(fontSize: 16, color: titleColor),
                  ),
                  Text(
                    host,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppText.body.copyWith(color: hostColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Favicon extends StatelessWidget {
  const _Favicon({required this.url, required this.monogram});

  final String? url;
  final String monogram;

  @override
  Widget build(BuildContext context) {
    final url = this.url;
    final fallback = ZpMonogram(text: monogram, size: 34);
    if (url == null || !url.startsWith('http')) return fallback;
    return Container(
      width: 34,
      height: 34,
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: context.tokens.surface300,
        shape: BoxShape.circle,
        border: Border.all(color: context.tokens.hairline),
      ),
      child: Image.network(url, errorBuilder: (_, _, _) => const SizedBox.shrink()),
    );
  }
}
