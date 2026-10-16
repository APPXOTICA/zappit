import 'package:flutter/gestures.dart';
import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/constants/strings.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/auth/data/models/auth_state.dart';
import 'package:zappit/features/auth/presentation/controllers/auth_state_provider.dart';
import 'package:zappit/shared/widgets/default_activity_indicator.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/shared/widgets/web_view_page.dart';

/// Sign in with Apple / Google. The consent checkbox must be ticked first.
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  bool _agreed = false;
  bool _busy = false;

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

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final auth = ref.read(authStateProvider.notifier);

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
          backgroundColor: t.bgBase,
          body: SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 420),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(AppTokens.space6, 0, AppTokens.space6, AppTokens.space6),
                  child: Column(
                    children: [
                      const Spacer(flex: 2),
                      Container(
                        width: 88,
                        height: 88,
                        padding: const EdgeInsets.all(22),
                        decoration: BoxDecoration(
                          color: t.surface100,
                          shape: BoxShape.circle,
                          border: Border.all(color: t.hairlineStrong),
                        ),
                        child: const ZpImageIcon('assets/images/ic_remote.svg', size: 44),
                      ),
                      const SizedBox(height: AppTokens.space4),
                      Text(Strings.appTitle, style: AppText.bigTitle.copyWith(fontSize: 30, color: t.ink)),
                      const SizedBox(height: AppTokens.space3),
                      Text(
                        'Sit back. Control your browser from anywhere.',
                        textAlign: TextAlign.center,
                        style: AppText.body.copyWith(fontSize: 16, color: t.inkMuted),
                      ),
                      const Spacer(flex: 5),
                      ZpButton(
                        label: 'Sign in with Apple',
                        style: ZpButtonStyle.ink,
                        icon: const Icon(Icons.apple, size: 24),
                        onPressed: _agreed ? () => _run(auth.signInWithApple) : null,
                      ),
                      const SizedBox(height: AppTokens.space3),
                      ZpButton(
                        label: 'Sign in with Google',
                        icon: Image.asset('assets/images/google_logo_256.png', width: 20, height: 20),
                        onPressed: _agreed ? () => _run(auth.signInWithGoogle) : null,
                      ),
                      const SizedBox(height: AppTokens.space4),
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () => setState(() => _agreed = !_agreed),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _CheckBox(checked: _agreed),
                            const SizedBox(width: AppTokens.space3),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  style: AppText.body.copyWith(color: t.inkMuted),
                                  children: [
                                    const TextSpan(text: 'I agree to the '),
                                    TextSpan(
                                      text: 'Terms of Service',
                                      style: linkStyle,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => _openWeb('Terms of Service', termsOfServiceUrl),
                                    ),
                                    const TextSpan(text: ' and '),
                                    TextSpan(
                                      text: 'Privacy Policy',
                                      style: linkStyle,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => _openWeb('Privacy Policy', privacyPolicyUrl),
                                    ),
                                    const TextSpan(text: '.'),
                                  ],
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

class _CheckBox extends StatelessWidget {
  const _CheckBox({required this.checked});

  final bool checked;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Semantics(
      checked: checked,
      label: 'Agree to the terms',
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
