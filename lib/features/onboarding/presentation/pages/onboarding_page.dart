import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/storage/preferences.dart';
import 'package:zappit/features/onboarding/presentation/widgets/ob1_animation.dart';
import 'package:zappit/features/onboarding/presentation/widgets/ob2_animation.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/shared/widgets/web_view_page.dart';

/// First run, before the QR screen (design: OB-1, OB-2): 1. add the extension
/// on the computer, 2. how to scan its QR code. Done → the QR screen; it is
/// not shown again on its own (also skipped once this phone has been
/// connected). The QR screen's "How to install" button opens it again.
class OnboardingPage extends ConsumerStatefulWidget {
  const OnboardingPage({super.key});

  @override
  ConsumerState<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ConsumerState<OnboardingPage> {
  static const _steps = 2;
  int _step = 0;

  void _done() {
    ref.read(preferencesProvider).setOnboardingDone();
    context.go(AppRoutes.pair);
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final first = _step == 0;

    return PopScope(
      // System back on step 2 returns to step 1.
      canPop: first,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) setState(() => _step = 0);
      },
      child: Scaffold(
        backgroundColor: ZpAppIcon.background,
        body: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 440),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(AppTokens.space6, AppTokens.space2, AppTokens.space6, AppTokens.space4),
                child: Column(
                  children: [
                    _TopBar(
                      step: _step,
                      steps: _steps,
                      // Step 1 has a back button only when opened from the QR screen.
                      onBack: first ? (context.canPop() ? () => context.pop() : null) : () => setState(() => _step = 0),
                    ),
                    Expanded(
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 220),
                        layoutBuilder: (current, previous) => Stack(
                          alignment: Alignment.topCenter,
                          children: [...previous, ?current],
                        ),
                        child: KeyedSubtree(
                          key: ValueKey(_step),
                          child: SingleChildScrollView(
                            child: first ? const _Step1() : const _Step2(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: AppTokens.space4),
                    ZpButton(
                      label: first ? s.onboardingNext : s.onboardingDone,
                      style: ZpButtonStyle.accent,
                      onPressed: first ? () => setState(() => _step = 1) : _done,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Back button (step 2 only), progress segments, "1 / 2".
class _TopBar extends StatelessWidget {
  const _TopBar({required this.step, required this.steps, required this.onBack});

  final int step;
  final int steps;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final s = S.of(context);
    return SizedBox(
      height: 44,
      child: Row(
        spacing: AppTokens.space3,
        children: [
          // 34pt slot; the 44pt back button reaches 10pt into the margin.
          SizedBox(
            width: 34,
            height: 44,
            child: onBack == null
                ? null
                : OverflowBox(
                    minWidth: 44,
                    maxWidth: 44,
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: onBack,
                      tooltip: s.back,
                      color: t.ink,
                      icon: _svgIcon('<path d="M15 5l-7 7 7 7"/>', 24, t.ink),
                    ),
                  ),
          ),
          Expanded(
            child: Semantics(
              label: s.onboardingStepLabel('${step + 1}', '$steps'),
              excludeSemantics: true,
              child: Row(
                spacing: 6,
                children: [
                  for (var i = 0; i < steps; i++)
                    Expanded(
                      child: Container(
                        height: 4,
                        decoration: BoxDecoration(
                          color: i <= step ? t.accent : t.surface300,
                          borderRadius: BorderRadius.circular(AppTokens.radiusFull),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 34),
            child: ExcludeSemantics(
              child: Text(
                s.onboardingStepCount('${step + 1}', '$steps'),
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 13, height: 16 / 13, fontWeight: FontWeight.w600).merge(AppText.tabular).copyWith(color: t.inkMuted),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.title, required this.body, this.bold});

  final String title;
  final String body;

  /// Part of [body] drawn bold in ink (the address to open).
  final String? bold;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Column(
      children: [
        const SizedBox(height: 28),
        Semantics(
          header: true,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, height: 32 / 26, fontWeight: FontWeight.w700, letterSpacing: -0.52, color: t.ink),
          ),
        ),
        const SizedBox(height: AppTokens.space3),
        Text.rich(
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, height: 24 / 16, color: t.inkMuted),
          TextSpan(children: _spans(t.ink)),
        ),
        const SizedBox(height: AppTokens.space6),
      ],
    );
  }

  List<TextSpan> _spans(Color ink) {
    final b = bold;
    final i = b == null ? -1 : body.indexOf(b);
    if (b == null || i < 0) return [TextSpan(text: body)];
    return [
      TextSpan(text: body.substring(0, i)),
      TextSpan(text: b, style: TextStyle(color: ink, fontWeight: FontWeight.w600)),
      TextSpan(text: body.substring(i + b.length)),
    ];
  }
}

/// Step 1: open zappit.tv/get on the computer, or send the link there.
class _Step1 extends StatelessWidget {
  const _Step1();

  static const _host = 'zappit.tv/get';

  /// The link alone, so AirDrop opens it in the Mac's browser.
  Future<void> _share(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;
    await SharePlus.instance.share(ShareParams(
      uri: Uri.parse(getExtensionUrl),
      sharePositionOrigin: box == null ? null : box.localToGlobal(Offset.zero) & box.size,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final s = S.of(context);
    return Column(
      children: [
        _Header(title: s.onboarding1Title, body: s.onboarding1Body(_host), bold: _host),
        const Ob1Animation(),
        const SizedBox(height: 20),
        Builder(
          builder: (context) => ZpButton(
            label: s.onboardingShareLink,
            icon: _svgIcon(
              '<path d="M12 15V3.5M7.5 8L12 3.5 16.5 8"/><path d="M5 12v6.5A2.5 2.5 0 0 0 7.5 21h9a2.5 2.5 0 0 0 2.5-2.5V12"/>',
              20,
              t.ink,
            ),
            onPressed: () => _share(context),
          ),
        ),
      ],
    );
  }
}

/// Step 2: click the toolbar icon, scan the code. Help row when the icon is hidden.
class _Step2 extends StatelessWidget {
  const _Step2();

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final s = S.of(context);
    return Column(
      children: [
        _Header(title: s.onboarding2Title, body: s.onboarding2Body),
        const Ob2Animation(),
        const SizedBox(height: 20),
        // The Chrome / Safari fix lives in the FAQ (web view, rises from the bottom).
        Semantics(
          button: true,
          label: s.onboardingIconHelpLabel,
          excludeSemantics: true,
          child: Material(
            color: t.surface100,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: BorderSide(color: t.hairline)),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              highlightColor: t.surface200,
              onTap: () => context.push(AppRoutes.webView, extra: WebViewArgs(title: s.faq, url: faqEntryUrl('toolbar-icon'))),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 64),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 12, 12),
                  child: Row(
                    spacing: AppTokens.space3,
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(color: t.surface200, shape: BoxShape.circle),
                        child: Icon(Icons.extension, size: 20, color: t.inkMuted),
                      ),
                      Expanded(
                        child: Text(s.onboardingIconHelp, style: TextStyle(fontSize: 15, height: 20 / 15, fontWeight: FontWeight.w500, color: t.ink)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Stroke icon from the design's SVG (24 viewBox).
Widget _svgIcon(String body, double size, Color color, {double strokeWidth = 2.2}) => SvgPicture.string(
      '<svg viewBox="0 0 24 24" fill="none" stroke="#000" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round">$body</svg>',
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
