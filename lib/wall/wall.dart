import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../detail/detail.dart';

class WallScreen extends StatelessWidget {
  const WallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      gridDelegate: const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300),
      itemBuilder: (context, int i) {
        return _Tile(i);
        
      },
      itemCount: 18,
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
