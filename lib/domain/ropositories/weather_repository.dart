import 'package:injectable/injectable.dart';
import 'package:wydatki/data/remote_data_sourse/weather_remote_data_source.dart';
import 'package:wydatki/domain/models/weather_model.dart';

@injectable
class WeatherRepository {
  WeatherRepository({required this.weatherRemoteDataSource});

  final WeatherRemoteRetroFitDataSource weatherRemoteDataSource;

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) {
    return weatherRemoteDataSource.getWeatherData(city,);
  }
}
