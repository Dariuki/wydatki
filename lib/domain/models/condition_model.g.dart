// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'condition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
