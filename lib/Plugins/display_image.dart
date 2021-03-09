import 'dart:io';
import 'package:flutter/material.dart';

class DisplayImage extends StatelessWidget {
  DisplayImage({this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Captured'),
        centerTitle: true,
      ),
      body: Center(
        child: Image.file(
          File(imagePath),
        ),
      ),
    );
  }
}
