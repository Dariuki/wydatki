// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {List<CategoryModel> items = const [],
      bool? loadingError,
      bool? removingError}) {
    return _HomeState(
      items: items,
      loadingError: loadingError,
      removingError: removingError,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  List<CategoryModel> get items => throw _privateConstructorUsedError;
  bool? get loadingError => throw _privateConstructorUsedError;
  bool? get removingError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {List<CategoryModel> items, bool? loadingError, bool? removingError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? loadingError = freezed,
    Object? removingError = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      loadingError: loadingError == freezed
          ? _value.loadingError
          : loadingError // ignore: cast_nullable_to_non_nullable
              as bool?,
      removingError: removingError == freezed
          ? _value.removingError
          : removingError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CategoryModel> items, bool? loadingError, bool? removingError});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? items = freezed,
    Object? loadingError = freezed,
    Object? removingError = freezed,
  }) {
    return _then(_HomeState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      loadingError: loadingError == freezed
          ? _value.loadingError
          : loadingError // ignore: cast_nullable_to_non_nullable
              as bool?,
      removingError: removingError == freezed
          ? _value.removingError
          : removingError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  _$_HomeState({this.items = const [], this.loadingError, this.removingError});

  @JsonKey()
  @override
  final List<CategoryModel> items;
  @override
  final bool? loadingError;
  @override
  final bool? removingError;

  @override
  String toString() {
    return 'HomeState(items: $items, loadingError: $loadingError, removingError: $removingError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality()
                .equals(other.loadingError, loadingError) &&
            const DeepCollectionEquality()
                .equals(other.removingError, removingError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(loadingError),
      const DeepCollectionEquality().hash(removingError));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {List<CategoryModel> items,
      bool? loadingError,
      bool? removingError}) = _$_HomeState;

  @override
  List<CategoryModel> get items;
  @override
  bool? get loadingError;
  @override
  bool? get removingError;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
