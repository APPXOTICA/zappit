import 'dart:async';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:timezone/data/latest_all.dart' as tz_data;
import 'package:timezone/timezone.dart' as tz;
import 'package:zappit/core/analytics/analytics.dart';
import 'package:zappit/core/barrel_files/localization.dart';

/// Days before the first charge that the reminder goes out. The trial is a
/// week long, so the day before; the copy below says "tomorrow".
const trialReminderDaysBefore = 1;

const _notificationId = 7001;
final _plugin = FlutterLocalNotificationsPlugin();
var _initialized = false;

/// Right after a free trial starts: ask in the app's own dialog (soft ask)
/// whether to remind the user before the first charge. Only a "yes" shows the
/// system permission prompt, and only a granted permission schedules the local
/// notification [trialReminderDaysBefore] days before [chargeDate].
/// Never throws: the purchase is already done.
Future<void> offerTrialReminder(BuildContext context, StoreProduct yearly, DateTime chargeDate) async {
  try {
    final remindAt = reminderTime(chargeDate);
    if (!remindAt.isAfter(DateTime.now())) return;
    final answer = await showOkCancelAlertDialog(
      context: context,
      title: S.of(context).trialReminderTitle,
      message: S.of(context).trialReminderMessage,
      okLabel: S.of(context).remindMe,
      cancelLabel: S.of(context).noThanks,
      barrierDismissible: false,
    );
    unawaited(Analytics.event('trial_reminder_ask', {'answer': answer.name}));
    if (answer != OkCancelResult.ok) return;
    if (!await _requestPermission()) return;
    await scheduleTrialReminder(remindAt, reminderBody(yearly.priceString, chargeDate));
  } catch (e) {
    debugPrint('Trial reminder failed: $e');
  }
}

/// 10:00 local time, [trialReminderDaysBefore] days before the charge date.
DateTime reminderTime(DateTime chargeDate) => DateTime(chargeDate.year, chargeDate.month, chargeDate.day - trialReminderDaysBefore, 10);

String reminderBody(String price, DateTime chargeDate) => getIt<S>().trialReminderBody(price, DateFormat.MMMd().format(chargeDate));

Future<void> scheduleTrialReminder(DateTime when, String body) async {
  await _init();
  await _plugin.cancel(id: _notificationId);
  await _plugin.zonedSchedule(
    id: _notificationId,
    // An absolute instant: no need to know the device's time zone name.
    scheduledDate: tz.TZDateTime.from(when, tz.UTC),
    title: getIt<S>().trialReminderNotificationTitle,
    body: body,
    notificationDetails: NotificationDetails(
      android: AndroidNotificationDetails('trial_reminder', getIt<S>().trialReminderChannel, channelDescription: getIt<S>().trialReminderChannelDescription),
      iOS: const DarwinNotificationDetails(),
    ),
    androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
  );
  unawaited(Analytics.event('trial_reminder_scheduled', {}));
}

Future<void> _init() async {
  if (_initialized) return;
  tz_data.initializeTimeZones();
  await _plugin.initialize(
    settings: const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      // The prompt is shown by _requestPermission, after the soft ask.
      iOS: DarwinInitializationSettings(requestAlertPermission: false, requestBadgePermission: false, requestSoundPermission: false),
    ),
  );
  _initialized = true;
}

Future<bool> _requestPermission() async {
  await _init();
  final granted = switch (defaultTargetPlatform) {
    TargetPlatform.android => await _plugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.requestNotificationsPermission(),
    TargetPlatform.iOS => await _plugin.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()?.requestPermissions(alert: true, sound: true),
    _ => false,
  };
  return granted ?? false;
}
