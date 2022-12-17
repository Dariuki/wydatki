import 'package:flutter_test/flutter_test.dart';
import 'package:wydatki/data/remote_data_sourse/weather_remote_data_source.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wydatki/domain/models/weather_model.dart';
import 'package:wydatki/domain/ropositories/weather_repository.dart';

class MockWeatherDataSource extends Mock
    implements WeatherRemoteRetroFitDataSource {}

void main() {
  late WeatherRepository sut;
  late MockWeatherDataSource dataSource;

  setUp(() {
    dataSource = MockWeatherDataSource();
    sut = WeatherRepository(weatherRemoteDataSource: dataSource);
  });
  group('getWeatherModel', () {
    test('should call weatherRemoteRetroFitDataSource.getWeatherData(city) metod', () async {
      //1

      when(() => dataSource.getWeatherData('Lublin')).thenAnswer(
        (_) async => WeatherModel(
          LocationModel('Lublin'),
          CurrentModel(
            12.0,
            1000,
            ConditionModel(
              '',
              'sunny',
            ),
            34.0,
            10.2,
          ),
        ),
      );
      //2
       await sut.getWeatherModel(city: 'Lublin');
      //3
      verify(() => dataSource.getWeatherData('Lublin')).called(1);
    });
  });
}
