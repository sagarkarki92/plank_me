import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plank_me/presentation/app/app_service/base_cubit.dart';

part 'timer_state.dart';
part 'timer_cubit.freezed.dart';

class TimerCubit extends BaseCubit<TimerState> {
  late Timer timer;
  late Stopwatch stopwatch;

  String completedAt = '0 Minutes 0 seconds';

  TimerCubit() : super(const TimerState.initial('00:00'));

  void startPlankWatch() {
    stopwatch = Stopwatch()..start();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      emit(Running(_getPlankTime));
    });
  }

  void stopPlankWatch() {
    stopwatch.stop();
    timer.cancel();
    completedAt = '$_getMinutes Minutes and $_getSeconds Seconds';
    emit(Stop(_getPlankTime, completedAt));
  }

  void resetPlankWatch() {
    stopwatch.stop();
    timer.cancel();
    emit(const Initial('00 : 00'));
  }

  String get _getPlankTime => '$_getMinutes : $_getSeconds';

  String get _getMinutes =>
      stopwatch.elapsed.inMinutes.floor().toString().padLeft(2, '0');
  String get _getSeconds =>
      (stopwatch.elapsed.inSeconds % 60).floor().toString().padLeft(2, '0');
}
