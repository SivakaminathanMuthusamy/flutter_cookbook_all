import 'package:flutter/material.dart';

class DisplaySnackbar extends StatefulWidget {
  @override
  _DisplaySnackbarState createState() => _DisplaySnackbarState();
}

class _DisplaySnackbarState extends State<DisplaySnackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display a SnackBar'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: Text('Yay! A SnackBar'),
              action: SnackBarAction(
                label: 'OK',
                onPressed: () {},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}
