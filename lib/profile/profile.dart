import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flyer/services/auth.dart';
import 'package:provider/provider.dart';

import '../shared/loading.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var user = AuthService().user;
    var nav = Navigator.of(context);

    //upscale google sign in profile image
    if (user?.photoURL != null) {
      user!.photoURL!.replaceAll("s96-c", "s196-c");
    }

    if (user != null) {
      // add your UI here
      return Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 8,
          ),
          children: <Widget>[
            ProfilePicture(user: user),
            ProfileInfo(user: user),
            SignOutButton(nav: nav),
          ],
        ),
      );
    } else {
      return const Loader();
    }
  }
}

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    super.key,
    required this.nav,
  });

  final NavigatorState nav;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ElevatedButton(
          onPressed: () async {
            await AuthService().signOut();
            nav.pushNamedAndRemoveUntil('/', (route) => false);
          },
          child: const Text('Log Out')),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
    required this.user,
  });

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
              Text(user?.displayName ?? 'Michael',
                  style: const TextStyle(fontSize: 22)),
            ],
          ),
        ),
        SizedBox(
          height: 70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
              Text(user?.email ?? 'michaaeljbeltz@gmail.com',
                  style: const TextStyle(fontSize: 22)),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
    required this.user,
  });

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60),
      child: Center(
        child: CircleAvatar(
          radius: 60,
          foregroundImage: NetworkImage(
            user?.photoURL ?? 'assets/user.png',
          ),
          backgroundImage: const AssetImage(
            'assets/user.png',
          ),
        ),
      ),
    );
  }
}
