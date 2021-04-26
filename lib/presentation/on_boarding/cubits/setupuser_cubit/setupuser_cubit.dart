import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setupuser_state.dart';
part 'setupuser_cubit.freezed.dart';

class SetupuserCubit extends Cubit<SetupuserState> {
  SetupuserCubit() : super(SetupuserState.initial());

  Future<bool> isUserAvailable(String username) async {
    if (username == 'sagar') {
      return false;
    }
    return true;
  }
}
