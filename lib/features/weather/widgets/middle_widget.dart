import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:wydatki/domain/models/weather_model.dart';
import 'package:wydatki/features/weather/cubit/weather_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MiddleWidget extends StatelessWidget {
  const MiddleWidget({
    Key? key,
    required this.weatherModel,
  }) : super(key: key);
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 16,
          ),
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(35)),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 90, 170, 249),
                Color.fromARGB(240, 166, 251, 214),
              ],
              tileMode: TileMode.mirror,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(4, 8),
              ),
            ],
          ),
          child: _ViewWidget(weatherModel: weatherModel),
        );
      },
    );
  }
}

class _ViewWidget extends StatelessWidget {
  const _ViewWidget({
    Key? key,
    required this.weatherModel,
  }) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.weatherDetails.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const BoxedIcon(
                  WeatherIcons.barometer,
                  color: Colors.amber,
                  size: 35,
                ),
                Text(AppLocalizations.of(context)!.pressure),
                Text(
                  '${weatherModel.current.pressure.toString()} hPa',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Icon(
                  Icons.air,
                  color: Colors.amber,
                  size: 51,
                ),
                Text(AppLocalizations.of(context)!.wind),
                Text(
                  '${weatherModel.current.wind.toString()} kpH',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const BoxedIcon(
                  WeatherIcons.humidity,
                  color: Colors.amber,
                  size: 35,
                ),
                Text(AppLocalizations.of(context)!.humidity),
                Text(
                  weatherModel.current.humidity.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
        // Spacer
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const BoxedIcon(
                  WeatherIcons.thermometer,
                  color: Colors.amber,
                  size: 35,
                ),
                Text(AppLocalizations.of(context)!.sensedTemp),
                Text(
                  '${weatherModel.current.tempFeels.toString()} ℃',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Column(
                  children: const [
                    Icon(
                      Icons.air,
                      color: Colors.amber,
                      size: 30,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.amber,
                      size: 30,
                    ),
                  ],
                ),
                Text(AppLocalizations.of(context)!.windDirection),
                Text(
                  weatherModel.current.windDirection,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
