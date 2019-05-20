import 'package:flutter/material.dart';
import 'dart:ui';
import 'layout_type.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';

class Breakfast implements SliverPersistentHeaderDelegate {
  Breakfast({
    this.layoutGroup,
    this.onLayoutToggle,
    this.minExtent,
    this.maxExtent,
  });
  final LayoutGroup layoutGroup;
  final VoidCallback onLayoutToggle;
  double maxExtent;
  double minExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/milkshake.jpg',
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black54,
              ],
              stops: [0.5, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.repeated,
            ),
          ),
        ),
        Positioned(
          left: 16.0,
          right: 16.0,
          bottom: 16.0,
          child: Text(
            'Breakfast',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration => null;
}

class HeroPage extends StatelessWidget implements HasLayoutGroup {
  HeroPage({Key key, this.layoutGroup, this.onLayoutToggle}) : super(key: key);
  final LayoutGroup layoutGroup;
  final VoidCallback onLayoutToggle;

  final List<String> assetNames = [
    'assets/splash1.jpg',
    'assets/burger.jpg',
    'assets/milkshake.jpg',
    'assets/strawberries.jpg',
    'assets/chips.jpg',
    'assets/milk.jpg',
    'assets/spinach.jpg',
    'assets/fries.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _scrollView(context),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push<Widget>(PageRouteBuilder<Widget>(
              opaque: true,
              transitionDuration: Duration(days: 1),
              pageBuilder: (BuildContext context, _, __) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Text(
                          'You have 1000 points',
                          textScaleFactor: 1.2,
                        ),
                      ),
                    ],
                  ),
                  color: Colors.white70.withOpacity(0.90),
                );
              }));
        },
        label: Text('Reward'),
        icon: Icon(Icons.redeem),
        backgroundColor: Colors.pink,
      ),


    );
  }

  Widget _scrollView(BuildContext context) {
    // Use LayoutBuilder to get the hero header size while keeping the image aspect-ratio
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: Breakfast(
              layoutGroup: layoutGroup,
              onLayoutToggle: onLayoutToggle,
              minExtent: 150.0,
              maxExtent: 250.0,
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: 0.75,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  padding: _edgeInsetsForIndex(index),
                  child: Image.asset(
                    assetNames[index % assetNames.length],
                  ),
                );
              },
              childCount: assetNames.length * 2,
            ),
          ),
        ],
      ),
    );
  }

  EdgeInsets _edgeInsetsForIndex(int index) {
    if (index % 2 == 0) {
      return EdgeInsets.only(top: 4.0, left: 8.0, right: 4.0, bottom: 4.0);
    } else {
      return EdgeInsets.only(top: 4.0, left: 4.0, right: 8.0, bottom: 4.0);
    }
  }
}

