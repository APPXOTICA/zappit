import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/features/pairing/presentation/qr_scan_box.dart';

/// Scan QR code while this phone is paired (More > Connect a browser):
/// connects another browser without the phone's camera app. Closes once
/// connected.
class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final s = S.of(context);
    return Scaffold(
      backgroundColor: t.bgBase,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, AppTokens.space2, AppTokens.space2, 0),
                    child: IconButton(
                      tooltip: s.close,
                      onPressed: () => Navigator.of(context).maybePop(),
                      icon: Icon(Icons.close_rounded, color: t.ink, size: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(AppTokens.space6, 0, AppTokens.space6, AppTokens.space8),
                    child: Column(
                      children: [
                        Text(s.pairTitle, textAlign: TextAlign.center, style: AppText.bigTitle.copyWith(fontSize: 26, color: t.ink)),
                        const SizedBox(height: AppTokens.space3),
                        Text(s.pairBody, textAlign: TextAlign.center, style: AppText.body.copyWith(fontSize: 16, color: t.inkMuted)),
                        const SizedBox(height: AppTokens.space6),
                        Expanded(
                          child: Center(
                            child: QrScanBox(
                              onConnected: () {
                                if (context.mounted) Navigator.of(context).maybePop();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
