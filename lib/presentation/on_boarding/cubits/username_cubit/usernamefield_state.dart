part of 'usernamefield_cubit.dart';

@freezed
abstract class UsernamefieldState with _$UsernamefieldState {
  const factory UsernamefieldState.initial() = Initial;
  const factory UsernamefieldState.userChecking() = UserChecking;
  const factory UsernamefieldState.invalid( String message) = Invalid;
  const factory UsernamefieldState.userExist(String label) = UserExist;
  const factory UsernamefieldState.userAvailable(String label) = UserAvailable;
}
