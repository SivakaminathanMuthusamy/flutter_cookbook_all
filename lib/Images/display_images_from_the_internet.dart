import 'package:flutter/material.dart';

class DisplayNetworkImage extends StatefulWidget {
  @override
  _DisplayNetworkImageState createState() => _DisplayNetworkImageState();
}

class _DisplayNetworkImageState extends State<DisplayNetworkImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEAFEE9),
      body: Container(
        child: Center(
          child: Image.network(
            'https://cdn.dribbble.com/users/255/screenshots/2893682/rogie-6.gif',
          ),
        ),
      ),
    );
  }
}
