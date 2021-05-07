import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/user_exception.dart';
import '../../../core/service_locator.dart';
import '../../../repositories/planktime_repository.dart';
import '../../../repositories/user_repository.dart';
import '../app_service/base_cubit.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends BaseCubit<AppState> {
  final PlanktimeRepository planktimeRepository = locator();
  final UserRepository userRepository = locator();
  AppCubit() : super(const AppState.initial());

  bool isSessionAvailable() {
     try {
       userRepository.getUserDetails();
       return true;
     } on NoUserException catch (_) {
      return false;
     }
  }

  Future<bool> hasAlreadyPlankedToday() async {
    final allPlanks = planktimeRepository.getAllPlankTime();
    if (allPlanks.isEmpty) return false;
    final bool hasPlanked =
        DateTime.parse(allPlanks.last.date!).day == DateTime.now().day;
    return Future.value(hasPlanked);
  }
}
