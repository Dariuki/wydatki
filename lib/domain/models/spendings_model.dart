import 'package:freezed_annotation/freezed_annotation.dart';

part 'spendings_model.freezed.dart';
part 'spendings_model.g.dart';

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
