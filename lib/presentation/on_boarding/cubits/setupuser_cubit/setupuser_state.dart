part of 'setupuser_cubit.dart';

@freezed
abstract class SetupuserState with _$SetupuserState {
  const factory SetupuserState.initial() = Initial;
  const factory SetupuserState.loading() = Loading;
  const factory SetupuserState.success() = Success;
  const factory SetupuserState.failed() = Failed;
  const factory SetupuserState.genderChanged(UserType userType) = GenderChanged;

}
