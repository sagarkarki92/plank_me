part of 'myplank_cubit.dart';

@freezed
abstract class MyplankState with _$MyplankState {
   const factory MyplankState.initial() = Initial;
  const factory MyplankState.loading() = Loading;
  const factory MyplankState.success() = Success;
  const factory MyplankState.error() = Error;
}
