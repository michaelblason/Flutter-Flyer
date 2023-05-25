import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../detail/detail.dart';
import '../shared/bottom_nav.dart';

class WallScreen extends StatelessWidget {
  const WallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFf7f7f7),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Color(0xFF292b2c),
        ),
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'Search',
          ),
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Icon(Icons.add_box_outlined),
          )
        ],
      ),
      body: MasonryGridView.builder(
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, int i) {
          return _Tile(i);
        },
        itemCount: 18,
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile(this.i);
  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => DetailScreen('assets/test_flyers/$i.jpg'),
              ),
            );
          },
          child: Hero(
            tag: 'assets/test_flyers/$i.jpg',
            child: Image.asset(
              'assets/test_flyers/$i.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
