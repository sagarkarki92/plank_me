import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plank_me/data/models/user.dart';
import 'package:plank_me/repositories/user_repository.dart';

part 'setting_state.dart';
part 'setting_cubit.freezed.dart';

class SettingCubit extends Cubit<SettingState> {
  final UserRepository userRepository;
  late User user;
  bool isDarkMode = false;
  SettingCubit({required this.userRepository}) : super(const SettingState.initial());

  void getSettingsData() {
    user = userRepository.getUserDetails();
    isDarkMode = false; //TODO: creating local storage to store dark mode
    emit(Loaded(username: user.name!, isDarkMode: false));
  }

  void renameUserName(String newUserName) {
    userRepository.setUserDetails(User(name: newUserName, gender: user.gender));
    user = userRepository.getUserDetails();
    emit(Loaded(username: user.name!, isDarkMode: isDarkMode));
  }

  void editUsername() =>
      emit(Editing(isDarkMode: isDarkMode, username: user.name!));

  void loadSettingData() =>
      emit(Loaded(username: user.name!, isDarkMode: isDarkMode));

  void toggleDarkMode() {
    //set dark mode to local storyage
    isDarkMode = !isDarkMode;
    emit(Loaded(username: user.name!, isDarkMode: isDarkMode));
  }
}
