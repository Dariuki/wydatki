// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentModel _$CurrentModelFromJson(Map<String, dynamic> json) {
  return _CurrentModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentModel {
  @JsonKey(name: 'temp_c')
  double get temperatureC => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure_mb')
  double get pressure => throw _privateConstructorUsedError;
  ConditionModel get condition => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_kph')
  double get wind => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_dir')
  String get windDirection => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_c')
  double get tempFeels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentModelCopyWith<CurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentModelCopyWith<$Res> {
  factory $CurrentModelCopyWith(
          CurrentModel value, $Res Function(CurrentModel) then) =
      _$CurrentModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'temp_c') double temperatureC,
      @JsonKey(name: 'pressure_mb') double pressure,
      ConditionModel condition,
      @JsonKey(name: 'wind_kph') double wind,
      @JsonKey(name: 'wind_dir') String windDirection,
      double humidity,
      @JsonKey(name: 'feelslike_c') double tempFeels});

  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class _$CurrentModelCopyWithImpl<$Res> implements $CurrentModelCopyWith<$Res> {
  _$CurrentModelCopyWithImpl(this._value, this._then);

  final CurrentModel _value;
  // ignore: unused_field
  final $Res Function(CurrentModel) _then;

  @override
  $Res call({
    Object? temperatureC = freezed,
    Object? pressure = freezed,
    Object? condition = freezed,
    Object? wind = freezed,
    Object? windDirection = freezed,
    Object? humidity = freezed,
    Object? tempFeels = freezed,
  }) {
    return _then(_value.copyWith(
      temperatureC: temperatureC == freezed
          ? _value.temperatureC
          : temperatureC // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection: windDirection == freezed
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      tempFeels: tempFeels == freezed
          ? _value.tempFeels
          : tempFeels // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $ConditionModelCopyWith<$Res> get condition {
    return $ConditionModelCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value));
    });
  }
}

/// @nodoc
abstract class _$$_CurrentModelCopyWith<$Res>
    implements $CurrentModelCopyWith<$Res> {
  factory _$$_CurrentModelCopyWith(
          _$_CurrentModel value, $Res Function(_$_CurrentModel) then) =
      __$$_CurrentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'temp_c') double temperatureC,
      @JsonKey(name: 'pressure_mb') double pressure,
      ConditionModel condition,
      @JsonKey(name: 'wind_kph') double wind,
      @JsonKey(name: 'wind_dir') String windDirection,
      double humidity,
      @JsonKey(name: 'feelslike_c') double tempFeels});

  @override
  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class __$$_CurrentModelCopyWithImpl<$Res>
    extends _$CurrentModelCopyWithImpl<$Res>
    implements _$$_CurrentModelCopyWith<$Res> {
  __$$_CurrentModelCopyWithImpl(
      _$_CurrentModel _value, $Res Function(_$_CurrentModel) _then)
      : super(_value, (v) => _then(v as _$_CurrentModel));

  @override
  _$_CurrentModel get _value => super._value as _$_CurrentModel;

  @override
  $Res call({
    Object? temperatureC = freezed,
    Object? pressure = freezed,
    Object? condition = freezed,
    Object? wind = freezed,
    Object? windDirection = freezed,
    Object? humidity = freezed,
    Object? tempFeels = freezed,
  }) {
    return _then(_$_CurrentModel(
      temperatureC == freezed
          ? _value.temperatureC
          : temperatureC // ignore: cast_nullable_to_non_nullable
              as double,
      pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
      wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection == freezed
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as String,
      humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      tempFeels == freezed
          ? _value.tempFeels
          : tempFeels // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentModel implements _CurrentModel {
  _$_CurrentModel(
      @JsonKey(name: 'temp_c') this.temperatureC,
      @JsonKey(name: 'pressure_mb') this.pressure,
      this.condition,
      @JsonKey(name: 'wind_kph') this.wind,
      @JsonKey(name: 'wind_dir') this.windDirection,
      this.humidity,
      @JsonKey(name: 'feelslike_c') this.tempFeels);

  factory _$_CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentModelFromJson(json);

  @override
  @JsonKey(name: 'temp_c')
  final double temperatureC;
  @override
  @JsonKey(name: 'pressure_mb')
  final double pressure;
  @override
  final ConditionModel condition;
  @override
  @JsonKey(name: 'wind_kph')
  final double wind;
  @override
  @JsonKey(name: 'wind_dir')
  final String windDirection;
  @override
  final double humidity;
  @override
  @JsonKey(name: 'feelslike_c')
  final double tempFeels;

  @override
  String toString() {
    return 'CurrentModel(temperatureC: $temperatureC, pressure: $pressure, condition: $condition, wind: $wind, windDirection: $windDirection, humidity: $humidity, tempFeels: $tempFeels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentModel &&
            const DeepCollectionEquality()
                .equals(other.temperatureC, temperatureC) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality().equals(other.wind, wind) &&
            const DeepCollectionEquality()
                .equals(other.windDirection, windDirection) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.tempFeels, tempFeels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temperatureC),
      const DeepCollectionEquality().hash(pressure),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(wind),
      const DeepCollectionEquality().hash(windDirection),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(tempFeels));

  @JsonKey(ignore: true)
  @override
  _$$_CurrentModelCopyWith<_$_CurrentModel> get copyWith =>
      __$$_CurrentModelCopyWithImpl<_$_CurrentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentModelToJson(
      this,
    );
  }
}

abstract class _CurrentModel implements CurrentModel {
  factory _CurrentModel(
      @JsonKey(name: 'temp_c') final double temperatureC,
      @JsonKey(name: 'pressure_mb') final double pressure,
      final ConditionModel condition,
      @JsonKey(name: 'wind_kph') final double wind,
      @JsonKey(name: 'wind_dir') final String windDirection,
      final double humidity,
      @JsonKey(name: 'feelslike_c') final double tempFeels) = _$_CurrentModel;

  factory _CurrentModel.fromJson(Map<String, dynamic> json) =
      _$_CurrentModel.fromJson;

  @override
  @JsonKey(name: 'temp_c')
  double get temperatureC;
  @override
  @JsonKey(name: 'pressure_mb')
  double get pressure;
  @override
  ConditionModel get condition;
  @override
  @JsonKey(name: 'wind_kph')
  double get wind;
  @override
  @JsonKey(name: 'wind_dir')
  String get windDirection;
  @override
  double get humidity;
  @override
  @JsonKey(name: 'feelslike_c')
  double get tempFeels;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentModelCopyWith<_$_CurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
