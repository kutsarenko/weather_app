import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/weather/data/models/main_model.dart';
import 'package:weather_app/features/weather/data/models/precipitation.dart';
import 'package:weather_app/features/weather/domain/weather_repository.dart';
import 'package:weather_app/features/weather/presentation/cubits/current_weather_cubit/current_weather_cubit.dart';

/// TODO: Удалить после создания блока с логикой геолокатора
const String _location = 'Gomel';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CurrentWeatherCubit(
        context.read<WeatherRepository>(),
      )..fetchCurrentWeather(_location),
      child: const CurrentWeatherView(),
    );
  }
}

class CurrentWeatherView extends StatelessWidget {
  const CurrentWeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CurrentWeatherCubit, CurrentWeatherState>(
        builder: (_, state) {
          return state.map(
            loading: (_) => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            error: (error) => Center(
              child: Text('Error: $error'),
            ),
            fetchSuccess: (model) {
              MainModel? main = model.weather.main;
              List<Precipitation> precipitation = model.weather.precipation;
              print('precipitation - ${precipitation}');
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (main?.temp != null)
                      Text(
                        '${main?.temp.toString()}',
                      ),
                    if (precipitation.isNotEmpty && precipitation.first.description?.isNotEmpty == true)
                      Text(precipitation.first.description!),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
