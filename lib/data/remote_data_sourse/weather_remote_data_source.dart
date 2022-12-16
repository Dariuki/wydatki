import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:wydatki/domain/models/weather_model.dart';

part 'weather_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class WeatherRemoteRetroFitDataSource {
  @factoryMethod
  factory WeatherRemoteRetroFitDataSource(Dio dio) =
      _WeatherRemoteRetroFitDataSource;

  @GET("/current.json?key=9ddda9c4aa1f4f31967115041221706&q={city}&aqi=no")
  Future<WeatherModel> getWeatherData(@Path("city") String city);
}
