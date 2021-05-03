import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class LocalNotificationService {
  final plugin = FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    final initializationSettings = InitializationSettings(
      android: _getAndroidSettings(),
    );

    await plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_androidChannel);

    plugin.initialize(
      initializationSettings,
      onSelectNotification: (payload) async => _openNotification(payload),
    );
  }

  AndroidInitializationSettings _getAndroidSettings() =>
      const AndroidInitializationSettings('ic_launcher');

  AndroidNotificationChannel get _androidChannel =>
      const AndroidNotificationChannel(
        'reminder',
        'plank reminder',
        'description',
        importance: Importance.high,
      );
  _openNotification(String? payload) {}

  AndroidNotificationDetails get androidNotificationDetails =>
      const AndroidNotificationDetails(
        'reminder',
        'Plank Reminder',
        'Reminds user to plank in case they miss there schedule',
        importance: Importance.high,
        priority: Priority.high,
      );

  Future<void> scheduledFor({int? hour, int? minutes}) async {
    final String currentTimeZone =
        await FlutterNativeTimezone.getLocalTimezone();
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation(currentTimeZone));

    final notificationDetails =
        NotificationDetails(android: androidNotificationDetails);

    await plugin.zonedSchedule(
      0,
      'Hey there! Ready to conquer your body',
      'Tap to start plank for today',
      tz.TZDateTime.now(tz.local).add(const Duration(minutes: 1)),
      notificationDetails,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }
}
