// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spendings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SpendingsStateTearOff {
  const _$SpendingsStateTearOff();

  _SpendingsState call(
      {List<SpendingModel> items = const [],
      bool? loadingError,
      bool? removingError,
      double? sum}) {
    return _SpendingsState(
      items: items,
      loadingError: loadingError,
      removingError: removingError,
      sum: sum,
    );
  }
}

/// @nodoc
const $SpendingsState = _$SpendingsStateTearOff();

/// @nodoc
mixin _$SpendingsState {
  List<SpendingModel> get items => throw _privateConstructorUsedError;
  bool? get loadingError => throw _privateConstructorUsedError;
  bool? get removingError => throw _privateConstructorUsedError;
  double? get sum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpendingsStateCopyWith<SpendingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendingsStateCopyWith<$Res> {
  factory $SpendingsStateCopyWith(
          SpendingsState value, $Res Function(SpendingsState) then) =
      _$SpendingsStateCopyWithImpl<$Res>;
  $Res call(
      {List<SpendingModel> items,
      bool? loadingError,
      bool? removingError,
      double? sum});
}

/// @nodoc
class _$SpendingsStateCopyWithImpl<$Res>
    implements $SpendingsStateCopyWith<$Res> {
  _$SpendingsStateCopyWithImpl(this._value, this._then);

  final SpendingsState _value;
  // ignore: unused_field
  final $Res Function(SpendingsState) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? loadingError = freezed,
    Object? removingError = freezed,
    Object? sum = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SpendingModel>,
      loadingError: loadingError == freezed
          ? _value.loadingError
          : loadingError // ignore: cast_nullable_to_non_nullable
              as bool?,
      removingError: removingError == freezed
          ? _value.removingError
          : removingError // ignore: cast_nullable_to_non_nullable
              as bool?,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$SpendingsStateCopyWith<$Res>
    implements $SpendingsStateCopyWith<$Res> {
  factory _$SpendingsStateCopyWith(
          _SpendingsState value, $Res Function(_SpendingsState) then) =
      __$SpendingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SpendingModel> items,
      bool? loadingError,
      bool? removingError,
      double? sum});
}

/// @nodoc
class __$SpendingsStateCopyWithImpl<$Res>
    extends _$SpendingsStateCopyWithImpl<$Res>
    implements _$SpendingsStateCopyWith<$Res> {
  __$SpendingsStateCopyWithImpl(
      _SpendingsState _value, $Res Function(_SpendingsState) _then)
      : super(_value, (v) => _then(v as _SpendingsState));

  @override
  _SpendingsState get _value => super._value as _SpendingsState;

  @override
  $Res call({
    Object? items = freezed,
    Object? loadingError = freezed,
    Object? removingError = freezed,
    Object? sum = freezed,
  }) {
    return _then(_SpendingsState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SpendingModel>,
      loadingError: loadingError == freezed
          ? _value.loadingError
          : loadingError // ignore: cast_nullable_to_non_nullable
              as bool?,
      removingError: removingError == freezed
          ? _value.removingError
          : removingError // ignore: cast_nullable_to_non_nullable
              as bool?,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_SpendingsState implements _SpendingsState {
  _$_SpendingsState(
      {this.items = const [], this.loadingError, this.removingError, this.sum});

  @JsonKey()
  @override
  final List<SpendingModel> items;
  @override
  final bool? loadingError;
  @override
  final bool? removingError;
  @override
  final double? sum;

  @override
  String toString() {
    return 'SpendingsState(items: $items, loadingError: $loadingError, removingError: $removingError, sum: $sum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpendingsState &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality()
                .equals(other.loadingError, loadingError) &&
            const DeepCollectionEquality()
                .equals(other.removingError, removingError) &&
            const DeepCollectionEquality().equals(other.sum, sum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(loadingError),
      const DeepCollectionEquality().hash(removingError),
      const DeepCollectionEquality().hash(sum));

  @JsonKey(ignore: true)
  @override
  _$SpendingsStateCopyWith<_SpendingsState> get copyWith =>
      __$SpendingsStateCopyWithImpl<_SpendingsState>(this, _$identity);
}

abstract class _SpendingsState implements SpendingsState {
  factory _SpendingsState(
      {List<SpendingModel> items,
      bool? loadingError,
      bool? removingError,
      double? sum}) = _$_SpendingsState;

  @override
  List<SpendingModel> get items;
  @override
  bool? get loadingError;
  @override
  bool? get removingError;
  @override
  double? get sum;
  @override
  @JsonKey(ignore: true)
  _$SpendingsStateCopyWith<_SpendingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
