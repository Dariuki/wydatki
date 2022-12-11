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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
class _$WeatherModelTearOff {
  const _$WeatherModelTearOff();

  _WeatherModel call(LocationModel location, CurrentModel current) {
    return _WeatherModel(
      location,
      current,
    );
  }

  WeatherModel fromJson(Map<String, Object?> json) {
    return WeatherModel.fromJson(json);
  }
}

/// @nodoc
const $WeatherModel = _$WeatherModelTearOff();

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
abstract class _$WeatherModelCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$WeatherModelCopyWith(
          _WeatherModel value, $Res Function(_WeatherModel) then) =
      __$WeatherModelCopyWithImpl<$Res>;
  @override
  $Res call({LocationModel location, CurrentModel current});

  @override
  $LocationModelCopyWith<$Res> get location;
  @override
  $CurrentModelCopyWith<$Res> get current;
}

/// @nodoc
class __$WeatherModelCopyWithImpl<$Res> extends _$WeatherModelCopyWithImpl<$Res>
    implements _$WeatherModelCopyWith<$Res> {
  __$WeatherModelCopyWithImpl(
      _WeatherModel _value, $Res Function(_WeatherModel) _then)
      : super(_value, (v) => _then(v as _WeatherModel));

  @override
  _WeatherModel get _value => super._value as _WeatherModel;

  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_WeatherModel(
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
            other is _WeatherModel &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.current, current));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(current));

  @JsonKey(ignore: true)
  @override
  _$WeatherModelCopyWith<_WeatherModel> get copyWith =>
      __$WeatherModelCopyWithImpl<_WeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherModelToJson(this);
  }
}

abstract class _WeatherModel implements WeatherModel {
  factory _WeatherModel(LocationModel location, CurrentModel current) =
      _$_WeatherModel;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherModel.fromJson;

  @override
  LocationModel get location;
  @override
  CurrentModel get current;
  @override
  @JsonKey(ignore: true)
  _$WeatherModelCopyWith<_WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
class _$LocationModelTearOff {
  const _$LocationModelTearOff();

  _LocationModel call(@JsonKey(name: 'name') String city,
      @JsonKey(name: 'localtime') DateTime localTime) {
    return _LocationModel(
      city,
      localTime,
    );
  }

  LocationModel fromJson(Map<String, Object?> json) {
    return LocationModel.fromJson(json);
  }
}

/// @nodoc
const $LocationModel = _$LocationModelTearOff();

/// @nodoc
mixin _$LocationModel {
  @JsonKey(name: 'name')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'localtime')
  DateTime get localTime => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'name') String city,
      @JsonKey(name: 'localtime') DateTime localTime});
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
    Object? localTime = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      localTime: localTime == freezed
          ? _value.localTime
          : localTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$LocationModelCopyWith(
          _LocationModel value, $Res Function(_LocationModel) then) =
      __$LocationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String city,
      @JsonKey(name: 'localtime') DateTime localTime});
}

