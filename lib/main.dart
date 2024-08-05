import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/geolocator/data/geolocator_api_provider.dart';
import 'package:weather_app/features/geolocator/domain/geolocator_repository.dart';
import 'package:weather_app/features/weather/data/weather_api_provider.dart';
import 'package:weather_app/features/weather/domain/weather_repository.dart';
import 'package:weather_app/features/weather/presentation/view/current_weather.dart';
import 'package:weather_app/services/config.dart';
import 'package:weather_app/services/network_client.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final config = Config();
  await config.loadConfig();
  runApp(
    MyApp(config: config),
  );
}

class MyApp extends StatelessWidget {
  final Config config;

  const MyApp({
    super.key,
    required this.config,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) {
            return WeatherApiProvider(
              networkClient: NetworkClient(
                config.currentWeatherApi,
              ),
              apiKey: config.weatherApiKey,
            );
          },
        ),
        RepositoryProvider(
          create: (context) => GeolocatorApiProvider(),
        ),
        RepositoryProvider<WeatherRepository>(
          create: (context) => WeatherRepositoryImpl(
            context.read<WeatherApiProvider>(),
          ),
        ),
        RepositoryProvider<GeolocatorRepository>(
          create: (context) => GeolocatorRepositoryImpl(
            context.read<GeolocatorApiProvider>(),
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
