import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/theme/app_tokens.dart';
import 'package:zappit/shared/widgets/ds/zp_icon_button.dart';

/// Shown while Firebase, Remote Config and Ably start.
class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const t = AppTokens.dark;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ColoredBox(
        color: t.bgBase,
        child: Center(
          child: Container(
            width: 88,
            height: 88,
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: t.surface100,
              shape: BoxShape.circle,
              border: Border.all(color: t.hairlineStrong),
            ),
            child: IconTheme(
              data: IconThemeData(color: t.ink),
              child: const ZpImageIcon('assets/images/ic_remote.svg', size: 44),
            ),
          ),
        ),
      ),
    );
  }
}
