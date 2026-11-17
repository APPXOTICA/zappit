import 'package:flutter/gestures.dart';
import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/features/pairing/presentation/qr_scan_box.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/shared/widgets/web_view_page.dart';

/// First screen until this phone is paired (replaces the sign-in screen): the
/// camera reads the QR in the extension's popup. Opening the same QR with the
/// phone's camera app works too (`PairingWatcher`).
class PairPage extends ConsumerStatefulWidget {
  const PairPage({super.key});

  @override
  ConsumerState<PairPage> createState() => _PairPageState();
}

class _PairPageState extends ConsumerState<PairPage> {
  void _openWeb(String title, String url) => context.push(AppRoutes.webView, extra: WebViewArgs(title: title, url: url));

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final s = S.of(context);
    final linkStyle = AppText.caption.copyWith(color: t.inkMuted, decoration: TextDecoration.underline, decorationColor: t.inkMuted);

    return Scaffold(
      backgroundColor: ZpAppIcon.background,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(AppTokens.space6, AppTokens.space6, AppTokens.space6, AppTokens.space4),
              child: Column(
                children: [
                  const ZpAppIcon(size: 72),
                  const SizedBox(height: AppTokens.space4),
                  Text(s.pairTitle, textAlign: TextAlign.center, style: AppText.bigTitle.copyWith(fontSize: 26, color: t.ink)),
                  const SizedBox(height: AppTokens.space3),
                  Text(s.pairBody, textAlign: TextAlign.center, style: AppText.body.copyWith(fontSize: 16, color: t.inkMuted)),
                  const SizedBox(height: AppTokens.space6),
                  const Expanded(child: Center(child: QrScanBox())),
                  const SizedBox(height: AppTokens.space6),
                  ZpButton(
                    label: s.pairHowToInstall,
                    icon: const Icon(Icons.extension_rounded),
                    onPressed: () => context.push(AppRoutes.howToConnect),
                  ),
                  const SizedBox(height: AppTokens.space4),
                  Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      style: AppText.caption.copyWith(color: t.inkMuted),
                      children: [
                        TextSpan(text: s.termsOfService, style: linkStyle, recognizer: TapGestureRecognizer()..onTap = () => _openWeb(s.termsOfService, termsOfServiceUrl)),
                        const TextSpan(text: '   ·   '),
                        TextSpan(text: s.privacyPolicy, style: linkStyle, recognizer: TapGestureRecognizer()..onTap = () => _openWeb(s.privacyPolicy, privacyPolicyUrl)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
