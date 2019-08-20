import "package:flutter/material.dart";

class PageOne extends StatelessWidget {
  final String heading;

  // const PageOne(String s, {Key key, this.heading}) : super(key: key);

  PageOne(this.heading);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(heading),
      ),
      body: new Center(
        child: new Text("page one"),
      ),
    );
  }
}
