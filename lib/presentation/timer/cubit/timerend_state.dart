part of 'timerend_cubit.dart';

@freezed
abstract class TimerendState with _$TimerendState {
  const factory TimerendState.initial() = Initial;
  const factory TimerendState.newBestScore(String username,int timeInSecond) = NewBestScore;
  const factory TimerendState.ordinaryScore(String username,int timeInSecond) = OrdinaryScore;
  const factory TimerendState.finish() = Finish;
}
