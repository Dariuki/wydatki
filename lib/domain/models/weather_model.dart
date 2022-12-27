import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wydatki/domain/models/current_model.dart';
import 'package:wydatki/domain/models/location_model.dart';



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

