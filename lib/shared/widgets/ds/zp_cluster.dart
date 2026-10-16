import 'package:flutter/material.dart';
import 'package:zappit/core/extensions/context_extensions.dart';
import 'package:zappit/core/theme/app_tokens.dart';

/// Block container (`.zp-cluster`): surface-100, hairline, radius-lg.
class ZpCluster extends StatelessWidget {
  const ZpCluster({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(AppTokens.space4),
    this.radius = AppTokens.radiusLg,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: t.surface100,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: t.hairline),
      ),
      child: child,
    );
  }
}

/// Settings group (`.zp-group`) with hairlines between rows.
class ZpGroup extends StatelessWidget {
  const ZpGroup({super.key, required this.children, this.color});

  final List<Widget> children;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color ?? t.surface100,
        borderRadius: BorderRadius.circular(AppTokens.radiusMd),
        border: Border.all(color: t.hairline),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < children.length; i++) ...[
            if (i > 0) Divider(height: 1, thickness: 1, color: t.hairline),
            children[i],
          ],
        ],
      ),
    );
  }
}

/// Upper-case section title (`.za-sec`).
class ZpSectionTitle extends StatelessWidget {
  const ZpSectionTitle(this.text, {super.key, this.center = false});

  final String text;
  final bool center;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(center ? 0 : AppTokens.space4, 0, 0, AppTokens.space2),
      child: Text(
        text.toUpperCase(),
        textAlign: center ? TextAlign.center : TextAlign.start,
        style: AppText.section.copyWith(color: context.tokens.inkMuted),
      ),
    );
  }
}
