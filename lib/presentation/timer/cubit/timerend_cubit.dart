import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/data/models/plank_info.dart';
import 'package:plank_me/data/models/user.dart';
import 'package:plank_me/repositories/planktime_repository.dart';
import 'package:plank_me/repositories/user_repository.dart';

part 'timerend_state.dart';
part 'timerend_cubit.freezed.dart';

class TimerendCubit extends Cubit<TimerendState> {
  final UserRepository userRepository = locator();
  final PlanktimeRepository planktimeRepository = locator();

  late User user;
  late int plankedTime;
  late List<PlankInfo> plankRecords;

  TimerendCubit() : super(const TimerendState.initial());

  init() {
    user = userRepository.getUserDetails();
    plankRecords = planktimeRepository.getAllPlankTime();
    plankedTime = plankRecords.last.planktime!;

    if (plankedTime > planktimeRepository.getPersonalBestTime()) {
      planktimeRepository.setPersonalBestTime(plankedTime);
      emit(NewBest(user.name!, plankedTime));
    } else {
      emit(Finish(user.name!, plankedTime));
    }
  }
}
