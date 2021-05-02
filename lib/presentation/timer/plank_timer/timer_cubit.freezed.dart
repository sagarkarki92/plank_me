// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'timer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimerStateTearOff {
  const _$TimerStateTearOff();

  Initial initial(String timerValue) {
    return Initial(
      timerValue,
    );
  }

  Running running(String timerValue) {
    return Running(
      timerValue,
    );
  }

  Stop stop(String timerValue, String completedTime) {
    return Stop(
      timerValue,
      completedTime,
    );
  }
}

/// @nodoc
const $TimerState = _$TimerStateTearOff();

/// @nodoc
mixin _$TimerState {
  String get timerValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String timerValue) initial,
    required TResult Function(String timerValue) running,
    required TResult Function(String timerValue, String completedTime) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String timerValue)? initial,
    TResult Function(String timerValue)? running,
    TResult Function(String timerValue, String completedTime)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Running value) running,
    required TResult Function(Stop value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Running value)? running,
    TResult Function(Stop value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res>;
  $Res call({String timerValue});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res> implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  final TimerState _value;
  // ignore: unused_field
  final $Res Function(TimerState) _then;

  @override
  $Res call({
    Object? timerValue = freezed,
  }) {
    return _then(_value.copyWith(
      timerValue: timerValue == freezed
          ? _value.timerValue
          : timerValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({String timerValue});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object? timerValue = freezed,
  }) {
    return _then(Initial(
      timerValue == freezed
          ? _value.timerValue
          : timerValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(this.timerValue);

  @override
  final String timerValue;

  @override
  String toString() {
    return 'TimerState.initial(timerValue: $timerValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.timerValue, timerValue) ||
                const DeepCollectionEquality()
                    .equals(other.timerValue, timerValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timerValue);

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String timerValue) initial,
    required TResult Function(String timerValue) running,
    required TResult Function(String timerValue, String completedTime) stop,
  }) {
    return initial(timerValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String timerValue)? initial,
    TResult Function(String timerValue)? running,
    TResult Function(String timerValue, String completedTime)? stop,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(timerValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Running value) running,
    required TResult Function(Stop value) stop,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Running value)? running,
    TResult Function(Stop value)? stop,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TimerState {
  const factory Initial(String timerValue) = _$Initial;

  @override
  String get timerValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RunningCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory $RunningCopyWith(Running value, $Res Function(Running) then) =
      _$RunningCopyWithImpl<$Res>;
  @override
  $Res call({String timerValue});
}

/// @nodoc
class _$RunningCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements $RunningCopyWith<$Res> {
  _$RunningCopyWithImpl(Running _value, $Res Function(Running) _then)
      : super(_value, (v) => _then(v as Running));

  @override
  Running get _value => super._value as Running;

  @override
  $Res call({
    Object? timerValue = freezed,
  }) {
    return _then(Running(
      timerValue == freezed
          ? _value.timerValue
          : timerValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Running implements Running {
  const _$Running(this.timerValue);

  @override
  final String timerValue;

  @override
  String toString() {
    return 'TimerState.running(timerValue: $timerValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Running &&
            (identical(other.timerValue, timerValue) ||
                const DeepCollectionEquality()
                    .equals(other.timerValue, timerValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timerValue);

  @JsonKey(ignore: true)
  @override
  $RunningCopyWith<Running> get copyWith =>
      _$RunningCopyWithImpl<Running>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String timerValue) initial,
    required TResult Function(String timerValue) running,
    required TResult Function(String timerValue, String completedTime) stop,
  }) {
    return running(timerValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String timerValue)? initial,
    TResult Function(String timerValue)? running,
    TResult Function(String timerValue, String completedTime)? stop,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(timerValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Running value) running,
    required TResult Function(Stop value) stop,
  }) {
    return running(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Running value)? running,
    TResult Function(Stop value)? stop,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(this);
    }
    return orElse();
  }
}

abstract class Running implements TimerState {
  const factory Running(String timerValue) = _$Running;

  @override
  String get timerValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RunningCopyWith<Running> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StopCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory $StopCopyWith(Stop value, $Res Function(Stop) then) =
      _$StopCopyWithImpl<$Res>;
  @override
  $Res call({String timerValue, String completedTime});
}

/// @nodoc
class _$StopCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements $StopCopyWith<$Res> {
  _$StopCopyWithImpl(Stop _value, $Res Function(Stop) _then)
      : super(_value, (v) => _then(v as Stop));

  @override
  Stop get _value => super._value as Stop;

  @override
  $Res call({
    Object? timerValue = freezed,
    Object? completedTime = freezed,
  }) {
    return _then(Stop(
      timerValue == freezed
          ? _value.timerValue
          : timerValue // ignore: cast_nullable_to_non_nullable
              as String,
      completedTime == freezed
          ? _value.completedTime
          : completedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Stop implements Stop {
  const _$Stop(this.timerValue, this.completedTime);

  @override
  final String timerValue;
  @override
  final String completedTime;

  @override
  String toString() {
    return 'TimerState.stop(timerValue: $timerValue, completedTime: $completedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Stop &&
            (identical(other.timerValue, timerValue) ||
                const DeepCollectionEquality()
                    .equals(other.timerValue, timerValue)) &&
            (identical(other.completedTime, completedTime) ||
                const DeepCollectionEquality()
                    .equals(other.completedTime, completedTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timerValue) ^
      const DeepCollectionEquality().hash(completedTime);

  @JsonKey(ignore: true)
  @override
  $StopCopyWith<Stop> get copyWith =>
      _$StopCopyWithImpl<Stop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String timerValue) initial,
    required TResult Function(String timerValue) running,
    required TResult Function(String timerValue, String completedTime) stop,
  }) {
    return stop(timerValue, completedTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String timerValue)? initial,
    TResult Function(String timerValue)? running,
    TResult Function(String timerValue, String completedTime)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(timerValue, completedTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Running value) running,
    required TResult Function(Stop value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Running value)? running,
    TResult Function(Stop value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class Stop implements TimerState {
  const factory Stop(String timerValue, String completedTime) = _$Stop;

  @override
  String get timerValue => throw _privateConstructorUsedError;
  String get completedTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StopCopyWith<Stop> get copyWith => throw _privateConstructorUsedError;
}
