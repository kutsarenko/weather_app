import 'package:weather_app/features/weather/data/models/weather_model.dart';
import 'package:weather_app/features/weather/data/weather_api_provider.dart';

abstract interface class WeatherRepository {
  Future<WeatherModel> getCurrentWeather(String location);
  Future<List<WeatherModel>> getWeatherForFiveDays(String location);
}

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApiProvider apiProvider;
  const WeatherRepositoryImpl(this.apiProvider);

  @override
  Future<WeatherModel> getCurrentWeather(String location) async {
    try {
      return await apiProvider.getCurrentWeather(location);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<WeatherModel>> getWeatherForFiveDays(String location) async {
    try {
      return await apiProvider.getWeatherForFiveDays(location);
    } catch (e) {
      throw Exception(e);
    }
  }
}
