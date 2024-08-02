import 'dart:convert';

import 'package:flutter/services.dart';

class Config {
  dynamic _jsonConfig;
  String get currentWeatherApi {
    return _jsonConfig['current_weather_api'];
  }

  get weatherApiKey {
    return _jsonConfig['weather_api_key'];
  }

  Future<void> loadConfig() async {
    final jsonString = await rootBundle.loadString('assets/config/config.json');
    _jsonConfig = jsonDecode(jsonString);
  }
}
