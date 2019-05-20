import 'package:flutter/material.dart';


class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.redAccent,
        title: new Text("Rewards"),
      ), // appBar
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCardLayoutHigh(theIcon: Icons.free_breakfast, theText: "High Reward"),
            new MyCardLayoutMedium(theIcon: Icons.fastfood, theText: "Medium Reward"),
            new MyCardLayoutLow(theIcon: Icons.play_for_work, theText: "Low Reward"),
            //this is not the list example, so when you add new cards, it won't be inside of the list.
          ],
        ), // column
      ), // Container
    ); // scaffold
  }
}

class MyCardLayoutHigh extends StatelessWidget {
  // default constructor
  MyCardLayoutHigh({this.theIcon, this.theText});

  // init variables
  final IconData theIcon;
  final String theText;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new ListTile(
              leading: new Icon(theIcon,
                  size: 40.0, color: Colors.grey),
              title: new Text(
                theText,
                style: new TextStyle(fontSize: 20.0),
              ),
              subtitle:
              const Text('Picking nutrititional foods gives you high rewards'),
            ),


          ],
        ),
      ),
    );
  }
}

class MyCardLayoutMedium extends StatelessWidget {
  // default constructor
  MyCardLayoutMedium({this.theIcon, this.theText});

  // init variables
  final IconData theIcon;
  final String theText;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new ListTile(
              leading: new Icon(theIcon,
                  size: 50.0, color: Colors.grey),
              title: new Text(
                theText,
                style: new TextStyle(fontSize: 20.0),
              ),
              subtitle:
              const Text('Picking foods that are somehow healthy gives you medium rewards'),
            ),

          ],
        ),
      ),
    );
  }
}

class MyCardLayoutLow extends StatelessWidget {
  // default constructor
  MyCardLayoutLow({this.theIcon, this.theText});

  // init variables
  final IconData theIcon;
  final String theText;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new ListTile(
              leading: new Icon(theIcon,
                  size: 50.0, color: Colors.grey),
              title: new Text(
                theText,
                style: new TextStyle(fontSize: 20.0),
              ),
              subtitle:
              const Text('Picking processed foods gives you low rewards'),
            ),

          ],
        ),
      ),
    );
  }
}