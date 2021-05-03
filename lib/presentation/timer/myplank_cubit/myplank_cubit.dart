import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/core/utils/time_utils.dart';
import 'package:plank_me/data/models/user.dart';
import 'package:plank_me/repositories/planktime_repository.dart';
import 'package:plank_me/repositories/user_repository.dart';

part 'myplank_state.dart';
part 'myplank_cubit.freezed.dart';

class MyplankCubit extends Cubit<MyplankState> {
  final UserRepository _userRepository = locator();
  final PlanktimeRepository _planktimeRepository = locator();
  late User user;
  late int personalBestTime;

  MyplankCubit() : super(const MyplankState.initial());

  void init() {
    user = _userRepository.getUserDetails();
    personalBestTime = _planktimeRepository.getPersonalBestTime();
  }

  String get userName => user.name!;
  String get personBest => TimeUtils.getShowTime(personalBestTime);

  void recordPlankTime(int timeInSeconds) {
    emit(const Loading());

    _setPlankTime(timeInSeconds);
    emit(const Success());
  }

  bool isNewBest(int timeInSeconds) => timeInSeconds > personalBestTime;

  void _setPlankTime(int timeInSeconds) {
    _planktimeRepository.recordPlankTime(timeInSeconds);
  }
}
