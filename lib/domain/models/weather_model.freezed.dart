// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  LocationModel get location => throw _privateConstructorUsedError;
  CurrentModel get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res>;
  $Res call({LocationModel location, CurrentModel current});

  $LocationModelCopyWith<$Res> get location;
  $CurrentModelCopyWith<$Res> get current;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res> implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  final WeatherModel _value;
  // ignore: unused_field
  final $Res Function(WeatherModel) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentModel,
    ));
  }

  @override
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $CurrentModelCopyWith<$Res> get current {
    return $CurrentModelCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value));
    });
  }
}

/// @nodoc
abstract class _$$_WeatherModelCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$_WeatherModelCopyWith(
          _$_WeatherModel value, $Res Function(_$_WeatherModel) then) =
      __$$_WeatherModelCopyWithImpl<$Res>;
  @override
  $Res call({LocationModel location, CurrentModel current});

  @override
  $LocationModelCopyWith<$Res> get location;
  @override
  $CurrentModelCopyWith<$Res> get current;
}

/// @nodoc
class __$$_WeatherModelCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res>
    implements _$$_WeatherModelCopyWith<$Res> {
  __$$_WeatherModelCopyWithImpl(
      _$_WeatherModel _value, $Res Function(_$_WeatherModel) _then)
      : super(_value, (v) => _then(v as _$_WeatherModel));

  @override
  _$_WeatherModel get _value => super._value as _$_WeatherModel;

  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_$_WeatherModel(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherModel implements _WeatherModel {
  _$_WeatherModel(this.location, this.current);

  factory _$_WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherModelFromJson(json);

  @override
  final LocationModel location;
  @override
  final CurrentModel current;

  @override
  String toString() {
    return 'WeatherModel(location: $location, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherModel &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.current, current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(current));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      __$$_WeatherModelCopyWithImpl<_$_WeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherModelToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  factory _WeatherModel(
          final LocationModel location, final CurrentModel current) =
      _$_WeatherModel;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherModel.fromJson;

  @override
  LocationModel get location;
  @override
  CurrentModel get current;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  @JsonKey(name: 'name')
  String get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'name') String city});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  final LocationModel _value;
  // ignore: unused_field
  final $Res Function(LocationModel) _then;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$_LocationModelCopyWith(
          _$_LocationModel value, $Res Function(_$_LocationModel) then) =
      __$$_LocationModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'name') String city});
}

/// @nodoc
class __$$_LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res>
    implements _$$_LocationModelCopyWith<$Res> {
  __$$_LocationModelCopyWithImpl(
      _$_LocationModel _value, $Res Function(_$_LocationModel) _then)
      : super(_value, (v) => _then(v as _$_LocationModel));

  @override
  _$_LocationModel get _value => super._value as _$_LocationModel;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_$_LocationModel(
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationModel implements _LocationModel {
  _$_LocationModel(@JsonKey(name: 'name') this.city);

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String city;

  @override
  String toString() {
    return 'LocationModel(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationModel &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      __$$_LocationModelCopyWithImpl<_$_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelToJson(
      this,
    );
  }
}

abstract class _LocationModel implements LocationModel {
  factory _LocationModel(@JsonKey(name: 'name') final String city) =
      _$_LocationModel;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get city;
  @override
  @JsonKey(ignore: true)
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  @JsonKey(name: 'feelslike_c')
  final double tempFeels;

  @override
  String toString() {
    return 'CurrentModel(temperatureC: $temperatureC, pressure: $pressure, condition: $condition, wind: $wind, tempFeels: $tempFeels)';
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
  @JsonKey(name: 'feelslike_c')
  double get tempFeels;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentModelCopyWith<_$_CurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ConditionModel _$ConditionModelFromJson(Map<String, dynamic> json) {
  return _ConditionModel.fromJson(json);
}

/// @nodoc
mixin _$ConditionModel {
  @JsonKey(name: 'icon')
  String get imageUrl => throw _privateConstructorUsedError;
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
  $Res call(
      {@JsonKey(name: 'icon') String imageUrl,
      @JsonKey(name: 'text') String weatherCondition});
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
    Object? imageUrl = freezed,
    Object? weatherCondition = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {@JsonKey(name: 'icon') String imageUrl,
      @JsonKey(name: 'text') String weatherCondition});
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
    Object? imageUrl = freezed,
    Object? weatherCondition = freezed,
  }) {
    return _then(_$_ConditionModel(
      imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
  _$_ConditionModel(@JsonKey(name: 'icon') this.imageUrl,
      @JsonKey(name: 'text') this.weatherCondition);

  factory _$_ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConditionModelFromJson(json);

  @override
  @JsonKey(name: 'icon')
  final String imageUrl;
  @override
  @JsonKey(name: 'text')
  final String weatherCondition;

  @override
  String toString() {
    return 'ConditionModel(imageUrl: $imageUrl, weatherCondition: $weatherCondition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConditionModel &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.weatherCondition, weatherCondition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(weatherCondition));

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
  factory _ConditionModel(@JsonKey(name: 'icon') final String imageUrl,
      @JsonKey(name: 'text') final String weatherCondition) = _$_ConditionModel;

  factory _ConditionModel.fromJson(Map<String, dynamic> json) =
      _$_ConditionModel.fromJson;

  @override
  @JsonKey(name: 'icon')
  String get imageUrl;
  @override
  @JsonKey(name: 'text')
  String get weatherCondition;
  @override
  @JsonKey(ignore: true)
  _$$_ConditionModelCopyWith<_$_ConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
