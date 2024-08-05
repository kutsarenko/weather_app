// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      main: json['main'] == null
          ? null
          : MainModel.fromJson(json['main'] as Map<String, dynamic>),
      precipation: (json['weather'] as List<dynamic>?)
              ?.map((e) => Precipitation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      locationName: json['name'] as String?,
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'main': instance.main,
      'weather': instance.precipation,
      'name': instance.locationName,
    };
