import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  CategoryModel({
    this.type = '',
    this.id = '',
  });
  @JsonKey(name: 'type')
  String type;
  @JsonKey(name: 'id')
  String id;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
