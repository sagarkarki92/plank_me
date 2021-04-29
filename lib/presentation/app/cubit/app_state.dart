part of 'app_cubit.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.userAvailable() = _UserAvailable;
  const factory AppState.userNotAvailable() = _UserNotAvailable;
}
