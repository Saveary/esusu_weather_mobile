import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Destination {
  const Destination({
    required this.id,
    required this.index,
    required this.icon,
    required this.color,
    required this.selectedIcon,
    required this.selectedColor,
  });
  final String id;
  final int index;
  final IconData icon;
  final IconData selectedIcon;
  final MaterialColor color;
  final Color selectedColor;
}

const List<Destination> allDestinations = <Destination>[
  Destination(
    id: '0',
    index: 0,
    icon: Icons.home_outlined,
    color: Colors.grey,
    selectedIcon: Icons.home_filled,
    selectedColor: Colors.white,
  ),
  Destination(
    id: '1',
    index: 1,
    icon: Icons.list,
    color: Colors.grey,
    selectedIcon: Icons.list,
    selectedColor: Colors.white,
  ),
  Destination(
    id: '2',
    index: 2,
    icon: Icons.person_outline,
    color: Colors.grey,
    selectedIcon: Icons.person,
    selectedColor: Colors.white,
  ),
];

class Home extends StatefulWidget {
  final Widget child;
  final int index;
  const Home({super.key, required this.child, required this.index});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.index < 0 || widget.index >= allDestinations.length) {
      // Just in case someone tries to pass an invalid index in the url.
      GoRouter.of(context).go('/');
      return const SizedBox.shrink();
    }
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: NavigationBar(
        height: 60,
        indicatorColor: Colors.transparent,
        destinations: [
          for (final f in allDestinations)
            NavigationDestination(
              icon: Icon(
                f.icon,
                color: f.color,
              ),
              label: '',
              selectedIcon: Icon(
                f.selectedIcon,
                color: f.selectedColor,
              ),
            )
        ],
        onDestinationSelected: (index) {
          selectedIndex = index;
          context.go(
            '/${allDestinations[index].id}',
          );
        },
        selectedIndex: selectedIndex,
      ),
    );
  }
}
