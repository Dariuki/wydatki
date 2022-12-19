// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'category_coffing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      json['type'] as String,
      json['id'] as String,
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
    };

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
