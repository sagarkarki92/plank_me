import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/core/utils/time_utils.dart';
import 'package:plank_me/data/models/plank_info.dart';
import 'package:plank_me/repositories/planktime_repository.dart';

part 'plankrecord_state.dart';
part 'plankrecord_cubit.freezed.dart';

class PlankrecordCubit extends Cubit<PlankrecordState> {
  final planktimeRepository = locator<PlanktimeRepository>();
  PlankrecordCubit() : super(const PlankrecordState.initial());

  Future<void> getAllRecords() async {
    final records = planktimeRepository.getAllPlankTime();
    int totalPlankedTime = 0;
    records.forEach((record) {
      totalPlankedTime += record.planktime!;
    });

    emit(Complete(
        totalMinutes: TimeUtils.getShowTimeString(totalPlankedTime),
        records: records));
  }
}
