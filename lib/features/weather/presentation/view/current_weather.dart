import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/geolocator/domain/geolocator_repository.dart';
import 'package:weather_app/features/weather/data/models/main_model.dart';
import 'package:weather_app/features/weather/data/models/precipitation.dart';
import 'package:weather_app/features/weather/domain/weather_repository.dart';
import 'package:weather_app/features/weather/presentation/cubits/current_weather_cubit/current_weather_cubit.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CurrentWeatherCubit(
        weatherRepository: context.read<WeatherRepository>(),
        geolocatorRepository: context.read<GeolocatorRepository>(),
      )..fetchCurrentWeather(),
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
            fetchSuccess: (data) {
              final MainModel? main = data.weather.main;
              final List<Precipitation> precipitation = data.weather.precipation;
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

                    /// TODO: Добавить вывод текущей локации
                    // Text(
                    //   'Location: ',
                    // ),
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
