import 'package:go_router/go_router.dart';
import 'package:weather_mobile/features/home_page.dart';
import 'package:weather_mobile/features/profile/profile_page.dart';
import 'package:weather_mobile/features/weather/all_locations_page.dart';
import 'package:weather_mobile/features/weather/current_location_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      redirect: (_, __) => '/0',
    ),
    ShellRoute(
      builder: (context, state, child) {
        return Home(index: 0, child: child);
      },
      routes: [
        GoRoute(
          path: '/0',
          builder: (context, state) {
            return WeatherPage(
              key: state.pageKey,
            );
          },
        ),
        GoRoute(
          path: '/1',
          builder: (context, state) {
            return ViewAllLocationsPage(
              key: state.pageKey,
            );
          },
        ),
        GoRoute(
          path: '/2',
          builder: (context, state) {
            return ProfilePage(
              key: state.pageKey,
            );
          },
        )
      ],
    )
  ],
);
