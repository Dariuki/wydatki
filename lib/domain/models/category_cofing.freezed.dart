// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_cofing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryCofing _$CategoryCofingFromJson(Map<String, dynamic> json) {
  return _CategoryCofing.fromJson(json);
}

/// @nodoc
mixin _$CategoryCofing {
  CategoryModel get categories => throw _privateConstructorUsedError;
  SpendingModel get spendings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCofingCopyWith<CategoryCofing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCofingCopyWith<$Res> {
  factory $CategoryCofingCopyWith(
          CategoryCofing value, $Res Function(CategoryCofing) then) =
      _$CategoryCofingCopyWithImpl<$Res>;
  $Res call({CategoryModel categories, SpendingModel spendings});

  $CategoryModelCopyWith<$Res> get categories;
  $SpendingModelCopyWith<$Res> get spendings;
}

/// @nodoc
class _$CategoryCofingCopyWithImpl<$Res>
    implements $CategoryCofingCopyWith<$Res> {
  _$CategoryCofingCopyWithImpl(this._value, this._then);

  final CategoryCofing _value;
  // ignore: unused_field
  final $Res Function(CategoryCofing) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? spendings = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      spendings: spendings == freezed
          ? _value.spendings
          : spendings // ignore: cast_nullable_to_non_nullable
              as SpendingModel,
    ));
  }

  @override
  $CategoryModelCopyWith<$Res> get categories {
    return $CategoryModelCopyWith<$Res>(_value.categories, (value) {
      return _then(_value.copyWith(categories: value));
    });
  }

  @override
  $SpendingModelCopyWith<$Res> get spendings {
    return $SpendingModelCopyWith<$Res>(_value.spendings, (value) {
      return _then(_value.copyWith(spendings: value));
    });
  }
}

/// @nodoc
abstract class _$$_CategoryCofingCopyWith<$Res>
    implements $CategoryCofingCopyWith<$Res> {
  factory _$$_CategoryCofingCopyWith(
          _$_CategoryCofing value, $Res Function(_$_CategoryCofing) then) =
      __$$_CategoryCofingCopyWithImpl<$Res>;
  @override
  $Res call({CategoryModel categories, SpendingModel spendings});

  @override
  $CategoryModelCopyWith<$Res> get categories;
  @override
  $SpendingModelCopyWith<$Res> get spendings;
}

/// @nodoc
class __$$_CategoryCofingCopyWithImpl<$Res>
    extends _$CategoryCofingCopyWithImpl<$Res>
    implements _$$_CategoryCofingCopyWith<$Res> {
  __$$_CategoryCofingCopyWithImpl(
      _$_CategoryCofing _value, $Res Function(_$_CategoryCofing) _then)
      : super(_value, (v) => _then(v as _$_CategoryCofing));

  @override
  _$_CategoryCofing get _value => super._value as _$_CategoryCofing;

  @override
  $Res call({
    Object? categories = freezed,
    Object? spendings = freezed,
  }) {
    return _then(_$_CategoryCofing(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      spendings == freezed
          ? _value.spendings
          : spendings // ignore: cast_nullable_to_non_nullable
              as SpendingModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryCofing implements _CategoryCofing {
  _$_CategoryCofing(this.categories, this.spendings);

  factory _$_CategoryCofing.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryCofingFromJson(json);

  @override
  final CategoryModel categories;
  @override
  final SpendingModel spendings;

  @override
  String toString() {
    return 'CategoryCofing(categories: $categories, spendings: $spendings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryCofing &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality().equals(other.spendings, spendings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(spendings));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryCofingCopyWith<_$_CategoryCofing> get copyWith =>
      __$$_CategoryCofingCopyWithImpl<_$_CategoryCofing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryCofingToJson(
      this,
    );
  }
}

abstract class _CategoryCofing implements CategoryCofing {
  factory _CategoryCofing(
          final CategoryModel categories, final SpendingModel spendings) =
      _$_CategoryCofing;

  factory _CategoryCofing.fromJson(Map<String, dynamic> json) =
      _$_CategoryCofing.fromJson;

  @override
  CategoryModel get categories;
  @override
  SpendingModel get spendings;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCofingCopyWith<_$_CategoryCofing> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  String get type => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res>;
  $Res call({String type, String id});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  final CategoryModel _value;
  // ignore: unused_field
  final $Res Function(CategoryModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$_CategoryModelCopyWith(
          _$_CategoryModel value, $Res Function(_$_CategoryModel) then) =
      __$$_CategoryModelCopyWithImpl<$Res>;
  @override
  $Res call({String type, String id});
}

/// @nodoc
class __$$_CategoryModelCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res>
    implements _$$_CategoryModelCopyWith<$Res> {
  __$$_CategoryModelCopyWithImpl(
      _$_CategoryModel _value, $Res Function(_$_CategoryModel) _then)
      : super(_value, (v) => _then(v as _$_CategoryModel));

  @override
  _$_CategoryModel get _value => super._value as _$_CategoryModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_CategoryModel(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryModel implements _CategoryModel {
  _$_CategoryModel(this.type, this.id);

  factory _$_CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryModelFromJson(json);

  @override
  final String type;
  @override
  final String id;

  @override
  String toString() {
    return 'CategoryModel(type: $type, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryModel &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      __$$_CategoryModelCopyWithImpl<_$_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryModelToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  factory _CategoryModel(final String type, final String id) = _$_CategoryModel;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryModel.fromJson;

  @override
  String get type;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

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
