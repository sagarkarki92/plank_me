import 'package:hive/hive.dart';
import 'package:plank_me/core/utils/time_utils.dart';
import 'package:plank_me/data/models/scheduled_time.dart';
import 'package:plank_me/data/services/local_notification_service.dart';

import 'local_storage_service.dart';

class TimeService {
  final timeDb = Hive.box(StorageKeys.time);
  final LocalNotificationService notificationService;

  TimeService(this.notificationService);

  void setSchedulePlankTime(DateTime scheduledTime) {
    timeDb.put('scheduledTime', {
      'hour': scheduledTime.hour,
      'minutes': scheduledTime.minute,
    });

    notificationService.scheduledFor(scheduledTime);
    
  }

  ScheduledTime? getSchedulePlankTime() {
    final time = timeDb.get('scheduledTime');
    if (time == null) {
      return null;
    }
    return ScheduledTime(time['hour'] as int, time['minutes'] as int);
  }
}
