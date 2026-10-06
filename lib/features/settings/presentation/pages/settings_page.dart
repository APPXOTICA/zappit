import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/features/auth/presentation/controllers/auth_state_provider.dart';
import 'package:zappit/shared/widgets/default_activity_indicator.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key});

  @override
  ConsumerState<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  bool _showActivityIndicator = false;

  Future<void> _handleLogout() async {
    final s = getIt<S>();

    final result = await showOkCancelAlertDialog(
      context: context,
      title: s.logout,
      message: s.logoutMessage,
      okLabel: s.logout,
      cancelLabel: s.cancel,
      isDestructiveAction: true,
    );

    if (result != OkCancelResult.ok) return;

    if (context.mounted) {
      setState(() {
        _showActivityIndicator = true;
      });

      try {
        await ref.read(authStateProvider.notifier).signOut();
      } catch (e) {
        if (context.mounted) {
          setState(() {
            _showActivityIndicator = false;
          });
        }
      }
    }
  }

  Future<void> _handleDeleteAccount() async {
    final s = getIt<S>();

    final result = await showOkCancelAlertDialog(
      context: context,
      title: s.deleteAccount,
      message: s.deleteAccountMessage,
      okLabel: s.delete,
      cancelLabel: s.cancel,
      isDestructiveAction: true,
    );

    if (result != OkCancelResult.ok) return;

    if (context.mounted) {
      setState(() {
        _showActivityIndicator = true;
      });

      try {
        await ref.read(authStateProvider.notifier).deleteAccount();
      } catch (e) {
        if (context.mounted) {
          setState(() {
            _showActivityIndicator = false;
          });

          showOkAlertDialog(
            context: context,
            title: s.error,
            message: e.toString(),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = getIt<S>();

    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text(s.settings),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _handleLogout,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                  ),
                  child: Text(s.logout),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _handleDeleteAccount,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: Text(s.deleteAccount),
                ),
              ],
            ),
          ),
        ),
        if (_showActivityIndicator)
          DefaultActivityIndicator(),
      ],
    );
  }
}
