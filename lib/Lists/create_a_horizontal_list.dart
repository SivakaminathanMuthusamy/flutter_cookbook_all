import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal List'),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return ListView(
            // This next line does the trick.
            scrollDirection: orientation == Orientation.portrait
                ? Axis.vertical
                : Axis.horizontal,
            children: <Widget>[
              Container(
                height: 160.0,
                width: 160.0,
                color: Colors.red,
              ),
              Container(
                height: 160.0,
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                height: 160.0,
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                height: 160.0,
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                height: 160.0,
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          );
        },
      ),
    );
  }
}
