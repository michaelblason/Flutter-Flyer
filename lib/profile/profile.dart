import 'package:flutter/material.dart';
import 'package:flyer/main.dart';
import 'package:flyer/services/auth.dart';
import 'package:flyer/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Theme.of(context).colorScheme.onBackground,
        ),
        title:
            Text('Profile', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Container(),
      ),
    );
  }
}

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: const Text('Sign Out'),
        onPressed: () {
          AuthService().signOut();
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
        });
  }
}
