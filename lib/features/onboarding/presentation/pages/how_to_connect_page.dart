import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/core/barrel_files/localization.dart';

/// Onboarding: get the extension on the computer and scan its QR code with
/// this app. The install link can be sent to the computer (mail, messages…).
class HowToConnectPage extends ConsumerWidget {
  const HowToConnectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.tokens;
    final s = S.of(context);
    const host = 'zappit.tv/get';

    return Scaffold(
      backgroundColor: t.bgBase,
      appBar: AppBar(title: Text(s.howToConnect)),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: AppTokens.contentMaxWidth + 32),
            child: ListView(
              padding: const EdgeInsets.all(AppTokens.space4),
              children: [
                _Step(
                  number: 1,
                  title: s.connectStep1Title,
                  body: s.connectStep1Body(host),
                  trailing: Row(
                    children: [
                      Expanded(
                        child: ZpButton(
                          label: s.sendLink,
                          height: AppTokens.targetMin,
                          icon: const Icon(Icons.ios_share_rounded),
                          onPressed: () => SharePlus.instance.share(
                            ShareParams(text: s.installExtensionShare(getExtensionUrl)),
                          ),
                        ),
                      ),
                      const SizedBox(width: AppTokens.space2),
                      Expanded(
                        child: ZpButton(
                          label: s.copyLink,
                          height: AppTokens.targetMin,
                          icon: const Icon(Icons.copy_rounded),
                          onPressed: () async {
                            await Clipboard.setData(const ClipboardData(text: getExtensionUrl));
                            AppNotice.snack(s.linkCopied);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppTokens.space4),
                _Step(
                  number: 2,
                  title: s.connectStep2Title,
                  body: s.connectStep2Body,
                ),
                const SizedBox(height: AppTokens.space4),
                _Step(
                  number: 3,
                  title: s.connectStep3Title,
                  body: s.connectStep3Body,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Step extends StatelessWidget {
  const _Step({required this.number, required this.title, required this.body, this.trailing});

  final int number;
  final String title;
  final String body;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return ZpCluster(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 28,
                height: 28,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: t.surface300, shape: BoxShape.circle),
                child: Text('$number', style: AppText.label.copyWith(color: t.ink, fontWeight: FontWeight.w600)),
              ),
              const SizedBox(width: AppTokens.space3),
              Expanded(child: Text(title, style: AppText.bodyStrong.copyWith(fontSize: 16, color: t.ink))),
            ],
          ),
          const SizedBox(height: AppTokens.space2),
          Text(body, style: AppText.body.copyWith(color: t.inkMuted)),
          if (trailing != null) ...[
            const SizedBox(height: AppTokens.space4),
            trailing!,
          ],
        ],
      ),
    );
  }
}
