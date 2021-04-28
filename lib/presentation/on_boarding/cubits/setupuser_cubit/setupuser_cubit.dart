import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setupuser_state.dart';
part 'setupuser_cubit.freezed.dart';

enum UserType { male, female }

class SetupuserCubit extends Cubit<SetupuserState> {
  UserType _userType = UserType.male;
  String username = '';
  SetupuserCubit() : super(SetupuserState.initial());

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
    print(
        'Username : $username and gender: ${_userType == UserType.male ? 'male' : 'female'}');
  }
}
