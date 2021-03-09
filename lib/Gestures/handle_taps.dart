import 'package:flutter/material.dart';

class HandleTapsGestureDetector extends StatefulWidget {
  @override
  _HandleTapsGestureDetectorState createState() =>
      _HandleTapsGestureDetectorState();
}

class _HandleTapsGestureDetectorState extends State<HandleTapsGestureDetector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Gesture Detector'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
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
              'Press Me - Gesture Detector',
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
