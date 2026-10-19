import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/utils/haptic_utils.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// Bottom navigation: Remote · Tabs · More (`.za-nav`).
class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.shell});

  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Scaffold(
      backgroundColor: t.bgBase,
      // The link panel's keyboard must not push the remote up.
      resizeToAvoidBottomInset: false,
      body: shell,
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          color: t.bgRaised,
          border: Border(top: BorderSide(color: t.hairline)),
        ),
        child: SafeArea(
          top: false,
          child: SizedBox(
            height: AppTokens.navBar + 8,
            child: Row(
              children: [
                _NavTab(
                  label: 'Remote',
                  icon: 'assets/images/ic_remote_outline.svg',
                  selectedIcon: 'assets/images/ic_remote.svg',
                  selected: shell.currentIndex == 0,
                  onTap: () => _go(0),
                ),
                _NavTab(
                  label: 'Tabs',
                  icon: 'assets/images/ic_tabs.svg',
                  selectedIcon: 'assets/images/ic_tabs_filled.svg',
                  selected: shell.currentIndex == 1,
                  onTap: () => _go(1),
                ),
                _NavTab(
                  label: 'More',
                  iconData: Icons.more_horiz_rounded,
                  selected: shell.currentIndex == 2,
                  onTap: () => _go(2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _go(int index) {
    if (index != shell.currentIndex) HapticUtils.hapticFeedback(HapticType.selection);
    shell.goBranch(index, initialLocation: index == shell.currentIndex);
  }
}

class _NavTab extends StatelessWidget {
  const _NavTab({
    required this.label,
    required this.selected,
    required this.onTap,
    this.icon,
    this.selectedIcon,
    this.iconData,
  });

  final String label;
  final String? icon;
  final String? selectedIcon;
  final IconData? iconData;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final color = selected ? t.ink : t.inkMuted;
    final asset = selected ? (selectedIcon ?? icon) : icon;

    return Expanded(
      child: Semantics(
        selected: selected,
        button: true,
        label: label,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 160),
                width: 56,
                height: 30,
                decoration: BoxDecoration(
                  color: selected ? t.surface200 : Colors.transparent,
                  borderRadius: BorderRadius.circular(AppTokens.radiusFull),
                ),
                alignment: Alignment.center,
                child: asset != null
                    ? SvgPicture.asset(
                        asset,
                        width: 24,
                        height: 24,
                        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                      )
                    : Icon(iconData, color: color),
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 11,
                  height: 14 / 11,
                  letterSpacing: 0.22,
                  fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
