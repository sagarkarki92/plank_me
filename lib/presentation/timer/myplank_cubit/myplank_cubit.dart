import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plank_me/core/utils/time_utils.dart';
import 'package:plank_me/data/models/user.dart';
import 'package:plank_me/repositories/planktime_repository.dart';
import 'package:plank_me/repositories/user_repository.dart';

part 'myplank_state.dart';
part 'myplank_cubit.freezed.dart';

class MyplankCubit extends Cubit<MyplankState> {
  final UserRepository _userRepository;
  final PlanktimeRepository _planktimeRepository;
  late User user;
  late int personalBestTime;

  MyplankCubit(
    this._userRepository,
    this._planktimeRepository,
  ) : super(const MyplankState.initial());

  void init() {
    user = _userRepository.getUserDetails();
    try {
      personalBestTime = _planktimeRepository.getPersonalBestTime();
    } catch (e) {
      personalBestTime = 0;
    }
  }

  String get userName => user.name!;
  String get personBest => TimeUtils.getShowTime(personalBestTime);

  bool isNewBest(int timeInSeconds) {
    return timeInSeconds > personalBestTime;
  }

  void setNewBest(int timeInSeconds) {
    _planktimeRepository.setPersonalBestTime(timeInSeconds);
  }
}
