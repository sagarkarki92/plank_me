import 'package:hive/hive.dart';
import 'package:plank_me/data/models/scheduled_time.dart';
import 'package:plank_me/data/services/local_notification_service.dart';

import 'local_storage_service.dart';

class TimeService {
  final timeDb = Hive.box(StorageKeys.time);
  final LocalNotificationService notificationService;

  TimeService(this.notificationService);

  void setSchedulePlankTime(ScheduledTime time) {
    timeDb.put('scheduledTime', {
      'hour': time.hour,
      'minutes': time.minutes,
    });

    notificationService.scheduledFor(hour: time.hour, minutes: time.minutes);
    print(getSchedulePlankTime());
  }

  ScheduledTime getSchedulePlankTime() {
    final time = timeDb.get('scheduledTime') as Map<String, dynamic>;
    return ScheduledTime(time['hour'] as int, time['minutes'] as int);
  }
}
