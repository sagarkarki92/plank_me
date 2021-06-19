part of 'setting_cubit.dart';

@freezed
abstract class SettingState with _$SettingState {
  const factory SettingState.initial() = Initial;
  const factory SettingState.loaded(
      {required bool isDarkMode, required String username}) = Loaded;
  const factory SettingState.editing(
      {required bool isDarkMode, required String username}) = Editing;
}
