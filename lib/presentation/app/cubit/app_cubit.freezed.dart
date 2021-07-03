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

  Initial initial() {
    return const Initial();
  }

  LoadScreen loadScreen(int tabIndex, List<ViewItem> tabs) {
    return LoadScreen(
      tabIndex,
      tabs,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int tabIndex, List<ViewItem> tabs) loadScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tabIndex, List<ViewItem> tabs)? loadScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadScreen value) loadScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadScreen value)? loadScreen,
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
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
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
    return 'AppState.initial()';
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
    required TResult Function(int tabIndex, List<ViewItem> tabs) loadScreen,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tabIndex, List<ViewItem> tabs)? loadScreen,
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
    required TResult Function(LoadScreen value) loadScreen,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadScreen value)? loadScreen,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AppState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadScreenCopyWith<$Res> {
  factory $LoadScreenCopyWith(
          LoadScreen value, $Res Function(LoadScreen) then) =
      _$LoadScreenCopyWithImpl<$Res>;
  $Res call({int tabIndex, List<ViewItem> tabs});
}

/// @nodoc
class _$LoadScreenCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $LoadScreenCopyWith<$Res> {
  _$LoadScreenCopyWithImpl(LoadScreen _value, $Res Function(LoadScreen) _then)
      : super(_value, (v) => _then(v as LoadScreen));

  @override
  LoadScreen get _value => super._value as LoadScreen;

  @override
  $Res call({
    Object? tabIndex = freezed,
    Object? tabs = freezed,
  }) {
    return _then(LoadScreen(
      tabIndex == freezed
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      tabs == freezed
          ? _value.tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<ViewItem>,
    ));
  }
}

/// @nodoc

class _$LoadScreen implements LoadScreen {
  const _$LoadScreen(this.tabIndex, this.tabs);

  @override
  final int tabIndex;
  @override
  final List<ViewItem> tabs;

  @override
  String toString() {
    return 'AppState.loadScreen(tabIndex: $tabIndex, tabs: $tabs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadScreen &&
            (identical(other.tabIndex, tabIndex) ||
                const DeepCollectionEquality()
                    .equals(other.tabIndex, tabIndex)) &&
            (identical(other.tabs, tabs) ||
                const DeepCollectionEquality().equals(other.tabs, tabs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tabIndex) ^
      const DeepCollectionEquality().hash(tabs);

  @JsonKey(ignore: true)
  @override
  $LoadScreenCopyWith<LoadScreen> get copyWith =>
      _$LoadScreenCopyWithImpl<LoadScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int tabIndex, List<ViewItem> tabs) loadScreen,
  }) {
    return loadScreen(tabIndex, tabs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tabIndex, List<ViewItem> tabs)? loadScreen,
    required TResult orElse(),
  }) {
    if (loadScreen != null) {
      return loadScreen(tabIndex, tabs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadScreen value) loadScreen,
  }) {
    return loadScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadScreen value)? loadScreen,
    required TResult orElse(),
  }) {
    if (loadScreen != null) {
      return loadScreen(this);
    }
    return orElse();
  }
}

abstract class LoadScreen implements AppState {
  const factory LoadScreen(int tabIndex, List<ViewItem> tabs) = _$LoadScreen;

  int get tabIndex => throw _privateConstructorUsedError;
  List<ViewItem> get tabs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadScreenCopyWith<LoadScreen> get copyWith =>
      throw _privateConstructorUsedError;
}
