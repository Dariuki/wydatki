import 'package:freezed_annotation/freezed_annotation.dart';

part 'spending_model.freezed.dart';
part 'spending_model.g.dart';


@freezed
class SpendingModel with _$SpendingModel {
  factory SpendingModel(
    String shop,
    double amount,
    String id,
    String categoryID,
    
  ) = _SpendingModel;

  factory SpendingModel.fromJson(Map<String, dynamic> json) =>
      _$$_SpendingModelFromJson(json);
}
