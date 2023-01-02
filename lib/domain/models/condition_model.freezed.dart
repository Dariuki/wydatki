// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'condition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConditionModel _$ConditionModelFromJson(Map<String, dynamic> json) {
  return _ConditionModel.fromJson(json);
}

/// @nodoc
mixin _$ConditionModel {
  @JsonKey(name: 'text')
  String get weatherCondition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionModelCopyWith<ConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionModelCopyWith<$Res> {
  factory $ConditionModelCopyWith(
          ConditionModel value, $Res Function(ConditionModel) then) =
      _$ConditionModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'text') String weatherCondition});
}

/// @nodoc
class _$ConditionModelCopyWithImpl<$Res>
    implements $ConditionModelCopyWith<$Res> {
  _$ConditionModelCopyWithImpl(this._value, this._then);

  final ConditionModel _value;
  // ignore: unused_field
  final $Res Function(ConditionModel) _then;

  @override
  $Res call({
    Object? weatherCondition = freezed,
  }) {
    return _then(_value.copyWith(
      weatherCondition: weatherCondition == freezed
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ConditionModelCopyWith<$Res>
    implements $ConditionModelCopyWith<$Res> {
  factory _$$_ConditionModelCopyWith(
          _$_ConditionModel value, $Res Function(_$_ConditionModel) then) =
      __$$_ConditionModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'text') String weatherCondition});
}

/// @nodoc
class __$$_ConditionModelCopyWithImpl<$Res>
    extends _$ConditionModelCopyWithImpl<$Res>
    implements _$$_ConditionModelCopyWith<$Res> {
  __$$_ConditionModelCopyWithImpl(
      _$_ConditionModel _value, $Res Function(_$_ConditionModel) _then)
      : super(_value, (v) => _then(v as _$_ConditionModel));

  @override
  _$_ConditionModel get _value => super._value as _$_ConditionModel;

  @override
  $Res call({
    Object? weatherCondition = freezed,
  }) {
    return _then(_$_ConditionModel(
      weatherCondition == freezed
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConditionModel implements _ConditionModel {
  _$_ConditionModel(@JsonKey(name: 'text') this.weatherCondition);

  factory _$_ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConditionModelFromJson(json);

  @override
  @JsonKey(name: 'text')
  final String weatherCondition;

  @override
  String toString() {
    return 'ConditionModel(weatherCondition: $weatherCondition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConditionModel &&
            const DeepCollectionEquality()
                .equals(other.weatherCondition, weatherCondition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(weatherCondition));

  @JsonKey(ignore: true)
  @override
  _$$_ConditionModelCopyWith<_$_ConditionModel> get copyWith =>
      __$$_ConditionModelCopyWithImpl<_$_ConditionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConditionModelToJson(
      this,
    );
  }
}

abstract class _ConditionModel implements ConditionModel {
  factory _ConditionModel(
      @JsonKey(name: 'text') final String weatherCondition) = _$_ConditionModel;

  factory _ConditionModel.fromJson(Map<String, dynamic> json) =
      _$_ConditionModel.fromJson;

  @override
  @JsonKey(name: 'text')
  String get weatherCondition;
  @override
  @JsonKey(ignore: true)
  _$$_ConditionModelCopyWith<_$_ConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
