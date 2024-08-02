import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/app_logger.dart';
import 'package:weather_app/features/weather/data/models/weather_model.dart';
import 'package:weather_app/features/weather/domain/weather_repository.dart';

part 'current_weather_state.dart';
part 'current_weather_cubit.freezed.dart';

class CurrentWeatherCubit extends Cubit<CurrentWeatherState> {
  final WeatherRepository _weatherRepository;
  CurrentWeatherCubit(this._weatherRepository) : super(const CurrentWeatherState.loading());

  Future<void> fetchCurrentWeather(String location) async {
    try {
      emit(const CurrentWeatherState.loading());
      WeatherModel weatherModel = await _weatherRepository.getCurrentWeather(location);
      emit(CurrentWeatherState.fetchSuccess(weatherModel));
    } catch (error) {
      emit(CurrentWeatherState.error(error.toString()));
    }
  }

  @override
  void onChange(Change<CurrentWeatherState> change) {
    super.onChange(change);
    appLogger.i(
        "-----\n$runtimeType\ncurrentState: ${change.currentState.toString()}\nnextState: ${change.nextState.toString()}\n-----");
  }
}
