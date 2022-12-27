import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wydatki/app/enum/enums.dart';
import 'package:wydatki/domain/models/condition_model.dart';
import 'package:wydatki/domain/models/current_model.dart';
import 'package:wydatki/domain/models/location_model.dart';
import 'package:wydatki/domain/models/weather_model.dart';
import 'package:wydatki/domain/ropositories/weather_repository.dart';
import 'package:wydatki/features/weather/cubit/weather_cubit.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

void main() {
  late WeatherCubit sut;
  late MockWeatherRepository repository;

  setUp(() {
    repository = MockWeatherRepository();
    sut = WeatherCubit(repository);
  });

  group('succces', () {
    setUp(() {
      when(() => repository.getWeatherModel(city: 'Lublin')).thenAnswer(
        (_) async => WeatherModel(
          LocationModel('Lublin', ''),
          CurrentModel(
            12.0,
            1000,
            ConditionModel(
              'sunny',
            ),
            34.0,
            '',
            20,
            20,
          ),
        ),
      );
    });
    blocTest<WeatherCubit, WeatherState>(
      'emit Status.loading then Status.succes whit resuult',
      build: () => sut,
      act: (cubit) => cubit.getWeather(city: 'Lublin'),
      expect: () => [
        WeatherState(status: Status.loading),
        WeatherState(
          status: Status.success,
          results: WeatherModel(
            LocationModel('Lublin', ''),
            CurrentModel(
              12.0,
              1000,
              ConditionModel(
                'sunny',
              ),
              34.0,
              '',
              20,
              20,
            ),
          ),
        ),
      ],
    );
  });
}
