// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      CurrentModel.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };

_$_LocationModel _$$_LocationModelFromJson(Map<String, dynamic> json) =>
    _$_LocationModel(
      json['name'] as String,
    );

Map<String, dynamic> _$$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'name': instance.city,
    };

_$_CurrentModel _$$_CurrentModelFromJson(Map<String, dynamic> json) =>
    _$_CurrentModel(
      (json['temp_c'] as num).toDouble(),
      (json['pressure_mb'] as num).toDouble(),
      ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      (json['wind_kph'] as num).toDouble(),
      (json['feelslike_c'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CurrentModelToJson(_$_CurrentModel instance) =>
    <String, dynamic>{
      'temp_c': instance.temperatureC,
      'pressure_mb': instance.pressure,
      'condition': instance.condition,
      'wind_kph': instance.wind,
      'feelslike_c': instance.tempFeels,
    };

_$_ConditionModel _$$_ConditionModelFromJson(Map<String, dynamic> json) =>
    _$_ConditionModel(
      json['icon'] as String,
      json['text'] as String,
    );

Map<String, dynamic> _$$_ConditionModelToJson(_$_ConditionModel instance) =>
    <String, dynamic>{
      'icon': instance.imageUrl,
      'text': instance.weatherCondition,
    };
