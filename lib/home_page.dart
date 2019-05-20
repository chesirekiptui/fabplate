import 'package:flutter/material.dart';
import 'demo.dart';
import 'select_meal.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.redAccent,
        title: new Text("Intro"),
      ), // appBar
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCardLayoutDemo(
              theIcon: Icons.fastfood,
              theText: "Demo",
            ),
            new MyCardLayoutGame(theIcon: Icons.gamepad, theText: "Play Game"),

            //this is not the list example, so when you add new cards, it won't be inside of the list.
          ],
        ), // column
      ), // Container
    ); // scaffold
  }
}

class MyCardLayoutDemo extends StatelessWidget {
  MyCardLayoutDemo({this.theIcon, this.theText});

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
              leading: new Icon(theIcon, size: 40.0, color: Colors.grey),
              title: new Text(
                theText,
                style: new TextStyle(fontSize: 20.0),
              ),
            ),
            new ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: new ButtonBar(
                children: <Widget>[
                  new FlatButton(
                    child: const Text('See demo'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Demo()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCardLayoutGame extends StatelessWidget {
  MyCardLayoutGame({this.theIcon, this.theText});

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
              leading: new Icon(theIcon, size: 40.0, color: Colors.grey),
              title: new Text(
                theText,
                style: new TextStyle(fontSize: 20.0),
              ),
            ),
            new ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: new ButtonBar(
                children: <Widget>[
                  new FlatButton(
                    child: const Text('Play game'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Select()),
                      );
                    },
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
