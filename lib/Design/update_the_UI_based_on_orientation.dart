import 'package:flutter/material.dart';

class UpdateUIBasedOnOrientation extends StatefulWidget {
  @override
  _UpdateUIBasedOnOrientationState createState() =>
      _UpdateUIBasedOnOrientationState();
}

class _UpdateUIBasedOnOrientationState
    extends State<UpdateUIBasedOnOrientation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update UI Based on Orientation'),
        centerTitle: true,
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          accentColor: Colors.green,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) => GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          children: List.generate(
            100,
            (index) => Center(
              child: Text('Index $index'),
            ),
          ),
        ),
      ),
    );
  }
}
