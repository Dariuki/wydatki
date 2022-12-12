import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/app/enum/enums.dart';
import 'package:wydatki/app/injection/injection_container.dart';
import 'package:wydatki/domain/models/weather_model.dart';
import 'package:wydatki/features/weather/cubit/weather_cubit.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherCubit>(
      create: (context) {
        return getIt<WeatherCubit>();
      },
      child: BlocConsumer<WeatherCubit, WeatherState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? 'Unkown error';
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          final weatherModel = state.results;
          return Scaffold(
            appBar: AppBar(
              title: const Text('Pogoda'),
            ),
            body: Center(
              child: Builder(builder: (context) {
                if (state.status == Status.loading) {
                  return const Text('Loading');
                }
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (weatherModel != null)
                      _DisplayWeatherWidget(
                        weatherModel: weatherModel,
                      ),
                    _SearchWidget(),
                  ],
                );
              }),
            ),
          );
        },
      ),
    );
  }
}

class _DisplayWeatherWidget extends StatelessWidget {
  const _DisplayWeatherWidget({
    Key? key,
    required this.weatherModel,
  }) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return Column(
          children: [
            Text(
              weatherModel.current.temperatureC.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 60),
            Text(
              weatherModel.location.city,
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 60),
          ],
        );
      },
    );
  }
}

class _SearchWidget extends StatelessWidget {
  _SearchWidget({
    Key? key,
  }) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('City'),
                hintText: 'London',
              ),
            ),
          ),
          const SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {
              context
                  .read<WeatherCubit>()
                  .getWeatherModel(city: _controller.text);
            },
            child: const Text('Get'),
          ),
        ],
      ),
    );
  }
}
