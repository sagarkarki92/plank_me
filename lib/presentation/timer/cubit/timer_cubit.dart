import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plank_me/presentation/app/app_service/base_cubit.dart';

part 'timer_state.dart';
part 'timer_cubit.freezed.dart';

class TimerCubit extends BaseCubit<TimerState> {
  late Timer timer;
  late Stopwatch stopwatch;
  String plankTime = '00:00';

  TimerCubit() : super(const TimerState.initial('00:00'));

  void startPlankWatch() {
    stopwatch = Stopwatch()..start();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      plankTime = _getPlankTime(stopwatch.elapsed);
      emit(Running(plankTime));
    });
  }

  void stopPlankWatch() {
    stopwatch.stop();
    timer.cancel();
    emit(Stop(plankTime));
  }

  void resetPlankWatch() {
    plankTime = '00 : 00';
    stopwatch.stop();
    timer.cancel();
    emit(Initial(plankTime));
  }

  String _getPlankTime(Duration stopwatchValue) {
    final String minutes =
        stopwatchValue.inMinutes.floor().toString().padLeft(2, '0');
    final String seconds =
        (stopwatchValue.inSeconds % 60).floor().toString().padLeft(2, '0');
    return '$minutes : $seconds';
  }
}
