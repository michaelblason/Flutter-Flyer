import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../shared/bottom_nav.dart';

class WallScreen extends StatelessWidget {
  const WallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFf7f7f7),
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF292b2c)),
        title: const TextField(
          decoration: InputDecoration(
              hintText: 'Search',
              prefix: Icon(Icons.search, color: Color(0xFF292b2c)),
              suffixIcon: Icon(
                Icons.camera_alt,
                color: Color(0xFF292b2c),
              )),
        ),
        actions: <Widget>[
          Container(
              margin: EdgeInsets.only(right: 10), child: Icon(Icons.message))
        ],
      ),
      body: MasonryGridView.builder(
        gridDelegate:
            SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
  _Tile(this.i);
  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Image.asset('assets/test_flyers/$i.jpg'),
        ));
  }
}
