// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'spendings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpendingModel _$$_SpendingModelFromJson(Map<String, dynamic> json) =>
    _$_SpendingModel(
      json['title'] as String,
      json['shop'] as String,
      (json['amount'] as num).toDouble(),
      json['id'] as String,
      json['categoryID'] as String,
    );

Map<String, dynamic> _$$_SpendingModelToJson(_$_SpendingModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'shop': instance.shop,
      'amount': instance.amount,
      'id': instance.id,
      'categoryID': instance.categoryID,
    };
