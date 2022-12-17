import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wydatki/app/enum/enums.dart';
import 'package:wydatki/domain/models/weather_model.dart';
import 'package:wydatki/domain/ropositories/weather_repository.dart';

part 'weather_cubit.freezed.dart';
part 'weather_state.dart';

@injectable
class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this._weatherRepository) : super( WeatherState());

  final WeatherRepository _weatherRepository;

  Future<void> getWeather({
    required String city,
  }) async {
    emit( WeatherState(status: Status.loading));
    try {
      final weatherModel = await _weatherRepository.getWeatherModel(city: city);
      emit(
        WeatherState(
          results: weatherModel,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        WeatherState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
