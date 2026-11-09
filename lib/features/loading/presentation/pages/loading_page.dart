import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/shared/widgets/ds/zp_badges.dart';

/// Shown while Firebase, Remote Config and Ably start. Same as the native
/// splash (iOS LaunchScreen.storyboard, Android flutter_native_splash in
/// pubspec.yaml), so the handover is invisible: the icon at 200 on the icon
/// image's own background colour. Android 12 draws the 1152 px
/// `android_splash_logo.png` (icon at 800 px) in 288 dp: 200 dp too.
class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: ColoredBox(
        color: ZpAppIcon.background,
        child: Center(
          child: ZpAppIcon(size: 200),
        ),
      ),
    );
  }
}
