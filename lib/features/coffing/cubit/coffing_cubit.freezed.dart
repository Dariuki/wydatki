// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coffing_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoffingState {
  List<CategoryModel> get items => throw _privateConstructorUsedError;
  List<SpendingModel> get allitems => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  double? get sum => throw _privateConstructorUsedError;
  bool? get saved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoffingStateCopyWith<CoffingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffingStateCopyWith<$Res> {
  factory $CoffingStateCopyWith(
          CoffingState value, $Res Function(CoffingState) then) =
      _$CoffingStateCopyWithImpl<$Res>;
  $Res call(
      {List<CategoryModel> items,
      List<SpendingModel> allitems,
      Status status,
      String? errorMessage,
      double? sum,
      bool? saved});
}

/// @nodoc
class _$CoffingStateCopyWithImpl<$Res> implements $CoffingStateCopyWith<$Res> {
  _$CoffingStateCopyWithImpl(this._value, this._then);

  final CoffingState _value;
  // ignore: unused_field
  final $Res Function(CoffingState) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? allitems = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? sum = freezed,
    Object? saved = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double?,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_CoffingStateCopyWith<$Res>
    implements $CoffingStateCopyWith<$Res> {
  factory _$$_CoffingStateCopyWith(
          _$_CoffingState value, $Res Function(_$_CoffingState) then) =
      __$$_CoffingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CategoryModel> items,
      List<SpendingModel> allitems,
      Status status,
      String? errorMessage,
      double? sum,
      bool? saved});
}

/// @nodoc
class __$$_CoffingStateCopyWithImpl<$Res>
    extends _$CoffingStateCopyWithImpl<$Res>
    implements _$$_CoffingStateCopyWith<$Res> {
  __$$_CoffingStateCopyWithImpl(
      _$_CoffingState _value, $Res Function(_$_CoffingState) _then)
      : super(_value, (v) => _then(v as _$_CoffingState));

  @override
  _$_CoffingState get _value => super._value as _$_CoffingState;

  @override
  $Res call({
    Object? items = freezed,
    Object? allitems = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? sum = freezed,
    Object? saved = freezed,
  }) {
    return _then(_$_CoffingState(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      allitems: allitems == freezed
          ? _value._allitems
          : allitems // ignore: cast_nullable_to_non_nullable
              as List<SpendingModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double?,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_CoffingState implements _CoffingState {
  _$_CoffingState(
      {final List<CategoryModel> items = const [],
      final List<SpendingModel> allitems = const [],
      this.status = Status.initial,
      this.errorMessage,
      this.sum,
      this.saved})
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
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;
  @override
  final double? sum;
  @override
  final bool? saved;

  @override
  String toString() {
    return 'CoffingState(items: $items, allitems: $allitems, status: $status, errorMessage: $errorMessage, sum: $sum, saved: $saved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoffingState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._allitems, _allitems) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.sum, sum) &&
            const DeepCollectionEquality().equals(other.saved, saved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_allitems),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(sum),
      const DeepCollectionEquality().hash(saved));

  @JsonKey(ignore: true)
  @override
  _$$_CoffingStateCopyWith<_$_CoffingState> get copyWith =>
      __$$_CoffingStateCopyWithImpl<_$_CoffingState>(this, _$identity);
}

abstract class _CoffingState implements CoffingState {
  factory _CoffingState(
      {final List<CategoryModel> items,
      final List<SpendingModel> allitems,
      final Status status,
      final String? errorMessage,
      final double? sum,
      final bool? saved}) = _$_CoffingState;

  @override
  List<CategoryModel> get items;
  @override
  List<SpendingModel> get allitems;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  double? get sum;
  @override
  bool? get saved;
  @override
  @JsonKey(ignore: true)
  _$$_CoffingStateCopyWith<_$_CoffingState> get copyWith =>
      throw _privateConstructorUsedError;
}
