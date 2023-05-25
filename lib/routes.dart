import 'package:flyer/profile/profile.dart';
import 'package:flyer/login/login.dart';
import 'package:flyer/home/home.dart';
import 'package:flyer/wall/wall.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/wall': (context) => const WallScreen(),
};

// Dymanic App Route: DetailsScreen(String image)