import 'package:freezed_annotation/freezed_annotation.dart';

part 'precipitation.g.dart';
part 'precipitation.freezed.dart';

@freezed
class Precipitation with _$Precipitation {
  const factory Precipitation({
    final String? main,
    final String? description,
  }) = _Precipitation;

  factory Precipitation.fromJson(Map<String, Object?> json) => _$PrecipitationFromJson(json);
}
