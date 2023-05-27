import 'package:flutter/material.dart';
import 'package:flyer/services/auth.dart';
import 'package:provider/provider.dart';

import '../shared/loading.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //var report = Provider.of<Report>(context);
    var user = AuthService().user;
    var nav = Navigator.of(context);

    if (user != null) {
      // add your UI here
      return Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 8,
          ),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(60),
              child: Image.asset(
                user.photoURL ?? 'assets/user.png',
                height: 150,
                width: 150,
              ),
            ),
            Column(
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
                      Text(user.displayName ?? 'Michael',
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
                      Text(user.email ?? 'michaaeljbeltz@gmail.com',
                          style: const TextStyle(fontSize: 22)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: ElevatedButton(
                  onPressed: () async {
                    await AuthService().signOut();
                    nav.pushNamedAndRemoveUntil('/', (route) => false);
                  },
                  child: const Text('Log Out')),
            ),
          ],
        ),
      );
    } else {
      return const Loader();
    }
  }
}
