import 'package:logger/logger.dart';
import 'package:weather_app/features/weather/data/models/weather_model.dart';
import 'package:weather_app/features/weather/data/weather_endpoints.dart';
import 'package:weather_app/services/network_client.dart';

class WeatherApiProvider {
  final NetworkClient networkClient;
  final String apiKey;

  final Logger logger = Logger();
  final WeatherEndpoints _endpoints = WeatherEndpoints();

  WeatherApiProvider({
    required this.networkClient,
    required this.apiKey,
  });

  Future<WeatherModel> getCurrentWeather(String location) async {
    try {
      logger.i('start fetching current weather...');
      final response = await networkClient.dio.get(
        _endpoints.currentWeather,
        queryParameters: {
          'q': location,
          'appid': apiKey,
        },
      );
      logger.i('getCurrentWeather response - ${response.data}');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data as Map<String, dynamic>);

      return weatherModel;
    } catch (error) {
      logger.e('getCurrentWeather error: $error');
      rethrow;
    }
  }

  Future<List<WeatherModel>> getWeatherForFiveDays(String location) async {
    try {
      logger.i('start fetching weather for 5 days...');

      // logger.i('getWeatherForFiveDays response - ${response.data}');
      return [];
    } catch (error) {
      logger.e('getWeatherForFiveDays error: $error');
      rethrow;
    }
  }
}
