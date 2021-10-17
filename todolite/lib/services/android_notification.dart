import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:todolite/screens/home_screen.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class TaskReminder extends ChangeNotifier {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  Future selectNotification(String payload, BuildContext context) async {
    if (payload != null) {
      debugPrint('notification payload: $payload');
    }
    await Navigator.push(
      context,
      MaterialPageRoute<void>(builder: (context) => HomeScreen()),
    );
  }

  void initializeNotification(BuildContext context) {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (value) => selectNotification(value, context));
  }

  Future<void> displayNotification(
      int id, String taskName, DateTime deadline) async {
    final String currentTimeZone =
        await FlutterNativeTimezone.getLocalTimezone();

    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation(currentTimeZone));
    final taskdeadline = tz.TZDateTime.from(deadline, tz.local);
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
            '0', 'Task Reminders', 'Remind User of thier task deadline',
            importance: Importance.defaultImportance,
            priority: Priority.high,
            showWhen: false);
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.zonedSchedule(
        id,
        taskName,
        '🔔 A reminder about your task from TodoLite  🔔 ',
        taskdeadline,
        platformChannelSpecifics,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidAllowWhileIdle: true);
  }

  int getIdFromString(String id) {
    int notificationId = 0;
    id.codeUnits.forEach((element) => notificationId += element);
    return notificationId;
  }

  Future cancelNotification(String id) async {
    final notificationId = getIdFromString(id);
    await flutterLocalNotificationsPlugin.cancel(notificationId);
  }
}
