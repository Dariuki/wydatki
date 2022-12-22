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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  List<CategoryModel> get items => throw _privateConstructorUsedError;
  List<SpendingModel> get allitems => throw _privateConstructorUsedError;
  bool? get loadingError => throw _privateConstructorUsedError;
  bool? get removingError => throw _privateConstructorUsedError;
  double? get sum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {List<CategoryModel> items,
      List<SpendingModel> allitems,
      bool? loadingError,
      bool? removingError,
      double? sum});
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
    Object? allitems = freezed,
    Object? loadingError = freezed,
    Object? removingError = freezed,
    Object? sum = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      allitems: allitems == freezed
          ? _value.allitems
          : allitems // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CategoryModel> items,
      List<SpendingModel> allitems,
      bool? loadingError,
      bool? removingError,
      double? sum});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? items = freezed,
    Object? allitems = freezed,
    Object? loadingError = freezed,
    Object? removingError = freezed,
    Object? sum = freezed,
  }) {
    return _then(_$_HomeState(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      allitems: allitems == freezed
          ? _value._allitems
          : allitems // ignore: cast_nullable_to_non_nullable
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

class _$_HomeState implements _HomeState {
  _$_HomeState(
      {final List<CategoryModel> items = const [],
      final List<SpendingModel> allitems = const [],
      this.loadingError,
      this.removingError,
      this.sum})
      : _items = items,
        _allitems = allitems;

  final List<CategoryModel> _items;
  @override
  @JsonKey()
  List<CategoryModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<SpendingModel> _allitems;
  @override
  @JsonKey()
  List<SpendingModel> get allitems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allitems);
  }

  @override
  final bool? loadingError;
  @override
  final bool? removingError;
  @override
  final double? sum;

  @override
  String toString() {
    return 'HomeState(items: $items, allitems: $allitems, loadingError: $loadingError, removingError: $removingError, sum: $sum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._allitems, _allitems) &&
            const DeepCollectionEquality()
                .equals(other.loadingError, loadingError) &&
            const DeepCollectionEquality()
                .equals(other.removingError, removingError) &&
            const DeepCollectionEquality().equals(other.sum, sum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_allitems),
      const DeepCollectionEquality().hash(loadingError),
      const DeepCollectionEquality().hash(removingError),
      const DeepCollectionEquality().hash(sum));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {final List<CategoryModel> items,
      final List<SpendingModel> allitems,
      final bool? loadingError,
      final bool? removingError,
      final double? sum}) = _$_HomeState;

  @override
  List<CategoryModel> get items;
  @override
  List<SpendingModel> get allitems;
  @override
  bool? get loadingError;
  @override
  bool? get removingError;
  @override
  double? get sum;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
