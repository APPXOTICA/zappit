import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:zappit/core/utils/haptic_utils.dart';
import 'package:zappit/core/barrel_files/localization.dart';

final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

final class UiHelper {
  static void showCustomPopup({required BuildContext context, required Widget child, required bool barrierDismissible}) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierColor: Colors.black54,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          backgroundColor: ColorScheme.of(context).surfaceContainerLowest,
          child: IntrinsicHeight(
            child: child,
          ),
        );
      },
    );
  }

  static void showSnackBar({required String message, bool? longDisplayTime = false, bool? vibrate = true}) async {
    final snackBar = SnackBar(
      content: Text(message, textAlign: TextAlign.center),
      elevation: 5,
      behavior: SnackBarBehavior.fixed,
      duration: Duration(milliseconds: message.length > 40 || longDisplayTime! ? 2500 : 1500),
    );
    scaffoldKey.currentState?.showSnackBar(snackBar);

    if (vibrate!) {
      HapticUtils.hapticFeedback(HapticType.warning);
    }
  }

  /// Title will be Error if not specified
  static void showOkDialog({required BuildContext context, String? title, required String message}) {
    HapticUtils.hapticFeedback(HapticType.warning);

    showOkAlertDialog(
      context: context,
      title: title ?? getIt<S>().error,
      message: message,
    );
  }
}