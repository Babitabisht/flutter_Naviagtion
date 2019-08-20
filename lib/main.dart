import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:flutter_navigation/page1.dart';
import 'package:flutter_navigation/page2.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.amber,
          primaryColor:
              defaultTargetPlatform == TargetPlatform.iOS ? Colors.white : null,

          brightness: Brightness.light
        ),
        home: new HomePAge(),
        routes: <String, WidgetBuilder>{
          "/a": (context) => new PageOne("page one"),
          "/b": (context) => new PageTwo("page two")
        });
  }
}

class HomePAge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Navigation app"),
          elevation:
              defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Babita Bisht"),
              accountEmail: Text("babitabisht2018@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: defaultTargetPlatform == TargetPlatform.iOS
                    ? Colors.black
                    : Colors.white,
                child: new Text("B"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: defaultTargetPlatform == TargetPlatform.iOS
                      ? Colors.black
                      : Colors.white,
                  child: new Text("R"),
                )
              ],
            ),
            new ListTile(
                title: new Text("Page one"),
                trailing: new Icon(Icons.arrow_forward),
                onTap: () => {
                      Navigator.of(context).pop(),
                      Navigator.of(context).pushNamed("/a")
                    }),
            new ListTile(
              title: new Text("Page two"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.of(context).pushNamed("/b")
              },
            ),
            new ListTile(
              title: new Text("Page three"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new PageOne("Page Third")))
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("data"),
        ),
      ),
    );
  }
}
