import 'package:flutter/material.dart';
import 'package:flyer/login/login.dart';
import 'package:flyer/wall/wall.dart';
import 'package:flyer/shared/shared.dart';
import 'package:flyer/services/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return const Center(
            child: ErrorMessage(),
          );
        } else if (snapshot.hasData) {
          return const WallScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}