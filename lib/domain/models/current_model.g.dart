// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'current_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentModel _$$_CurrentModelFromJson(Map<String, dynamic> json) =>
    _$_CurrentModel(
      (json['temp_c'] as num).toDouble(),
      (json['pressure_mb'] as num).toDouble(),
      ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      (json['wind_kph'] as num).toDouble(),
      json['wind_dir'] as String,
      (json['humidity'] as num).toDouble(),
      (json['feelslike_c'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CurrentModelToJson(_$_CurrentModel instance) =>
    <String, dynamic>{
      'temp_c': instance.temperatureC,
      'pressure_mb': instance.pressure,
      'condition': instance.condition,
      'wind_kph': instance.wind,
      'wind_dir': instance.windDirection,
      'humidity': instance.humidity,
      'feelslike_c': instance.tempFeels,
    };
