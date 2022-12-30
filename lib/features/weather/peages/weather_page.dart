import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/app/enum/enums.dart';
import 'package:wydatki/app/injection/injection_container.dart';
import 'package:wydatki/features/weather/cubit/weather_cubit.dart';
import 'package:wydatki/features/weather/widgets/middle_widget.dart';
import 'package:wydatki/features/weather/widgets/search_widget.dart';
import 'package:wydatki/features/weather/widgets/top_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            final errorMessage = state.errorMessage ?? AppLocalizations.of(context)!.error;
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
              title: Center(
                child: Text(
                  AppLocalizations.of(context)!.weather,
                ),
              ),
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(255, 177, 214, 248),
                    Color.fromARGB(255, 79, 136, 185),
                  ],
                  tileMode: TileMode.mirror,
                ),
              ),
              child: SafeArea(
                child: ListView(
                  children: [
                    Center(
                      child: Builder(builder: (context) {
                        if (state.status == Status.loading) {
                          return const CircularProgressIndicator();
                        }
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (weatherModel != null)
                              TopWidget(weatherModel: weatherModel),
                            if (weatherModel != null)
                              MiddleWidget(weatherModel: weatherModel),
                            SearchWidget(),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
