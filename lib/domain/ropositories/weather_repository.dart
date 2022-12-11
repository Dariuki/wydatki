import 'package:injectable/injectable.dart';
import 'package:wydatki/data/remote_data_sourse/weather_remote_data_source.dart';
import 'package:wydatki/domain/models/weather_model.dart';


@injectable 
class WeatherRepository {
  WeatherRepository({required this.weatherRemoteDataSource});

  final WeatherRemoteDataSource weatherRemoteDataSource;

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final json = await weatherRemoteDataSource.getWeatherData(
      city: city,
    );

    if (json == null) {
      return null;
    }
    return WeatherModel.fromJson(json);
  }
}
