import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewAllLocationsPage extends ConsumerWidget {
  const ViewAllLocationsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final AsyncValue<WeatherModel> currentWeather = ref.read(
    //   currentWeatherProvider
    // );

    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Weather',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          SearchBar(
            leading: Icon(Icons.search_rounded),
            hintText: 'Search for a city',
          ),
          SizedBox(
            height: 20,
          ),
          // Create a reusable component and swap hardcoded w data
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Location',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Orlando',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Mostly Cloudy'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('*'),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text('H: 80'),
                          Text('L: 60'),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
