import 'package:freezed_annotation/freezed_annotation.dart';

part 'plank_info.freezed.dart';

@freezed
abstract class PlankInfo with _$PlankInfo {
  factory PlankInfo({DateTime? date, int? planktime}) = _PlankInfo;
}
