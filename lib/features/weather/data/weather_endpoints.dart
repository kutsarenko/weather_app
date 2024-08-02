class WeatherEndpoints {
  static final WeatherEndpoints _instance = WeatherEndpoints._privateConstructor();

  WeatherEndpoints._privateConstructor();

  factory WeatherEndpoints() {
    return _instance;
  }

  final String currentWeather = 'weather';
  final String weatherForFiveDays = 'forecast';
}
