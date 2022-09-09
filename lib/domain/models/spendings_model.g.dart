// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spendings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpendingModel _$SpendingModelFromJson(Map<String, dynamic> json) =>
    SpendingModel(
      title: json['title'] as String,
      shop: json['shop'] as String,
      amount: (json['amount'] as num).toDouble(),
      id: json['id'] as String? ?? '',
      categoryID: json['categoryID'] as String? ?? '',
    );

Map<String, dynamic> _$SpendingModelToJson(SpendingModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'shop': instance.shop,
      'amount': instance.amount,
      'id': instance.id,
      'categoryID': instance.categoryID,
    };
