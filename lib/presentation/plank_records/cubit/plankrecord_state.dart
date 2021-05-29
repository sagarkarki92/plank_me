part of 'plankrecord_cubit.dart';

@freezed
abstract class PlankrecordState with _$PlankrecordState {
  const factory PlankrecordState.initial() = Initial;
  const factory PlankrecordState.loading() = Loading;
  const factory PlankrecordState.complete({
    required String totalMinutes,
    required String personalBest,
    required String plankMessage,
    required List<PlankInfo> records,
  }) = Complete;
  const factory PlankrecordState.error() = Error;
}
