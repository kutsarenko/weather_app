part of 'current_weather_cubit.dart';

@freezed
class CurrentWeatherState with _$CurrentWeatherState {
  const factory CurrentWeatherState.loading() = CurrentWeatherLoadingState;
  const factory CurrentWeatherState.fetchSuccess({
    required WeatherModel weather,
    required GeoDtoModel location,
  }) = CurrentWeatherSuccessState;
  const factory CurrentWeatherState.error(String error) = CurrentWeatherErrorState;
}
