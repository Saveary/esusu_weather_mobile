// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      elevation: (json['elevation'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      timezone_abbreviation: json['timezone_abbreviation'] as String?,
      current: json['current'] == null
          ? null
          : CurrentWeatherModel.fromJson(
              json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'elevation': instance.elevation,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezone_abbreviation,
      'current': instance.current,
    };

_$CurrentWeatherModelImpl _$$CurrentWeatherModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWeatherModelImpl(
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      temperature_2m: (json['temperature_2m'] as num?)?.toDouble(),
      apparent_temperature: (json['apparent_temperature'] as num?)?.toDouble(),
      wind_speed_10m: (json['wind_speed_10m'] as num?)?.toDouble(),
      wind_direction_10m: json['wind_direction_10m'] as int?,
      weather_code: json['weather_code'] as int?,
      relative_humidity_2m: json['relative_humidity_2m'] as int?,
      is_day: json['is_day'] as int?,
    );

Map<String, dynamic> _$$CurrentWeatherModelImplToJson(
        _$CurrentWeatherModelImpl instance) =>
    <String, dynamic>{
      'time': instance.time?.toIso8601String(),
      'temperature_2m': instance.temperature_2m,
      'apparent_temperature': instance.apparent_temperature,
      'wind_speed_10m': instance.wind_speed_10m,
      'wind_direction_10m': instance.wind_direction_10m,
      'weather_code': instance.weather_code,
      'relative_humidity_2m': instance.relative_humidity_2m,
      'is_day': instance.is_day,
    };
