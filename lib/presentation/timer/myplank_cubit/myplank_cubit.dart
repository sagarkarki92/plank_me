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
    personalBestTime = _planktimeRepository.getPersonalBestTime();
  }

  String get userName => user.name!;
  String get personBest => TimeUtils.getShowTime(personalBestTime);

  void recordPlankTime(int timeInSeconds) {
    if (isNewBest(timeInSeconds)) {
      _setNewBest(timeInSeconds);
    }
    _setPlankTime(timeInSeconds);
  }

  bool isNewBest(int timeInSeconds) => timeInSeconds > personalBestTime;

  void _setNewBest(int timeInSeconds) {
    _planktimeRepository.setPersonalBestTime(timeInSeconds);
  }

  void _setPlankTime(int timeInSeconds) {
    _planktimeRepository.recordPlankTime(timeInSeconds);
  }
}
