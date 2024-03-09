// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  factory WeatherModel({
    double? latitude,
    double? longitude,
    double? elevation,
    String? timezone,
    String? timezone_abbreviation,
    CurrentWeatherModel? current,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

// TODO: Growing Model - should add all required / desired parameters - can show them based on user selection
@freezed
class CurrentWeatherModel with _$CurrentWeatherModel {
  factory CurrentWeatherModel({
    DateTime? time,
    double? temperature_2m,
    double? apparent_temperature,
    double? wind_speed_10m,
    int? wind_direction_10m,
    int? weather_code,
    int? relative_humidity_2m,
    int? is_day,
  }) = _CurrentWeatherModel;

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherModelFromJson(json);
}
