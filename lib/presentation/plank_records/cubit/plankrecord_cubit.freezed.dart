// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'plankrecord_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlankrecordStateTearOff {
  const _$PlankrecordStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Complete complete(
      {required String totalMinutes,
      required String personalBest,
      required String plankMessage,
      required List<PlankRecordViewModel> records}) {
    return Complete(
      totalMinutes: totalMinutes,
      personalBest: personalBest,
      plankMessage: plankMessage,
      records: records,
    );
  }

  Error error() {
    return const Error();
  }
}

/// @nodoc
const $PlankrecordState = _$PlankrecordStateTearOff();

/// @nodoc
mixin _$PlankrecordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String totalMinutes, String personalBest,
            String plankMessage, List<PlankRecordViewModel> records)
        complete,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String totalMinutes, String personalBest,
            String plankMessage, List<PlankRecordViewModel> records)?
        complete,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Complete value) complete,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlankrecordStateCopyWith<$Res> {
  factory $PlankrecordStateCopyWith(
          PlankrecordState value, $Res Function(PlankrecordState) then) =
      _$PlankrecordStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlankrecordStateCopyWithImpl<$Res>
    implements $PlankrecordStateCopyWith<$Res> {
  _$PlankrecordStateCopyWithImpl(this._value, this._then);

  final PlankrecordState _value;
  // ignore: unused_field
  final $Res Function(PlankrecordState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$PlankrecordStateCopyWithImpl<$Res>
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
    return 'PlankrecordState.initial()';
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
    required TResult Function() loading,
    required TResult Function(String totalMinutes, String personalBest,
            String plankMessage, List<PlankRecordViewModel> records)
        complete,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String totalMinutes, String personalBest,
            String plankMessage, List<PlankRecordViewModel> records)?
        complete,
    TResult Function()? error,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Complete value) complete,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PlankrecordState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$PlankrecordStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'PlankrecordState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String totalMinutes, String personalBest,
            String plankMessage, List<PlankRecordViewModel> records)
        complete,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String totalMinutes, String personalBest,
            String plankMessage, List<PlankRecordViewModel> records)?
        complete,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Complete value) complete,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PlankrecordState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $CompleteCopyWith<$Res> {
  factory $CompleteCopyWith(Complete value, $Res Function(Complete) then) =
      _$CompleteCopyWithImpl<$Res>;
  $Res call(
      {String totalMinutes,
      String personalBest,
      String plankMessage,
      List<PlankRecordViewModel> records});
}

/// @nodoc
class _$CompleteCopyWithImpl<$Res> extends _$PlankrecordStateCopyWithImpl<$Res>
    implements $CompleteCopyWith<$Res> {
  _$CompleteCopyWithImpl(Complete _value, $Res Function(Complete) _then)
      : super(_value, (v) => _then(v as Complete));

  @override
  Complete get _value => super._value as Complete;

  @override
  $Res call({
    Object? totalMinutes = freezed,
    Object? personalBest = freezed,
    Object? plankMessage = freezed,
    Object? records = freezed,
  }) {
    return _then(Complete(
      totalMinutes: totalMinutes == freezed
          ? _value.totalMinutes
          : totalMinutes // ignore: cast_nullable_to_non_nullable
              as String,
      personalBest: personalBest == freezed
          ? _value.personalBest
          : personalBest // ignore: cast_nullable_to_non_nullable
              as String,
      plankMessage: plankMessage == freezed
          ? _value.plankMessage
          : plankMessage // ignore: cast_nullable_to_non_nullable
              as String,
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<PlankRecordViewModel>,
    ));
  }
}

/// @nodoc

class _$Complete implements Complete {
  const _$Complete(
      {required this.totalMinutes,
      required this.personalBest,
      required this.plankMessage,
      required this.records});

  @override
  final String totalMinutes;
  @override
  final String personalBest;
  @override
  final String plankMessage;
  @override
  final List<PlankRecordViewModel> records;

  @override
  String toString() {
    return 'PlankrecordState.complete(totalMinutes: $totalMinutes, personalBest: $personalBest, plankMessage: $plankMessage, records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Complete &&
            (identical(other.totalMinutes, totalMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.totalMinutes, totalMinutes)) &&
            (identical(other.personalBest, personalBest) ||
                const DeepCollectionEquality()
                    .equals(other.personalBest, personalBest)) &&
            (identical(other.plankMessage, plankMessage) ||
                const DeepCollectionEquality()
                    .equals(other.plankMessage, plankMessage)) &&
            (identical(other.records, records) ||
                const DeepCollectionEquality().equals(other.records, records)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalMinutes) ^
      const DeepCollectionEquality().hash(personalBest) ^
      const DeepCollectionEquality().hash(plankMessage) ^
      const DeepCollectionEquality().hash(records);

  @JsonKey(ignore: true)
  @override
  $CompleteCopyWith<Complete> get copyWith =>
      _$CompleteCopyWithImpl<Complete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String totalMinutes, String personalBest,
            String plankMessage, List<PlankRecordViewModel> records)
        complete,
    required TResult Function() error,
  }) {
    return complete(totalMinutes, personalBest, plankMessage, records);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String totalMinutes, String personalBest,
            String plankMessage, List<PlankRecordViewModel> records)?
        complete,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(totalMinutes, personalBest, plankMessage, records);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Complete value) complete,
    required TResult Function(Error value) error,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class Complete implements PlankrecordState {
  const factory Complete(
      {required String totalMinutes,
      required String personalBest,
      required String plankMessage,
      required List<PlankRecordViewModel> records}) = _$Complete;

  String get totalMinutes => throw _privateConstructorUsedError;
  String get personalBest => throw _privateConstructorUsedError;
  String get plankMessage => throw _privateConstructorUsedError;
  List<PlankRecordViewModel> get records => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompleteCopyWith<Complete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$PlankrecordStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

/// @nodoc

class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'PlankrecordState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String totalMinutes, String personalBest,
            String plankMessage, List<PlankRecordViewModel> records)
        complete,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String totalMinutes, String personalBest,
            String plankMessage, List<PlankRecordViewModel> records)?
        complete,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Complete value) complete,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Complete value)? complete,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements PlankrecordState {
  const factory Error() = _$Error;
}
