import 'package:freezed_annotation/freezed_annotation.dart';
part 'scheduled_time.freezed.dart';

@freezed
abstract class ScheduledTime with _$ScheduledTime {
  factory ScheduledTime(int? hour, int? minutes) =
      _ScheduledTime;
}
