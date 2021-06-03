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
    final personalBest = planktimeRepository.getPersonalBestTime();
    int totalPlankedTime = 0;

    if (records.isEmpty) {
      emit(const Error());
      return;
    }

    records.forEach((record) {
      totalPlankedTime += record.planktime!;
    });

    final plankMessage = _getPlankMessage(records);

    emit(Complete(
      totalMinutes: TimeUtils.totalMinutes(totalPlankedTime),
      personalBest: TimeUtils.getShowTime(personalBest),
      plankMessage: plankMessage,
      records: records,
    ));
  }
}

String _getPlankMessage(List<PlankInfo> records) {
  final bool hasPlanked = records.last.date!.day == DateTime.now().day;
  return hasPlanked
      ? 'You planked for ${TimeUtils.getShowTimeString(records.last.planktime!)} today.'
      : "You haven't planked today.";
}
