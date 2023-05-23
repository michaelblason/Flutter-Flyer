import 'package:flutter/material.dart';

import '../shared/bottom_nav.dart';

class WallScreen extends StatelessWidget {
  const WallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wall'),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}