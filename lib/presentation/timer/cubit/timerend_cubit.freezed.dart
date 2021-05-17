// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'timerend_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimerendStateTearOff {
  const _$TimerendStateTearOff();

  Initial initial() {
    return const Initial();
  }

  NewBestScore newBestScore(String username, int timeInSecond) {
    return NewBestScore(
      username,
      timeInSecond,
    );
  }

  OrdinaryScore ordinaryScore(String username, int timeInSecond) {
    return OrdinaryScore(
      username,
      timeInSecond,
    );
  }

  Finish finish() {
    return const Finish();
  }
}

/// @nodoc
const $TimerendState = _$TimerendStateTearOff();

/// @nodoc
mixin _$TimerendState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, int timeInSecond) newBestScore,
    required TResult Function(String username, int timeInSecond) ordinaryScore,
    required TResult Function() finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, int timeInSecond)? newBestScore,
    TResult Function(String username, int timeInSecond)? ordinaryScore,
    TResult Function()? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NewBestScore value) newBestScore,
    required TResult Function(OrdinaryScore value) ordinaryScore,
    required TResult Function(Finish value) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewBestScore value)? newBestScore,
    TResult Function(OrdinaryScore value)? ordinaryScore,
    TResult Function(Finish value)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerendStateCopyWith<$Res> {
  factory $TimerendStateCopyWith(
          TimerendState value, $Res Function(TimerendState) then) =
      _$TimerendStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimerendStateCopyWithImpl<$Res>
    implements $TimerendStateCopyWith<$Res> {
  _$TimerendStateCopyWithImpl(this._value, this._then);

  final TimerendState _value;
  // ignore: unused_field
  final $Res Function(TimerendState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$TimerendStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'TimerendState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, int timeInSecond) newBestScore,
    required TResult Function(String username, int timeInSecond) ordinaryScore,
    required TResult Function() finish,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, int timeInSecond)? newBestScore,
    TResult Function(String username, int timeInSecond)? ordinaryScore,
    TResult Function()? finish,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NewBestScore value) newBestScore,
    required TResult Function(OrdinaryScore value) ordinaryScore,
    required TResult Function(Finish value) finish,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewBestScore value)? newBestScore,
    TResult Function(OrdinaryScore value)? ordinaryScore,
    TResult Function(Finish value)? finish,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TimerendState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $NewBestScoreCopyWith<$Res> {
  factory $NewBestScoreCopyWith(
          NewBestScore value, $Res Function(NewBestScore) then) =
      _$NewBestScoreCopyWithImpl<$Res>;
  $Res call({String username, int timeInSecond});
}

/// @nodoc
class _$NewBestScoreCopyWithImpl<$Res> extends _$TimerendStateCopyWithImpl<$Res>
    implements $NewBestScoreCopyWith<$Res> {
  _$NewBestScoreCopyWithImpl(
      NewBestScore _value, $Res Function(NewBestScore) _then)
      : super(_value, (v) => _then(v as NewBestScore));

  @override
  NewBestScore get _value => super._value as NewBestScore;

  @override
  $Res call({
    Object? username = freezed,
    Object? timeInSecond = freezed,
  }) {
    return _then(NewBestScore(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      timeInSecond == freezed
          ? _value.timeInSecond
          : timeInSecond // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NewBestScore implements NewBestScore {
  const _$NewBestScore(this.username, this.timeInSecond);

  @override
  final String username;
  @override
  final int timeInSecond;

  @override
  String toString() {
    return 'TimerendState.newBestScore(username: $username, timeInSecond: $timeInSecond)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewBestScore &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.timeInSecond, timeInSecond) ||
                const DeepCollectionEquality()
                    .equals(other.timeInSecond, timeInSecond)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(timeInSecond);

  @JsonKey(ignore: true)
  @override
  $NewBestScoreCopyWith<NewBestScore> get copyWith =>
      _$NewBestScoreCopyWithImpl<NewBestScore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, int timeInSecond) newBestScore,
    required TResult Function(String username, int timeInSecond) ordinaryScore,
    required TResult Function() finish,
  }) {
    return newBestScore(username, timeInSecond);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, int timeInSecond)? newBestScore,
    TResult Function(String username, int timeInSecond)? ordinaryScore,
    TResult Function()? finish,
    required TResult orElse(),
  }) {
    if (newBestScore != null) {
      return newBestScore(username, timeInSecond);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NewBestScore value) newBestScore,
    required TResult Function(OrdinaryScore value) ordinaryScore,
    required TResult Function(Finish value) finish,
  }) {
    return newBestScore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewBestScore value)? newBestScore,
    TResult Function(OrdinaryScore value)? ordinaryScore,
    TResult Function(Finish value)? finish,
    required TResult orElse(),
  }) {
    if (newBestScore != null) {
      return newBestScore(this);
    }
    return orElse();
  }
}

