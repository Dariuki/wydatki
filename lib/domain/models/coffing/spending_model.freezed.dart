// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spending_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpendingModel _$SpendingModelFromJson(Map<String, dynamic> json) {
  return _SpendingModel.fromJson(json);
}

/// @nodoc
mixin _$SpendingModel {
  String get title => throw _privateConstructorUsedError;
  String get shop => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get categoryID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpendingModelCopyWith<SpendingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendingModelCopyWith<$Res> {
  factory $SpendingModelCopyWith(
          SpendingModel value, $Res Function(SpendingModel) then) =
      _$SpendingModelCopyWithImpl<$Res>;
  $Res call(
      {String title, String shop, double amount, String id, String categoryID});
}

/// @nodoc
class _$SpendingModelCopyWithImpl<$Res>
    implements $SpendingModelCopyWith<$Res> {
  _$SpendingModelCopyWithImpl(this._value, this._then);

  final SpendingModel _value;
  // ignore: unused_field
  final $Res Function(SpendingModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? shop = freezed,
    Object? amount = freezed,
    Object? id = freezed,
    Object? categoryID = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryID: categoryID == freezed
          ? _value.categoryID
          : categoryID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SpendingModelCopyWith<$Res>
    implements $SpendingModelCopyWith<$Res> {
  factory _$$_SpendingModelCopyWith(
          _$_SpendingModel value, $Res Function(_$_SpendingModel) then) =
      __$$_SpendingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title, String shop, double amount, String id, String categoryID});
}

/// @nodoc
class __$$_SpendingModelCopyWithImpl<$Res>
    extends _$SpendingModelCopyWithImpl<$Res>
    implements _$$_SpendingModelCopyWith<$Res> {
  __$$_SpendingModelCopyWithImpl(
      _$_SpendingModel _value, $Res Function(_$_SpendingModel) _then)
      : super(_value, (v) => _then(v as _$_SpendingModel));

  @override
  _$_SpendingModel get _value => super._value as _$_SpendingModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? shop = freezed,
    Object? amount = freezed,
    Object? id = freezed,
    Object? categoryID = freezed,
  }) {
    return _then(_$_SpendingModel(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryID == freezed
          ? _value.categoryID
          : categoryID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpendingModel implements _SpendingModel {
  _$_SpendingModel(
      this.title, this.shop, this.amount, this.id, this.categoryID);

  factory _$_SpendingModel.fromJson(Map<String, dynamic> json) =>
      _$$_SpendingModelFromJson(json);

  @override
  final String title;
  @override
  final String shop;
  @override
  final double amount;
  @override
  final String id;
  @override
  final String categoryID;

  @override
  String toString() {
    return 'SpendingModel(title: $title, shop: $shop, amount: $amount, id: $id, categoryID: $categoryID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpendingModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.shop, shop) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.categoryID, categoryID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(shop),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(categoryID));

  @JsonKey(ignore: true)
  @override
  _$$_SpendingModelCopyWith<_$_SpendingModel> get copyWith =>
      __$$_SpendingModelCopyWithImpl<_$_SpendingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpendingModelToJson(
      this,
    );
  }
}

abstract class _SpendingModel implements SpendingModel {
  factory _SpendingModel(
      final String title,
      final String shop,
      final double amount,
      final String id,
      final String categoryID) = _$_SpendingModel;

  factory _SpendingModel.fromJson(Map<String, dynamic> json) =
      _$_SpendingModel.fromJson;

  @override
  String get title;
  @override
  String get shop;
  @override
  double get amount;
  @override
  String get id;
  @override
  String get categoryID;
  @override
  @JsonKey(ignore: true)
  _$$_SpendingModelCopyWith<_$_SpendingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
