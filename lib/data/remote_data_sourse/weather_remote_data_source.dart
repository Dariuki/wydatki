import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable 
class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final responce = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=9ddda9c4aa1f4f31967115041221706&q=$city&aqi=no');
    return responce.data;
  }
}
