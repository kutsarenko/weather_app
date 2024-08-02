part of 'current_weather_cubit.dart';

@freezed
class CurrentWeatherState with _$CurrentWeatherState {
  const factory CurrentWeatherState.loading() = CurrentWeatherLoadingState;
  const factory CurrentWeatherState.fetchSuccess(WeatherModel weather) = CurrentWeatherSuccessState;
  const factory CurrentWeatherState.error(String error) = CurrentWeatherErrorState;
}
