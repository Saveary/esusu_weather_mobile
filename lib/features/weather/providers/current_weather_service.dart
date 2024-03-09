import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_mobile/models/weather_model.dart';

part 'current_weather_service.g.dart';

@Riverpod(keepAlive: true)
Future<WeatherModel> currentWeather(
  CurrentWeatherRef ref, {
  required double latitude,
  required double longitude,
}) async {
  final queryParameters = {
    'latitude': latitude.toString(),
    'longitude': longitude.toString(),
    'current':
        'temperature_2m,apparent_temperature,wind_speed_10m,weather_code,is_day,relative_humidity_2m,wind_direction_10m',
    'temperature_unit': 'fahrenheit',
    'wind_speed_unit': 'mph'
  };

  final response = await http.get(
    Uri.https(
      'api.open-meteo.com',
      '/v1/forecast',
      queryParameters,
    ),
  );

  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);
    return WeatherModel.fromJson(result); // Get the 'results'
  } else {
    throw Exception(response.reasonPhrase);
  }
}
