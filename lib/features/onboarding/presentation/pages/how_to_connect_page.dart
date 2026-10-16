import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/constants/config.dart';
import 'package:zappit/core/utils/app_notice.dart';
import 'package:zappit/features/auth/presentation/controllers/auth_state_provider.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// Onboarding: get the extension on the computer and sign in with the same
/// account. The install link can be sent to the computer (mail, messages…).
class HowToConnectPage extends ConsumerWidget {
  const HowToConnectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.tokens;
    final email = ref.watch(authStateProvider.notifier).email;
    const host = 'zappit.tv/get';

    return Scaffold(
      backgroundColor: t.bgBase,
      appBar: AppBar(title: const Text('How to connect')),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: AppTokens.contentMaxWidth + 32),
            child: ListView(
              padding: const EdgeInsets.all(AppTokens.space4),
              children: [
                _Step(
                  number: 1,
                  title: 'Install the extension on your computer',
                  body: 'On your computer, open Chrome or Safari and go to $host.',
                  trailing: Row(
                    children: [
                      Expanded(
                        child: ZpButton(
                          label: 'Send link',
                          height: AppTokens.targetMin,
                          icon: const Icon(Icons.ios_share_rounded),
                          onPressed: () => SharePlus.instance.share(
                            ShareParams(text: 'Install the Zappit extension: $getExtensionUrl'),
                          ),
                        ),
                      ),
                      const SizedBox(width: AppTokens.space2),
                      Expanded(
                        child: ZpButton(
                          label: 'Copy link',
                          height: AppTokens.targetMin,
                          icon: const Icon(Icons.copy_rounded),
                          onPressed: () async {
                            await Clipboard.setData(const ClipboardData(text: getExtensionUrl));
                            AppNotice.snack('Link copied');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppTokens.space4),
                _Step(
                  number: 2,
                  title: 'Sign in with the same account',
                  body: email == null
                      ? 'Click the Zappit icon in the browser toolbar and sign in with the account you use here.'
                      : 'Click the Zappit icon in the browser toolbar and sign in as $email.',
                ),
                const SizedBox(height: AppTokens.space4),
                const _Step(
                  number: 3,
                  title: 'Play a video',
                  body: 'Keep the browser open. The remote connects on its own and turns green.',
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
