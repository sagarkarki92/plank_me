import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/core/utils/time_utils.dart';
import 'package:plank_me/data/models/plank_info.dart';
import 'package:plank_me/data/models/scheduled_time.dart';
import 'package:plank_me/data/models/user.dart';
import 'package:plank_me/data/services/time_service.dart';
import 'package:plank_me/repositories/planktime_repository.dart';
import 'package:plank_me/repositories/user_repository.dart';

part 'timerend_state.dart';
part 'timerend_cubit.freezed.dart';

class TimerendCubit extends Cubit<TimerendState> {
  final UserRepository userRepository = locator();
  final PlanktimeRepository planktimeRepository = locator();
  final TimeService timeService = locator();
  late User user;
  late int plankedTime;
  late List<PlankInfo> plankRecords;

  TimerendCubit() : super(const TimerendState.initial());

  void init() {
    user = userRepository.getUserDetails();
    plankRecords = planktimeRepository.getAllPlankTime();
    plankedTime = plankRecords.isEmpty ? 0 : plankRecords.last.planktime!;

    if (plankedTime > planktimeRepository.getPersonalBestTime()) {
      planktimeRepository.setPersonalBestTime(plankedTime);
      emit(NewBestScore(user, plankedTime));
    } else {
      emit(OrdinaryScore(user, plankedTime));
    }
  }

  void finishPlankSession() {
    if (timeService.getSchedulePlankTime() == null) {
      timeService.setSchedulePlankTime(DateTime.now().add(const Duration(hours: 24)));
    }
    emit(const Finish());
  }

  void setScheduledTime(int hour, int minute) {
    timeService
        .setSchedulePlankTime(TimeUtils.getTomorrowDateTime(hour, minute));
  }
}
