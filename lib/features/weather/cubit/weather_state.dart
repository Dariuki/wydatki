part of 'weather_cubit.dart';


@freezed
class WeatherState with _$WeatherState {
  factory WeatherState({
  WeatherModel? results,
  @Default(Status.initial) Status status,
  String? errorMessage,
    
  }) = _WeatherState;
}
