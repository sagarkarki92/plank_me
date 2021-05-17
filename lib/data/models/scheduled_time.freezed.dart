// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'scheduled_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScheduledTimeTearOff {
  const _$ScheduledTimeTearOff();

  _ScheduledTime call(int? hour, int? minutes) {
    return _ScheduledTime(
      hour,
      minutes,
    );
  }
}

/// @nodoc
const $ScheduledTime = _$ScheduledTimeTearOff();

/// @nodoc
mixin _$ScheduledTime {
  int? get hour => throw _privateConstructorUsedError;
  int? get minutes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduledTimeCopyWith<ScheduledTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledTimeCopyWith<$Res> {
  factory $ScheduledTimeCopyWith(
          ScheduledTime value, $Res Function(ScheduledTime) then) =
      _$ScheduledTimeCopyWithImpl<$Res>;
  $Res call({int? hour, int? minutes});
}

/// @nodoc
class _$ScheduledTimeCopyWithImpl<$Res>
    implements $ScheduledTimeCopyWith<$Res> {
  _$ScheduledTimeCopyWithImpl(this._value, this._then);

  final ScheduledTime _value;
  // ignore: unused_field
  final $Res Function(ScheduledTime) _then;

  @override
  $Res call({
    Object? hour = freezed,
    Object? minutes = freezed,
  }) {
    return _then(_value.copyWith(
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes: minutes == freezed
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ScheduledTimeCopyWith<$Res>
    implements $ScheduledTimeCopyWith<$Res> {
  factory _$ScheduledTimeCopyWith(
          _ScheduledTime value, $Res Function(_ScheduledTime) then) =
      __$ScheduledTimeCopyWithImpl<$Res>;
  @override
  $Res call({int? hour, int? minutes});
}

/// @nodoc
class __$ScheduledTimeCopyWithImpl<$Res>
    extends _$ScheduledTimeCopyWithImpl<$Res>
    implements _$ScheduledTimeCopyWith<$Res> {
  __$ScheduledTimeCopyWithImpl(
      _ScheduledTime _value, $Res Function(_ScheduledTime) _then)
      : super(_value, (v) => _then(v as _ScheduledTime));

  @override
  _ScheduledTime get _value => super._value as _ScheduledTime;

  @override
  $Res call({
    Object? hour = freezed,
    Object? minutes = freezed,
  }) {
    return _then(_ScheduledTime(
      hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes == freezed
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ScheduledTime implements _ScheduledTime {
  _$_ScheduledTime(this.hour, this.minutes);

  @override
  final int? hour;
  @override
  final int? minutes;

  @override
  String toString() {
    return 'ScheduledTime(hour: $hour, minutes: $minutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScheduledTime &&
            (identical(other.hour, hour) ||
                const DeepCollectionEquality().equals(other.hour, hour)) &&
            (identical(other.minutes, minutes) ||
                const DeepCollectionEquality().equals(other.minutes, minutes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hour) ^
      const DeepCollectionEquality().hash(minutes);

  @JsonKey(ignore: true)
  @override
  _$ScheduledTimeCopyWith<_ScheduledTime> get copyWith =>
      __$ScheduledTimeCopyWithImpl<_ScheduledTime>(this, _$identity);
}

abstract class _ScheduledTime implements ScheduledTime {
  factory _ScheduledTime(int? hour, int? minutes) = _$_ScheduledTime;

  @override
  int? get hour => throw _privateConstructorUsedError;
  @override
  int? get minutes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScheduledTimeCopyWith<_ScheduledTime> get copyWith =>
      throw _privateConstructorUsedError;
}
