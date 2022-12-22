import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wydatki/domain/models/condition_model.dart';

part 'current_model.freezed.dart';
part 'current_model.g.dart';

@freezed
class CurrentModel with _$CurrentModel {
  factory CurrentModel(
    @JsonKey(name: 'temp_c') double temperatureC,
    @JsonKey(name: 'pressure_mb') double pressure,
    ConditionModel condition,
    @JsonKey(name: 'wind_kph') double wind,
    @JsonKey(name: 'feelslike_c') double tempFeels,
  ) = _CurrentModel;

  factory CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentModelFromJson(json);
}
