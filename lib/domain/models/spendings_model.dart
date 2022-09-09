import 'package:json_annotation/json_annotation.dart';

part 'spendings_model.g.dart';

@JsonSerializable()
class SpendingModel {
  SpendingModel({
    required this.title,
    required this.shop,
    required this.amount,
    this.id = '',
    this.categoryID = '',
  });

  final String title;

  final String shop;

  final double amount;

  final String id;

  final String categoryID;

  factory SpendingModel.fromJson(Map<String, dynamic> json) =>
      _$SpendingModelFromJson(json);

  Map<String, dynamic> toJson() => _$SpendingModelToJson(this);
}
