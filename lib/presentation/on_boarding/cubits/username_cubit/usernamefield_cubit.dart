import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plank_me/presentation/on_boarding/cubits/setupuser_cubit/setupuser_cubit.dart';

part 'usernamefield_state.dart';
part 'usernamefield_cubit.freezed.dart';

class UsernamefieldCubit extends Cubit<UsernamefieldState> {
  SetupuserCubit? setupuserCubit;

  UsernamefieldCubit({this.setupuserCubit})
      : super(const UsernamefieldState.initial());

  void validateUser(String username) async {
    if (username.length < 4) {
      emit(const Invalid('Character must be greater than 4'));
    } else {
      emit(const UserChecking());
      Future.delayed(const Duration(milliseconds: 300), () async {
        await setupuserCubit!.isUserAvailable(username)
            ? emit(const UserAvailable('Username is available!'))
            : emit(const UserExist('Username not available!'));
      });
    }
  }
}
