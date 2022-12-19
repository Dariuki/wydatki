import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_coffing.freezed.dart';
part 'category_coffing.g.dart';



@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel(
    String type,
    String id,
  ) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryModelFromJson(json);
}

@freezed
class SpendingModel with _$SpendingModel {
  factory SpendingModel(
    String title,
    String shop,
    double amount,
    String id,
    String categoryID,
  ) = _SpendingModel;

  factory SpendingModel.fromJson(Map<String, dynamic> json) =>
      _$$_SpendingModelFromJson(json);
}
