import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/routes/app_routes.dart';
import 'package:zappit/features/pairing/pairing_service.dart';
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
  final _scanner = MobileScannerController(formats: const [BarcodeFormat.qrCode]);
  bool _claiming = false;
  String? _lastCode;

  @override
  void dispose() {
    unawaited(_scanner.dispose());
    super.dispose();
  }

  Future<void> _onDetect(BarcodeCapture capture) async {
    if (_claiming) return;
    final code = capture.barcodes.map((b) => pairingCodeFrom(b.rawValue)).nonNulls.firstOrNull;
    // The same failed code stays in view: wait for a new one.
    if (code == null || code == _lastCode) return;
    _lastCode = code;
    setState(() => _claiming = true);
    final result = await ref.read(pairingServiceProvider).claimWithFeedback(code);
    if (!mounted) return;
    setState(() => _claiming = false);
    if (result == PairResult.failed) _lastCode = null; // network: the same code may work now
  }

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
                  Expanded(
                    child: Center(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(AppTokens.radiusLg),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              ColoredBox(color: t.surface100),
                              MobileScanner(
                                controller: _scanner,
                                onDetect: _onDetect,
                                errorBuilder: (context, error) => _CameraError(error: error),
                              ),
                              IgnorePointer(child: CustomPaint(painter: _FramePainter(color: t.accent))),
                              if (_claiming) ColoredBox(color: const Color(0x99000000), child: Center(child: CircularProgressIndicator(color: t.accent))),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
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

class _CameraError extends StatelessWidget {
  const _CameraError({required this.error});

  final MobileScannerException error;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final denied = error.errorCode == MobileScannerErrorCode.permissionDenied;
    return ColoredBox(
      color: t.surface100,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppTokens.space6),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.no_photography_rounded, size: 40, color: t.inkMuted),
              const SizedBox(height: AppTokens.space3),
              Text(
                denied ? S.of(context).cameraDenied : S.of(context).cameraUnavailable,
                textAlign: TextAlign.center,
                style: AppText.body.copyWith(color: t.inkMuted),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Four corner marks around the scan area.
class _FramePainter extends CustomPainter {
  const _FramePainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    final inset = size.width * 0.14;
    final len = size.width * 0.12;
    final r = Rect.fromLTRB(inset, inset, size.width - inset, size.height - inset);
    for (final (corner, dx, dy) in [
      (r.topLeft, 1.0, 1.0),
      (r.topRight, -1.0, 1.0),
      (r.bottomLeft, 1.0, -1.0),
      (r.bottomRight, -1.0, -1.0),
    ]) {
      canvas.drawLine(corner, corner.translate(len * dx, 0), paint);
      canvas.drawLine(corner, corner.translate(0, len * dy), paint);
    }
  }

  @override
  bool shouldRepaint(_FramePainter oldDelegate) => oldDelegate.color != color;
}
