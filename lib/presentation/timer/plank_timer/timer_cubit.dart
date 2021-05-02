import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plank_me/core/utils/time_utils.dart';
import 'package:plank_me/presentation/app/app_service/base_cubit.dart';
import 'package:plank_me/presentation/timer/myplank_cubit/myplank_cubit.dart';

part 'timer_state.dart';
part 'timer_cubit.freezed.dart';

class TimerCubit extends BaseCubit<TimerState> {
  final MyplankCubit _myplankCubit;
  late Timer timer;
  late Stopwatch stopwatch;

  String completedAt = '0 Minutes 0 seconds';

  TimerCubit(this._myplankCubit) : super(const TimerState.initial('00 : 00'));

  void startPlankWatch() {
    stopwatch = Stopwatch()..start();
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      emit(Running(_getPlankTime));
    });
  }

  void stopPlankWatch() {
    stopwatch.stop();
    timer.cancel();
    completedAt = TimeUtils.getShowTimeString(stopwatch.elapsed.inSeconds);

    emit(Stop(_getPlankTime, completedAt));
  }

  void resetPlankWatch() {
    stopwatch.stop();
    timer.cancel();
    emit(const Initial('00 : 00'));
  }

  String get _getPlankTime =>
      TimeUtils.getShowTime(stopwatch.elapsed.inSeconds);

  void recordPlankTime() {
    if (_myplankCubit.isNewBest(stopwatch.elapsed.inSeconds)) {
      _myplankCubit.setNewBest(stopwatch.elapsed.inSeconds);
    }
  }
}
