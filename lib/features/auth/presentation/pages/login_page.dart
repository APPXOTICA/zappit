import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/features/auth/presentation/controllers/auth_state_provider.dart';
import 'package:zappit/shared/widgets/default_activity_indicator.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  static const double _buttonSize = 70;

  bool _showActivityIndicator = false;

  Widget get appleLoginButton {
    return _buildLogoButton(
      onPressed: _signInWithApple,
      icon: const Padding(
        padding: EdgeInsets.only(bottom: 3),
        child: Icon(Icons.apple, color: Colors.white, size: 43),
      ),
    );
  }

  Widget get googleLoginButton {
    return _buildLogoButton(
      onPressed: _signInWithGoogle,
      icon: Image.asset(
        "assets/images/google_logo_256.png",
        width: 30,
        height: 30,
      ),
    );
  }

  Widget _buildLogoButton({
    required Widget icon,
    required VoidCallback onPressed,
    Color backgroundColor = Colors.black,
  }) {
    return SizedBox(
      width: _buttonSize,
      height: _buttonSize,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: icon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                appleLoginButton,
                const SizedBox(width: 16),
                googleLoginButton,
              ],
            )
          ),
        ),
        if (_showActivityIndicator)
          DefaultActivityIndicator(),
      ],
    );
  }

  void _signInWithApple() async {
    if (mounted) {
      setState(() => _showActivityIndicator = true);
    }

    try {
      await ref.read(authStateProvider.notifier).signInWithApple();
    }
    finally {
      if (mounted) {
        setState(() => _showActivityIndicator = false);
      }
    }
  }

  void _signInWithGoogle() async {
    if (mounted) {
      setState(() => _showActivityIndicator = true);
    }

    try {
      await ref.read(authStateProvider.notifier).signInWithGoogle();
    }
    finally {
      if (mounted) {
        setState(() => _showActivityIndicator = false);
      }
    }
  }
}



