import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(this.image, {super.key});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Column(
          children: [
            Hero(
              tag: image,
              child: Image.asset(image),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text("Expanded View"),
            )
          ],
        ));
  }
}
