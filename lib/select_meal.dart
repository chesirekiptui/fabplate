import 'package:flutter/material.dart';
import 'breakfast.dart';
import 'lunch.dart';
import 'dinner.dart';


class Select extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.redAccent,
        title: new Text("Select your meal"),
      ), // appBar
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCardLayoutBreakfast(theIcon: Icons.free_breakfast, theText: "Breakfast"),
            new MyCardLayoutLunch(theIcon: Icons.fastfood, theText: "Lunch"),
            new MyCardLayoutDinner(theIcon: Icons.local_dining, theText: "Dinner"),
            //this is not the list example, so when you add new cards, it won't be inside of the list.
          ],
        ), // column
      ), // Container
    ); // scaffold
  }
}

class MyCardLayoutBreakfast extends StatelessWidget {
  // default constructor
  MyCardLayoutBreakfast({this.theIcon, this.theText});

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
              const Text(''),
            ),
            new ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: new ButtonBar(
                children: <Widget>[
                  new FlatButton(
                    child: const Text('Pick your Breakfast'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HeroPage()),
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
class MyCardLayoutLunch extends StatelessWidget {
  // default constructor
  MyCardLayoutLunch({this.theIcon, this.theText});

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
              const Text(''),
            ),
            new ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: new ButtonBar(
                children: <Widget>[
                  new FlatButton(
                    child: const Text('Pick your lunch'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Lunch()),
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
class MyCardLayoutDinner extends StatelessWidget {
  // default constructor
  MyCardLayoutDinner({this.theIcon, this.theText});

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
              const Text(''),
            ),
            new ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: new ButtonBar(
                children: <Widget>[
                  new FlatButton(
                    child: const Text('Pick your lunch'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dinner()),
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