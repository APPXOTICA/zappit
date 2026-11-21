import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/storage/preferences.dart';
import 'package:zappit/features/onboarding/presentation/widgets/ob0_animation.dart';
import 'package:zappit/features/onboarding/presentation/widgets/ob1_animation.dart';
import 'package:zappit/features/onboarding/presentation/widgets/ob2_animation.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/shared/widgets/web_view_page.dart';

/// First run, before the QR screen (design: OB-0, OB-1, OB-2): welcome,
/// 1. add the extension on the computer, 2. how to scan its QR code. Done →
/// the QR screen; it is not shown again on its own (also skipped once this
/// phone has been connected). The QR screen's "How to install" button opens
/// it again at step 1 (no welcome).
class OnboardingPage extends ConsumerStatefulWidget {
  const OnboardingPage({super.key});

  @override
  ConsumerState<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ConsumerState<OnboardingPage> {
  static const _welcome = 0;
  static const _step1 = 1;
  static const _step2 = 2;

  /// First page shown: the welcome on first run, step 1 from the QR screen.
  late final int _start = context.canPop() ? _step1 : _welcome;
  late int _page = _start;

  void _done() {
    ref.read(preferencesProvider).setOnboardingDone();
    context.go(AppRoutes.pair);
  }

  void _back() => setState(() => _page--);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final first = _page == _start;

    return PopScope(
      // System back goes to the previous page.
      canPop: first,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _back();
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
                    if (_page == _welcome)
                      // No progress on the welcome: the empty row keeps the title where it is on the steps.
                      const SizedBox(height: 44)
                    else
                      _TopBar(
                        step: _page - 1,
                        steps: 2,
                        // Step 1 has a back button only when opened from the QR screen.
                        onBack: _page == _step2 ? _back : (context.canPop() ? () => context.pop() : null),
                      ),
                    Expanded(
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 220),
                        layoutBuilder: (current, previous) => Stack(
                          alignment: Alignment.topCenter,
                          children: [...previous, ?current],
                        ),
                        child: KeyedSubtree(
                          key: ValueKey(_page),
                          child: switch (_page) {
                            _welcome => const _Welcome(),
                            _step1 => const _Centered(child: _Step1()),
                            _ => const _Centered(child: _Step2()),
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: AppTokens.space4),
                    ZpButton(
                      label: switch (_page) {
                        _welcome => s.onboardingGetStarted,
                        _step1 => s.onboardingNext,
                        _ => s.onboardingOpenQrScanner,
                      },
                      style: ZpButtonStyle.accent,
                      onPressed: _page == _step2 ? _done : () => setState(() => _page++),
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

/// Back button, progress segments, "1 / 2".
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

/// A step's content, centred vertically between the progress bar and the
/// bottom button (tablets, short text); scrolls when it does not fit.
class _Centered extends StatelessWidget {
  const _Centered({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, box) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: box.maxHeight),
          child: Center(
            child: Padding(padding: const EdgeInsets.symmetric(vertical: AppTokens.space6), child: child),
          ),
        ),
      );
    });
  }
}

/// Welcome (OB-0): title on balanced lines, the play/pause animation across
/// the full screen width, centred in the space left above the button.
class _Welcome extends StatelessWidget {
  const _Welcome();

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final s = S.of(context);
    return LayoutBuilder(builder: (context, box) {
      // The stage reaches past the 24pt side margins to the screen edges.
      final width = box.maxWidth + 2 * AppTokens.space6;
      return CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const SizedBox(height: 28),
                Semantics(
                  header: true,
                  child: _BalancedText(
                    s.onboardingWelcomeTitle,
                    maxWidth: box.maxWidth,
                    style: TextStyle(fontSize: 26, height: 32 / 26, fontWeight: FontWeight.w700, letterSpacing: -0.52, color: t.ink),
                  ),
                ),
                const SizedBox(height: AppTokens.space3),
                Text(
                  s.onboardingWelcomeBody,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, height: 24 / 16, color: t.inkMuted),
                ),
                const SizedBox(height: AppTokens.space6),
                Expanded(
                  child: Center(
                    child: SizedBox(
                      height: width * 0.84,
                      child: OverflowBox(minWidth: width, maxWidth: width, child: const Ob0Animation()),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}

/// Centred text whose lines are about the same length (CSS
/// `text-wrap: balance`): the narrowest width up to [maxWidth] that keeps
/// the line count. Measured here, not in a LayoutBuilder, so the scroll view
/// around it can ask for its height.
class _BalancedText extends StatelessWidget {
  const _BalancedText(this.text, {required this.style, required this.maxWidth});

  final String text;
  final TextStyle style;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    {
      // Measured with the same style the Text below resolves to.
      final painter = TextPainter(
        text: TextSpan(text: text, style: DefaultTextStyle.of(context).style.merge(style)),
        textAlign: TextAlign.center,
        textDirection: Directionality.of(context),
        textScaler: MediaQuery.textScalerOf(context),
      );
      int lines(double w) {
        painter.layout(maxWidth: w);
        return painter.computeLineMetrics().length;
      }

      final max = maxWidth;
      final count = lines(max);
      var width = max;
      if (count > 1) {
        var lo = 0.0;
        var hi = max;
        while (hi - lo > 1) {
          final mid = (lo + hi) / 2;
          if (lines(mid) > count) {
            lo = mid;
          } else {
            hi = mid;
          }
        }
        width = hi.ceilToDouble();
      }
      painter.dispose();
      return Center(
        child: SizedBox(
          width: width,
          child: Text(text, textAlign: TextAlign.center, style: style),
        ),
      );
    }
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
        const SizedBox(height: 40),
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
    final s = S.of(context);
    return Column(
      children: [
        _Header(title: s.onboarding2Title, body: s.onboarding2Body),
        const Ob2Animation(),
        const SizedBox(height: 40),
        // Same button as step 1's "Share link". The Chrome / Safari fix lives in
        // the FAQ (web view, rises from the bottom).
        Semantics(
          label: s.onboardingIconHelpLabel,
          excludeSemantics: true,
          child: ZpButton(
            label: s.onboardingIconHelp,
            icon: const Icon(Icons.extension),
            onPressed: () => context.push(AppRoutes.webView, extra: WebViewArgs(title: s.faq, url: faqEntryUrl('toolbar-icon'))),
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
