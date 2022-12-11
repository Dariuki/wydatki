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
    @JsonKey(name: 'localtime') DateTime localTime,
  ) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);
}

@freezed
class CurrentModel with _$CurrentModel {
  factory CurrentModel(
    @JsonKey(name: 'temp_c') double temperatureC,
    @JsonKey(name: 'temp_f') double temperatureF,
    @JsonKey(name: 'wind_kph') double wind,
  ) = _CurrentModel;

  factory CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentModelFromJson(json);
}
