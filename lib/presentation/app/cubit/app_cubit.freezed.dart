// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _UserAvailable userAvailable() {
    return const _UserAvailable();
  }

  _UserNotAvailable userNotAvailable() {
    return const _UserNotAvailable();
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAvailable,
    required TResult Function() userNotAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAvailable,
    TResult Function()? userNotAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserAvailable value) userAvailable,
    required TResult Function(_UserNotAvailable value) userNotAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserAvailable value)? userAvailable,
    TResult Function(_UserNotAvailable value)? userNotAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAvailable,
    required TResult Function() userNotAvailable,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAvailable,
    TResult Function()? userNotAvailable,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserAvailable value) userAvailable,
    required TResult Function(_UserNotAvailable value) userNotAvailable,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserAvailable value)? userAvailable,
    TResult Function(_UserNotAvailable value)? userNotAvailable,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UserAvailableCopyWith<$Res> {
  factory _$UserAvailableCopyWith(
          _UserAvailable value, $Res Function(_UserAvailable) then) =
      __$UserAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserAvailableCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$UserAvailableCopyWith<$Res> {
  __$UserAvailableCopyWithImpl(
      _UserAvailable _value, $Res Function(_UserAvailable) _then)
      : super(_value, (v) => _then(v as _UserAvailable));

  @override
  _UserAvailable get _value => super._value as _UserAvailable;
}

/// @nodoc

class _$_UserAvailable implements _UserAvailable {
  const _$_UserAvailable();

  @override
  String toString() {
    return 'AppState.userAvailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UserAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAvailable,
    required TResult Function() userNotAvailable,
  }) {
    return userAvailable();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAvailable,
    TResult Function()? userNotAvailable,
    required TResult orElse(),
  }) {
    if (userAvailable != null) {
      return userAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserAvailable value) userAvailable,
    required TResult Function(_UserNotAvailable value) userNotAvailable,
  }) {
    return userAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserAvailable value)? userAvailable,
    TResult Function(_UserNotAvailable value)? userNotAvailable,
    required TResult orElse(),
  }) {
    if (userAvailable != null) {
      return userAvailable(this);
    }
    return orElse();
  }
}

abstract class _UserAvailable implements AppState {
  const factory _UserAvailable() = _$_UserAvailable;
}

/// @nodoc
abstract class _$UserNotAvailableCopyWith<$Res> {
  factory _$UserNotAvailableCopyWith(
          _UserNotAvailable value, $Res Function(_UserNotAvailable) then) =
      __$UserNotAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserNotAvailableCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$UserNotAvailableCopyWith<$Res> {
  __$UserNotAvailableCopyWithImpl(
      _UserNotAvailable _value, $Res Function(_UserNotAvailable) _then)
      : super(_value, (v) => _then(v as _UserNotAvailable));

  @override
  _UserNotAvailable get _value => super._value as _UserNotAvailable;
}

/// @nodoc

class _$_UserNotAvailable implements _UserNotAvailable {
  const _$_UserNotAvailable();

  @override
  String toString() {
    return 'AppState.userNotAvailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UserNotAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAvailable,
    required TResult Function() userNotAvailable,
  }) {
    return userNotAvailable();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAvailable,
    TResult Function()? userNotAvailable,
    required TResult orElse(),
  }) {
    if (userNotAvailable != null) {
      return userNotAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserAvailable value) userAvailable,
    required TResult Function(_UserNotAvailable value) userNotAvailable,
  }) {
    return userNotAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserAvailable value)? userAvailable,
    TResult Function(_UserNotAvailable value)? userNotAvailable,
    required TResult orElse(),
  }) {
    if (userNotAvailable != null) {
      return userNotAvailable(this);
    }
    return orElse();
  }
}

abstract class _UserNotAvailable implements AppState {
  const factory _UserNotAvailable() = _$_UserNotAvailable;
}
