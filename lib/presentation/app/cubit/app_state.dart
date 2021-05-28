part of 'app_cubit.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState.initial() = Initial;
  const factory AppState.userAvailable() = UserAvailable;
  const factory AppState.userNotAvailable() = UserNotAvailable;
  const factory AppState.loadScreen() = LoadScreen;
}
