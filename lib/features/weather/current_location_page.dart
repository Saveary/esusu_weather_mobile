import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_mobile/features/weather/providers/current_weather_service.dart';
import 'package:weather_mobile/models/weather_model.dart';

/*
  Initial landing page for the weather app 
  TODO: 
  Should move functions into respective providers and off of the page itself. 
  Add bottom navigation / Tab Bar w ShellRoute in routing
    - Specific Weather Page 
    - All Locations Weather Page w search 
    - Profile / Settings Page 
  Create a widget that checks Weather Code and returns the Weather and Associated Icon
  ...
  Pull out the Centered Card and make it a reusable widget 

  TESTS TESTS TESTS - Preferably integration tests

*/
class WeatherPage extends ConsumerStatefulWidget {
  const WeatherPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WeatherPageState();
}

class _WeatherPageState extends ConsumerState<WeatherPage> {
  // Will use users location to set latitude and longitude automatically
  Position? _currentPosition;
  String? _nearestCity = '';

  /// Handles users location permissions via the [GeoLocator] package.
  /// if [GeoLocator.isLocationServiceEnabled] returns `false` we will show the user a snackbar
  /// informing them to go to their settings and enable permissions.
  ///
  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services'),
        ),
      );
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Location permissions are denied'),
          ),
        );
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.'),
        ),
      );
      return false;
    }
    return true;
  }

  /// Checks [_handleLocationPermission] to ensure user has location services turned on.
  /// Then uses [GeoLocator] to get users current device position.
  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();
    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => _currentPosition = position);
    }).catchError((e) {
      debugPrint(e);
    });
  }

  /// Takes the [`longitude`] and [`latitude`] and then uses
  /// [GeoCoding] to get the nearest position [locality].
  /// [placemarks] has additional info within it.
  Future<void> _getNearestPositionName(Position? position) async {
    if (position == null) return;
    placemarkFromCoordinates(position.latitude, position.longitude)
        .then((placemarks) {
      var output = 'No results found.';
      if (placemarks.isNotEmpty) {
        output = placemarks[0].locality.toString();
      }

      setState(() {
        _nearestCity = output;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _getCurrentPosition()
        .then((value) => _getNearestPositionName(_currentPosition));
  }

  @override
  Widget build(BuildContext context) {
    // Watches the currentWeather based on latitude and longitude
    final AsyncValue<WeatherModel> currentWeather = ref.watch(
      CurrentWeatherProvider(
          latitude: _currentPosition?.latitude ?? 12,
          longitude: _currentPosition?.longitude ?? 12),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Current Weather',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: currentWeather.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) =>
            // TODO: Handle error cleanly - refresh indicator of some sort - descriptive message etc
            const Center(child: Text('Oops, something unexpected happened')),
        data: (weather) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 60.0, top: 28.0, bottom: 32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'My Location',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 28),
                      ),
                      Text(
                        _nearestCity ?? '',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        '${weather.current!.temperature_2m!.round().toString()}°F',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 60),
                      ),
                      weather.current?.is_day == 0
                          ? Text(
                              'Today, ${_convertWeatherCodeToString(weather.current!.weather_code)!}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 24),
                            )
                          : Text(
                              'Tonight, ${_convertWeatherCodeToString(weather.current!.weather_code)!}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 24),
                            ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Wind Direction: ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      weather.current!.wind_direction_10m != null
                          ? '${weather.current!.wind_direction_10m.toString()}°'
                          : 'N/A',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Wind Speed: ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '${weather.current!.wind_speed_10m!.toString()} MPH',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    if (weather.current!.relative_humidity_2m != null)
                      const Text(
                        'Humidity: ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    if (weather.current!.relative_humidity_2m != null)
                      Text(
                        weather.current!.relative_humidity_2m!.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                  ],
                ),
              ),
            ),
            const Card(
              elevation: 5,
              child: Row(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Should NOT use switch statement - temporary d/t time - not completely filled
String? _convertWeatherCodeToString(int? weatherCode) {
  if (weatherCode != null) {
    switch (weatherCode) {
      case 0:
        return ('Clear Skies');
      case 1:
        return ('Mainly Clear Skies');
      case 2:
        return ('Partly Cloudy Skies');
      case 3:
        return ('Overcast Skies');
      case 45:
        return ('Fog');
      case 48:
        return ('Depositing Rime Fog');
      case 51:
        return ('Light Drizzle');
      case 53:
        return ('Moderate Drizzle');
      case 55:
        return ('Heavy Drizzle');
      case 56:
        return ('Light Freezing Drizzle');
      case 57:
        return ('Heavy Freezing Drizzle');

      case 61:
        return ('Light Rain');

      case 63:
        return ('Moderate Rain');

      case 65:
        return ('Heavy Rain');

      case 66:
        return ('Light Freezing Rain');

      case 67:
        return ('Heavy Freezing Rain');

      case 71:
        return ('Light Snowfall');

      case 73:
        return ('Moderate Snowfall');

      case 75:
        return ('Heavy Snowfall');

      case 77:
        return ('');

      case 80:
        return ('');

      case 81:
        return ('');

      case 82:
        return ('');

      case 85:
        return ('');

      case 86:
        return ('');

      case 95:
        return ('');

      case 96:
        return ('');

      case 99:
        return ('');

      default:
        return ('');
    }
  }
  return null;
}
