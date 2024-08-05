import 'package:weather_app/features/geolocator/data/models/geo_dto_model.dart';
import 'package:weather_app/features/weather/data/models/weather_model.dart';
import 'package:weather_app/features/weather/data/weather_api_provider.dart';

abstract interface class WeatherRepository {
  Future<WeatherModel> getCurrentWeather(GeoDtoModel geoData);
  Future<List<WeatherModel>> getWeatherForFiveDays(GeoDtoModel geoData);
}

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApiProvider apiProvider;
  const WeatherRepositoryImpl(this.apiProvider);

  @override
  Future<WeatherModel> getCurrentWeather(GeoDtoModel geoData) async {
    try {
      return await apiProvider.getCurrentWeather(geoData);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<WeatherModel>> getWeatherForFiveDays(GeoDtoModel geoData) async {
    try {
      return await apiProvider.getWeatherForFiveDays(geoData);
    } catch (e) {
      throw Exception(e);
    }
  }
}
