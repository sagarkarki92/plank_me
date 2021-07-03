import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plank_me/data/models/user.dart';
import 'package:plank_me/presentation/app/app_service/base_cubit.dart';
import 'package:plank_me/presentation/app/cubit/app_cubit.dart';
import 'package:plank_me/repositories/user_repository.dart';

import '../../../screens.dart';

part 'setupuser_state.dart';
part 'setupuser_cubit.freezed.dart';

enum UserType { male, female }

class SetupuserCubit extends BaseCubit<SetupuserState> {
  final UserRepository userRepository;
  final AppCubit appCubit;
  UserType _userType = UserType.male;
  String username = '';
  SetupuserCubit({
    required this.userRepository,
    required this.appCubit,
  }) : super(const SetupuserState.initial());

  UserType get userType => _userType;

  void setUserGender(UserType userType) {
    _userType = userType;
    emit(SetupuserState.genderChanged(_userType));
  }

  Future<bool> isUserAvailable(String uname) async {
    if (username == 'sagar') {
      return false;
    }
    username = uname;
    return true;
  }

  void setUser() {
    //set user locally
    final _user = User(
        name: username, gender: _userType == UserType.male ? 'male' : 'female');
    userRepository.setUserDetails(_user);
    appCubit.setUser(_user);
    emit(const Success());
  }
}
