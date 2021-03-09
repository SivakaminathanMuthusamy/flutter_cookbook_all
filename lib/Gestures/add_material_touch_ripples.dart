import 'package:flutter/material.dart';

class MaterialTouchInkWell extends StatefulWidget {
  @override
  _MaterialTouchInkWellState createState() => _MaterialTouchInkWellState();
}

class _MaterialTouchInkWellState extends State<MaterialTouchInkWell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Inkwell Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.black,
                content: Text(
                  'Yay! A snack bar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Press Me - Inkwell',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
