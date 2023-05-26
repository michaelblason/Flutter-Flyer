import 'package:flutter/material.dart';
import 'package:flyer/profile/profile.dart';
import 'package:flyer/wall/wall.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _NavBarState();
}

class _NavBarState extends State<BottomNavigator> {
  int index = 0;
  final screens = [
    const WallScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: <Widget>[
          Text(
            'Home',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            'Profile',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ][index],
      ),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorShape: const lin(),
          indicatorColor: Colors.white.withOpacity(0),
          labelTextStyle:
              MaterialStatePropertyAll(Theme.of(context).textTheme.labelSmall),
        ),
        child: NavigationBar(
          animationDuration: const Duration(seconds: 0),
          height: 60,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                size: 35,
              ),
              icon: Icon(
                Icons.home_outlined,
                size: 35,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.person,
                size: 35,
              ),
              icon: Icon(
                Icons.person_outline,
                size: 35,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
