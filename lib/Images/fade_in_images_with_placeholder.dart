import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeInImagesWithPlaceholder extends StatefulWidget {
  @override
  _FadeInImagesWithPlaceholderState createState() =>
      _FadeInImagesWithPlaceholderState();
}

class _FadeInImagesWithPlaceholderState
    extends State<FadeInImagesWithPlaceholder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                'https://cdn.dribbble.com/users/255/screenshots/2893682/rogie-6.gif',
          ),
          FadeInImage.assetNetwork(
            placeholder: 'assets/Pinwheel.gif',
            image:
                'https://cdn.dribbble.com/users/255/screenshots/2893682/rogie-6.gif',
          ),
        ],
      ),
    );
  }
}
