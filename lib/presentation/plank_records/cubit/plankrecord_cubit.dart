import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plank_me/core/service_locator.dart';
import 'package:plank_me/core/utils/time_utils.dart';
import 'package:plank_me/data/models/plank_info.dart';
import 'package:plank_me/repositories/planktime_repository.dart';

part 'plankrecord_state.dart';
part 'plankrecord_cubit.freezed.dart';

class PlankRecordViewModel {
  DateTime dateTime;
  int timeInSeconds;
  String showPlankTime;
  PlankRecordViewModel({
    required this.dateTime,
    required this.timeInSeconds,
    required this.showPlankTime,
  });
}

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

    final plankRecords = _getPlankViewModels(records);
    final plankMessage = _getPlankMessage(records);

    emit(Complete(
      totalMinutes: TimeUtils.totalMinutes(totalPlankedTime),
      personalBest: TimeUtils.getShowTime(personalBest),
      plankMessage: plankMessage,
      records: plankRecords,
    ));
  }

  List<PlankRecordViewModel> _getPlankViewModels(List<PlankInfo> records) {
    return records
        .map(
          (e) => PlankRecordViewModel(
              dateTime: e.date!,
              timeInSeconds: e.planktime!,
              showPlankTime: TimeUtils.getShowTime(e.planktime!)),
        )
        .toList();
  }
}

String _getPlankMessage(List<PlankInfo> records) {
  final bool hasPlanked = records.last.date!.day == DateTime.now().day;
  return hasPlanked
      ? 'You planked for ${TimeUtils.getShowTimeString(records.last.planktime!)} today.'
      : "You haven't planked today.";
}
