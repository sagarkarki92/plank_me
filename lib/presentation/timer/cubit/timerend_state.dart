part of 'timerend_cubit.dart';

@freezed
abstract class TimerendState with _$TimerendState {
  const factory TimerendState.initial() = Initial;
  const factory TimerendState.newBest(String username,int timeInSecond) = NewBest;
  const factory TimerendState.finish(String username,int timeInSecond) = Finish;
}
