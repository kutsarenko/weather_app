import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/weather/data/weather_api_provider.dart';
import 'package:weather_app/features/weather/domain/weather_repository.dart';
import 'package:weather_app/features/weather/presentation/view/current_weather.dart';
import 'package:weather_app/services/config.dart';
import 'package:weather_app/services/network_client.dart';
import 'package:weather_app/services/app_setup.dart';

Future main() async {
  await AppSetup().setupServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) {
            final config = getIt<Config>();
            return WeatherApiProvider(
              networkClient: NetworkClient(
                config.currentWeatherApi,
              ),
              apiKey: config.weatherApiKey,
            );
          },
        ),
        RepositoryProvider<WeatherRepository>(
          create: (context) => WeatherRepositoryImpl(
            context.read<WeatherApiProvider>(),
          ),
        ),
      ],
      child: const MaterialApp(
        localizationsDelegates: [
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          AppLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en'),
        ],
        home: CurrentWeather(),
      ),
    );
  }
}
