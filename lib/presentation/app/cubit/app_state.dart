part of 'app_cubit.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState.initial() = Initial;
  const factory AppState.loadScreen(int tabIndex,List<ViewItem> tabs) = LoadScreen;
}
