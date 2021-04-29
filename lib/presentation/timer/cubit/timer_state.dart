part of 'timer_cubit.dart';

@freezed
abstract class TimerState with _$TimerState {
  const factory TimerState.initial(String timerValue) = Initial;
  const factory TimerState.running(String timerValue) = Running;
  const factory TimerState.stop(String timerValue) = Stop;
}
