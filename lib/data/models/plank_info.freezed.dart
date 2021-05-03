// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'plank_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlankInfoTearOff {
  const _$PlankInfoTearOff();

  _PlankInfo call({String? date, int? planktime}) {
    return _PlankInfo(
      date: date,
      planktime: planktime,
    );
  }
}

/// @nodoc
const $PlankInfo = _$PlankInfoTearOff();

/// @nodoc
mixin _$PlankInfo {
  String? get date => throw _privateConstructorUsedError;
  int? get planktime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlankInfoCopyWith<PlankInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlankInfoCopyWith<$Res> {
  factory $PlankInfoCopyWith(PlankInfo value, $Res Function(PlankInfo) then) =
      _$PlankInfoCopyWithImpl<$Res>;
  $Res call({String? date, int? planktime});
}

/// @nodoc
class _$PlankInfoCopyWithImpl<$Res> implements $PlankInfoCopyWith<$Res> {
  _$PlankInfoCopyWithImpl(this._value, this._then);

  final PlankInfo _value;
  // ignore: unused_field
  final $Res Function(PlankInfo) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? planktime = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      planktime: planktime == freezed
          ? _value.planktime
          : planktime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PlankInfoCopyWith<$Res> implements $PlankInfoCopyWith<$Res> {
  factory _$PlankInfoCopyWith(
          _PlankInfo value, $Res Function(_PlankInfo) then) =
      __$PlankInfoCopyWithImpl<$Res>;
  @override
  $Res call({String? date, int? planktime});
}

/// @nodoc
class __$PlankInfoCopyWithImpl<$Res> extends _$PlankInfoCopyWithImpl<$Res>
    implements _$PlankInfoCopyWith<$Res> {
  __$PlankInfoCopyWithImpl(_PlankInfo _value, $Res Function(_PlankInfo) _then)
      : super(_value, (v) => _then(v as _PlankInfo));

  @override
  _PlankInfo get _value => super._value as _PlankInfo;

  @override
  $Res call({
    Object? date = freezed,
    Object? planktime = freezed,
  }) {
    return _then(_PlankInfo(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      planktime: planktime == freezed
          ? _value.planktime
          : planktime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_PlankInfo implements _PlankInfo {
  _$_PlankInfo({this.date, this.planktime});

  @override
  final String? date;
  @override
  final int? planktime;

  @override
  String toString() {
    return 'PlankInfo(date: $date, planktime: $planktime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlankInfo &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.planktime, planktime) ||
                const DeepCollectionEquality()
                    .equals(other.planktime, planktime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(planktime);

  @JsonKey(ignore: true)
  @override
  _$PlankInfoCopyWith<_PlankInfo> get copyWith =>
      __$PlankInfoCopyWithImpl<_PlankInfo>(this, _$identity);
}

abstract class _PlankInfo implements PlankInfo {
  factory _PlankInfo({String? date, int? planktime}) = _$_PlankInfo;

  @override
  String? get date => throw _privateConstructorUsedError;
  @override
  int? get planktime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlankInfoCopyWith<_PlankInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
