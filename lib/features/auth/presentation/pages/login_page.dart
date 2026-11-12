import 'package:flutter/gestures.dart';
import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/constants/strings.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/storage/preferences.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/auth/data/models/auth_provider.dart';
import 'package:zappit/features/auth/data/models/auth_state.dart';
import 'package:zappit/features/auth/presentation/controllers/auth_state_provider.dart';
import 'package:zappit/shared/widgets/default_activity_indicator.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/shared/widgets/web_view_page.dart';
import 'package:zappit/core/barrel_files/localization.dart';

/// Sign in with Apple / Google. The consent checkbox must be ticked first.
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  bool _agreed = false;
  bool _busy = false;

  void _needAgreement() => AppNotice.snack(S.of(context).agreeFirst);

  Future<void> _run(Future<void> Function() signIn) async {
    if (!_agreed || _busy) return;
    setState(() => _busy = true);
    try {
      await signIn();
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  void _openWeb(String title, String url) =>
      context.push(AppRoutes.webView, extra: WebViewArgs(title: title, url: url));

  /// "I agree to the Terms of Service and Privacy Policy." with the two
  /// names as links, wherever the translation puts them.
  List<TextSpan> _agreementSpans(BuildContext context, TextStyle linkStyle) {
    final s = S.of(context);
    const termsMark = '\u0001';
    const privacyMark = '\u0002';
    final links = {
      termsMark: (s.termsOfService, termsOfServiceUrl),
      privacyMark: (s.privacyPolicy, privacyPolicyUrl),
    };
    final sentence = s.agreeToTerms(termsMark, privacyMark);
    return [
      for (final part in sentence.split(RegExp('(?=[$termsMark$privacyMark])|(?<=[$termsMark$privacyMark])')))
        if (links[part] case (final title, final url))
          TextSpan(text: title, style: linkStyle, recognizer: TapGestureRecognizer()..onTap = () => _openWeb(title, url))
        else if (part.isNotEmpty)
          TextSpan(text: part),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final auth = ref.read(authStateProvider.notifier);
    final lastMethod = ref.read(preferencesProvider).lastLoginMethod;

    ref.listen<AuthenticationState>(authStateProvider, (_, next) {
      if (next is AuthStateError) AppNotice.snack(next.message, error: true);
    });

    final linkStyle = AppText.body.copyWith(
      color: t.accentText,
      decoration: TextDecoration.underline,
      decorationColor: t.accentText,
    );

    return Stack(
      children: [
        Scaffold(
          backgroundColor: ZpAppIcon.background,
          body: SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 420),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(AppTokens.space6, 0, AppTokens.space6, AppTokens.space6),
                  child: Column(
                    children: [
                      const Spacer(flex: 2),
                      const ZpAppIcon(),
                      const SizedBox(height: AppTokens.space4),
                      Text(Strings.appTitle, style: AppText.bigTitle.copyWith(fontSize: 30, color: t.ink)),
                      const SizedBox(height: AppTokens.space3),
                      Text(
                        S.of(context).loginTagline,
                        textAlign: TextAlign.center,
                        style: AppText.body.copyWith(fontSize: 16, color: t.inkMuted),
                      ),
                      const Spacer(flex: 5),
                      _LastUsed(
                        show: lastMethod == AuthProvider.apple.name,
                        child: ZpButton(
                          label: S.of(context).signInWithApple,
                          style: ZpButtonStyle.ink,
                          icon: const Icon(Icons.apple, size: 24),
                          onPressed: _agreed ? () => _run(auth.signInWithApple) : null,
                          onDisabledTap: _needAgreement,
                        ),
                      ),
                      const SizedBox(height: AppTokens.space3),
                      _LastUsed(
                        show: lastMethod == AuthProvider.google.name,
                        child: ZpButton(
                          label: S.of(context).signInWithGoogle,
                          icon: Image.asset('assets/images/google_logo_256.png', width: 20, height: 20),
                          onPressed: _agreed ? () => _run(auth.signInWithGoogle) : null,
                          onDisabledTap: _needAgreement,
                        ),
                      ),
                      const SizedBox(height: AppTokens.space4),
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () => setState(() => _agreed = !_agreed),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _CheckBox(checked: _agreed),
                            const SizedBox(width: AppTokens.space3),
                            Flexible(
                              child: Text.rich(
                                textAlign: TextAlign.center,
                                TextSpan(
                                  style: AppText.body.copyWith(color: t.inkMuted),
                                  children: _agreementSpans(context, linkStyle),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        if (_busy) const DefaultActivityIndicator(),
      ],
    );
  }
}

/// A "Last used" pill on the top-right edge of the button the user last
/// signed in with (`Preferences.lastLoginMethod`, kept across sign-outs).
class _LastUsed extends StatelessWidget {
  const _LastUsed({required this.show, required this.child});

  final bool show;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!show) return child;
    final t = context.tokens;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        Positioned(
          top: -9,
          right: AppTokens.space6,
          child: IgnorePointer(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: t.accent,
                borderRadius: BorderRadius.circular(AppTokens.radiusFull),
                border: Border.all(color: ZpAppIcon.background, width: 2),
              ),
              child: Text(S.of(context).lastUsed, style: AppText.label.copyWith(fontSize: 12, fontWeight: FontWeight.w600, color: t.onAccent)),
            ),
          ),
        ),
      ],
    );
  }
}

class _CheckBox extends StatelessWidget {
  const _CheckBox({required this.checked});

  final bool checked;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Semantics(
      checked: checked,
      label: S.of(context).agreeToTheTerms,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 120),
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: checked ? t.accent : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: checked ? t.accent : t.hairlineStrong, width: 2),
        ),
        child: checked ? Icon(Icons.check_rounded, size: 18, color: t.onAccent) : null,
      ),
    );
  }
}
