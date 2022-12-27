import 'package:freezed_annotation/freezed_annotation.dart';

part 'condition_model.freezed.dart';
part 'condition_model.g.dart';

@freezed
class ConditionModel with _$ConditionModel {
  factory ConditionModel(
    @JsonKey(name: 'text') String weatherCondition,
  ) = _ConditionModel;

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConditionModelFromJson(json);
}
