import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  factory WeatherModel(
    LocationModel location,
    CurrentModel current,
  ) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherModelFromJson(json);
}

@freezed
class LocationModel with _$LocationModel {
  factory LocationModel(
    @JsonKey(name: 'name') String city,
  ) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);
}

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

@freezed
class ConditionModel with _$ConditionModel {
  factory ConditionModel(
    @JsonKey(name: 'icon') String imageUrl,
    @JsonKey(name: 'text') String weatherCondition,
   
  ) = _ConditionModel;

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConditionModelFromJson(json);
}
