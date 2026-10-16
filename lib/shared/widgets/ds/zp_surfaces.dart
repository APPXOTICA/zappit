import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zappit/core/extensions/context_extensions.dart';
import 'package:zappit/core/theme/app_tokens.dart';
import 'package:zappit/shared/widgets/ds/zp_pressable.dart';

/// Empty state (`.zp-empty`): round glyph, title, message, actions.
class ZpEmptyState extends StatelessWidget {
  const ZpEmptyState({
    super.key,
    required this.icon,
    required this.title,
    this.message,
    this.actions = const [],
  });

  final IconData icon;
  final String title;
  final String? message;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppTokens.space6, vertical: AppTokens.space8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: t.surface100,
              shape: BoxShape.circle,
              border: Border.all(color: t.hairlineStrong),
            ),
            child: Icon(icon, color: t.inkMuted, size: 28),
          ),
          const SizedBox(height: AppTokens.space4),
          Text(title, textAlign: TextAlign.center, style: AppText.bigTitle.copyWith(color: t.ink)),
          if (message != null) ...[
            const SizedBox(height: AppTokens.space3),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 280),
              child: Text(
                message!,
                textAlign: TextAlign.center,
                style: AppText.body.copyWith(color: t.inkMuted),
              ),
            ),
          ],
          if (actions.isNotEmpty) ...[
            const SizedBox(height: AppTokens.space6),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: AppTokens.space2,
              runSpacing: AppTokens.space2,
              children: actions,
            ),
          ],
        ],
      ),
    );
  }
}

/// Upgrade banner (`.zp-upgrade`).
class ZpUpgradeBanner extends StatelessWidget {
  const ZpUpgradeBanner({
    super.key,
    required this.title,
    required this.subtitle,
    required this.cta,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final String cta;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return ZpPressable(
      onTap: onTap,
      scale: 0.99,
      builder: (context, pressed) => Container(
        constraints: const BoxConstraints(minHeight: 80),
        padding: const EdgeInsets.all(AppTokens.space4),
        decoration: BoxDecoration(
          color: pressed ? t.surface200 : t.surface100,
          borderRadius: BorderRadius.circular(AppTokens.radiusLg),
          border: Border.all(color: t.hairline),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppText.body.copyWith(fontSize: 17, color: t.ink)),
                  const SizedBox(height: 2),
                  Text(subtitle, style: AppText.body.copyWith(color: t.inkMuted)),
                ],
              ),
            ),
            const SizedBox(width: AppTokens.space3),
            Container(
              height: AppTokens.targetMin,
              padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: t.accent, borderRadius: BorderRadius.circular(AppTokens.radiusFull)),
              child: Text(cta, style: AppText.button.copyWith(color: t.onAccent)),
            ),
          ],
        ),
      ),
    );
  }
}

/// Glass cover (`.za-glass`): blur 24 + 62% base colour over the remote.
class ZpGlass extends StatelessWidget {
  const ZpGlass({super.key, required this.child, this.padding = const EdgeInsets.all(AppTokens.space6)});

  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
        child: Container(
          color: t.bgBase.withValues(alpha: 0.62),
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}

/// Centred message card on glass (`.za-dlg`).
class ZpDialogCard extends StatelessWidget {
  const ZpDialogCard({
    super.key,
    required this.icon,
    required this.title,
    required this.message,
    this.iconColor,
    this.children = const [],
  });

  final IconData icon;
  final String title;
  final String message;
  final Color? iconColor;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Container(
      constraints: const BoxConstraints(maxWidth: 342),
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
      decoration: BoxDecoration(
        color: t.surface100,
        borderRadius: BorderRadius.circular(AppTokens.radiusLg),
        border: Border.all(color: t.hairlineStrong),
        boxShadow: const [BoxShadow(color: Color(0x80000000), blurRadius: 48, offset: Offset(0, 16))],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(color: t.surface200, shape: BoxShape.circle),
            child: Icon(icon, size: 22, color: iconColor ?? t.ink),
          ),
          const SizedBox(height: AppTokens.space4),
          Text(title, textAlign: TextAlign.center, style: AppText.heading.copyWith(fontSize: 18, color: t.ink)),
          const SizedBox(height: AppTokens.space3),
          Text(message, textAlign: TextAlign.center, style: AppText.body.copyWith(color: t.inkMuted)),
          if (children.isNotEmpty) ...[
            const SizedBox(height: AppTokens.space4),
            ...children,
          ],
        ],
      ),
    );
  }
}

/// Sheet chrome (`.zp-sheet`): grab handle, centred title, close button.
class ZpSheet extends StatelessWidget {
  const ZpSheet({super.key, required this.title, required this.child, this.scrollable = true});

  final String title;
  final Widget child;
  final bool scrollable;

  static Future<T?> show<T>(BuildContext context, {required String title, required WidgetBuilder builder}) {
    return showModalBottomSheet<T>(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      useSafeArea: true,
      barrierColor: context.tokens.scrim,
      builder: (context) => ZpSheet(title: title, child: builder(context)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final maxHeight = MediaQuery.sizeOf(context).height * 0.85;
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: maxHeight),
      child: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.paddingOf(context).bottom + AppTokens.space6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: AppTokens.space2),
            Container(
              width: 36,
              height: 4,
              decoration: BoxDecoration(color: t.hairlineStrong, borderRadius: BorderRadius.circular(2)),
            ),
            SizedBox(
              height: 56,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 56),
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppText.heading.copyWith(fontSize: 22, color: t.ink),
                    ),
                  ),
                  Positioned(
                    right: AppTokens.space2,
                    child: IconButton(
                      onPressed: () => Navigator.of(context).maybePop(),
                      icon: Icon(Icons.close_rounded, color: t.ink),
                      tooltip: 'Close',
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: scrollable
                  ? SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4),
                      child: child,
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4),
                      child: child,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Season pill (`.za-pill`).
class ZpPill extends StatelessWidget {
  const ZpPill({super.key, required this.label, required this.selected, required this.onTap});

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return ZpPressable(
      onTap: onTap,
      selected: selected,
      builder: (context, _) => Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: AppTokens.space4),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? t.surface300 : t.surface200,
          borderRadius: BorderRadius.circular(AppTokens.radiusFull),
          border: Border.all(color: selected ? t.hairlineStrong : t.hairline),
        ),
        child: Text(
          label,
          style: AppText.body.copyWith(color: selected ? t.ink : t.inkMuted),
        ),
      ),
    );
  }
}
