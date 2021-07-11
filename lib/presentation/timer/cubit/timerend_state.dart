part of 'timerend_cubit.dart';

@freezed
abstract class TimerendState with _$TimerendState {
  const factory TimerendState.initial() = Initial;
  const factory TimerendState.newBestScore(User user,int timeInSecond) = NewBestScore;
  const factory TimerendState.ordinaryScore(User user,int timeInSecond) = OrdinaryScore;
  const factory TimerendState.finish() = Finish;
}