/// @nodoc
class __$LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res>
    implements _$LocationModelCopyWith<$Res> {
  __$LocationModelCopyWithImpl(
      _LocationModel _value, $Res Function(_LocationModel) _then)
      : super(_value, (v) => _then(v as _LocationModel));

  @override
  _LocationModel get _value => super._value as _LocationModel;

  @override
  $Res call({
    Object? city = freezed,
    Object? localTime = freezed,
  }) {
    return _then(_LocationModel(
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      localTime == freezed
          ? _value.localTime
          : localTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationModel implements _LocationModel {
  _$_LocationModel(@JsonKey(name: 'name') this.city,
      @JsonKey(name: 'localtime') this.localTime);

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String city;
  @override
  @JsonKey(name: 'localtime')
  final DateTime localTime;

  @override
  String toString() {
    return 'LocationModel(city: $city, localTime: $localTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationModel &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.localTime, localTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(localTime));

  @JsonKey(ignore: true)
  @override
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      __$LocationModelCopyWithImpl<_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelToJson(this);
  }
}

abstract class _LocationModel implements LocationModel {
  factory _LocationModel(@JsonKey(name: 'name') String city,
      @JsonKey(name: 'localtime') DateTime localTime) = _$_LocationModel;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get city;
  @override
  @JsonKey(name: 'localtime')
  DateTime get localTime;
  @override
  @JsonKey(ignore: true)
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentModel _$CurrentModelFromJson(Map<String, dynamic> json) {
  return _CurrentModel.fromJson(json);
}

/// @nodoc
class _$CurrentModelTearOff {
  const _$CurrentModelTearOff();

  _CurrentModel call(
      @JsonKey(name: 'temp_c') double temperatureC,
      @JsonKey(name: 'temp_f') double temperatureF,
      @JsonKey(name: 'wind_kph') double wind) {
    return _CurrentModel(
      temperatureC,
      temperatureF,
      wind,
    );
  }

  CurrentModel fromJson(Map<String, Object?> json) {
    return CurrentModel.fromJson(json);
  }
}

/// @nodoc
const $CurrentModel = _$CurrentModelTearOff();

/// @nodoc
mixin _$CurrentModel {
  @JsonKey(name: 'temp_c')
  double get temperatureC => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_f')
  double get temperatureF => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_kph')
  double get wind => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'temp_f') double temperatureF,
      @JsonKey(name: 'wind_kph') double wind});
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
    Object? temperatureF = freezed,
    Object? wind = freezed,
  }) {
    return _then(_value.copyWith(
      temperatureC: temperatureC == freezed
          ? _value.temperatureC
          : temperatureC // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureF: temperatureF == freezed
          ? _value.temperatureF
          : temperatureF // ignore: cast_nullable_to_non_nullable
              as double,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$CurrentModelCopyWith<$Res>
    implements $CurrentModelCopyWith<$Res> {
  factory _$CurrentModelCopyWith(
          _CurrentModel value, $Res Function(_CurrentModel) then) =
      __$CurrentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'temp_c') double temperatureC,
      @JsonKey(name: 'temp_f') double temperatureF,
      @JsonKey(name: 'wind_kph') double wind});
}

/// @nodoc
class __$CurrentModelCopyWithImpl<$Res> extends _$CurrentModelCopyWithImpl<$Res>
    implements _$CurrentModelCopyWith<$Res> {
  __$CurrentModelCopyWithImpl(
      _CurrentModel _value, $Res Function(_CurrentModel) _then)
      : super(_value, (v) => _then(v as _CurrentModel));

  @override
  _CurrentModel get _value => super._value as _CurrentModel;

  @override
  $Res call({
    Object? temperatureC = freezed,
    Object? temperatureF = freezed,
    Object? wind = freezed,
  }) {
    return _then(_CurrentModel(
      temperatureC == freezed
          ? _value.temperatureC
          : temperatureC // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureF == freezed
          ? _value.temperatureF
          : temperatureF // ignore: cast_nullable_to_non_nullable
              as double,
      wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentModel implements _CurrentModel {
  _$_CurrentModel(
      @JsonKey(name: 'temp_c') this.temperatureC,
      @JsonKey(name: 'temp_f') this.temperatureF,
      @JsonKey(name: 'wind_kph') this.wind);

  factory _$_CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentModelFromJson(json);

  @override
  @JsonKey(name: 'temp_c')
  final double temperatureC;
  @override
  @JsonKey(name: 'temp_f')
  final double temperatureF;
  @override
  @JsonKey(name: 'wind_kph')
  final double wind;

  @override
  String toString() {
    return 'CurrentModel(temperatureC: $temperatureC, temperatureF: $temperatureF, wind: $wind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentModel &&
            const DeepCollectionEquality()
                .equals(other.temperatureC, temperatureC) &&
            const DeepCollectionEquality()
                .equals(other.temperatureF, temperatureF) &&
            const DeepCollectionEquality().equals(other.wind, wind));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temperatureC),
      const DeepCollectionEquality().hash(temperatureF),
      const DeepCollectionEquality().hash(wind));

  @JsonKey(ignore: true)
  @override
  _$CurrentModelCopyWith<_CurrentModel> get copyWith =>
      __$CurrentModelCopyWithImpl<_CurrentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentModelToJson(this);
  }
}

abstract class _CurrentModel implements CurrentModel {
  factory _CurrentModel(
      @JsonKey(name: 'temp_c') double temperatureC,
      @JsonKey(name: 'temp_f') double temperatureF,
      @JsonKey(name: 'wind_kph') double wind) = _$_CurrentModel;

  factory _CurrentModel.fromJson(Map<String, dynamic> json) =
      _$_CurrentModel.fromJson;

  @override
  @JsonKey(name: 'temp_c')
  double get temperatureC;
  @override
  @JsonKey(name: 'temp_f')
  double get temperatureF;
  @override
  @JsonKey(name: 'wind_kph')
  double get wind;
  @override
  @JsonKey(ignore: true)
  _$CurrentModelCopyWith<_CurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
