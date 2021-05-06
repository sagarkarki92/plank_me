import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/data/services/local_storage_service.dart';
import 'package:plank_me/presentation/app/app_service/base_cubit.dart';
import 'package:plank_me/repositories/planktime_repository.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends BaseCubit<AppState> {
  final PlanktimeRepository planktimeRepository = locator();

  AppCubit() : super(AppState.initial());

  bool isSessionAvailable() {
    return Hive.box(StorageKeys.userDetails).containsKey('name');
  }

  Future<bool> hasAlreadyPlankedToday() async {
    final allPlanks = planktimeRepository.getAllPlankTime();
    if (allPlanks.isEmpty) return false;
    final bool hasPlanked =
        DateTime.parse(allPlanks.last.date!).day == DateTime.now().day;
    return Future.value(hasPlanked);
  }
}