abstract class NewBestScore implements TimerendState {
  const factory NewBestScore(String username, int timeInSecond) =
      _$NewBestScore;

  String get username => throw _privateConstructorUsedError;
  int get timeInSecond => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewBestScoreCopyWith<NewBestScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdinaryScoreCopyWith<$Res> {
  factory $OrdinaryScoreCopyWith(
          OrdinaryScore value, $Res Function(OrdinaryScore) then) =
      _$OrdinaryScoreCopyWithImpl<$Res>;
  $Res call({String username, int timeInSecond});
}

/// @nodoc
class _$OrdinaryScoreCopyWithImpl<$Res>
    extends _$TimerendStateCopyWithImpl<$Res>
    implements $OrdinaryScoreCopyWith<$Res> {
  _$OrdinaryScoreCopyWithImpl(
      OrdinaryScore _value, $Res Function(OrdinaryScore) _then)
      : super(_value, (v) => _then(v as OrdinaryScore));

  @override
  OrdinaryScore get _value => super._value as OrdinaryScore;

  @override
  $Res call({
    Object? username = freezed,
    Object? timeInSecond = freezed,
  }) {
    return _then(OrdinaryScore(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      timeInSecond == freezed
          ? _value.timeInSecond
          : timeInSecond // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OrdinaryScore implements OrdinaryScore {
  const _$OrdinaryScore(this.username, this.timeInSecond);

  @override
  final String username;
  @override
  final int timeInSecond;

  @override
  String toString() {
    return 'TimerendState.ordinaryScore(username: $username, timeInSecond: $timeInSecond)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrdinaryScore &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.timeInSecond, timeInSecond) ||
                const DeepCollectionEquality()
                    .equals(other.timeInSecond, timeInSecond)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(timeInSecond);

  @JsonKey(ignore: true)
  @override
  $OrdinaryScoreCopyWith<OrdinaryScore> get copyWith =>
      _$OrdinaryScoreCopyWithImpl<OrdinaryScore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, int timeInSecond) newBestScore,
    required TResult Function(String username, int timeInSecond) ordinaryScore,
    required TResult Function() finish,
  }) {
    return ordinaryScore(username, timeInSecond);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, int timeInSecond)? newBestScore,
    TResult Function(String username, int timeInSecond)? ordinaryScore,
    TResult Function()? finish,
    required TResult orElse(),
  }) {
    if (ordinaryScore != null) {
      return ordinaryScore(username, timeInSecond);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NewBestScore value) newBestScore,
    required TResult Function(OrdinaryScore value) ordinaryScore,
    required TResult Function(Finish value) finish,
  }) {
    return ordinaryScore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewBestScore value)? newBestScore,
    TResult Function(OrdinaryScore value)? ordinaryScore,
    TResult Function(Finish value)? finish,
    required TResult orElse(),
  }) {
    if (ordinaryScore != null) {
      return ordinaryScore(this);
    }
    return orElse();
  }
}

abstract class OrdinaryScore implements TimerendState {
  const factory OrdinaryScore(String username, int timeInSecond) =
      _$OrdinaryScore;

  String get username => throw _privateConstructorUsedError;
  int get timeInSecond => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdinaryScoreCopyWith<OrdinaryScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishCopyWith<$Res> {
  factory $FinishCopyWith(Finish value, $Res Function(Finish) then) =
      _$FinishCopyWithImpl<$Res>;
}

/// @nodoc
class _$FinishCopyWithImpl<$Res> extends _$TimerendStateCopyWithImpl<$Res>
    implements $FinishCopyWith<$Res> {
  _$FinishCopyWithImpl(Finish _value, $Res Function(Finish) _then)
      : super(_value, (v) => _then(v as Finish));

  @override
  Finish get _value => super._value as Finish;
}

/// @nodoc

class _$Finish implements Finish {
  const _$Finish();

  @override
  String toString() {
    return 'TimerendState.finish()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Finish);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, int timeInSecond) newBestScore,
    required TResult Function(String username, int timeInSecond) ordinaryScore,
    required TResult Function() finish,
  }) {
    return finish();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, int timeInSecond)? newBestScore,
    TResult Function(String username, int timeInSecond)? ordinaryScore,
    TResult Function()? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NewBestScore value) newBestScore,
    required TResult Function(OrdinaryScore value) ordinaryScore,
    required TResult Function(Finish value) finish,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewBestScore value)? newBestScore,
    TResult Function(OrdinaryScore value)? ordinaryScore,
    TResult Function(Finish value)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class Finish implements TimerendState {
  const factory Finish() = _$Finish;
}
