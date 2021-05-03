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

  NewBest newBest(String username, int timeInSecond) {
    return NewBest(
      username,
      timeInSecond,
    );
  }

  Finish finish(String username, int timeInSecond) {
    return Finish(
      username,
      timeInSecond,
    );
  }
}

/// @nodoc
const $TimerendState = _$TimerendStateTearOff();

/// @nodoc
mixin _$TimerendState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, int timeInSecond) newBest,
    required TResult Function(String username, int timeInSecond) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, int timeInSecond)? newBest,
    TResult Function(String username, int timeInSecond)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NewBest value) newBest,
    required TResult Function(Finish value) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewBest value)? newBest,
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
    required TResult Function(String username, int timeInSecond) newBest,
    required TResult Function(String username, int timeInSecond) finish,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, int timeInSecond)? newBest,
    TResult Function(String username, int timeInSecond)? finish,
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
    required TResult Function(NewBest value) newBest,
    required TResult Function(Finish value) finish,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewBest value)? newBest,
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
abstract class $NewBestCopyWith<$Res> {
  factory $NewBestCopyWith(NewBest value, $Res Function(NewBest) then) =
      _$NewBestCopyWithImpl<$Res>;
  $Res call({String username, int timeInSecond});
}

/// @nodoc
class _$NewBestCopyWithImpl<$Res> extends _$TimerendStateCopyWithImpl<$Res>
    implements $NewBestCopyWith<$Res> {
  _$NewBestCopyWithImpl(NewBest _value, $Res Function(NewBest) _then)
      : super(_value, (v) => _then(v as NewBest));

  @override
  NewBest get _value => super._value as NewBest;

  @override
  $Res call({
    Object? username = freezed,
    Object? timeInSecond = freezed,
  }) {
    return _then(NewBest(
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

class _$NewBest implements NewBest {
  const _$NewBest(this.username, this.timeInSecond);

  @override
  final String username;
  @override
  final int timeInSecond;

  @override
  String toString() {
    return 'TimerendState.newBest(username: $username, timeInSecond: $timeInSecond)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewBest &&
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
  $NewBestCopyWith<NewBest> get copyWith =>
      _$NewBestCopyWithImpl<NewBest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, int timeInSecond) newBest,
    required TResult Function(String username, int timeInSecond) finish,
  }) {
    return newBest(username, timeInSecond);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, int timeInSecond)? newBest,
    TResult Function(String username, int timeInSecond)? finish,
    required TResult orElse(),
  }) {
    if (newBest != null) {
      return newBest(username, timeInSecond);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NewBest value) newBest,
    required TResult Function(Finish value) finish,
  }) {
    return newBest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewBest value)? newBest,
    TResult Function(Finish value)? finish,
    required TResult orElse(),
  }) {
    if (newBest != null) {
      return newBest(this);
    }
    return orElse();
  }
}

abstract class NewBest implements TimerendState {
  const factory NewBest(String username, int timeInSecond) = _$NewBest;

  String get username => throw _privateConstructorUsedError;
  int get timeInSecond => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewBestCopyWith<NewBest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishCopyWith<$Res> {
  factory $FinishCopyWith(Finish value, $Res Function(Finish) then) =
      _$FinishCopyWithImpl<$Res>;
  $Res call({String username, int timeInSecond});
}

/// @nodoc
class _$FinishCopyWithImpl<$Res> extends _$TimerendStateCopyWithImpl<$Res>
    implements $FinishCopyWith<$Res> {
  _$FinishCopyWithImpl(Finish _value, $Res Function(Finish) _then)
      : super(_value, (v) => _then(v as Finish));

  @override
  Finish get _value => super._value as Finish;

  @override
  $Res call({
    Object? username = freezed,
    Object? timeInSecond = freezed,
  }) {
    return _then(Finish(
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

class _$Finish implements Finish {
  const _$Finish(this.username, this.timeInSecond);

  @override
  final String username;
  @override
  final int timeInSecond;

  @override
  String toString() {
    return 'TimerendState.finish(username: $username, timeInSecond: $timeInSecond)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Finish &&
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
  $FinishCopyWith<Finish> get copyWith =>
      _$FinishCopyWithImpl<Finish>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, int timeInSecond) newBest,
    required TResult Function(String username, int timeInSecond) finish,
  }) {
    return finish(username, timeInSecond);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, int timeInSecond)? newBest,
    TResult Function(String username, int timeInSecond)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(username, timeInSecond);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NewBest value) newBest,
    required TResult Function(Finish value) finish,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewBest value)? newBest,
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
  const factory Finish(String username, int timeInSecond) = _$Finish;

  String get username => throw _privateConstructorUsedError;
  int get timeInSecond => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinishCopyWith<Finish> get copyWith => throw _privateConstructorUsedError;
}
