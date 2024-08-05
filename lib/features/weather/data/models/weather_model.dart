import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/weather/data/models/precipitation.dart';
import 'main_model.dart';

part 'weather_model.g.dart';
part 'weather_model.freezed.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    final MainModel? main,
    @Default([])
    // ignore: invalid_annotation_target
    @JsonKey(
      name: 'weather',
    )
    final List<Precipitation> precipation,
    // ignore: invalid_annotation_target
    @JsonKey(
      name: 'name',
    )
    final String? locationName,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, Object?> json) => _$WeatherModelFromJson(json);
}
