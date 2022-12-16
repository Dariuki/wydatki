import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_cofing.freezed.dart';
part 'category_cofing.g.dart';

@freezed
class CategoryCofing with _$CategoryCofing {
  factory CategoryCofing(
    CategoryModel categories,
    SpendingModel spendings,
  ) = _CategoryCofing;

  factory CategoryCofing.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryCofingFromJson(json);
}

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
