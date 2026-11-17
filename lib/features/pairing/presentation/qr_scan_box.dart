import 'dart:async';

import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/features/pairing/pairing_service.dart';

/// Square camera view that reads the extension's QR and claims its code
/// (`PairingService.claimWithFeedback`, which reports failures). Used by the
/// first screen (`PairPage`) and by Scan QR code while paired (`ScanPage`).
class QrScanBox extends ConsumerStatefulWidget {
  const QrScanBox({super.key, this.onConnected});

  /// The code connected this phone to a browser.
  final VoidCallback? onConnected;

  @override
  ConsumerState<QrScanBox> createState() => _QrScanBoxState();
}

class _QrScanBoxState extends ConsumerState<QrScanBox> {
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
    final result = await ref.read(pairingServiceProvider).claimWithFeedback(code, overlay: false);
    if (!mounted) return;
    setState(() => _claiming = false);
    if (result == PairResult.failed) _lastCode = null; // network: the same code may work now
    if (result == PairResult.connected) widget.onConnected?.call();
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return AspectRatio(
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
            if (_claiming)
              Positioned.fill(
                child: ColoredBox(
                  color: const Color(0xB3000000),
                  child: Center(child: SizedBox.square(dimension: 44, child: CircularProgressIndicator(strokeWidth: 3.5, color: t.accent))),
                ),
              ),
          ],
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
